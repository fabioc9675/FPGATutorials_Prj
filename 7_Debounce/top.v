// ************************************************ ******************** 
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE < <<<<<<<<<<<<<<<<<<<<<<< 
// ************************ ******************************************** 
// File name: top .v 
// Module name: top 
// Author: STEP 
// Description: control led through the button 
// Web: www.stepfpga.com 
// 
// --------------- -------------------------------------------------- --- 
// Code Revision History: 
// --------------------------------------- ----------------------------- 
// Version: |Mod. Date:|Changes Made: 
// V1.0 |2017/03/02 |Initial ver
// ------------------------------------------------ -------------------- 
// Module Function: Key-press control led flip, without debounce

/*
module top (key, rst, led);
	
	input key, rst;
	output reg led;
	
	always @(key or rst)
		if (!rst)
			led = 1;
		else if (key == 0)
			led = ~led;
		else
			led = led;
endmodule
*/

module top (clk, rst, key, led);
	
	input clk;
	input rst;
	input key;
	output reg led;
	
	wire key_pulse;
	
	//When the button is pressed, a high pulse is generated, and the led is flipped once. 
	always @(posedge clk or negedge rst)
		begin
			if (!rst)
				led <= 1'b1;
			else if (key_pulse)
				led <= ~led;
			else
				led <= led;
		end
		
	//Instantiate the debounce module, there is no parameter N passed here, and the default N=1 
	debounce u1(.clk(clk),
				 .rst(rst), 
				 .key(key),
				 .key_pulse(key_pulse));
	
endmodule
	
	
	









