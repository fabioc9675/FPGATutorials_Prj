//********************************************************
//   Copyright(c)2018, STEP FPGA 
//   All rights reserved
//   File name       :   halfadder.v
//   Module name     :   halfadder
//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2018/08/01
//   Version         :   V1.0
//   Description     :   һλ�����������������������ʽ
//********************************************************

module halfadder
(
input a,             //��һ������a
input b,             //�ڶ�������b
output sum,          //��ʾ�͵�led
output cout          //��ʾ��λ��led
);
          
assign sum=a ^ b;     //sum=a��b
assign cout=a & b;	  //cout=ab

endmodule
