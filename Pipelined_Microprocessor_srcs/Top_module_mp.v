module top_module (
    input clk,
    input reset
);

reg [15:0] stage1 ;
reg [38:0] stage2 ;
reg [30:0] stage3 ;
reg [20:0] stage4 ;


wire [15:0] IR_bus, IR_bus_2 ;
wire [3:0] CU_bus_1;
wire [8:0] imm_off_bus ;
wire [7:0] bus_Rx, bus_Ry ;
wire [2:0] dest_reg_s2 ;
wire [2:0]  rs2_s2;
wire [7:0] bus_ALU_2_in, bus_reg_2 ,bus_reg_1 ; 

assign IR_bus_2 = stage1 ;
assign CU_bus_1 = stage2[12:9];
assign imm_off_bus = stage2[8:0];
assign bus_Rx = stage2[23:16] ;
assign bus_Ry = stage2[31:24] ;
assign dest_reg_s2   = stage2[15:13];
assign rs2_s2        = stage2[38:36];


wire [9:0] address_bus ;
wire w1, w2, w3, w4, w5 ;
wire [1:0] forward_a_id, forward_b_id;
wire [11:0] offset_pc_bus ;
assign offset_pc_bus = IR_bus_2[5:0] ;

//w2, w3 addresses for MUX
wire [7:0] bus_reg_in, ALU_out ;


wire [7:0] branch_rx = (forward_a_id == 2'b11) ? ALU_out :
                           (forward_a_id == 2'b10) ? stage3[7:0] :
                           (forward_a_id == 2'b01) ? bus_reg_in : bus_reg_1;

wire [7:0] branch_ry = (forward_b_id == 2'b11) ? ALU_out :
                           (forward_b_id == 2'b10) ? stage3[7:0] :
                           (forward_b_id == 2'b01) ? bus_reg_in : bus_reg_2;


wire [7:0] alu_out_wb    = stage4[15:8];
    wire [7:0] mem_out_wb    = stage4[7:0];

assign bus_reg_in = (stage4[19])? mem_out_wb : alu_out_wb;

 wire [1:0] forward_a_ex, forward_b_ex;

    // EX Forwarding MUXes
    wire [7:0] alu_rx_fwd = (forward_a_ex == 2'b10) ? stage3[7:0] :
                            (forward_a_ex == 2'b01) ? bus_reg_in : bus_Rx;

    wire [7:0] alu_ry_fwd = (forward_b_ex == 2'b10) ? stage3[7:0] :
                            (forward_b_ex == 2'b01) ? bus_reg_in : bus_Ry;



assign bus_ALU_2_in = (CU_bus_1[1])?  alu_ry_fwd : imm_off_bus[7:0] ;

wire [3:0]  opcode_s2;

wire [7:0] bus_data_out;
wire [8:0] mem_addr_s3       = stage3[24:16];
    wire [7:0] store_data_s3     = stage3[15:8];
    wire       write_data_mem_s3 = stage3[28];
    assign opcode_s2   = stage2[35:32];

wire stall;
wire is_beq       = (IR_bus_2[15:12] == 4'b1010);
wire is_bne       = (IR_bus_2[15:12] == 4'b1011);
wire is_equal     = (branch_rx == branch_ry); // Single 8-bit comparator

wire branch_taken = (is_beq & is_equal) | (is_bne & ~is_equal);

// Unified redirect signal for PC reload and IF/ID flush
wire take_target  = w4 | branch_taken;

hazard_unit hu (
        .id_rs1(IR_bus_2[11:9]),
        .id_rs2(IR_bus_2[8:6]),
        .is_branch(is_beq | is_bne),
        .ex_rs1(dest_reg_s2),
        .ex_rs2(rs2_s2),
        .ex_dest(dest_reg_s2),
        .ex_write_reg(stage2[12]),
        .ex_mem_to_reg(stage2[11]),
        .mem_dest(stage3[27:25]),
        .mem_write_reg(stage3[30]),
        .mem_mem_to_reg(stage3[29]),
        .wb_dest(stage4[18:16]),
        .wb_write_reg(stage4[20]),
        .forward_a_ex(forward_a_ex),
        .forward_b_ex(forward_b_ex),
        .forward_a_id(forward_a_id),
        .forward_b_id(forward_b_id),
        .stall(stall)
    );

PC P1 (.clk(clk), .reset(reset),.enable(~stall), .jump(take_target), .offset(offset_pc_bus), .pc(address_bus)) ;
instruction_mem I1 (.address(address_bus), .instruction(IR_bus)) ;
data_mem D1 (.clk(clk), .write(write_data_mem_s3), .addr(mem_addr_s3), .in_data(store_data_s3), .out_data(bus_data_out));
register_file r1 (.clk(clk), .write(stage4[20]), .addr_1(IR_bus_2[11:9]), .addr_2(IR_bus_2[8:6]), .in_addr(stage4[18:16]), .in_data(bus_reg_in), .out_data_1(bus_reg_1), .out_data_2(bus_reg_2)) ;
ALU a1 (.Rx(alu_rx_fwd), .Ry(bus_ALU_2_in), .opcode(opcode_s2), .Rz(ALU_out), .carry(), .zeroflag() , .sign());

cu c1 (.IR(IR_bus_2[15:12]), .write_reg(w1) , .mem_to_reg(w2), .reg_to_ALU(w3), .jump(w4), .write_data_mem(w5));




always @(posedge clk or posedge reset) begin
    if (reset || take_target)    stage1 <= 16'h0000; // Force NOP on reset or jump flush
    else  if (!stall)  stage1 <= IR_bus;

    if (reset || stall) begin
            stage2 <= 36'd0;
           
        end else  begin
             stage2[8:0] <= IR_bus_2[8:0] ;
        stage2[12:9] <= {w1, w2, w3, w5} ;
        stage2[15:13] <= IR_bus_2[11:9] ;
        stage2[23:16] <= bus_reg_1 ;
        stage2[31:24] <= bus_reg_2 ;
        stage2[35:32] <= IR_bus_2[15:12] ;
        stage2[38:36] <= IR_bus_2[8:6];   // Freeze IF/ID when stall is active
        end

    if (reset) begin
            stage3 <= 31'd0;
            stage4 <= 21'd0;    // Flush ID/EX register to insert NOP bubble on stall
        end else begin

       

            stage3[7:0]   <= ALU_out;        // Calculated ALU Result
            stage3[15:8]  <= alu_rx_fwd;         // Store Data (Rx)
            stage3[24:16] <= imm_off_bus;    // Data Memory Address
            stage3[27:25] <= dest_reg_s2;    // Target Register Index
            stage3[28]    <= stage2[9];      // write_data_mem (w5)
            stage3[29]    <= stage2[11];     // mem_to_reg (w2)
            stage3[30]    <= stage2[12];     // write_reg (w1)

           stage4[7:0]   <= bus_data_out;   // Data RAM Output
            stage4[15:8]  <= stage3[7:0];    // ALU Result Pass-Through
            stage4[18:16] <= stage3[27:25];  // Target Register Index Pass-Through
            stage4[19]    <= stage3[29];     // mem_to_reg Pass-Through
            stage4[20]    <= stage3[30];     // write_reg Pass-Through

        end

end


endmodule