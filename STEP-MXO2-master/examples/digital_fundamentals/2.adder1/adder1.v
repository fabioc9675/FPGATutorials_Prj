//********************************************************
//   Copyright(c)2018, STEP FPGA 
//   All rights reserved
//   File name       :   adder1.v
//   Module name     :   adder1
//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2018/08/01
//   Version         :   V1.0
//   Description     :   һλȫ���������ýṹ��������ʽ
//********************************************************

module adder1
(
input wire a,           //����ĵ�λ��λ����������cin��a��b
input wire b,
input wire cin,
output wire sum,        //����ĺ����λ
output wire cout
);
          
wire 		s1,s2,s3;   //�����м����


xor (s1,a,b);      //���û��������
xor (sum,s1,cin);
nand (s2,a,b);		//���û��������
nand (s3,s1,cin);
and  (cout,s2,s3);    

endmodule