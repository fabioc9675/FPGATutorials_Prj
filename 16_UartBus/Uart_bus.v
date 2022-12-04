// ------------------------------------------------ -------------------- 
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE < <<<<<<<<<<<<<<<<<<<<<<< 
// ------------------------ -------------------------------------------- 
// Module: Uart_bus 
// 
// Author: Step 
// 
// Description: The module for uart communication 
// 
// Web: www.stepfpga.com 
// 
// ------------------ -------------------------------------------------- 
// Code Revision History: 
// ------------------------------------------ -------------------------- 
// Version: |Mod. Date: |Changes Made:
// V1.0 |2016/04/20 |Initial ver
// ------------------------------------------------ --------------------

module Uart_Bus #
	(
		parameter             BPS_PARA  = 1250  //When using 12MHz clock, the baud rate parameter selects 1250 corresponding to 9600 baud rate
	)
	(
		input                 clk_in,           // System clock
		input                 rst_n_in,         // System reset, Low effective
		input                 rs232_rx,         // UART receiving end in FPGA, assigned to the sending end in UART module TXD 
		output                rs232_tx          // UART sending end in FPGA, assigned to UART module RXD in the receiving end
	);


///////////////////////////////// UART receiving function module instantiation /////////////////////////////////// 
	wire                      bps_en_rx, bps_clk_rx;
	wire           [7:0]     rx_data;  

	// UART receive baud rate clock control module instantiation
	Baud #
	(
		.BPS_PARA             (BPS_PARA)
	)
	Baud_rx
	(
		.clk_in               (clk_in),          // System clock
		.rst_n_in             (rst_n_in),        // System reset, active low
		.bps_en               (bps_en_rx),       // Receive clock enable
		.bps_clk              (bps_clk_rx)       // Receive clock output		
	);
	
	// UART receive data module instantiation
	Uart_Rx Uart_Rx_uut 
	(
		.clk_in               (clk_in),           // System clock
		.rst_n_in             (rst_n_in),         // System reset, active low
		.bps_en               (bps_en_rx),        // Receive clock enable
		.bps_clk              (bps_clk_rx),       // Receive clock input
		.rs232_rx             (rs232_rx),         // Uart receives input
		.rx_data              (rx_data)           // Received data 
	);
	
	///////////////////////////////// UART sending function module instantiation /////////////////////////////////// 
	wire                      bps_en_tx, bps_clk_tx;

	// UART send baud rate clock control module instantiation 
	Baud #
	(
		.BPS_PARA             (BPS_PARA)
	)
	Baud_tx
	(
		.clk_in               (clk_in),          // System clock
		.rst_n_in             (rst_n_in),        // System reset, active low
		.bps_en               (bps_en_tx),       // Send clock enable
		.bps_clk              (bps_clk_tx)       // Send clock output		
	);
	
	// UART send data module instantiation
	Uart_Tx Uart_Tx_uut 
	(
		.clk_in               (clk_in),           // System clock
		.rst_n_in             (rst_n_in),         // System reset, active low
		.bps_en               (bps_en_tx),        // Send clock enable
		.bps_clk              (bps_clk_tx),       // Send clock input
		.rx_bps_en            (bps_en_rx),        // Due to the need for self-receiving and self-transmitting, use the receive clock enable to determine: new data needs to be sent. 
		.tx_data              (rx_data),          // data to be sent
		.rs232_tx             (rs232_tx)          // Uart transmision output
	);

endmodule














