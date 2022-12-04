//********************************************************
//   Copyright(c)2018, STEP FPGA 
//   All rights reserved
//   File name       :   shift7.v
//   Module name     :   shift7
//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2018/08/01
//   Version         :   V1.0
//   Description     :   7λ��λ�Ĵ��������Ʋ������룬�������
//********************************************************

module shift7
(
input wire clk,           //����ʱ��
input wire rst,			  //��λ�ź�
input wire [6:0] datain,  //������������
output wire  dataout 	  //�����������
);

reg [6:0] data;

always @(posedge clk)
	if(!rst)
		data <= datain;			//ͬ����λ����λʱ�������ݴ������data
	else
		begin
			data[6] <= 1'b0;		//���Ϊ��0
			data[5] <= data[6];
			data[4] <= data[5];
			data[3] <= data[4];
			data[2] <= data[3];
			data[1] <= data[2];
			data[0] <= data[1];     //����һλ
		end
		
assign dataout = data[0];		//�������

endmodule