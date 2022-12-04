//********************************************************
//   Copyright(c)2018, STEP FPGA 
//   All rights reserved
//   File name       :   accum4_tb.v
//   Module name     :   accum4_tb
//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2018/08/01
//   Version         :   V1.0
//   Description     :   RS������Testbench
//********************************************************
`timescale 1ns/100ps    //����ʱ�䵥λ/ʱ�侫��        
module accum4_tb();         
 
reg    clk,rst,datain; 
reg [7:0] data;
wire   [3:0]sum; 
 
//��ʼ�����̿�
initial
begin
	clk = 0;
	rst = 0;  
	data <= 8'b00100001;   //�����������ݳ�ֵ
	#25                      
	rst = 1;               
end
 
always #10 clk = ~clk;      
	
always @(posedge clk)       //����������������datain
	if(!rst)
		begin
			datain <= 0;
		end
	else
		begin
			data <={0,data[7:1]};
			datain <= data[0];
		end
 
//module����������ʽ
accum4   u1 (
		.clk	(clk),     
		.rst	(rst), 
		.datain (datain),
		.sum	(sum)   
);
endmodule