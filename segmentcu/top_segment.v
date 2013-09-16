`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:36:28 09/16/2013 
// Design Name: 
// Module Name:    top_segment 
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
module top_segment(
		input clk,
		input rst,
		output [3:0] AN,
		output [7:0] segment_data
    );
wire [31:0] data_in = 32'h31;
wire SW = 1'b0;
wire ena = 1'b1;
wire rw = 1'b1;
wire clk_segment, clk_vga;

clk_div #(17) clk_div(clk, rst, clk_segment, clk_vga);
segment_display_controller segmentcu(clk_segment, rst, ena, rw, SW, data_in, AN, segment_data);

endmodule
