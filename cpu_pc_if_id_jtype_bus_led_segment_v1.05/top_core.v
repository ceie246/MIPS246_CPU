`timescale 1ns / 1ps
`include "global.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:26:49 06/08/2013 
// Design Name: 
// Module Name:    top_core 
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
module top_core(
		input clk,
		input res,
		input [2:0] SW,
		output [7:0] led_data,
		output [7:0] segment_data,
		output [3:0] AN
		//for test
		//output cpu_clk
    );

wire [31:0] FEPU_BEPU_select, FEPU_BEPU_data, FEPU_BEPU_addr;
wire FEPU_BEPU_w;
wire rst;
wire cpu_clk;

CLK_MANAGER #(`CLK) clk_manager(clk, res, cpu_clk, rst);
FEPU FEPU(cpu_clk, rst, FEPU_BEPU_select, FEPU_BEPU_w, FEPU_BEPU_data, FEPU_BEPU_addr);//clk
BEPU BEPU(cpu_clk, rst, FEPU_BEPU_select, FEPU_BEPU_w, SW, FEPU_BEPU_data, led_data, segment_data, AN);//clk
//clk_div #(`CLK) clkmanage(clk, rst, cpu_clk); //24
endmodule