// ************************************************ ******************** 
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE < <<<<<<<<<<<<<<<<<<<<<<<< 
// ************************ ******************************************** 
// File name: flashled .v 
// Module name: flashled 
// Author: STEP 
// Description: segment initial 
// Web: www.stepfpga.com 
// 
// ------------------ -------------------------------------------------- 
// Code Revision History: 
// ------------------------------------------ -------------------------- 
// Version: |Mod. Date: |Changes Made:
// V1.0 |2017/03/02 |Initial ver
// ------------------------------------------------ -------------------- 
// Module Function: Modular design of water lamp

module flashled (clk, rst, led);
	
	input clk, rst;
	output [7:0] led;
	
	reg [2:0] cnt;
	
	wire clk1h; //Define an intermediate variable, which represents the clock obtained by frequency division, used as a counter trigger        
	
	decode38 u1(.sw(cnt), .led(led));
	
	// Example frequency divider module, generates a clock signal 1Hz
	divide # (.WIDTH(32), .N(12000000/8)) u2(.clk(clk), .rst_n(rst), .clkout(clk1h)); // Example The converted port signals are connected to the defined signals
	
    // @ 1Hz clock rising edge triggers the counter, the loop count	
	always @(posedge clk1h or negedge rst)
		begin
			if (!rst)
				cnt <= 0;
			else
				cnt <= cnt + 1;
		end
endmodule





