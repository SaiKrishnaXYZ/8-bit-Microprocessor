module data_mem (
    input clk,
    input write,
    input [8:0] addr ,
    input [7:0] in_data ,
    output [7:0] out_data
);

reg [7:0] mem [0:511] ;

assign out_data = mem[addr];

always @(posedge clk) begin
if (write)  mem[addr] <= in_data;
end

endmodule