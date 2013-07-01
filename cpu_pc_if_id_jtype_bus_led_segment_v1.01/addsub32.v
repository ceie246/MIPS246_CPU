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
//----------------for test------------！！！要使用测试数据，请添加，
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

//________________arm zero标志位___________________
//1.Z＝1表示运算结果是0，Z＝0表示运算结果不是零
//2.对于CMP指令，Z＝1表示进行比较的两个数大小相等(不在alu中实现)
//________________arm carry标志位___________________
//1.加法，有进位，无符号数运算发生上溢出
//2.减法，借位，无符号数发生下溢出
//3.包含移位的非加减法，最后一次被溢出的位的数值(在移位模块实现)
//________________arm negative标志位___________________
//1.当两个补码表示的有符号整数运算时，N＝1表示运算的结果为负数，N＝0表示结果为正数或零
//________________arm overflow标志位___________________
//1.对于加/减法运算指令，当操作数和运算结果为二进制的补码表示的带符号数时，V＝1表示符号位溢出

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
