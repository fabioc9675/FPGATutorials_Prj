// ********************************************************************
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// ********************************************************************
// File name    : traffic.v
// Module name  : traffic
// Author       : STEP
// Description  : 
// Web          : www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History : 
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2017/03/02   |Initial ver
// --------------------------------------------------------------------
// Module Function: Simple traffic light

module traffic
(
	clk,           //clock 
	rst_n,         //reset 
	out            //three-color led represents traffic lights 
);
	
	input            clk, rst_n;
	output reg[5:0] out;
	
	parameter  S1 = 4'b00,  // State machine state code
	           S2 = 4'b01,
			   S3 = 4'b10,
			   S4 = 4'b11;
			   
	parameter  time_s1 = 4'd15,  // timing parameter
	           time_s2 = 4'd03,
			   time_s3 = 4'd07,
			   time_s4 = 4'd03;
			   
	parameter  led_s1 = 6'b101011,   // LED2 green LED1 red
			   led_s2 = 6'b110011,   // LED2 blue LED1 red
			   led_s3 = 6'b011101,   // LED2 red LED1 green 
			   led_s4 = 6'b011110;   // LED2 red LED1 blue
			   
	reg [3:1] timecont;
	reg [1:0] cur_state, next_state;  // current state, next state
	
	wire       clk1h;   // 1Hz clock
	
	// 1 second clock cycle produced
	divide #(.WIDTH(32), .N(12000000)) CLK1H (
								.clk(clk), 
								.rst_n(rst_n),
								.clkout(clk1h));
								
	// first segment sync Logic describing the transition from the second state to the present state 
	always @(posedge clk1h or negedge rst_n)
		begin
			if (!rst_n)
				cur_state <= S1;
			else 
				cur_state <= next_state;
		end
	
	// second stage composition described in the state transition logic determines 
	always @(cur_state or rst_n or timecont)
		begin
			if (!rst_n)
				begin
					next_state = S1;
				end
			else
				begin
					case (cur_state)
						S1:
						begin
							if(timecont == 1)
								next_state = S2;
							else 
								next_state = S1;
						end
						S2:
						begin
							if(timecont == 1)
								next_state = S3;
							else 
								next_state = S2;
						end
						S3:
						begin
							if(timecont == 1)
								next_state = S4;
							else 
								next_state = S3;
						end
						S4:
						begin
							if(timecont == 1)
								next_state = S1;
							else 
								next_state = S4;
						end
						default:
							next_state = S1;
					endcase
				end
		end
	
	// output operation of the third paragraph // described synchronization logic state views
	always @(posedge clk1h or negedge rst_n)
		begin
			if(!rst_n == 1)
				begin
					out <= led_s1;
					timecont <= time_s1;
				end
			else
				begin
					case (next_state)
						S1:
						begin
							out <= led_s1;
							if(timecont == 1)
								timecont <= time_s1;
							else
								timecont <= timecont -1;
						end
						S2:
						begin
							out <= led_s2;
							if(timecont == 1)
								timecont <= time_s2;
							else
								timecont <= timecont -1;
						end
						S3:
						begin
							out <= led_s3;
							if(timecont == 1)
								timecont <= time_s3;
							else
								timecont <= timecont -1;
						end
						S4:
						begin
							out <= led_s4;
							if(timecont == 1)
								timecont <= time_s4;
							else
								timecont <= timecont -1;
						end
						default:
						begin
							out <= led_s1;
						end
					endcase
				end
		end

endmodule
	
	