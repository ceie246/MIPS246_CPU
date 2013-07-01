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
		output sext_i, //imm���Ż�������չ
		output sext_s, //shamt���Ż�������չ
		output shift,
		output regwa,
		output immc,
		output wena, //д����memд�ź�
		output wdc,
		output aludc,
		output [1:0] pcsource
    );

wire r_type;
wire i_add, i_addu, i_sub, i_subu, i_and, i_or, i_xor, i_nor, i_slt, i_sltu, i_sll, i_srl, i_sra,
	  i_sllv, i_srlv, i_srav, i_jr;
wire i_addi, i_addiu, i_andi, i_ori, i_xori, i_lw, i_sw, i_beq, i_bne, i_slti, i_sltiu, i_lui;

//R_type����ָ��
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
//I_type����ָ��
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
//J_type����ָ��
assign i_j     = ~op[5] && ~op[4] && ~op[3] && ~op[2] &&  op[1] && ~op[0];
assign i_jal   = ~op[5] && ~op[4] && ~op[3] && ~op[2] &&  op[1] &&  op[0];

//alu�Ŀ���
assign aluc[0] = i_subu || i_sub || i_or  || i_nor  || i_srl || i_srlv || i_slt || i_ori  || i_slti || i_beq   || i_bne;
assign aluc[1] = i_add  || i_sub || i_xor || i_nor  || i_sll || i_sllv || i_slt || i_sltu || i_addi || i_xori  || i_slti || i_sltiu || i_lw  || i_sw || i_beq || i_bne;
assign aluc[2] = i_and  || i_or  || i_xor || i_nor  || i_sra || i_srav || i_sll || i_sllv || i_srl  || i_srlv  || i_andi || i_ori   || i_xori;
assign aluc[3] = i_sra  || i_srav|| i_sll || i_sllv || i_srl || i_srlv || i_slt || i_sltu || i_slti || i_sltiu || i_lui;
//д�Ĵ������ź�
assign wrf = i_add || i_addu || i_sub   || i_subu || i_and  || i_or   || i_xor  || i_nor   || i_slt  || i_sltu || 
				 i_sll || i_srl  || i_sra   || i_sllv || i_srlv || i_srav || i_addi || i_addiu || i_andi || i_ori  ||
				 i_xori|| i_slti || i_sltiu || i_lui  || i_lw   || i_jal;
//shamt��instr[10:6]����չ�����źţ��ߵ�ƽ������λ��չ�� �͵�ƽ������չ
assign sext_s = i_sll || i_srl || i_sra;
//imm��instr[15:0]����չ�����źţ� �ߵ�ƽ��������չ���͵�ƽ������չ
assign sext_i = i_addi || i_addiu || i_slti || i_sltiu || i_lw || i_sw;
//aluԴ�����������źţ��ߵ�ƽ: Դ������������λ��չ���룬 �͵�ƽ��Դ����������rf��rd1���
assign shift = i_sll || i_srl || i_sra;
//npcѡ���źţ�00��pc+4�� 01��jr��npc������rf��Դ��������, 10: beq/bne(npc������imm32)
assign pcsource[0] = i_jr || i_j || i_jal; 
assign pcsource[1] = (i_beq && zero) || (i_bne && zero  == 1'b0) || i_j || i_jal;
//regwaѡ���źţ��ߵ�ƽ��Ŀ�ļĴ���Ϊinstr[20:16]rt, �͵�ƽ��Ŀ�ļĴ���Ϊinstr[15:11]rd
assign regwa = i_addi || i_addiu || i_andi || i_ori || i_xori || i_slti || i_sltiu || i_lui || i_lw;
//alub�����źţ� �ߵ�ƽimm32���͵�ƽrd2
assign immc = i_addi || i_addiu || i_andi || i_ori || i_xori || i_slti || i_sltiu || i_lui || i_lw || i_sw;
//dmemд�����źţ��ߵ�ƽ��д���ݴ洢��
assign wena = i_sw;
//дrf�Ĵ��������ݿ����źţ��ߵ�ƽ�����ݼĴ���ȡ����ֵ���͵�ƽ��wd
assign wdc = i_lw;
//д���ݼĴ���������ѡ���źţ��ߵ�ƽ��ѡ��pc+8�� �͵�ƽ�� alud
//ѡ��pc+8�� alud = 1�� wdc = 0
assign aludc = i_jal;
endmodule
