//********************************************************
//   Copyright(c)2018, STEP FPGA 
//   All rights reserved
//   File name       :   halfadder_tb.v
//   Module name     :   halfadder_tb
//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2018/08/01
//   Version         :   V1.0
//   Description     :   �����Testbench
//********************************************************
`timescale 1ns/100ps    //����ʱ�䵥λ/ʱ�侫�ȣ�ʱ�䵥λҪ���ڻ��ߵ���ʱ�侫��
 
module halfadder_tb();       
 
reg    a,b;         	//��Ҫ�����ļ����źŶ��壬�����ź���Ҫ���̿�������Զ���Ϊreg�ͱ���
wire   sum,cout;        //��Ҫ�۲������źŶ��壬����Ϊwire�ͱ���
 
//��ʼ�����̿�
initial
begin
	a = 0;
	b = 0;
end
always #10 a = ~a;      //��������a����10ns��ת
always #15 b = ~b;
 
//module����������ʽ
halfadder  u1 (      //halfadder��ʾ��Ҫ������module���ƣ�u1�����Ƕ�����������ƣ���������ĸ��ͷ
		.a(a),     //��������ź����ӡ�
		.b(b),
		.sum(sum), //����ź�����
		.cout(cout)   
);
endmodule