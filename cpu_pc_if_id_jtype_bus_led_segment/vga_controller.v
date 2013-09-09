`timescale 1ns / 1ps
`include "define.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:19:15 09/09/2013 
// Design Name: 
// Module Name:    vga_controller 
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
module vga_controller(
		input clk, //100MHZ
		input rst,
		input [31:0] wram_addr,
		input [7:0] wram_data,
		input sel_rw,
		output [2:0] r, g,
		output [1:0] b,
		output hs, vs
    );


	wire [20:0] vga_addr; //1280(2048)*1024 {10 bit vga_row, 11vit vga_col}
	wire [9:0] vga_row; //vga的行坐标和列坐标
	wire [10:0] vga_col;
	wire [`RAM_ROW_BIT - 1:0] ram_row; //ascii_ram的行坐标和列坐标，相当于一个显存
	wire [`RAM_COL_BIT - 1:0] ram_col;
	wire [`PIXEL_ROW_BIT - 1:0] pixel_row; //每个字符16*32中的行坐标和列坐标
	wire [`PIXEL_COL_BIT - 1:0] pixel_col;
	wire [`RAM_ADDR - 1:0] rram_addr, ram_addr;//20 - `PIXEL_ROW_BIT - `PIXEL_COL_BIT
	wire [7:0] ram_ascii, ram_font;
	wire ram_ena = 1'b1;
	
	assign vga_row = vga_addr[20:11];
	assign vga_col = vga_addr[10:0];
	assign ram_row = vga_row[9:`PIXEL_ROW_BIT];
	assign ram_col = vga_col[10:`PIXEL_COL_BIT];
	assign rram_addr = {ram_row, ram_col};
	assign pixel_row = vga_row[(`PIXEL_ROW_BIT - 1):0];
	assign pixel_col = vga_col[(`PIXEL_COL_BIT - 1):0];
	
	mux2x32 #(`RAM_ADDR) mux2x_ram_addr(wram_addr, rram_addr, sel_rw, ram_addr);
	ram #(8,`RAM_ADDR, 0) ascii_ram(clk, ram_ena, sel_rw, ram_addr, wram_data, ram_ascii);
	ascii2font font({ram_ascii, pixel_row, pixel_col}, ram_font);
	vga vga(clk, rst, ram_font, vga_addr, r, g, b, hs, vs);
	
endmodule
