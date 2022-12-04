//********************************************************
//   Copyright(c)2018, STEP FPGA 
//   All rights reserved
//   File name       :   stepmotor1_tb.v
//   Module name     :   stepmotor1_tb
//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2018/08/01
//   Version         :   V1.0
//   Description     :   �������Testbench������������޸�stepmotor1������ķ�Ƶʱ��
//********************************************************
`timescale 1ns/100ps    //����ʱ�䵥λ/ʱ�侫��

 
module stepmotor1_tb();          
 
reg    clk,rst_n;     	//��Ҫ�����ļ����ź�
wire   [5:0]clkout;    	//��Ҫ�۲������ź�
 
//��ʼ�����̿�
initial
begin
	clk = 0;
	rst_n = 0;
	#25                      //#��ʾ��ʱ25��ʱ�䵥λ
	rst_n = 1;               //������һ����ʼ25ns�͵�ƽ��Ȼ���ߵ�ƽ�ĸ�λ�ź�
end
 
always #10 clk = ~clk;       //һ��ʱ������20ns��clk��Ƶ��Ϊ50MHz
 
//module����������ʽ
stepmotor1   u1 (      
		.clk	(clk),     //.clk��ʾmodule��������ź����ƣ���clk����ʾ���������ﶨ��ļ����ź�
		.rst	(rst_n),   //��testbench�ﶨ����ź����ƿ�������Ҫ����module�Ķ˿��ź����Ʋ�ͬ
		.led	(clkout)   
);
endmodule
	