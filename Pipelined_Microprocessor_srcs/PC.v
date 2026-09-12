module PC (
    input clk,
    input  wire       reset,
    input wire        enable,
    input  wire       jump,       // Control signal from Control Unit
    input  wire [5:0] offset,
    output reg [9:0] pc
);

wire [9:0] off = {{4{offset[5]}}, offset[5:0]};

always@(posedge clk or posedge reset) begin
if (reset) begin
            pc <=  10'd0;
        end else if (enable) begin
            // Sign-extended offset allows jumping forward or backward
            if (jump) begin     // jump or branch taken
            pc <= pc + off;
        end else begin
            pc <= pc + 1'b1;     // Normal sequential execution
        end
        end
 end

endmodule
  