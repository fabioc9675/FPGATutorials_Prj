// ************************************************ ******************** 
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE < <<<<<<<<<<<<<<<<<<<<<<<< 
// ************************ ******************************************** 
// File name: debounce .v 
// Module name: debounce 
// Author: STEP 
// Description: 
// Web: www.stepfpga.com 
// 
// -------------------- ------------------------------------------------ 
// Code Revision History: 
// -------------------------------------------- ------------------------ 
// Version: |Mod. Date: |Changes Made:
// V1.0 |2017/03/02 |Initial ver 
// ---------------------------------- ----------------------------------
// Module Function: key debounce

module debounce (clk, rst, key, key_pulse);
	
	parameter N = 1;
	
	input clk;
	input rst;
	input [N-1:0] key;
	output [N-1:0] key_pulse;
	
	reg [N-1:0] key_rst_pre;  //Define a register variable to store the key value at the last trigger
	reg [N-1:0] key_rst;      //Define a register variable to store the key value triggered at the current moment
	
	wire [N-1:0] key_edge;    //A high pulse is generated when the key changes from high to low detected
	
	// use nonblocking assignments characteristics, when the two clock trigger key state variables stored in two registers 
	always @(posedge clk or negedge rst)
		begin
			if(!rst)
				begin
					key_rst <= {N{1'b1}};  //Assign key_rst to all 1s during initialization, {} means N 1s 
					key_rst_pre <= {N{1'b1}};
				end
			else
				begin
					key_rst <= key;            //The value of key is assigned to key_rst after the first clock rising edge is triggered, and the value of key_rst is assigned to key_rst_pre 
					key_rst_pre <= key_rst;    //Non-blocking assignment. It is equivalent to triggering by two clocks, key_rst stores the value of the key at the current moment, and key_rst_pre stores the value of the key of the previous clock 
				end
		end
		
	assign key_edge = key_rst_pre & (~key_rst); //Pulse edge detection. When the key detects a falling edge, key_edge generates a high level of one clock cycle
	
	reg [17:0] cnt;  //The counter used to generate the delay, the system clock is 12MHz, and the delay is about 20ms, and at least an 18-bit counter is required
	
	// generated 20ms delay, it is effective when the detected key_edge counter is cleared to start counting 
	always @(posedge clk or negedge rst)
		begin
			if (!rst)
				cnt <= 18'h0;
			else if (key_edge)
				cnt <= 18'h0;
			else 
				cnt <= cnt + 1'h1;
		end
	
	reg [N-1:0] key_sec_pre;  //Check the level register variable after delay 
	reg [N-1:0] key_sec;
	
	//Check the key after the delay, if the button state becomes low, a high pulse of the clock is generated. If the state is high, then the key button is not described 
	always @(posedge clk or negedge rst)
		begin
			if (!rst)
				key_sec <= {N{1'b1}};
			else if (cnt == 18'h3FFFF)
				key_sec <= key;
		end
	
	always @(posedge clk or negedge rst)
		begin
			if (!rst)
				key_sec_pre <= {N{1'b1}};
			else 
				key_sec_pre <= key_sec;
		end
		
	assign key_pulse = key_sec_pre & (~key_sec);
	
endmodule
	
	
	
	
	
	
	
	
	