module top_module (
    input clk,
    input reset
);

wire [15:0] IR_bus ;

wire [9:0] address_bus ;
wire w1, w2, w3, w4, w5 ;
wire [11:0] offset_pc_bus ;
assign offset_pc_bus = IR_bus[11:0] ;

//w2, w3 addresses for MUX
wire [7:0] bus_reg_in, bus_data_out, ALU_out ;
assign bus_reg_in = (w2)? bus_data_out : ALU_out  ;

wire [7:0] bus_ALU_2_in, bus_reg_2 ,bus_reg_1 ; 
assign bus_ALU_2_in = (w3)?  bus_reg_2 : IR_bus[7:0] ;


PC P1 (.clk(clk), .reset(reset), .jump(w4), .offset(offset_pc_bus), .pc(address_bus)) ;
instruction_mem I1 (.address(address_bus), .instruction(IR_bus)) ;
data_mem D1 (.clk(clk), .write(w5), .addr(IR_bus[8:0]), .in_data(bus_reg_1), .out_data(bus_data_out));
register_file r1 (.clk(clk), .write(w1), .addr_1(IR_bus[11:9]), .addr_2(IR_bus[8:6]), .in_data(bus_reg_in), .out_data_1(bus_reg_1), .out_data_2(bus_reg_2)) ;
ALU a1 (.Rx(bus_reg_1), .Ry(bus_ALU_2_in), .opcode(IR_bus[15:12]), .Rz(ALU_out), .carry(), .zeroflag() , .sign());

cu c1 (.IR(IR_bus[15:12]), .write_reg(w1) , .mem_to_reg(w2), .reg_to_ALU(w3), .jump(w4), .write_data_mem(w5));




endmodule