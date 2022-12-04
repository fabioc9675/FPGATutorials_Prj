//********************************************************
//   Copyright(c)2018, STEP FPGA 
//   All rights reserved
//   File name       :   dff_tb.v
//   Module name     :   dff_tb
//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2018/08/01
//   Version         :   V1.0
//   Description     :   D������Testbench
//********************************************************
`timescale 1ns/100ps    //����ʱ�䵥λ/ʱ�侫��
 
module dff_tb();       
 
reg    clk,rst,d;         	//��Ҫ�����ļ����źŶ���
wire   q,qb;      	  //��Ҫ�۲������źŶ���
 
//��ʼ�����̿�
initial
begin
	clk = 0;
	rst = 0;
	d = 0;
	#50
	rst = 1;
	
end
always #10 clk = ~clk;      //��������clk��Ƶ��50MHz
always #15 d = ~d;
 
//module����������ʽ
dff  u1 (      //dff��ʾ��Ҫ������module���ƣ�u1�����Ƕ������������
		.clk(clk),     //��������ź����ӡ�
		.rst(rst),
		.d(d),
		.q(q),    //����ź�����
		.qb(qb)   
);
endmodule