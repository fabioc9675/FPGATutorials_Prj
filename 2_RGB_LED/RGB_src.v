// ********************************************************************
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// ********************************************************************
// File name    : RGBLED.v
// Module name  : LED
// Author       : STEP
// Description  : control RGB LED
// Web          : www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History : 
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2017/03/02   |Initial ver
// ------------------------------------------------ -------------------- 
// Module Function: Use the state of the switch to control the display and color of RGB LED lights.

module LED_RGB(rgb, key);
	
	input wire [3:0] key;
	output reg[5:0] rgb;
	
	reg [3:0] dato;
	
	// assign rgb = {key[2:0]};
	
	always @(key)
		begin
			dato = ~key;
			case (dato)
				4'b0001:
					rgb = 6'b110110;
				4'b0010:
					rgb = 6'b101101;
				4'b0100:
					rgb = 6'b011011;
				4'b1000:
					rgb = 6'b000000;
				default:
					rgb = 6'b111111;
			endcase
		end	
	
endmodule
	