`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:16:03 04/22/2013 
// Design Name: 
// Module Name:    controlunit 
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
module controlunit(
		input [5:0] op,
		input [5:0] func,
		input zero,
		output [3:0] aluc,
		output wrf,
		output sext_i, //imm符号或者零扩展
		output sext_s, //shamt符号或者零扩展
		output shift,
		output regwa,
		output immc,
		output wena, //写数据mem写信号
		output wdc,
		output aludc,
		output [1:0] pcsource
    );

wire r_type;
wire i_add, i_addu, i_sub, i_subu, i_and, i_or, i_xor, i_nor, i_slt, i_sltu, i_sll, i_srl, i_sra,
	  i_sllv, i_srlv, i_srav, i_jr;
wire i_addi, i_addiu, i_andi, i_ori, i_xori, i_lw, i_sw, i_beq, i_bne, i_slti, i_sltiu, i_lui;

//R_type类型指令
assign r_type  = ~op[5] && ~op[4] && ~op[3] && ~op[2] && ~op[1] && ~op[0];
assign i_add   = r_type &&  func[5] && ~func[4] && ~func[3] && ~func[2] && ~func[1] && ~func[0];
assign i_addu  = r_type &&  func[5] && ~func[4] && ~func[3] && ~func[2] && ~func[1] &&  func[0];
assign i_sub   = r_type &&  func[5] && ~func[4] && ~func[3] && ~func[2] &&  func[1] && ~func[0];
assign i_subu  = r_type &&  func[5] && ~func[4] && ~func[3] && ~func[2] &&  func[1] &&  func[0];
assign i_and   = r_type &&  func[5] && ~func[4] && ~func[3] &&  func[2] && ~func[1] && ~func[0];
assign i_or    = r_type &&  func[5] && ~func[4] && ~func[3] &&  func[2] && ~func[1] &&  func[0];
assign i_xor   = r_type &&  func[5] && ~func[4] && ~func[3] &&  func[2] &&  func[1] && ~func[0];
assign i_nor   = r_type &&  func[5] && ~func[4] && ~func[3] &&  func[2] &&  func[1] &&  func[0];
assign i_slt   = r_type &&  func[5] && ~func[4] &&  func[3] && ~func[2] &&  func[1] && ~func[0];
assign i_sltu  = r_type &&  func[5] && ~func[4] &&  func[3] && ~func[2] &&  func[1] &&  func[0];
assign i_sll   = r_type && ~func[5] && ~func[4] && ~func[3] && ~func[2] && ~func[1] && ~func[0];
assign i_srl   = r_type && ~func[5] && ~func[4] && ~func[3] && ~func[2] &&  func[1] && ~func[0];
assign i_sra   = r_type && ~func[5] && ~func[4] && ~func[3] && ~func[2] &&  func[1] && ~func[0];
assign i_sllv  = r_type && ~func[5] && ~func[4] && ~func[3] &&  func[2] && ~func[1] && ~func[0];
assign i_srlv  = r_type && ~func[5] && ~func[4] && ~func[3] &&  func[2] &&  func[1] && ~func[0];
assign i_srav  = r_type && ~func[5] && ~func[4] && ~func[3] &&  func[2] &&  func[1] &&  func[0];
assign i_jr    = r_type && ~func[5] && ~func[4] &&  func[3] && ~func[2] && ~func[1] && ~func[0];
//I_type类型指令
assign i_addi  = ~op[5] && ~op[4] &&  op[3] && ~op[2] && ~op[1] && ~op[0];
assign i_addiu = ~op[5] && ~op[4] &&  op[3] && ~op[2] && ~op[1] &&  op[0];
assign i_andi  = ~op[5] && ~op[4] &&  op[3] &&  op[2] && ~op[1] && ~op[0];
assign i_ori   = ~op[5] && ~op[4] &&  op[3] &&  op[2] && ~op[1] &&  op[0];
assign i_xori  = ~op[5] && ~op[4] &&  op[3] &&  op[2] &&  op[1] && ~op[0];
assign i_lw    =  op[5] && ~op[4] && ~op[3] && ~op[2] &&  op[1] &&  op[0];
assign i_sw    =  op[5] && ~op[4] &&  op[3] && ~op[2] &&  op[1] &&  op[0];
assign i_beq   = ~op[5] && ~op[4] && ~op[3] &&  op[2] && ~op[1] && ~op[0];
assign i_bne   = ~op[5] && ~op[4] && ~op[3] &&  op[2] && ~op[1] &&  op[0];
assign i_slti  = ~op[5] && ~op[4] &&  op[3] && ~op[2] &&  op[1] && ~op[0];
assign i_sltiu = ~op[5] && ~op[4] &&  op[3] && ~op[2] &&  op[1] &&  op[0];
assign i_lui   = ~op[5] && ~op[4] &&  op[3] &&  op[2] &&  op[1] &&  op[0];
//J_type类型指令
assign i_j     = ~op[5] && ~op[4] && ~op[3] && ~op[2] &&  op[1] && ~op[0];
assign i_jal   = ~op[5] && ~op[4] && ~op[3] && ~op[2] &&  op[1] &&  op[0];

//alu的控制
assign aluc[0] = i_subu || i_sub || i_or  || i_nor  || i_srl || i_srlv || i_slt || i_ori  || i_slti || i_beq   || i_bne;
assign aluc[1] = i_add  || i_sub || i_xor || i_nor  || i_sll || i_sllv || i_slt || i_sltu || i_addi || i_xori  || i_slti || i_sltiu || i_lw  || i_sw || i_beq || i_bne;
assign aluc[2] = i_and  || i_or  || i_xor || i_nor  || i_sra || i_srav || i_sll || i_sllv || i_srl  || i_srlv  || i_andi || i_ori   || i_xori;
assign aluc[3] = i_sra  || i_srav|| i_sll || i_sllv || i_srl || i_srlv || i_slt || i_sltu || i_slti || i_sltiu || i_lui;
//写寄存器组信号
assign wrf = i_add || i_addu || i_sub   || i_subu || i_and  || i_or   || i_xor  || i_nor   || i_slt  || i_sltu || 
				 i_sll || i_srl  || i_sra   || i_sllv || i_srlv || i_srav || i_addi || i_addiu || i_andi || i_ori  ||
				 i_xori|| i_slti || i_sltiu || i_lui  || i_lw   || i_jal;
//shamt（instr[10:6]）扩展控制信号，高电平：符号位扩展， 低电平：零扩展
assign sext_s = i_sll || i_srl || i_sra;
//imm（instr[15:0]）扩展控制信号， 高电平：符号扩展，低电平：零扩展
assign sext_i = i_addi || i_addiu || i_slti || i_sltiu || i_lw || i_sw;
//alu源操作数控制信号，高电平: 源操作数来自移位扩展输入， 低电平：源操作数来自rf的rd1输出
assign shift = i_sll || i_srl || i_sra;
//npc选择信号，00：pc+4， 01：jr（npc来自于rf的源操作数）, 10: beq/bne(npc来自于imm32)
assign pcsource[0] = i_jr || i_j || i_jal; 
assign pcsource[1] = (i_beq && zero) || (i_bne && zero  == 1'b0) || i_j || i_jal;
//regwa选择信号，高电平，目的寄存器为instr[20:16]rt, 低电平，目的寄存器为instr[15:11]rd
assign regwa = i_addi || i_addiu || i_andi || i_ori || i_xori || i_slti || i_sltiu || i_lui || i_lw;
//alub控制信号， 高电平imm32，低电平rd2
assign immc = i_addi || i_addiu || i_andi || i_ori || i_xori || i_slti || i_sltiu || i_lui || i_lw || i_sw;
//dmem写控制信号，高电平，写数据存储器
assign wena = i_sw;
//写rf寄存器组数据控制信号，高电平：数据寄存器取出的值，低电平，wd
assign wdc = i_lw;
//写数据寄存器的数据选择信号，高电平：选择pc+8， 低电平， alud
//选择pc+8， alud = 1， wdc = 0
assign aludc = i_jal;
endmodule
