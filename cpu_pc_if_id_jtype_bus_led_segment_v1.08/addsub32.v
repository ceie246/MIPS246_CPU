`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:36:07 10/16/2012 
// Design Name: 
// Module Name:    addsub32 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module addsub32(
	 input [31:0] a, //32bit inputA
    input [31:0] b, //32bit inputB
    input [1:0] aluc, //1: signed add or 0: unsigned add
    output reg [31:0] c, //32bit output
    output reg overflow, //overflow flag
	 output reg carry, //carry flag
	 output reg negative
//----------------for test------------������Ҫʹ�ò������ݣ�����ӣ�
//	 output reg [31:0] c_normal, 
//	 output reg overflow_normal,
//	 output reg carry_normal,
//  output reg negative_normal
    );

wire add_result;
reg [32:0] temp;
wire [31:0] addu_result;
wire addu_cout;
wire add_cout;
wire [31:0] b2; 

//________________arm zero��־λ___________________
//1.Z��1��ʾ��������0��Z��0��ʾ������������
//2.����CMPָ�Z��1��ʾ���бȽϵ���������С���(����alu��ʵ��)
//________________arm carry��־λ___________________
//1.�ӷ����н�λ���޷��������㷢�������
//2.��������λ���޷��������������
//3.������λ�ķǼӼ��������һ�α������λ����ֵ(����λģ��ʵ��)
//________________arm negative��־λ___________________
//1.�����������ʾ���з�����������ʱ��N��1��ʾ����Ľ��Ϊ������N��0��ʾ���Ϊ��������
//________________arm overflow��־λ___________________
//1.���ڼ�/��������ָ�����������������Ϊ�����ƵĲ����ʾ�Ĵ�������ʱ��V��1��ʾ����λ���

assign b2 = aluc[0] ? ~b : b; // sub ? add
top_cla_32 addu(a, b2, aluc[0], addu_cout, addu_result);
add1 add_32(a[31], b2[31], addu_cout, add_result, add_cout);

//------------------cla32 add32------------------
always @(aluc, a, b) begin
	c = 32'b0;
	carry = 1'b0;
	negative = 1'b0;
	overflow = 1'b0;
	if(aluc[1] == 1) begin //signed 
		carry = 0;
		if(add_result == addu_result[31]) begin
			c = addu_result;
			overflow = 0;
		end else
			overflow = 1; //overflow
		negative = c[31];//attention:when overflow = 1, the negative num
	end else begin //unsigned 
		c = addu_result;
		carry = aluc[0] ? ~addu_cout : addu_cout;
		overflow = 0;
		negative = 0;
	end 
end

//------------------normal add32------------------
//always@(aluc, a, b) begin
//	if(aluc[1] == 1) begin //signed
//		carry_normal = 0;
//		if(aluc[0] == 1) begin //sub
//			temp = {a[31], a} - {b[31], b};
//			if(temp[32] == temp[31]) begin
//				c_normal = temp[31:0];
//				overflow_normal = 0;
//			end else
//				overflow_normal = 1;
//		end else begin //add
//			temp = {a[31], a} + {b[31], b};
//			if(temp[32] == temp[31])begin
//				c_normal = temp[31:0];
//				overflow_normal = 0;
//			end else 
//				overflow_normal = 1;
//		end
//		negative_normal = c_normal[31];
//	end else begin //unsigned
//		if(aluc[0] == 1) begin //sub
//			temp = {1'b0,a} + ~{1'b0,b} + 33'b1;
//			c_normal = temp[31:0];
//		end else begin //add
//			temp = {1'b0,a} + {1'b0,b};
//			c_normal = temp[31:0];
//		end
//		carry_normal = temp[32];
//		negative_normal = 0;
//		overflow_normal = 0;
//	end
//end


endmodule
