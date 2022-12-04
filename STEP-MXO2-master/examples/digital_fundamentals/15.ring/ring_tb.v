//********************************************************
//   Copyright(c)2018, STEP FPGA 
//   All rights reserved
//   File name       :   ring_tb.v
//   Module name     :   ring_tb
//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2018/08/01
//   Version         :   V1.0
//   Description     :   ���μ�����Testbench
//********************************************************
`timescale 1ns/100ps    //����ʱ�䵥λ/ʱ�侫��

module ring_tb;
	
reg clk,rst;
wire [7:0]	q;
initial
	begin
		clk =0;
		rst =0;
		#20
		rst =1;
	end
	
always#10 clk =~clk;
ring u1 (
				.clk	(clk),
				.rst	(rst),
				.cnt	(q)
				);
endmodule
