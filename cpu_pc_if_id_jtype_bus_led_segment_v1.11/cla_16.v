`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:58:56 10/17/2012 
// Design Name: 
// Module Name:    cla_16 
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
module cla_16(
    input [15:0] a,
    input [15:0] b,
    input c_in,
    output g_out,
    output p_out,
    output [15:0] s_out
    );

wire [1:0] g, p;
wire c_out;

cla_8 cla0(a[7:0], b[7:0], c_in, g[0], p[0], s_out[7:0]);
cla_8 cla1(a[15:8], b[15:8], c_out, g[1], p[1], s_out[15:8]);
g_p g_p0(g, p, c_in, g_out, p_out, c_out);
endmodule
