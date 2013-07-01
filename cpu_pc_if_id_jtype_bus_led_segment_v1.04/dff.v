`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:23:24 07/01/2013 
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
module dff #(parameter WIDTH = 1)(
		input clk,
		input [WIDTH - 1 : 0]d,
		output reg [WIDTH - 1 : 0]q
    );

always @(posedge clk) begin
	q <= d;
end

endmodule
