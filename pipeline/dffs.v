`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:09:58 05/12/2013 
// Design Name: 
// Module Name:    dffs 
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
module dffs #(parameter WIDTH = 32)(
		input clk,
		input      [WIDTH - 1: 0] data_in,
		output reg [WIDTH - 1: 0] data_out
    );
	
	always @(posedge clk) begin
		data_out <= data_in;
	end

endmodule
