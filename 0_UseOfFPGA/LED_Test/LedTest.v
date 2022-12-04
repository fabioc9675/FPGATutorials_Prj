// ------------------------------------------------ -------------------- 
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE < <<<<<<<<<<<<<<<<<<<<<<< 
// ------------------------ -------------------------------------------- 
// Module: LED_test 
// 
// Author: Step 
// 
// Description: Testbench for LED_shining 
// 
// Web: www.stepfpga.com 
// 
// -------------------- ------------------------------------------------ 
// Code Revision History: 
// -------------------------------------------- ------------------------ 
// Version: |Mod. Date: |Changes Made:
// V1.0 |2015/11/11 |Initial ver
// ------------------------------------------------ --------------------
`timescale 1ns/100ps

module LED_test;
	
	parameter CLK_PERIOD = 40;
	parameter CLK_DIV_PERIOD = 20;
	
	reg sys_clk;
	initial
		sys_clk = 1'b0;
	always
		sys_clk = #(CLK_PERIOD / 2) ~ sys_clk;  //Generate a clock excitation with a period of 40ns and a frequency of 25MHz
		
	reg sys_rst_n; //Generate an initial 100ns low level and then high level reset signal to stimulate 
	
	initial
		begin
			sys_rst_n = 1'b0;
			# 100;
			sys_rst_n = 1'b1;
		end
	
	wire led1, led2;
	//module instantiation 
	LED_shining #
	(.CLK_DIV_PERIOD (CLK_DIV_PERIOD))
	LED_shining_uut
	(
	.clk_in(sys_clk),   // pass the
	.rst_n_in(sys_rst_n),   // pass the reset
	.led1(led1),   // pass the output led1
	.led2(led2)   // pass the output Led2
	);
endmodule



