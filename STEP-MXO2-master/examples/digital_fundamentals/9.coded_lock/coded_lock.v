//********************************************************
//   Copyright(c)2018, STEP FPGA 
//   All rights reserved
//   File name       :   coded_lock.v
//   Module name     :   coded_lock
//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2018/08/01
//   Version         :   V1.0
//   Description     :   4λ������������
//						4λ�����������ֱ�ΪQ��U��N��B������ʱ��Կ�ײ���Կ�׿�����
//						ʹD��1������������루�磺QUNB��0101�������õĴ�����ͬ����
//						�����䱻�򿪣��������G��1���������巢��������
//********************************************************

module coded_lock
(
input wire q,u,n,b,           //��λ������Ϊ��������
input wire d,				  //һλ������Ϊ����ʹ���ź�
output wire led1,    	      //��������źŶ�Ӧ��led���
output wire led2			  //�����źŶ�Ӧ��led���
);

wire  [3:0]   code;			  //��λ�����洢����
reg			  open;			  //�����俪���ź�
reg			  alarm;          //�����ź�

assign		code = {q,u,n,b};

always@(d or code)
	if(d == 1'b1)             //ʹ�ܣ���ʼ�ж�����
		begin
			if(code == 4'b0101)   
				begin
					open = 1'b1;  //����
					alarm = 1'b0; //û����
				end
			else
				begin
					open = 1'b0;  
					alarm = 1'b1;
				end
		end
	else
		begin
			open = 1'b0;
		end

assign  led1 = ~open;		//led����ʾ������û��
assign	led2 = ~alarm;		//led�������������ź�

endmodule