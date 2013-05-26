`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:52:13 04/22/2013 
// Design Name: 
// Module Name:    pipe_id 
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
module pipe_id(
		input clk,
		input rst,
		input [31:0] pc_id,
		input [31:0] instr, //��ȡָ�׶εõ��ĵ�ǰָ��
		input [31:0] wd, //��д�׶�д�Ĵ�����ֵ
		input rf_wena, //��д�׶�д�Ĵ�����д�ź�
		input  [4:0]  wa, //��д�׶�д�Ĵ����ĵ�ַ
		//input zero,
		input wrf_exe,
		input wdc_exe,
		input aludc_exe,
		input wrf_mem,
		input wdc_mem,
		input [4:0] wa_exe0,
		input [4:0] wa_mem,
		input [31:0] alud_exe,
		input [31:0] alud_mem,
		input [31:0] dmemd_mem,
		output [31:0] rd1_id, //����׶Σ��ӼĴ�����õ���Դ������a
		output [31:0] rd2_id, //����׶Σ��ӼĴ�����õ���Դ������b
		output [31:0] shamt32, //����׶Σ�ָ��shamt������չ�õ���32λ������
		output [31:0] imm32,
		output [4:0] wa_d, //����׶Σ��õ�Ҫд�Ĵ�����ĵ�ַ
		output [31:0] pc_beqbne,
		output [27:0] index28,
		//���Ƶ�Ԫ�ź�
		output [3:0] aluc, //����׶Σ��ӿ��Ƶ�Ԫ�õ���alu�Ŀ����ź�
		output wrf, //����׶Σ��ӿ��Ƶ�Ԫ�õ��Ļ�д�Ĵ�����д�ź�
		output shift, //����׶Σ�alua�Ŀ����ź�
		output immc, //����׶Σ�alub�Ŀ����ź�
		output [1:0] pcsource,
		output wdmem,
		output wdc,
		output aludc,
		output stall
    );

wire [4:0] ra1, ra2, rd;
wire [31:0] rd1, rd2;
wire [4:0] rs, rt, shamt;
wire [15:0] imm;
wire [5:0] op, func;
wire [25:0] index;
wire sext_s, regwa, sext_i;
wire [1:0] rd1c, rd2c;
wire [17:0] imm18;

//�Ĵ�����clk�½���д�����ݣ���֤������ִ�н���
regfiles rf(clk, rst, rf_wena, ra1, ra2, wa, wd, rd1, rd2);
controlunit cu(op, func, zero, wrf_exe, wdc_exe, aludc_exe, wrf_mem, wdc_mem, wa_exe0, wa_mem, rs, rt,
					aluc, wrf, sext_i, sext_s, shift, regwa, immc, wdmem, wdc, aludc, pcsource, rd1c, rd2c,
					stall);
ext shamtext(shamt, sext_s, shamt32);
ext #(16) immext(imm, sext_i, imm32);

assign rs = instr[25:21];
assign rt = instr[20:16];
assign rd = instr[15:11];
assign shamt = instr[10:6];
assign imm = instr[15:0];
assign op = instr[31:26];
assign func = instr[5:0];
assign index = instr[25:0];

mux2x32 #(5) select_wa(rd, rt, regwa, wa_d);
mux4x32 #(32)select_rd1(rd1, alud_exe, alud_mem, dmemd_mem, rd1c, rd1_id);
mux4x32 #(32)select_rd2(rd2, alud_exe, alud_mem, dmemd_mem, rd2c, rd2_id);
equal beqbne_equal(rd1_id, rd2_id, zero);

assign ra1 = rs;
assign ra2 = rt;
assign imm18 = imm << 2;
assign index28 = index << 2;
assign pc_beqbne = pc_id + imm18;

endmodule
