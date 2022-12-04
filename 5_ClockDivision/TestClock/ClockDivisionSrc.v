// ************************************************ ******************** 
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE < <<<<<<<<<<<<<<<<<<<<<<<< 
// ************************ ******************************************** 
// File name: divide .v 
// Module name: divide 
// Author: STEP 
// Description: clock divider 
// Web: www.stepfpga.com 
// 
// ------------------ -------------------------------------------------- 
// Code Revision History: 
// ------------------------------------------ -------------------------- 
// Version: |Mod. Date: |Changes Made:
// V1.0 |2017/03/02 |Initial ver
// ------------------------------------------------ -------------------- 
// Module Function: Any integer clock division

module divide (clk, rst_n, clkout);
	
	input clk, rst_n;  // input signals clock in C1 = 12 MHz
	output clkout;     // signal can be connected to LED output
	
	// parameter is a constant statement in Verilog
	parameter WIDTH = 3;  // number of digits in the counter, maximum value 2**WIDTH-1
	parameter N = 5;      // frequency division factor, N< 2**WIDTH-1 to prevent overflow
	
	reg [WIDTH-1:0] cnt_p, cnt_n; // cnt_p for trigger by rising edge, cnt_n for trigger by falling edge
	reg clk_p, clk_n;  // clk_p is division clock rising edge, clk_n is division clock falling edge
	
	//The counter control when the rising edge is triggered 
	always @(posedge clk or negedge rst_n)  //posedge and negedge are verilog indicating the rising and falling edges of the signal 
	begin   // When the rising edge of clk comes or rst_n goes low, execute once in always The statement
		if (!rst_n)
			cnt_p <= 0;
		else if (cnt_p == (N-1))
			cnt_p <= 0;
		else cnt_p <= cnt_p+1;   //The counter keeps counting, when the count reaches N-1 When cleared, this is a modulo N counter 
	end
	//The divided clock output triggered by the rising edge, if N is an odd number, the clock duty cycle is not 50%; if N is an even number, the clock duty cycle is 50% 
	always @(posedge clk or negedge rst_n)
	begin
		if (!rst_n)
			clk_p <= 0;
		else if (cnt_p < (N >> 1))    // N >>. 1 represents a right shift, is equivalent to remove the remainder divided by 2 
			clk_p <= 0;
		else clk_p <= 1;   //The positive cycle of the obtained divided clock is one clk clock
	end
	//Counter control when the falling edge is triggered 
	always @(negedge clk or negedge rst_n)
	begin
		if (!rst_n)
			cnt_n <= 0;
		else if (cnt_n == (N - 1))
			cnt_n <= 0;
		else cnt_n <= cnt_n + 1;		
	end
	 //The divided clock output triggered by the falling edge is half a clock away from clk_p 
	always @ (negedge clk or negedge rst_n)
	begin
		if (!rst_n)
			clk_n <= 0;
		else if (cnt_n < (N >> 1))
			clk_n <= 0;
		else 
			clk_n <= 1; //The positive cycle of the divided clock obtained is one clk clock more than the negative cycle
	end
	
	assign clkout = (N == 1)? clk : (N[0]) ? (clk_p & clk_n) : clk_p;    //Condition judgment expression 
																			//When N=1, directly output clk 
																			//When N is an even number That is, the lowest bit of N is 0, N(0)=0, output clk_p 
																			//When N is odd, that is, the lowest bit of N is 1, N(0)=1, output clk_p&clk_n. There are many positive cycles, so it is phase and
	
endmodule

