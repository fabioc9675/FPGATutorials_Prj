//********************************************************
//   Copyright(c)2018, STEP FPGA 
//   All rights reserved
//   File name       :   judge.v
//   Module name     :   judge
//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2018/08/01
//   Version         :   V1.0
//   Description     :   �����ź��ж�ģ��
//					�ж�ѡ�������źţ�����ѡ���������������ѡ������ѡ�ִ��ⳬ��	
//					30����������ź�
//********************************************************
module judge
(
input wire clk,					//ʱ���ź�
input wire k1,k2,k3,k4,			//����ť�ź�
input wire start,				//��ʼ�����ź�
output reg out1,out2,out3,out4,	//������ʾ�ź�
output reg buzz					//�����ź�
);

reg		block;               //���α�־��Ϊ1ʱ����ѡ���ж�����
reg		flag;                //������־
reg [6:0]count;              //��ʱ������

always@(posedge clk)
	begin
		if(!start)
			begin
				block = 1'b0;        //��ʼ��־��0�������ж�����
				{out1,out2,out3,out4} = 4'b1111;//��ʼѡ��led����
				count = 1'b0;        //��ʱ����
				flag = 1'b1;         //������־����
			end
		else
			begin
				if(k1)               //�ж���������
					begin 
						if(!block)   //k1�����ж����α�־
							begin 
								out1 = 1'b0;  //��Ӧѡ��led����
								block = 1'b1; //k1�����������α�־
								count = 1'b1; //��ʱ����ֵ1����ʼ����
							end
					end
				else if(k2)
					begin 
						if(!block)
							begin 
								out2 = 1'b0;
								block = 1'b1;
								count = 1'b1;
							end
					end	
				else if(k3)
					begin 
						if(!block)
							begin 
								out3 = 1'b0;
								block = 1'b1;
								count = 1'b1;
							end
					end	
				else if(k4)
					begin 
						if(!block)
							begin 
								out4 = 1'b0;
								block = 1'b1;
								count = 1'b1;
							end
					end
				else
					begin
						block = 1'b0;
						{out1,out2,out3,out4} = 4'b1111;
						count = 1'b0;
						flag = 1'b1;
					end
						
				if(count!=0)          //��ʱ����Ϊ��ʱ��ʼ����
					begin
						if(count == 6'd30)  //����30��������㣬��������ź�
							begin
								flag = 1'b0;
								count = 1'b0;
							end
						else
							count = count + 1'b1;
					end
			end
	end
always@(flag)
	if(flag == 1)
		buzz = 1'b1;
	else
		buzz = 1'b0;

endmodule
