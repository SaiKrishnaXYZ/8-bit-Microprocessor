module hazard_unit (
    input wire [2:0] id_rs1,
    input wire [2:0] id_rs2,
    input wire       is_branch,

    input wire [2:0] ex_rs1,
    input wire [2:0] ex_rs2,
    input wire [2:0] ex_dest,
    input wire       ex_write_reg,
    input wire       ex_mem_to_reg,

    input wire [2:0] mem_dest,
    input wire       mem_write_reg,
    input wire       mem_mem_to_reg,

    input wire [2:0] wb_dest,
    input wire       wb_write_reg,

    output reg [1:0] forward_a_ex,
    output reg [1:0] forward_b_ex,
    output reg [1:0] forward_a_id,
    output reg [1:0] forward_b_id,

    output wire      stall
);

    always @(*) begin
        if (mem_write_reg && (mem_dest != 3'b000) && (mem_dest == ex_rs1))
            forward_a_ex = 2'b10;
        else if (wb_write_reg && (wb_dest != 3'b000) && (wb_dest == ex_rs1))
            forward_a_ex = 2'b01;
        else
            forward_a_ex = 2'b00;

        if (mem_write_reg && (mem_dest != 3'b000) && (mem_dest == ex_rs2))
            forward_b_ex = 2'b10;
        else if (wb_write_reg && (wb_dest != 3'b000) && (wb_dest == ex_rs2))
            forward_b_ex = 2'b01;
        else
            forward_b_ex = 2'b00;
    end

    always @(*) begin
        if (ex_write_reg && (ex_dest != 3'b000) && (ex_dest == id_rs1) && !ex_mem_to_reg)
            forward_a_id = 2'b11;
        else if (mem_write_reg && (mem_dest != 3'b000) && (mem_dest == id_rs1))
            forward_a_id = 2'b10;
        else if (wb_write_reg && (wb_dest != 3'b000) && (wb_dest == id_rs1))
            forward_a_id = 2'b01;
        else
            forward_a_id = 2'b00;

        if (ex_write_reg && (ex_dest != 3'b000) && (ex_dest == id_rs2) && !ex_mem_to_reg)
            forward_b_id = 2'b11;
        else if (mem_write_reg && (mem_dest != 3'b000) && (mem_dest == id_rs2))
            forward_b_id = 2'b10;
        else if (wb_write_reg && (wb_dest != 3'b000) && (wb_dest == id_rs2))
            forward_b_id = 2'b01;
        else
            forward_b_id = 2'b00;
    end

    wire load_use_hazard = ex_mem_to_reg && ((ex_dest == id_rs1) || (ex_dest == id_rs2));

    assign stall = load_use_hazard;

endmodule