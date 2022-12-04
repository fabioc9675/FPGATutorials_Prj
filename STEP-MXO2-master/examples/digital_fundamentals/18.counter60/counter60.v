//********************************************************
//   Copyright(c)2018, STEP FPGA 
//   All rights reserved
//   File name       :   counter60.v,segment.v,divide.v
//   Module name     :   counter60
//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2018/08/01
//   Version         :   V1.0
//   Description     :   �������60���ƣ����ɰ���������������λ����ͣ
//********************************************************
module counter60 
(
input wire clk,rst,           //ʱ�Ӻ͸�λ����
input wire key,				  //������ͣ����
output wire [8:0] segment_led_1,segment_led_2    	  //��������
);

wire	clk1h;			//1��ʱ��
reg	[7:0] cnt;			//��ʱ������
reg		flag;			//������ͣ��־

divide #				//������Ƶ������1��ʱ���ź�
(
.WIDTH(24),
.N(12_000_000)
) u1
(
.clk(clk),
.rst_n(rst),
.clkout(clk1h)
);

always @(posedge clk)		//������־�ź�
	if(!rst)
		flag = 1'b0;
	else if(!key)
		flag = ~flag;
	else
		flag = flag;

always @(posedge clk1h )        //����60���Ƽ�����
	begin	//�������ʾҪ����ʮ���Ƶķ�ʽ��ʾ
		if(!rst)
			cnt <= 8'h00;		//��λ��ֵ��ʾ00
		else if(flag)
			begin
				if(cnt[3:0] == 4'd9)	//��λ���ţ�
					begin
						cnt[3:0] <= 4'd0;	//��λ����
						if(cnt[7:4] == 4'd5 )	//ʮλ���壿
							cnt[7:4] <= 4'd0;	//��λ����
						else
							cnt[7:4] <= cnt[7:4] + 1'b1;	//ʮλ��һ
					end
				else cnt[3:0] <= cnt[3:0] + 1'b1;	//��λ��һ
			end
		else
			cnt <= cnt;
	end

segment u2
(
.seg_data_1		(cnt[7:4]),  //seg_data input
.seg_data_2		(cnt[3:0]),  //seg_data input
.segment_led_1	(segment_led_1),  //MSB~LSB = SEG,DP,G,F,E,D,C,B,A
.segment_led_2	(segment_led_2)   //MSB~LSB = SEG,DP,G,F,E,D,C,B,A
);

endmodule
