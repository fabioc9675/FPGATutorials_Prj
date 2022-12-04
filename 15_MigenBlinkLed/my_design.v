/* Machine-generated using Migen */
module top(
	output reg [7:0] led,
	input sys_clk,
	input sys_rst
);

reg [22:0] counter = 23'd0;
wire [22:0] period;

// synthesis translate_off
reg dummy_s;
initial dummy_s <= 1'd0;
// synthesis translate_on

assign period = 23'd6000000;

always @(posedge sys_clk) begin
	if ((counter == 1'd0)) begin
		led <= (~led);
		counter <= period;
	end else begin
		counter <= (counter - 1'd1);
	end
	if (!sys_rst) begin
		led <= 8'b10101010;
		counter <= 23'd0;
	end
end

endmodule
