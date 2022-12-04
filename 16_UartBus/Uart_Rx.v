// ------------------------------------------------ -------------------- 
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE < <<<<<<<<<<<<<<<<<<<<<<< 
// ------------------------ -------------------------------------------- 
// Module: Uart_Rx 
// 
// Author: Step 
// 
// Description: The receive module of uart interface 
// 
// Web: www.stepfpga.com 
// 
// ----------------- -------------------------------------------------- - 
// Code Revision History: 
// ----------------------------------------- --------------------------- 
// Version: |Mod. Date: |Changes Made:
// V1.0 |2016/04/20 |Initial ver
// ------------------------------------------------ -------------------- 

module Uart_Rx
	(
		input                            clk_in,        // system clock 
        input                            rst_n_in,      // system reset, low active
		
		output  reg                      bps_en,        // Receive clock enable 
		input                            bps_clk,       // Receive clock input
		
		input                            rs232_rx,      // UART receive input 
        output  reg         [7:0]       rx_data        // received data 
	);
	
	reg                  rs232_rx0, rs232_rx1, rs232_rx2; 	// Multi-level delay latch to remove metastable state 

	always @ (posedge clk_in or negedge rst_n_in)  
		begin 
			if (!rst_n_in)
				begin 
					rs232_rx0 <= 1'b0; 
					rs232_rx1 <= 1'b0; 
					rs232_rx2 <= 1'b0; 
				end
			else
				begin 
					rs232_rx0 <= rs232_rx; 
					rs232_rx1 <= rs232_rx0;
					rs232_rx2 <= rs232_rx1; 
				end 
		end
		
	// Detect the falling edge of the UART receiving input signal 
    wire            neg_rs232_rx = rs232_rx2 & rs232_rx1 & (~rs232_rx0 ) & (~rs232_rx); 	
	
	reg                     [3:0]      num;
	
	// Receive clock enable signal control 
	always @ (posedge clk_in or negedge rst_n_in) 
		begin 
			if (!rst_n_in)
				bps_en <= 1'b0;
            else if (neg_rs232_rx && (!bps_en))     // When the idle state (bps_en is low), the falling edge of the UART receiving signal is detected, and it enters the working state (bps_en is high), and the control clock module generates the receive clock 
				bps_en <= 1'b1;
            else if (num == 4'd9)                   // After completing a UART receiving operation, exit the working state and restore the idle state 
				bps_en <= 1'b0;
        end
		
	reg                       [7:0]      rx_data_r;
	
	// When in working state When in the middle, get data according to the beat of the receiving clock 
	always @ (posedge clk_in or negedge rst_n_in)
		begin
			if (!rst_n_in)
				begin
					num <= 4'd0;
					rx_data <= 8'd0;
					rx_data_r <= 8'd0;
				end  
			else if (bps_en)  
				begin
					if (bps_clk) 
						begin 
							num <= num + 1'b1;
							if (num <= 4'd8)
								rx_data_r [num - 1] <= rs232_rx; 	// first accept the low bit and then the high bit, 8-bit valid data 
						end
					else if (num == 4'd9)
						begin 	//After completing a UART receiving operation, output the acquired data 
							num <= 4'd0;
							rx_data <= rx_data_r; 
						end
				end 
		end 
	
endmodule



