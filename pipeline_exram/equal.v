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
module equal #(parameter WIDTH = 32)(
		input [WIDTH - 1:0] a,
		input [WIDTH - 1:0] b,
		output zero
    );
wire [WIDTH - 1:0] result_r;
wire [31:0] result;
wire overflow, carry, negative;

addsub32 beqbne_sub(a, b, 2'b11, result_r, overflow, carry, negative);
ext #(WIDTH) result_ext(result_r, 0, result);

assign zero = (result == 32'b0) ? 1'b1 : 1'b0;

endmodule
