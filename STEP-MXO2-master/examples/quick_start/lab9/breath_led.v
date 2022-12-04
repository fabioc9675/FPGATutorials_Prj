// ********************************************************************
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// ********************************************************************
// File name    : breath_led.v
// Module name  : breath_led
// Author       : STEP
// Description  : 
// Web          : www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History : 
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2017/03/02   |Initial ver
// --------------------------------------------------------------------
// Module Function:������
module breath_led(clk,rst,led);
 
	input clk;             //ϵͳʱ������
	input rst;             //��λ���
	output led;            //led���
 
	reg [24:0] cnt1;       //������1
	reg [24:0] cnt2;       //������2
	reg flag;              //�����Ʊ����ͱ䰵�ı�־λ
 
	parameter   CNT_NUM = 2400;	//�����������ֵ period = (2400^2)*2 = 24000000 = 2s
	//����������cnt1
	always@(posedge clk or negedge rst) begin 
		if(!rst) begin
			cnt1<=13'd0;
			end 
        else if(cnt1>=CNT_NUM-1) 
				cnt1<=1'b0;
		     else 
                cnt1<=cnt1+1'b1; 
		end
 
	//����������cnt2
	always@(posedge clk or negedge rst) begin 
		if(!rst) begin
			cnt2<=13'd0;
			flag<=1'b0;
			end 
        else if(cnt1==CNT_NUM-1) begin //��������1����ʱ������2��ʼ������һ���һ
			if(!flag) begin            //����־λΪ0ʱ������2������������ʾ������Ч���ɰ�����
				if(cnt2>=CNT_NUM-1)    //������2����ʱ����ʾ��������󣬱�־λ��ߣ�֮�������2��ʼ�ݼ�
					flag<=1'b1;
				else
					cnt2<=cnt2+1'b1;
				end
			else begin
				if(cnt2<=0)      //����־λΪ��ʱ������2�ݼ�����
					flag<=1'b0;		   //������2����0����ʾ��������С����־λ��ͣ�֮�������2��ʼ����
				else 	
					cnt2<=cnt2-1'b1;
				end		
			
			end
		else 
			cnt2<=cnt2;                //������1�ڼ��������м�����2���ֲ���
		end
 
	//�Ƚϼ�����1�ͼ�����2��ֵ�����Զ�����ռ�ձ�������źţ������led����������Ч��
	assign	led = (cnt1<cnt2)?1'b0:1'b1;
 
endmodule