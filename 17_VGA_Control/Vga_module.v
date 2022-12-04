// ------------------------------------------------ -------------------- 
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE < <<<<<<<<<<<<<<<<<<<<<<< 
// ------------------------ -------------------------------------------- 
// Module: Vga_Module 
// 
// Author: Step 
// 
// Description: Vga_Module 
// 
// Web: www.stepfpga.com 
// 
// ---------------------- ---------------------------------------------- 
// Code Revision History: 
// ---------------------------------------------- ---------------------- 
// Version: |Mod. Date: |Changes Made: 
// V1.1 |2016/10/30 |Initial ver 
// -------------------------------------- ------------------------------

`define     VGA_800X600_56Hz // VGA_800X600_60Hz	 //Define the VGA display mode used
 
`ifdef 		VGA_800X600_56Hz // VGA_800X600_60Hz	 //Call the corresponding parameters according to the definition of VGA display mode 
`include 	"Param_define.v" 	//Call the global definition in the Param_define.v file 
`endif	


module Vga_Module
	(
		//input              clk_in,             // 40MHz system clock 
		input              rst_n_in,           // System reset, low effective
        output  reg        sync_v,             // VGA field sync sync_v
        output  reg        sync_h,             // VGA line sync sync_h
        output  reg [2:0]	vga_data            // VGA data MSB~LSB = {R,G,B}
    );		
	
	wire clk_in;
	
	// OSCH #(.NOM_FREQ("44.33")) rc_oscillator(.STDBY(1'b0), .OSC(clk_in));
	OSCH #(.NOM_FREQ("38.00")) rc_oscillator(.STDBY(1'b0), .OSC(clk_in));

	reg  [15:0]   x_cnt;
	reg  [15:0]   y_cnt;
	reg            vga_valid;
	
	//Count the clock to identify the time required for one line scan of VGA 
	always @(posedge clk_in or negedge rst_n_in)
		if (!rst_n_in) x_cnt <= 16'd0;  // initial value at reset
		else if (x_cnt >= `HSYNC_D)x_cnt <= 16'd0;  //One line scan requires 1056 clocks (128+88+800+40) 
		else x_cnt <= x_cnt + 1'b1;
			
	//The line scan count identifies the time required for one field scan of VGA 
    always  @(posedge clk_in or negedge rst_n_in) 
	    if (!rst_n_in) y_cnt <=  16'd0; 	//Initial value at reset 
	    else if (x_cnt == `HSYNC_D ) 
			begin 	// Every time a line scan 
		        if (y_cnt >= `VSYNC_R) y_cnt <= 16'd0; 	//Each field scan contains 628 line scans 
		        else y_cnt <= y_cnt + 1'b1; 
	        end  
		else y_cnt <= y_cnt; 	//The field scan counter is kept during each line scan Unchanged 

    // According to the parameters of the display mode, the pulse of line synchronization scanning is generated 
    always @(posedge clk_in or negedge rst_n_in) 
	    if (!rst_n_in) sync_h <=  1'b1; 
	    else if (x_cnt < `HSYNC_A) sync_h <= 1'b0; 	
	    else sync_h <= 1'b1; 	

	// Generate vertical sync scan pulse according to the parameters of the display mode 
	always @(posedge clk_in or negedge rst_n_in) 
	    if (!rst_n_in) sync_v <= 1'b1; 
	    else if (y_cnt < `VSYNC_O ) sync_v <= 1'b0; 
	    else sync_v <= 1'b1; 
	//Determine the effective display area according to the effective line number of the horizontal and vertical synchronization signal 
    always @(posedge clk_in or negedge rst_n_in) 
	    if (!rst_n_in) 
			vga_valid <=  1'b0; 
	    else if ((x_cnt > `HSYNC_B) && (x_cnt < `HSYNC_C) && (y_cnt > `VSYNC_P) && (y_cnt < `VSYNC_Q)) 
		    vga_valid <= 1'b1;  //The vga_valid flag in the effective display area is 1 
	    else 
		    vga_valid <= 1'b0;	
			
	//Display different colors in different segments of the VGA effective display area 
	always @(posedge clk_in or negedge rst_n_in)
        begin
            if (!rst_n_in) vga_data = 3'b111;
            else if (vga_valid) 
				begin // in the effective display area  
					if ((x_cnt > `HSYNC_B) && (x_cnt <= `HSYNC_B + 10'd100))
                        vga_data = 3'b100; //Red
					else if ((x_cnt > `HSYNC_B + 10'd100) && (x_cnt <= `HSYNC_B + 10'd200))
                        vga_data = 3'b010;	//green 
					else if ((x_cnt > `HSYNC_B + 10'd200) && (x_cnt <= `HSYNC_B + 10'd300))
                        vga_data = 3'b001; //blue
					else if ((x_cnt > `HSYNC_B + 10'd300) && (x_cnt <= `HSYNC_B + 10'd400))
                        vga_data = 3'b110;	//yellow 
		            else if ((x_cnt > `HSYNC_B + 10'd400) && (x_cnt <= `HSYNC_B + 10'd500))
                        vga_data = 3'b101;	//purple
					else if ((x_cnt > `HSYNC_B + 10'd500) && (x_cnt <= `HSYNC_B + 10'd600)) 	
			            vga_data = 3'b011;	//Cyan 
            		else if ((x_cnt > `HSYNC_B + 10'd600) && (x_cnt <= `HSYNC_B + 10'd700)) 	
                        vga_data = 3'b111;	//white
		            else if ((x_cnt > `HSYNC_B + 10'd700) && (x_cnt <= `HSYNC_B + 10'd800)) 	
			            vga_data = 3'b000; //black 
					else 
						vga_data =  3'b111 ; //white 
			    end
			else 
				vga_data =  3'b111 ; 				//white 
	    end 		
		
		
endmodule


