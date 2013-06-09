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
		input [31:0] a, //源操作数rs
		input [31:0] b, //源操作数rt
		input aluc, //1: slt运算 ， 0： sltu运算
		output [31:0] c, //当a<b, c = 1,反之，c= 0
		output carry, //借位标志位（无符号数）
		output negative //负数标志位（有符号数）
    );

wire [31:0] c_r;
wire overflow;

addsub32 addsub_slt(a, b, {aluc, 1'b1}, c_r, overflow, carry, negative);
assign c = aluc ? (negative ? 32'b1 : 32'b0) : (carry ? 32'b1 : 32'b0);

endmodule
