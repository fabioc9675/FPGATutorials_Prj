`timescale 1ns / 100ps

module testLed;
	
	reg [3:0] keys;
	wire [7:0] leds;
	
	LED dut(.key(keys), .led(leds));
	
	initial
	begin
		keys = 4'b0000;
		#10
		keys = 4'b0001;
		#10
		keys = 4'b0010;
		#10
		keys = 4'b0100;
		#10
		keys = 4'b1000;
		#10
		keys = 4'b1111;
		#10
		$finish;
	end
endmodule
		