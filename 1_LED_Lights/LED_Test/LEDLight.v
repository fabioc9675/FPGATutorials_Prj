// ************************************************ ******************** 
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE < <<<<<<<<<<<<<<<<<<<<<<<< 
// ************************ ******************************************** 
// File name: LED .v 
// Module name: LED 
// Author: STEP 
// Description: control LED 
// Web: www.stepfpga.com 
// 
// ------------------ -------------------------------------------------- 
// Code Revision History: 
// ------------------------------------------ -------------------------- 
// Version: |Mod. Date: |Changes Made:
// V1.0 |2017/03/02 |Initial ver 
// ---------------------------------- ----------------------------------
// Module Function: Use the state of buttons and switches to control the on and off of LED lights.

module LED (key, led);
	
	input wire  [3:0] key;
	output wire [7:0] led;
	
	assign led = {key, ~key};
	
endmodule
	
	


