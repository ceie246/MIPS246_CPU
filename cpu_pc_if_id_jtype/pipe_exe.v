`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:31:04 04/24/2013 
// Design Name: 
// Module Name:    pipe_exe 
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
module pipe_exe(
		input [31:0] rd1,
		input [31:0] rd2,
		input [31:0] shamt32,
		input [31:0] imm32,
		input [31:0] pc8,
		input immc,
		input shift,
		input aludc,
		input [3:0] aluc,
		input [4:0] wa_f, //译码阶段，得到的回写地址
		output[4:0] wa_e, //执行阶段，得到的回写地址
		output[31:0] wd,
		output zero,
		output carry,
		output negative,
		output overflow
    );
wire [31:0] alua, alub, alud;

alu alu(alua, alub, aluc, alud, zero, carry, negative, overflow);
mux2x32 select_alua(rd1, shamt32, shift, alua);
mux2x32 select_alub(rd2, imm32, immc, alub);
mux2x32 select_alud(alud, pc8, aludc, wd);
mux2x32 #(5) select_wa(wa_f, 5'd31, aludc, wa_e);
endmodule
