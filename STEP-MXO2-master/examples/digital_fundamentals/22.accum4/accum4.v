//********************************************************
//   Copyright(c)2018, STEP FPGA 
//   All rights reserved
//   File name       :   accum4.v,adder1.v,ahead.v,shift.v
//   Module name     :   accum4
//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2018/08/01
//   Version         :   V1.0
//   Description     :   4λ�����ۼ���
//               ����λ�Ĵ�����һλȫ�����Լ�JK���������ɴ����ۼ���    
//********************************************************
module accum4
(
input wire datain,     //��������
input wire clk,rst,    //����͸�λ�����ź�
output wire [3:0] sum  //�ۼӽ��
);

wire [3:0] adder;      //�Ĵ���1���洢�����������
wire [3:0] sumer;      //�Ĵ���2���洢����������
wire cin;              //ȫ������ǰ��λ�ź�
wire sumout;           //ȫ�������

assign sum = sumer;    //�ۼӽ�����

shift u1               //��λ�Ĵ����������ݴ�������Ĵ���
(
.clk(clk),           
.rst(rst),			 
.datain(datain),  
.dataout(adder) 	
);

adder1 u2              //ȫ�����������Ĵ��������λ��ӣ���λ�ɳ�ǰ��λ�߼����
(
.a(sumer[0]),           
.b(adder[0]),
.cin(cin),
.sum(sumout),     
.cout()
);

ahead u3              //��ǰ��λ�߼���������λ�ź�
(
.a(sumer[0]),.b(adder[0]),.clk(clk),.rst(rst),
.q(cin)
);

shift u4              //��λ�Ĵ�������ȫ����������뱻�����Ĵ���
(
.clk(clk),           
.rst(rst),			  
.datain(sumout),  
.dataout(sumer) 	  
);

endmodule
