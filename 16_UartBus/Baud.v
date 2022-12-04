// ------------------------------------------------ -------------------- 
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE < <<<<<<<<<<<<<<<<<<<<<<< 
// ------------------------ -------------------------------------------- 
// Module: Baud 
// 
// Author: Step 
// 
// Description: Beat for uart transfer and receive baud rate 
// 
// Web: www.stepfpga.com 
// 
// --------------- -------------------------------------------------- --- 
// Code Revision History: 
// --------------------------------------- ----------------------------- 
// Version: |Mod. Date:|Changes Made: 
// V1.0 |2016/04/20 |Initial ver
// ------------------------------------------------ -------------------- 

module Baud #
	(
		parameter                       BPS_PARA = 1250        // When using 12MHz clock, the baud rate parameter selects 1250 corresponding to 9600 baud rate
	)
	(
		input                           clk_in,                // System clock
		input                           rst_n_in,              // System reset, low active
		input                           bps_en,                // Receive or transmit clock enable
		output  reg                     bps_clk                // Receive or transmit clock output
	);
	
	reg                   [12:0]       cnt;                   // The counter count meets the baud rate clock requirement 

	always @ (posedge clk_in or negedge rst_n_in) 
		begin
			if (!rst_n_in)
				cnt <= 1'b0;
			else if ((cnt >= BPS_PARA - 1) || (!bps_en))  // When the clock signal is not enabled (bps_en is low), the counter is cleared and stops counting 
				cnt <= 1'b0;
			else                                            // When the clock signal is enabled, the counter counts the system clock, the period is BPS_PARA system clock cycles 
				cnt <= cnt + 1'b1;		
		end
		
	//Generate the clock beat of the corresponding baud rate, and the receiving module will receive UART data at this beat 
	always @ (posedge clk_in or negedge rst_n_in)
		begin
			if(!rst_n_in)
				bps_clk <= 1'b0;
			else if (cnt == (BPS_PARA >> 1))     //BPS_PARA shifted by one bit to the right is equal to dividing by 2. Because the final value of the counter BPS_PARA is the data replacement time point, the middle value of the counter is the most stable time point of data 
				bps_clk <= 1'b1;
			else
				bps_clk <= 1'b0;
		end

endmodule




