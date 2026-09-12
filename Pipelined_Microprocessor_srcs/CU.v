module cu (
    input [3:0] IR,
    
    output reg write_reg , mem_to_reg, reg_to_ALU, jump, write_data_mem// MUX at reg

);

always @(*) begin

write_reg      = 1'b0;
mem_to_reg     = 1'b0;
reg_to_ALU     = 1'b0;
jump           = 1'b0;
write_data_mem = 1'b0;

case(IR[3:0]) 
4'b0100: begin       //load from data mem to reg file in_data

  write_data_mem = 1'b0 ;
  write_reg <= 1'b1;
  mem_to_reg = 1'b1;
  end

4'b0000, 4'b0001, 4'b0010, 4'b0011, 4'b0110: begin

  write_reg  = 1'b1;
  mem_to_reg = 1'b0;   // ALU out to reg in data
  reg_to_ALU = 1'b1;  // selects between IR and Reg file  for ALU input
  end

4'b0101: begin       //ADDI
  write_reg  = 1'b1;
  mem_to_reg = 1'b0;   // ALU out to reg in data
  reg_to_ALU = 1'b0;  // selects between IR and Reg file  for ALU input
  end

4'b0111: begin    //store
  write_data_mem = 1'b1 ;
  write_reg = 1'b0;
  end

4'b1000: begin
write_reg  = 1'b1;    //LOADI
reg_to_ALU = 1'b0;
mem_to_reg = 1'b0;
end

4'b1001: begin     //jump
jump = 1'b1 ;
end

default: begin
      // All outputs remain at 0 for unused opcodes
 end

endcase

end


endmodule