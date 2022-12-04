// ------------------------------------------------ -------------------- 
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE < <<<<<<<<<<<<<<<<<<<<<<< 
// ------------------------ -------------------------------------------- 
// Module: Param_define 
// 
// Author: Step 
// 
// Description: Param_define 
// 
// Web: www.stepfpga.com 
// 
// ---------------------- ---------------------------------------------- 
// Code Revision History: 
// ---------------------------------------------- ---------------------- 
// Version: |Mod. Date: |Changes Made: 
// V1.1 |2016/10/30 |Initial ver 
// -------------------------------------- ------------------------------
`timescale 1ns / 1ns

// VGA display driver only needs 5 signals (line sync, field sync, red, green, blue signal) 
// Red, green and blue signals are analog signals, and the input voltage range is 0.0V~0.7V // In VGA timing, the horizontal synchronization and vertical synchronization are divided into four stages (synchronization pulse, back porch, number of effective lines, front porch) 
// VGA display has many modes, and each mode has fixed clock and timing parameters, according to Request control

`ifdef VGA_800X600_60Hz  //Corresponding parameters for different VGA display modes 
//------------------------------------ --------------------------------------- 
//-- Horizonal timing information 
`define HSYNC_A    16'd128 	    // 128 
`define HSYNC_B    16'd216 	    // 128 + 88	 
`define HSYNC_C    16'd1016 	// 128 + 88 + 800 
`define HSYNC_D    16'd1056 	// 128 + 88 + 800 + 40 // Line sync pulse + back porch + number of effective lines + front porch 
//-- Vertical timing information 
`define VSYNC_O    16'd4 		// 4 
`define VSYNC_P    16'd27      // 4 + 23 
`define VSYNC_Q    16'd627 	    // 4 + 23 + 600 
`define VSYNC_R    16'd628 	    // 4 + 23 + 600 + 1 //field sync pulse + back gallery + number of valid lines +front porch 
//--------------------------------------------- ------------------------------ 
`endif

`ifdef VGA_800X600_56Hz  //Corresponding parameters for different VGA display modes 
//------------------------------------ --------------------------------------- 
//-- Horizonal timing information 
`define HSYNC_A    16'd128 	    // 128 
`define HSYNC_B    16'd216 	    // 128 + 128	 
`define HSYNC_C    16'd1016 	// 128 + 128 + 800 
`define HSYNC_D    16'd1056 	// 128 + 128 + 800 + 32 // Line sync pulse + back porch + number of effective lines + front porch 
//-- Vertical timing information 
`define VSYNC_O    16'd4 		// 4 
`define VSYNC_P    16'd27      // 4 + 14 
`define VSYNC_Q    16'd627 	    // 4 + 14 + 600 
`define VSYNC_R    16'd628 	    // 4 + 14 + 600 + 1 //field sync pulse + back gallery + number of valid lines +front porch 
//--------------------------------------------- ------------------------------ 
`endif

`ifdef VGA_640X480_85Hz	 //corresponding parameters for different VGA display modes 
//------------------------------------ --------------------------------------- 
//-- Horizonal timing information 
`define HSYNC_A    16'd48 	    // 48 
`define HSYNC_B    16'd160 	    // 48 + 112 
`define HSYNC_C    16'd800 	    // 48 + 112 + 640 
`define HSYNC_D    16'd832 	    // 48 + 112 + 640 + 32 // Line sync pulse + back porch + number of effective lines + front porch 
//-- Vertical timing information 
`define VSYNC_O    16'd3 		// 3 
`define VSYNC_P    16'd28 	    // 3 + 25 
`define VSYNC_Q    16'd508 	    // 3 + 25 + 480 
`define VSYNC_R    16'd509 	    // 3 + 25 + 480 + 1 //field sync pulse + back gallery + number of effective lines +front porch 
//--------------------------------------------- ------------------------------ 
`endif


