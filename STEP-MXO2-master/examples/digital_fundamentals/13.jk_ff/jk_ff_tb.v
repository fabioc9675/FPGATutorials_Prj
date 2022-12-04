//********************************************************
//   Copyright(c)2018, STEP FPGA 
//   All rights reserved
//   File name       :   jk_ff_tb.v
//   Module name     :   jk_ff_tb
//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2018/08/01
//   Version         :   V1.0
//   Description     :   JK������Testbench
//********************************************************
`timescale 1ns/100ps    //����ʱ�䵥λ/ʱ�侫��
 
module jk_ff_tb();       
 
reg    clk,j,k,rst,set;         	//��Ҫ�����ļ����źŶ���
wire   q,qb;      	  //��Ҫ�۲������źŶ���
 
//��ʼ�����̿�
initial
begin
	clk = 0;
	j = 0;
	k = 0;
	rst = 1;
	set = 1;
	#50
	set = 0;
	#50
	set = 1;
	#50
	rst = 0;
	#50
	rst = 1;
end
always #10 clk = ~clk;      //��������clk��Ƶ��50MHz
always #20 j = ~j;
always #30 k = ~k;

 
//module����������ʽ
jk_ff  u1 (      //jk_ff��ʾ��Ҫ������module���ƣ�u1�����Ƕ������������
		.clk(clk),     //��������ź����ӡ�
		.j(j),
		.k(k),
		.rst(rst),
		.set(set),
		.q(q),    //����ź�����
		.qb(qb)   
);
endmodule