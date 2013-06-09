`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:51:15 04/22/2013 
// Design Name: 
// Module Name:    top_cpu 
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
module top_cpu(
		input clk,
		input rst,
		//�޸�imemʱ������
		input [31:0] iram_indata
    );

//for test
//wire [31:0] iram_indata;

//------------------------�����ź�---------------------------
//iram_ena: ָ��Ĵ���ʹ���źţ� ��Ϊ�ߵ�ƽʹ��
//iram_wena: ָ��Ĵ���д�źţ�����debugʱ�޸�ָ��Ĵ����ڲ���ֵ
//pc_ena��pc�Ĵ���ʹ���źţ��ߵ�ƽ��Ч������ˮ��stallʱ��ʹ��͵�ƽ��Ч
//rf_ena���ڻ�д�׶Σ���Ҫд�Ĵ��������д�ź�
//wrf: ������׶Σ��õ���д�Ĵ������ź�
//shift��������׶Σ��õ�������д��alua�˵�ѡ���źţ��͵�ƽ��ѡ��Ĵ���������rd1���ߵ�ƽ��ѡ��shamt32��չ���ֵ
//immc: ������׶Σ��õ�����������alub�˵�ѡ���źţ��͵�ƽ��ѡ��Ĵ���������rd2���ߵ�ƽ��ѡ��imm32ֵ
//aluc: ������׶Σ��õ���alu�Ŀ����ź�
//shift_e: ��ִ�н׶Σ�alua��Ҫ�Ŀ����ź�
//aluc_e�� ��ִ�н׶Σ�alu��Ҫ�Ŀ����ź�
//dram_ena: �ڴ洢�׶Σ�dram��ʹ���ź�
//dram_wena���ڴ洢�׶Σ�dram��д�ź�
//wbdc: �ڻ�д�׶Σ����ջ�д���Ĵ��������ݵ�ѡ���źţ��ߵ�ƽ�����ݴ洢��������͵�ƽ��alu�˽��
//dmem: ����׶Σ�д���ݼĴ���д�ź�
wire iram_ena, iram_wena, pc_ena; 
wire rf_wena;
wire wrf, shift, immc;
wire [3:0] aluc;
wire [1:0] pcsource;
wire shift_e;
wire [3:0] aluc_e;
wire dram_ena, dram_wena;
wire wbdc;
wire wdmem;

//------------------------��������---------------------------
//pc: ��ǰpcֵ
//npc����һ��pcֵ
//instr: ��ȡָ�׶Σ���ȡָ�Ԫ�õ���ָ��
//pc_jr: ��ȡֵ�׶Σ�������׶εõ��ĴӼĴ�����õ���jr����ת�ĵ�ַ������һ��npc��ֵ
//wrf_data���ڻ�д�׶Σ�����д�뵽�Ĵ����������
//wrf_addr: ��д�׶�д�Ĵ����ĵ�ַ
//rd1, rd2: ������׶�ȡ����Դ������a��b
//shamt32: ����׶�instr[10:6]����������չֵ
//imm32������׶�instr[15:0]��������չֵ
//alud: ��ִ�н׶Σ�alu�ó���������
//zero, carry, overflow, negative��ִ�н׶εõ��ı�־λ
//wrf_addr_d: ����׶Σ��õ�Ҫ��д�ļĴ�����ַ
//dram_indata: �洢�׶Σ���Ҫд�����ݴ洢��������
//dram_outdata: �洢�׶Σ������ݴ洢������������
//wbd: ��д�׶Σ�����Ҫд�ؼĴ�����ֵ
//imm18: ����׶Σ��õ�������λ��immֵ
//index28: ����׶Σ��õ�������λ��indexֵ
//pc8: ȡָ�׶Σ��õ�pc+8��ֵ
//wa_f: ִ�н׶Σ��õ�����׶εõ��Ļ�д��ַ
//wa_e: ִ�н׶Σ��õ��Ļ�д��ַ
//aludc: ����׶Σ��õ��Ŀ�������alu����˵Ŀ����ź�
wire [31:0] pc, npc;
wire [31:0] instr;
wire [31:0] pc_jr;
wire [31:0] wrf_data;
wire [4:0] wrf_addr;
wire [31:0] rd1, rd2, shamt32, imm32;
wire [31:0] alud;
wire zero, carry, overflow, negative;
//wire [4:0] wrf_addr_d;
wire [31:0] dram_indata, dram_outdata;
wire [31:0] wbd;
wire [17:0] imm18;
wire [27:0] index28;
wire [31:0] pc8;
wire [4:0] wa_f, wa_e;
wire aludc;

dffe #(32) pcreg(clk, rst, pc_ena, npc, pc);
pipe_if pipeif(clk, pc, iram_ena, iram_wena, iram_indata, pc_jr, pcsource, imm18, index28, instr, npc, pc8);
pipe_id pipeid(clk, rst, instr, wrf_data, rf_wena, wrf_addr, zero, rd1, rd2, shamt32, imm32, wa_f, imm18, index28, aluc, wrf, shift, immc, pcsource, wdmem, wbdc, aludc);
pipe_exe pipeexe(rd1, rd2, shamt32, imm32, pc8, immc, shift_e, aludc, aluc_e, wa_f, wa_e, alud, zero, carry, negative, overflow);
pipe_mem pipemem(clk, dram_ena, dram_wena, alud, dram_indata, dram_outdata);
pipe_wb pipewb(dram_outdata, alud, wbdc, wbd);

assign iram_ena = 1'b1;
assign iram_wena = 1'b0;
assign pc_ena = 1'b1;
assign rf_wena = wrf;
assign aluc_e = aluc;
assign shift_e = shift;
assign pc_jr = rd1;
assign wrf_data = wbd;
assign wrf_addr = wa_e;
assign dram_indata = rd2;
assign dram_wena = wdmem;
assign dram_ena = 1'b1;

endmodule
