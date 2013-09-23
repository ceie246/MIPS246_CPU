`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:43:28 09/10/2013 
// Design Name: 
// Module Name:    kb_controller 
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
module kb_controller(
		input clk,
		input rst,
		input ps2_clk,
		input ps2_data,
		input rw,
		input sel,
		input [31:0]raddr,
		output [7:0]rdata
    );

wire ram_ena = 1'b1;
wire kb_ena = 1'b1;
wire wena;
wire [31:0] waddr, addr;
wire [7:0] data_kb, data_ascii;
wire sel_rw;

assign sel_rw = ((sel == 1) && (rw == 0)) ? 1'b0 : 1'b1;

keyboard kb(rst, clk, ps2_clk, ps2_data, kb_ena, data_kb, ready);
kb2ascii kb2ascii(data_kb, data_ascii);
ready_sm ready_sm(clk, rst, ready, wena, waddr);
mux2x32 mux2x_kb_ram_addr(raddr, waddr, sel_rw, addr);
ram_kb #(8, 8, 0)kb_ram(clk, ram_ena, wena, addr[7:0], data_ascii, rdata);

endmodule
