// ------------------------------------------------ -------------------- 
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE < <<<<<<<<<<<<<<<<<<<<<<< 
// ------------------------ -------------------------------------------- 
// Module: Uart_Tx 
// 
// Author: Step 
// 
// Description: The transfer module of uart interface 
// 
// Web: www.stepfpga.com 
// 
// ----------------- -------------------------------------------------- - 
// Code Revision History: 
// ----------------------------------------- --------------------------- 
// Version: |Mod. Date: |Changes Made:
// V1.0 |2016/04/20 |Initial ver
// ------------------------------------------------ -------------------- 

module Uart_Tx
	(
		input                    clk_in,         // System clock 
		input                    rst_n_in,       // System reset, low effective 
		output 	reg              bps_en,         // Send clock enable 
		input                    bps_clk,        // Sending clock input 
		input                    rx_bps_en,      // Because self-receiving and self-transmitting are required, use the receive clock enable to determine: new data needs to be sent 
        input          [7:0]    tx_data,        // data to be sent 
        output 	reg              rs232_tx        // UART transmission output 
    );

	reg                          rx_bps_en_r;
	
	// delay latch receive clock enable signal 
	always @ (posedge clk_in or negedge rst_n_in) 
		begin
			if (!rst_n_in) 
				rx_bps_en_r <= 1'b0;
            else 
				rx_bps_en_r <= rx_bps_en;
        end 
		
	// detect receive clock enable signal Because the falling edge represents the completion of the received data, it is used as the stimulus to send the signal 
	wire                     neg_rx_bps_en = rx_bps_en_r & (~rx_bps_en);
    
	reg                     [3:0]    num;
	reg                     [9:0]    tx_data_r;
	
	// According to the completion of receiving data, drive sending data operation 
	always @ (posedge clk_in or negedge rst_n_in)
		begin
			if (! rst_n_in)  
				begin
				    bps_en <= 1'b0;
                    tx_data_r <= 8'd0;
                end
			else 
				if (neg_rx_bps_en) 
					begin
						bps_en <= 1'b1; 		// When the falling edge of the receive clock enable signal is detected, it indicates that the reception is complete and data needs to be sent. Enable the send clock enable signal 
						tx_data_r <= {1'b1, tx_data, 1'b0};
					end
				else if (num == 4'd10)  
					begin
						bps_en <= 1'b0;         // One UART transmission requires 10 clock signals, and then ends 
					end 
		end 
		
	// when in When in working state, send data according to the beat of the sending clock 
	always @ (posedge clk_in or negedge rst_n_in) 
		begin
			if (!rst_n_in) 
				begin 
					num <= 1'b0;
					rs232_tx <= 1'b1;
				end
			else if (bps_en) 
				begin
					if (bps_clk) 
						begin
							num <= num + 1'b1;
							rs232_tx <= tx_data_r[num];
						end
					else if (num >= 4'd10)
						num <= 4'd0;
				end
		end 
 
endmodule






