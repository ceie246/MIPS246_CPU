`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:49:02 05/16/2013 
// Design Name: 
// Module Name:    equal 
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
module equal(
		input [31:0] a,
		input [31:0] b,
		output zero
    );
wire [31:0] result;
wire overflow, carry, negative;

addsub32 beqbne_sub(a, b, 2'b11, result, overflow, carry, negative);

assign zero = (result == 32'b0) ? 1'b1 : 1'b0;

endmodule
