`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:37:46 04/24/2013 
// Design Name: 
// Module Name:    ext 
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
module ext #(parameter WIDTH = 5)(
		input [WIDTH - 1:0] a,
		input sext,
		output [31:0] b
    );

assign b = sext ? {{(32 - WIDTH){a[WIDTH - 1]}}, a} : {27'b0, a};
endmodule
