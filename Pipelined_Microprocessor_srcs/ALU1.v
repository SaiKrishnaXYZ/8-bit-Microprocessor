module ALU (
    input [7:0] Rx , Ry ,
    input [3:0] opcode, 
    output reg [7:0] Rz,
    output reg carry, 
    output zeroflag, sign
);
assign zeroflag = (Rz == 8'd0);
assign sign = Rz[7]; 
always @(*) begin
    carry = 1'b0;
    Rz    = 8'd0;
   case(opcode)
   4'b0000, 4'b0101: {carry, Rz} = Rx + Ry ;
   4'b0001: {carry, Rz} = Rx - Ry ;
   4'b0010: begin
            Rz = Rx << 1 ;
            carry = Rx[7];
            end
   4'b0011: begin
            Rz = Rx >> 1 ;
            carry = Rx[0];
            end
   4'b0110, 4'b1000: begin     //mov
            Rz = Ry ;
            end
   default: begin
                Rz    = 8'd0;
                carry = 1'b0;
            end
   endcase
   end
   
endmodule