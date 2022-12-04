`timescale 1 ns / 1 ns

module testbench;
	
	reg pushbutton;
	wire [7:0] leds;
	
	top dut(.leds(leds), .pushbutton(pushbutton));
	
	initial
	begin
		pushbutton = 0;
		#1000  // 1s
		pushbutton = 1;
		#100000000  // 1s
		pushbutton = 0;
		#1000  // 1s
		$finish;
	end
	
endmodule
