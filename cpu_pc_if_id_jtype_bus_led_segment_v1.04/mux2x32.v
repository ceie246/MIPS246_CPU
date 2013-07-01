`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:47:54 09/12/2012 
// Design Name: 
// Module Name:    mux2x32 
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
module mux2x32 #(parameter WIDTH = 32)(
			input [WIDTH - 1:0] a,
			input [WIDTH - 1:0] b,
			input select,
			output reg [WIDTH - 1:0] r
    );

	always @(*) begin
		case(select) 
		1'b0: r = a;
		1'b1: r = b;
		endcase	
	end
endmodule
