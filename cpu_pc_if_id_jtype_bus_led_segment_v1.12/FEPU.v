`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:45:52 06/10/2013 
// Design Name: 
// Module Name:    FEPU 
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
module FEPU(
		input clk,
		input rst,
		input [31:0] BEPU_FEPU_data,
		output [31:0] FEPU_BEPU_select, //lw或者sw片选信号
		output FEPU_BEPU_w, //写memory和IO信号
		output [31:0] FEPU_BEPU_data, 
		output [31:0] FEPU_BEPU_addr
    );

wire [31:0] bc_cpu_data, cpu_bc_data;
wire [31:0] cpu_bc_addr;
wire cpu_bc_rw;

top_cpu cpu(clk, rst, BEPU_FEPU_data, bc_cpu_data, cpu_bc_data, cpu_bc_addr, cpu_bc_rw);
bus_controller bc(cpu_bc_addr, cpu_bc_rw, FEPU_BEPU_select, FEPU_BEPU_w);//FEPU_BEPU_data,

assign FEPU_BEPU_addr = cpu_bc_addr;//32'b0;
assign bc_cpu_data = 32'b0;
assign FEPU_BEPU_data = cpu_bc_data;

endmodule
