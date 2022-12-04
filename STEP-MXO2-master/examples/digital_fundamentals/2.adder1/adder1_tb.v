//********************************************************
//   Copyright(c)2018, STEP FPGA 
//   All rights reserved
//   File name       :   adder1_tb.v
//   Module name     :   adder1_tb
//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2018/08/01
//   Version         :   V1.0
//   Description     :   һλȫ����Testbench
//********************************************************
`timescale 1ns/100ps    //����ʱ�䵥λ/ʱ�侫�ȣ�ʱ�䵥λҪ���ڻ��ߵ���ʱ�侫��
 
module adder1_tb();       
 
reg    a,b,cin;         //��Ҫ�����ļ����źŶ��壬�����ź���Ҫ���̿�������Զ���Ϊreg�ͱ���
wire   sum,cout;        //��Ҫ�۲������źŶ��壬����Ϊwire�ͱ���
 
//��ʼ�����̿�
initial
begin
	a = 0;
	b = 0;
	cin = 0;
end

always #10 a = ~a;       //��������a����10ns��ת
always #15 b = ~b;
always #20 cin = ~cin;
 
//module����������ʽ
adder1  u1 (      //adder1��ʾ��Ҫ������module���ƣ�u1�����Ƕ�����������ƣ���������ĸ��ͷ
		.a(a),     //��������ź����ӡ�
		.b(b),
		.cin(cin),
		.sum(sum), //����ź�����
		.cout(cout)   
);
endmodule