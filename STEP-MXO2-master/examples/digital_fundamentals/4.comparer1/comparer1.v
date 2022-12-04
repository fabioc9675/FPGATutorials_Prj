//********************************************************
//   Copyright(c)2018, STEP FPGA 
//   All rights reserved
//   File name       :   comparer1.v
//   Module name     :   comparer1
//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2018/08/01
//   Version         :   V1.0
//   Description     :   һλ�����ƱȽ��������ýṹ��������ʽ
//********************************************************

module comparer1
(
input wire a,           //���������������a��b
input wire b,
output wire led1,     //����������������Ӧ��led
output wire led2,
output wire led3
);
          
assign led1 = (!a)&b;    //a<b
assign led2 = !(a^b);    //a=b
assign led3 = a&(!b);    //a>b

endmodule