//********************************************************
//   Copyright(c)2018, STEP FPGA 
//   All rights reserved
//   File name       :   shift7_tb.v
//   Module name     :   shift7_tb
//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2018/08/01
//   Version         :   V1.0
//   Description     :   ��λ�Ĵ���Testbench
//********************************************************
`timescale 1ns/100ps    //����ʱ�䵥λ/ʱ�侫��

module shift7_tb;
	
reg clk, rst;       //��Ҫ�����ļ����źŶ���
reg [6:0]datain;    
wire dataout;       //��Ҫ�۲������źŶ���

initial
	begin
		clk =0;
		rst =1;
		datain =7'b1110101;   //������λ����
		#50
		rst =0;
		#100
		rst =1;
	end
	
always #20 clk =~clk;     //����ʱ���ź� Ƶ��25MHz
//module����������ʽ
shift7 u1 (
				.clk	(clk),
				.rst	(rst),
				.datain	(datain),
				.dataout(dataout)
			);
endmodule
