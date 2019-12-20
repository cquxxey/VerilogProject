`timescale 1 ns/ 1 ns
module shift_signed_data_test;
reg clk;
reg rst_n;
reg signed [3:0] datain;
wire [15:0] dataout;

SHIFT_SIGNED_DATA U_SHIFT_SIGNED_DATA
(
	.clk(clk),
	.rst_n(rst_n),
	.datain(datain),
	.dataout(dataout)
);

initial
begin
    clk = 1'b1;
    rst_n = 1'b1;
    datain = 4'b1000;
    #1000
    rst_n = 1'b0;
    #1000
    rst_n = 1'b1;  
end


always #200 clk = ~clk;
always #400 datain = datain + 4'b0001;

endmodule
