// ------------------------------------------------ -------------------- 
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE < <<<<<<<<<<<<<<<<<<<<<<< 
// ------------------------ -------------------------------------------- 
// Module: LED_shining 
// 
// Author: Step 
// 
// Description: LED_shining 
// 
// Web: www.stepfpga.com 
// 
// ---------------------- ---------------------------------------------- 
// Code Revision History: 
// ---------------------------------------------- ---------------------- 
// Version: |Mod. Date: |Changes Made: 
// V1.0 |2015/11/11 |Initial ver 
// -------------------------------------- ------------------------------

module LED_shining 
(
	input clk_in,              // input system 12 MHz clock
	input rst_n_in,            // input reset signal
	output led1, 			   // output led1
	output led2                // output led2, inverse to led 1	
);

	parameter CLK_DIV_PERIOD = 12_000_000;   // divide constant definition
	reg clk_div = 0;                          // Define reg type variable, used as clock output after frequency division
	//wire led1, led2; //Wire type variable definition, can be omitted, the default in verilog is wire type 
	assign led1 = clk_div;                    // Continuous assignment statement, assign the clock after frequency division to led1 to produce a blinking effect
	assign led2 =~ clk_div;                  //Inverted and assigned to led2, and led1 to form an even frequency divider circuit clk_div = clk_in/CLK_DIV_PERIOD, duty cycle 50%, CLK_DIV_PERIOD must be an even number	
	reg [23:0] cnt;                         //Counter for frequency division, 2**cnt-1>CLK_DIV_PERIOD, the maximum value of the counter must be greater than the frequency division constant 

	initial 
	begin
		cnt = 24'b0;
	end

	always @(posedge clk_in or negedge rst_n_in)
	begin
		if (!rst_n_in)
		begin
			cnt <= 0;
			clk_div <= 0;
		end
		else
		begin
			if (cnt == (CLK_DIV_PERIOD - 1)) cnt <= 0;
			else cnt <= cnt + 1'b1;
			if (cnt < (CLK_DIV_PERIOD >> 1)) clk_div <= 0;
			else clk_div <= 1;
		end
	end
endmodule



