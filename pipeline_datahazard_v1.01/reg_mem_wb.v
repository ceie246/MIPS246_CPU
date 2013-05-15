`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:20:32 05/09/2013 
// Design Name: 
// Module Name:    reg_mem_wb 
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
module reg_mem_wb(
		input clk,
		input rst,
		input wrf_mem,
		input wdc_mem,
		input [31:0] dmemd_mem,
		input [31:0] alud_mem,
		input [4:0] wa_mem,
		output wrf_wb,
		output wdc_wb,
		output[31:0] dmemd_wb,
		output[31:0] alud_wb,
		output[4:0] wa_wb
    );

dff #(1)  wrfreg_memwb(clk, rst, wrf_mem, wrf_wb);
dff #(1)  wdcreg_memwb(clk, rst, wdc_mem, wdc_wb);
dff #(32) dmemdreg_memwb(clk, rst, dmemd_mem, dmemd_wb);
dff #(32) aludreg_memwb(clk, rst, alud_mem, alud_wb);
dff #(5)  wareg_memwb(clk, rst, wa_mem, wa_wb);
endmodule
