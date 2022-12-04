module main (sw, led);

	input wire [1:0] sw;
	output wire[1:0] led;
	crt_1 crt_1(.sw1(sw[0]), .led1(led[0]));
	crt_2 crt_2(.sw2(sw[1]), .led2(led[1]));

endmodule

