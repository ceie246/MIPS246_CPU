`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:46:26 05/07/2013 
// Design Name: 
// Module Name:    reg_id_exe 
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
module reg_id_exe(
			input clk,
			input rst,
			input wrf_id,
		   input aludc_id,
			input wdc_id,
			input wdmem_id,
			input [3:0] aluc_id,
			input immc_id,
			input shift_id,
			input [31:0] pc8_id,
			input [31:0] rd1_id,
			input [31:0] shamt32_id,
			input [31:0] rd2_id,
			input [31:0] imm32_id,
			input [4:0] wa_id,
			output wrf_exe,
			output aludc_exe,
			output wdc_exe,
			output wdmem_exe,
			output [3:0] aluc_exe,
			output immc_exe,
			output shift_exe,
			output [31:0] pc8_exe,
			output [31:0] rd1_exe,
			output [31:0] shamt32_exe,
			output [31:0] rd2_exe,
			output [31:0] imm32_exe,
			output [4:0] wa_exe
    );

dff #(1)  wrfreg_idexe(clk, rst, wrf_id, wrf_exe);
dff #(1)  aludcreg_idexe(clk, rst, aludc_id, aludc_exe);
dff #(1)  wdcreg_idexe(clk, rst, wdc_id, wdc_exe);
dff #(1)  wdmemreg_idexe(clk, rst, wdmem_id, wdmem_exe);
dff #(4)  alucreg_idexe(clk, rst, aluc_id, aluc_exe);
dff #(1)  immcreg_idexe(clk, rst, immc_id, immc_exe);
dff #(1)  shiftreg_idexe(clk, rst, shift_id, shift_exe);
dff #(32) pc8reg_idexe(clk, rst, pc8_id, pc8_exe);
dff #(32) rd1reg_idexe(clk, rst, rd1_id, rd1_exe);
dff #(32) shamt32reg_idexe(clk, rst, shamt32_id, shamt32_exe);
dff #(32) rd2reg_idexe(clk, rst, rd2_id, rd2_exe);
dff #(32) imm32reg_idexe(clk, rst, imm32_id, imm32_exe);
dff #(5)  wareg_idexe(clk, rst, wa_id, wa_exe);
endmodule
