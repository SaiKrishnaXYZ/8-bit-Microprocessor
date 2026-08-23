module register_file (
    input clk, write,
    input [2:0] addr_1,
    input [2:0] addr_2,
    input [7:0] in_data,
    output [7:0] out_data_1,
    output [7:0] out_data_2   
);

reg [7:0] register [0:7] ;

assign out_data_1 = register[addr_1] ;
assign out_data_2 = register[addr_2] ;

always @(posedge clk) begin
if (write) register[addr_1] <= in_data ;
end

endmodule