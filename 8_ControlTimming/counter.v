// ************************************************ ******************** 
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE < <<<<<<<<<<<<<<<<<<<<<<<< 
// ************************ ******************************************** 
// File name: counter .v 
// Module name: counter 
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
// Module Function: 24 second countdown counter

module counter 
	(clk,        // clock
	 rst,        // reset
	 hold,       // start pause button
	 seg_led_1,  // digital tube 1
	 seg_led_2,  // digital tube 2
	 led         // led
	 );
	 
	input clk, rst;
	input hold;
	 
	output [8:0] seg_led_1, seg_led_2;
	output reg [7:0] led;
	 
	wire clk1h;            // 1Hz clock
	wire hold_pulse;       // signal after key press debounce
	reg  hold_flag;        // key flag bit
	reg back_to_zero_flag; // timing completion signal
	reg [6:0] seg [9:0];
	reg [3:0] cnt_ge;     // ones place
	reg [3:0] cnt_shi;    // tens place
	 
	initial  
	begin 
		seg [ 0 ]  =  7'h3F ; 	   // 0 
		seg [ 1 ]  =  7'h06 ; 	   // 1 
		seg [ 2 ]  =  7'h5B ; 	   // 2 
		seg [ 3 ]  =  7'h4F ; 	   // 3 
		seg [ 4 ]  =  7'h66 ; 	   // 4 
		seg [ 5 ]  =  7'h6D ; 	   // 5 
		seg [ 6 ]  =  7'h7D ; 	   // 6 
		seg [ 7 ]  =  7'h07 ; 	   // 7 
		seg [ 8 ]  =  7'h7F ; 	   // 8 
		seg [ 9 ]  =  7'h6F ; 	   // 9 
       /*if need to display AF To uncomment this paragraph
		seg[10]= 7'hf7; // A
		seg[11]= 7'h7c; // b
		seg[12]= 7'h39; // C
		seg[13]= 7'h5e; // d
		seg[14]= 7'h79; // E
		seg[15]= 7'h71; // F*/ 
	end
	
	// Start/Pause button to debounce
	debounce u2 (
	             .clk(clk), 
				 .rst(rst),
				 .key(hold), 
				 .key_pulse(hold_pulse)
				);
	// Used to divide a frequency of 1Hz
	divide #(.WIDTH(32), .N(12000000)) u1(
				.clk(clk),
				.rst_n(rst),
				.clkout(clk1h)
				);
	// key action flag signal generation
	always @(posedge hold_pulse)
		if(!rst == 1)
			hold_flag <= 0;
		else
			hold_flag <= ~hold_flag;
	// time completion flag signal generation
	always @(*)
		if(!rst == 1)
			back_to_zero_flag <= 0;
		else if (cnt_shi == 0 && cnt_ge == 0)
			back_to_zero_flag <= 1;
		else 
			back_to_zero_flag <= 0;
	// 24 second countdown control
	always @(posedge clk1h or negedge rst)
		begin
			if(!rst == 1)
				begin
					cnt_ge  <= 4'D4;
					cnt_shi <= 4'D2;
				end
			else if (hold_flag == 1) 
				begin
					cnt_ge  <= cnt_ge;
					cnt_shi <= cnt_shi;
				end
			else if (cnt_shi == 0 && cnt_ge == 0)
				begin
					cnt_ge  <= cnt_ge;
					cnt_shi <= cnt_shi;
				end
			else if (cnt_ge == 0)
				begin
					cnt_ge <= 4'D9;
					cnt_shi <= cnt_shi - 1;
				end
			else 
				cnt_ge <= cnt_ge - 1;
		end	
	// when the timing is complete, the led
	always @(back_to_zero_flag)
		begin
			if (back_to_zero_flag == 1)
				led = 8'b00000000;
			else
				led = 8'b11111111;
		end

	assign seg_led_1 [8:0] = {2'b00, seg[cnt_ge]};
	assign seg_led_2 [8:0] = {2'b00, seg[cnt_shi]};

endmodule

	 
	 
	 
	 
	 