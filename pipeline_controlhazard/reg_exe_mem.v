`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:44:54 05/09/2013 
// Design Name: 
// Module Name:    reg_exe_mem 
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
module reg_exe_mem(
		input clk,
		input rst,
		input wrf_exe,
		input wdc_exe,
		input wdmem_exe,
		input [31:0] alud_exe,
		input [31:0] rd2_exe,
		input [4:0] wa_exe,
		output wrf_mem,
		output wdc_mem,
		output wdmem_mem,
		output [31:0] alud_mem,
		output [31:0] rd2_mem,
		output [4:0] wa_mem
    );

dff #(1)  wrfreg_exemem(clk, rst, wrf_exe, wrf_mem);
dff #(1)  wdcreg_exemem(clk, rst, wdc_exe, wdc_mem);
dff #(1)  wdmemreg_exemem(clk, rst, wdmem_exe, wdmem_mem);
dff #(32) aludreg_exemem(clk, rst, alud_exe, alud_mem);
dff #(32) rd2reg_exemem(clk, rst, rd2_exe, rd2_mem);
dff #(5)  wareg_exemem(clk, rst, wa_exe, wa_mem);
endmodule
