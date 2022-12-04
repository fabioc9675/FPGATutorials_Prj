// ************************************************ ******************** 
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE < <<<<<<<<<<<<<<<<<<<<<<< 
// ************************ ******************************************** 
// File name: decode38 .v 
// Module name: decode38 
// Author: STEP 
// Description: 3-8decode control LED 
// Web: www.stepfpga.com 
// 
// --------------- -------------------------------------------------- --- 
// Code Revision History: 
// --------------------------------------- ----------------------------- 
// Version: |Mod. Date:|Changes Made: 
// V1.0 |2017/03/02 |Initial ver
// ------------------------------------------------ -------------------- 
// Module Function: Use the state of the 3-way switch as output, and control the display of LED lights through 3-8 decoding.

module decode38(led, sw);
	
	input [2:0] sw;
	output [7:0] led;
	
	reg [7:0] led;	
	reg [2:0] dato;

	always @(sw)
		begin
			dato = ~sw;
			case (dato)
				3'b000:  led = 8'b0111_1111;
				3'b001:  led = 8'b1011_1111;
				3'b010:  led = 8'b1101_1111;
				3'b011:  led = 8'b1110_1111;
				3'b100:  led = 8'b1111_0111;
				3'b101:  led = 8'b1111_1011;
				3'b110:  led = 8'b1111_1101;
				3'b111:  led = 8'b1111_1110;
			endcase			
		end
endmodule
		

