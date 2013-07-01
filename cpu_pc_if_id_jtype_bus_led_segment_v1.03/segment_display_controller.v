`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:14:45 06/10/2013 
// Design Name: 
// Module Name:    segment_display_controller 
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
module segment_display_controller(
		input clk,
		input rst,
		input ena,
		input FEPU_BEPU_w,
		input SW,
		input [31:0] data_in,
		output [3:0] AN,
		output [7:0] data_out
    );
`include "segment.v"

wire [15:0] segment_data;
reg [31:0] segment_reg;
//wire [7:0] data;
//clk_div #(18) segment_clkdiv(clk, rst, clkdiv);
//for test
//clk_div #(2) segment_clkdiv(clk, rst, clkdiv);

always @(posedge clk or posedge rst) begin
	if(rst) begin
		segment_reg <= 32'hffff_ffff;
	end else if(ena && FEPU_BEPU_w)begin
		segment_reg <= data_in;
	end 
end

top_segment_display segmentdisplay(clk, rst, segment_data, AN, data_out);//clkdiv
mux2x32 #(16) select_segment(segment_reg[15:0], segment_reg[31:16], SW, segment_data);

//assign data_out = (ena && FEPU_BEPU_w) ? data : seg_off;
endmodule
