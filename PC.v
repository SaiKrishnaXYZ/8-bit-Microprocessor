module PC (
    input clk,
    input  wire       reset,
    input  wire       jump,       // Control signal from Control Unit
    input  wire [11:0] offset,
    output reg [9:0] pc
);

always@(posedge clk or posedge reset) begin
if (reset) begin
            pc <= 9'd0;
        end else if (jump) begin
            // Sign-extended offset allows jumping forward or backward
            pc <= pc + 1 + $signed(offset);
        end else begin
            pc <= pc + 1'b1;     // Normal sequential execution
        end
 end

endmodule
  