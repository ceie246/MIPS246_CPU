`timescale 1ns / 1ps
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
		input rst
    );

wire [31:0] bc_cpu_data, cpu_bc_data;
wire [31:0] cpu_bc_addr;
wire cpu_bc_rw;

top_cpu cpu(clk, rst, bc_cpu_data, cpu_bc_data, cpu_bc_addr, cpu_bc_rw);



endmodule
