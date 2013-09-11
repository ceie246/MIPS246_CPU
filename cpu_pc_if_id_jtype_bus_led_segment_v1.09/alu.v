`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:50:09 09/12/2012 
// Design Name: 
// Module Name:    alu 
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
module alu(
			input [31:0] a, //input a
			input [31:0] b, //input b
			input [3:0]  aluc, //alu control
			output[31:0] r, //result
			output       zero, //zero flag
			output       carry, //carry flag
			output       negative, //negative flag
			output       overflow //overflow flag
    );

wire [31:0] d_add_sub, d_and_or_xor_nor, d_lui_slt;
wire [31:0] d_and, d_or, d_xor, d_lui, d_shifter, d_slt, d_nor;
wire overflow_and_sub;
wire carry_and_sub, carry_shifter, carry_slt, carry_lui_slt;
wire negative_and_sub, negative_shifter, negative_and_or_xor_nor, negative_lui, negative_slt, negative_lui_slt;

assign d_and = a & b;
assign d_or = a | b;
assign d_xor = a ^ b;
assign d_lui = {b[15:0], 16'b0};
assign d_nor = ~(a | b);

addsub32 addsub(a, b, aluc[1:0], d_add_sub, overflow_and_sub, carry_and_sub, negative_and_sub);
slt sltsltu(a, b, aluc[0], d_slt, carry_slt, negative_slt);
bshifter32_carry bs(b, a[4:0], aluc[1:0], d_shifter, carry_shifter, negative_shifter);

mux2x32 select_ls(d_lui, d_slt, aluc[1], d_lui_slt);
mux4x32 select_aoxn(d_and, d_or, d_xor, d_nor, aluc[1:0], d_and_or_xor_nor);
mux4x32 select_alu(d_add_sub, d_and_or_xor_nor, d_lui_slt, d_shifter, aluc[3:2], r);
mux4x32 #(1) select_carry(carry_and_sub, 1'b0, carry_lui_slt, carry_shifter, aluc[3:2], carry);
mux4x32 #(1) select_overflow(overflow_and_sub, 1'b0, 1'b0, 1'b0, aluc[3:2], overflow);
mux4x32 #(1) select_negative(negative_and_sub, negative_and_or_xor_nor, negative_lui_slt, negative_shifter, aluc[3:2], negative);

assign negative_and_or_xor_nor = d_and_or_xor_nor[31];
assign negative_lui = d_lui[31];
assign negative_lui_slt = aluc[1] ? negative_slt : negative_lui;
assign carry_lui_slt = aluc[1] ? carry_slt : 1'b0;
assign zero = (r == 32'b0) ? 1'b1 : 1'b0;

endmodule
