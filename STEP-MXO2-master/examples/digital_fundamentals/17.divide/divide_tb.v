//********************************************************
//   Copyright(c)2018, STEP FPGA 
//   All rights reserved
//   File name       :   divide_tb.v
//   Module name     :   divide_tb
//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2018/08/01
//   Version         :   V1.0
//   Description     :   ����������Ƶ��Testbench
//********************************************************
`timescale 1ns/100ps    //����ʱ�䵥λ/ʱ�侫��
 
module divide_tb();          //�����ļ�Ҳ��һ��module����Ϊ���ڷ�������������������ź�
 
reg    clk,rst_n;         	//��Ҫ�����ļ����źŶ��壬�����ź���Ҫ���̿�������Զ���Ϊreg�ͱ���
wire   clkout;           	//��Ҫ�۲������źŶ��壬����Ϊwire�ͱ���
 
//��ʼ�����̿�
initial
begin
	clk = 0;
	rst_n = 0;
	#25                      //#��ʾ��ʱ25��ʱ�䵥λ
	rst_n = 1;               //������һ����ʼ25ns�͵�ƽ��Ȼ���ߵ�ƽ�ĸ�λ�ź�
end
 
always #10 clk = ~clk;       //ÿ��10ns��תһ��clk�źţ�Ҳ���ǲ���һ��ʱ������20ns��clk��Ƶ��Ϊ50MHz
 
//module����������ʽ
divide  #(.WIDTH(4),.N(11))  u1 (      //#����ģ�����Ϊ�������ݣ���������ݲ�������������ģ���еĲ���Ĭ��ֵ
                                       //divide��ʾ��Ҫ������module���ƣ�u1�����Ƕ�����������ƣ���������ĸ��ͷ
		.clk	(clk),     //��������ź����ӡ� .clk��ʾmodule��������ź����ƣ���clk����ʾ���������ﶨ��ļ����ź�
		.rst_n	(rst_n),   //��testbench�ﶨ����ź����ƿ�������Ҫ����module�Ķ˿��ź����Ʋ�ͬ
		.clkout	(clkout)   
);
endmodule
	