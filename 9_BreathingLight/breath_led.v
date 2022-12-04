// ************************************************ ******************** 
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE < <<<<<<<<<<<<<<<<<<<<<<<< 
// ************************ ******************************************** 
// File name: breath_led .v 
// Module name: breath_led 
// Author: STEP 
// Description: 
// Web: www.stepfpga.com 
// 
// -------------------- ------------------------------------------------ 
// Code Revision History: 
// -------------------------------------------- ------------------------ 
// Version: |Mod. Date: |Changes Made:
// V1.0 |2017/03/02 |Initial ver
// ------------------------------------------------ -------------------- 
// Module Function: breathing light

module breath_led(clk, rst, led);
	
	input clk;
	input rst;
	output [7:0] led;
	
	reg [24:0] cnt1;
	reg [24:0] cnt2;
	reg flag;
	
	parameter CNT_NUM = 3464;  	//The maximum value of the counter period = (3464^2)*2 = 24000000 = 2s 
	
	always @(posedge clk or negedge rst) 
		begin
			if (!rst) 
				begin
					cnt1 <= 13'd0;
				end
			else if (cnt1 >= CNT_NUM - 1)
				cnt1 <= 1'b0;
			else
				cnt1 <= cnt1 + 1'b1;
		end

	always @(posedge clk or negedge rst)
		begin
			if (!rst) 
				begin
					cnt2 <= 13'd0;
					flag <= 1'b0;
				end
			else if (cnt1 == CNT_NUM - 1)
				begin
					if (!flag)
						begin
							if (cnt2 >= CNT_NUM - 1)
								flag <= 1'b1;
							else
								cnt2 <= cnt2 + 1'b1;
						end
					else 
						begin
							if (cnt2 <= 0)
								flag <= 1'b0;
							else
								cnt2 <= cnt2 - 1'b1;
						end
				end
			else 
				cnt2 <= cnt2;
		end
		
		assign led[7:0] = (cnt1 < cnt2)? {8'b00000000}:{8'b11111111};
		
endmodule


