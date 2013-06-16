`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:08:19 09/04/2012 
// Design Name: 
// Module Name:    add1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//			È«¼ÓÆ÷
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module add1(
    input a,
    input b,
    input ci,
    output s,
    output co
    );

assign s = a ^ b ^ ci;
assign co = (a & b) | (a & ci) | (b & ci);
endmodule
