// ************************************************ ******************** 
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE < <<<<<<<<<<<<<<<<<<<<<<< 
// ************************ ******************************************** 
// File name: segment .v 
// Module name: segment 
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
// Module Function: Initialization of the decoding module of the digital tube



module LED (seg_data_1, seg_led_1, seg_led_2);
	
	input  [3:0] seg_data_1;
	// input  [3:0] seg_data_2;
	output [8:0] seg_led_1;
	output [8:0] seg_led_2;
	
	reg [8:0] seg [15:0];
	
	initial
		begin
			seg[0]  = 9'h3F;
			seg[1]  = 9'h06;
			seg[2]  = 9'h5B;
			seg[3]  = 9'h4F;
			seg[4]  = 9'h66;
			seg[5]  = 9'h6D;
			seg[6]  = 9'h7D;
			seg[7]  = 9'h07;
			seg[8]  = 9'h7F;
			seg[9]  = 9'h6F;
			seg[10] = 9'h77;
			seg[11] = 9'h7C;
			seg[12] = 9'h39;
			seg[13] = 9'h5E;
			seg[14] = 9'h79;
			seg[15] = 9'h71;
		end
		
	assign seg_led_1 = seg[~seg_data_1];
	assign seg_led_2 = seg[~seg_data_1];
		
endmodule
		
		
		
		
		
		
		
		
		
		