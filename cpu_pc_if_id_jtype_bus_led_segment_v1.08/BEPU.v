`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:43:19 06/10/2013 
// Design Name: 
// Module Name:    BEPU 
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
module BEPU(
		input clk,
		input vga_clk,
		input rst,
		input [31:0] select,
		input FEPU_BEPU_w,
		input [2:0] SW,
		input [31:0] FEPU_BEPU_data,
		input [31:0] FEPU_BEPU_addr,
		output [7:0] led_data,
		output [7:0] segment_data,
		output [3:0] AN,
		output [2:0] r, g,
		output [1:0] b,
		output hs, vs
    );

led_controller ledcu(select[0], SW[2:1], FEPU_BEPU_w, FEPU_BEPU_data, led_data);
segment_display_controller segmentcu(clk, rst, select[1], FEPU_BEPU_w, SW[0], FEPU_BEPU_data, AN, segment_data);
vga_controller vgacu(vga_clk, rst, FEPU_BEPU_addr, FEPU_BEPU_data[7:0], FEPU_BEPU_w, r, g, b, hs, vs);

endmodule