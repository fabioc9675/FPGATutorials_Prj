//********************************************************
//   Copyright(c)2018, STEP FPGA 
//   All rights reserved
//   File name       :   decode24.v
//   Module name     :   decode24
//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2018/08/01
//   Version         :   V1.0
//   Description     :   2-4��������������Ϊ����������
//********************************************************

module decode24
(
input wire [1:0] a,           //������λ����
output reg [3:0] led    	  //���������4λ��������Ӧ��led
);

//always����䣬aֵ�仯ʱִ��һ�ι��̿�
always@(a)                    
	begin
		case(a)
			2'b00: led = 4'b0001; //2-4������
			2'b01: led = 4'b0010;
			2'b10: led = 4'b0100;
			2'b11: led = 4'b1000;
		endcase
	end

endmodule