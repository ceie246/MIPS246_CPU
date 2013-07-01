`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:31:42 10/17/2012 
// Design Name: 
// Module Name:    top_cla_32 
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
module top_cla_32(
			input [31:0] a, b, //input A and B
			input c_in, //the carry num
			output c_out, // the carry num of result
			output [31:0] s //result
    );

wire g, p;
cla_32 cla0(a, b, c_in, g, p, s);
assign c_out = g | p & c_in;
endmodule
