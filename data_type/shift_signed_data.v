module SHIFT_SIGNED_DATA
#
(
parameter DATA_IN_WIDTH = 4,
parameter DATA_OUT_WIDTH = 16
)
(
input clk,
input rst_n,
input signed [DATA_IN_WIDTH-1:0] datain,
output reg signed[DATA_OUT_WIDTH-1:0] dataout
);

always @(posedge clk or negedge rst_n)
begin
    if (rst_n == 1'b0)
        dataout <= {{DATA_OUT_WIDTH}{1'b0}};
    else
	dataout <= (datain << 1);
end

endmodule
