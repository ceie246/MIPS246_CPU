`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:07:33 04/23/2013 
// Design Name: 
// Module Name:    slt 
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
module slt(
		input [31:0] a, //Դ������rs
		input [31:0] b, //Դ������rt
		input aluc, //1: slt���� �� 0�� sltu����
		output [31:0] c, //��a<b, c = 1,��֮��c= 0
		output carry, //��λ��־λ���޷�������
		output negative //������־λ���з�������
    );

wire [31:0] c_r;
wire overflow;

addsub32 addsub_slt(a, b, {aluc, 1'b1}, c_r, overflow, carry, negative);
assign c = aluc ? (negative ? 32'b1 : 32'b0) : (carry ? 32'b1 : 32'b0);

endmodule
