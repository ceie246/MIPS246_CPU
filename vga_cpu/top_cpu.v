`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:53:56 09/09/2013 
// Design Name: 
// Module Name:    top_cpu 
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
module top_cpu(
		input clk,
		input rst,
		output [2:0] r, g,
		output [1:0] b,
		output hs, vs
    );

	wire [31:0] waddr;
	wire [7:0] wdata;
	wire sel_rw = 0;
	
	vga_controller vgacu(clk, rst, waddr, wdata, sel_rw, r, g, b, hs, vs);
	
	assign waddr = 32'h00ef_ff00;
	assign wdata = 8'd31;
	
endmodule
