module main (sw, led);

	input wire [1:0] sw;
	output wire[1:0] led;

	crt_2 crt_2(.sw2(sw[1]), .led2(led[1]));

endmodule
