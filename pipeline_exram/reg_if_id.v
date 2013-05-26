`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:16:29 05/06/2013 
// Design Name: 
// Module Name:    reg_if_id 
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
module reg_if_id(
			input clk,
			input rst,
			input ena,
			input [31:0] pc8_if,
			input [31:0] pc_if,
			input [31:0] instr_if,
			output[31:0] pc8_id,
			output[31:0] pc_id,
			output[31:0] instr_id
    );

dffe #(32) pc8_reg(clk, rst, ena, pc8_if, pc8_id);
dffe #(32) instr_reg(clk, rst, ena, instr_if, instr_id);
dffe #(32) pc_reg(clk, rst, ena, pc_if, pc_id);
endmodule
