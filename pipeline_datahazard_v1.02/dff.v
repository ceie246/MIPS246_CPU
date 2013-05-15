`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:02:02 05/07/2013 
// Design Name: 
// Module Name:    dff 
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
module dff #(parameter WIDTH = 32)(
		input clk,
		input rst,
		input [WIDTH - 1: 0] data_in,
		output reg [WIDTH - 1: 0] data_out
    );

	always @(posedge clk or posedge rst) begin
		if(rst) begin
			data_out <= 0;
		end else begin
			data_out <= data_in;
		end
	end
	
endmodule
