module instruction_mem (
    input [9:0] address,
    output [15:0] instruction
);
reg [15:0] mem [0:1023];
initial begin
        $readmemh("instructions.hex", mem);
    end
assign instruction = mem[address] ;

endmodule
   