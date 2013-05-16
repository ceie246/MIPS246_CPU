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

//---------------------�����ź�---------------------
//ena��pc�Ĵ�����ifid�Ĵ���ʹ���źţ��ߵ�ƽ��Ч������ˮ��stallʱ��ʹ��͵�ƽ��Ч
//iram_ena: ָ��洢��Ƭѡ�ź�
//iram_wena: ָ��洢��д�źţ�����debugʱ�޸�ָ��Ĵ����ڲ���ֵ
//pcsource: ��һ��pcѡ���źţ�00��pc+4, 01��pc_jr, 10: pc_beqbne, 11: pc_jjal
//zero: ����׶Σ��õ�������ִ�н׶ε��������־λ
//wrf_id: ����׶Σ��õ�������ִ�н׶ε�д�Ĵ������ź�
//shift_id������׶Σ��õ�������д��alua�˵�ѡ���źţ��͵�ƽ��ѡ��Ĵ���������rd1���ߵ�ƽ��ѡ��shamt32��չ���ֵ
//immc_id: ����׶Σ��õ�����������alub�˵�ѡ���źţ��͵�ƽ��ѡ��Ĵ���������rd2���ߵ�ƽ��ѡ��imm32ֵ
//wdmem_id: ����׶Σ�д���ݼĴ���д�ź�
//wdc_id: ����׶Σ��õ������ջ�д���Ĵ��������ݵ�ѡ���źţ��ߵ�ƽ�����ݴ洢��������͵�ƽ��alu�˽��
//aludc_id: ����׶Σ��õ���alu����˵�ѡ������źţ� �ߵ�ƽ��pc8�� �͵�ƽ��alu�����
//aluc_id�� ����׶Σ��õ���ִ�н׶�alu��Ҫ�Ŀ����ź�
//wrf_exe: ִ�н׶Σ�д�Ĵ������д�ź�
//aludc_exe: ִ�н׶Σ��õ���alu����˵�ѡ������źţ� �ߵ�ƽ��pc8�� �͵�ƽ��alu�����
//wdc_exe: ִ�н׶Σ��õ������ջ�д���Ĵ��������ݵ�ѡ���źţ��ߵ�ƽ�����ݴ洢��������͵�ƽ��alu�˽��
//wdmem_exe: ִ�н׶Σ�д���ݼĴ���д�ź�
//immc_exe: ִ�н׶Σ��õ�����������alub�˵�ѡ���źţ��͵�ƽ��ѡ��Ĵ���������rd2���ߵ�ƽ��ѡ��imm32ֵ
//shift_exe��ִ�н׶Σ��õ�������д��alua�˵�ѡ���źţ��͵�ƽ��ѡ��Ĵ���������rd1���ߵ�ƽ��ѡ��shamt32��չ���ֵ
//aluc_exe�� ִ�н׶Σ��õ���ִ�н׶�alu��Ҫ�Ŀ����ź�
//carry, negative, overflow: ִ�н׶εõ��Ľ�λ��־λ��������־λ�������־λ
//wrf_mem: �洢�׶Σ�д�Ĵ������д�ź�
//wdc_mem: �洢�׶Σ��õ������ջ�д���Ĵ��������ݵ�ѡ���źţ��ߵ�ƽ�����ݴ洢��������͵�ƽ��alu�˽��
//wdmem_mem: �洢�׶Σ�д���ݼĴ���д�ź�
//dram_ena: ���ݴ洢��Ƭѡ�ź�
//wrf_wb: ��д�׶Σ�д�Ĵ������д�ź�
//wdc_wb: ��д�׶Σ��õ������ջ�д���Ĵ��������ݵ�ѡ���źţ��ߵ�ƽ�����ݴ洢��������͵�ƽ��alu�˽��
//stall: ����׶Σ���ͣ��ˮ�ߵ��ź�
wire ena;
wire iram_ena, iram_wena;
wire [1:0] pcsource;
wire zero, wrf_id, shift_id, immc_id, wdmem_id, wdc_id, aludc_id;
wire [3:0] aluc_id;
wire wrf_exe, aludc_exe, wdc_exe, wdmem_exe, immc_exe, shift_exe;
wire [3:0] aluc_exe;
wire carry, negative, overflow;
wire wrf_mem, wdc_mem, wdmem_mem;
wire dram_ena;
wire wrf_wb, wdc_wb;
wire stall;


//-----------------------����----------------------
////pc_if: ��ǰpcֵ
////npc����һ��pcֵ
////pc_jr: ȡֵ�׶Σ�������׶εõ��ĴӼĴ�����õ���jr����ת�ĵ�ַ������һ��npc��ֵ
//pc_beqbne: ȡֵ�׶Σ�������׶εõ��ĴӼĴ�����õ���beqbne����ת�ĵ�ַ������һ��npc��ֵ
////index28: ����׶Σ��õ�������λ��indexֵ
//instr_if��ȡָ�׶Σ��õ���ָ��
//pc8_if��ȡָ�׶Σ��õ�pc+8��ֵ
//instr_id: ����׶Σ��õ���ָ��
//pc8_id: ����׶Σ��õ���pc+8ֵ
//pc_id: ����׶Σ��õ���pcֵ
//wbd_wb: ��д�׶Σ�����д��Ĵ������ֵ
////rd1_id, rd2_id: ����׶�, ȡ����Դ������a��b
////shamt32: ����׶�, instr[10:6]����������չֵ
////imm32������׶�, instr[15:0]��������չֵ
//wa_wb: ��д�׶Σ��õ��Ļ�д�Ĵ�����ĵ�ַ
//wa_id: ����׶Σ��õ��Ļ�д�Ĵ�����ĵ�ַ
//pc8_exe: ִ�н׶Σ��õ���pc+8ֵ
//rd1_exe, rd2_exe: ִ�н׶Σ��õ���Զ������a��b
//shamt32_exe: ִ�н׶Σ��õ���shamt��չ32λ���ֵ
//imm32_exe: ִ�н׶Σ��õ���imm��չ32λ���ֵ
//alud_exe: ִ�н׶Σ���alu����˵õ���ֵ
//wa_exe1: ִ�н׶Σ����뵽ִ�н׶εĻ�д�Ĵ�����ĵ�ַ
//wa_exe0: ִ�н׶Σ���ִ�н׶�����Ļ�д�Ĵ�����ĵ�ַ
//alud_mem: �洢�׶Σ���alu����˵õ���ֵ
//rd2_mem: �洢�׶Σ�����׶εõ�Դ������b
//wa_mem: �洢�׶Σ��õ��Ļ�д�Ĵ�����ĵ�ַ
//dmemd_mem: �洢�׶Σ��õ��Ĵ����ݴ洢��ȡ����ֵ
//dmemd_wb: ��д�׶Σ��õ��Ĵ����ݴ洢��ȡ����ֵ
//alud_wb: ��д�׶Σ���alu����˵õ���ֵ

wire [31:0] npc, pc_if; 
wire [31:0] pc_jr, pasource, instr_if, pc8_if;
wire [31:0] pc_beqbne;
wire [27:0] index28;
wire [31:0] pc8_id, pc_id, instr_id;
wire [31:0] wbd_wb, rd1_id, rd2_id, shamt32_id, imm32_id;
wire [4:0] wa_wb, wa_id;
wire [31:0] pc8_exe, rd1_exe, shamt32_exe, rd2_exe, imm32_exe, alud_exe;
wire [4:0] wa_exe1, wa_exe0;
wire [31:0] alud_mem, rd2_mem;
wire [4:0] wa_mem;
wire [31:0] dmemd_mem;
wire [31:0] dmemd_wb, alud_wb;


dffe #(32) pcreg(clk, rst, ena, npc, pc_if);
pipe_if pipeif(clk, pc_if, iram_ena, iram_wena, iram_indata, pc_jr, pcsource, pc_beqbne, index28, 
					instr_if, npc, pc8_if);
reg_if_id regifid(clk, rst, ena, pc8_if, pc_if, instr_if, pc8_id, pc_id, instr_id);
pipe_id pipeid(clk, rst, pc_id, instr_id, wbd_wb, wrf_wb, wa_wb, wrf_exe, wdc_exe, aludc_exe, 
					wrf_mem, wdc_mem, wa_exe0, wa_mem, alud_exe, alud_mem, dmemd_mem, rd1_id, rd2_id, 
					shamt32_id, imm32_id, wa_id, pc_beqbne, index28, aluc_id, wrf_id, shift_id, immc_id, 
					pcsource, wdmem_id, wdc_id, aludc_id, stall); //zero,
reg_id_exe regidexe(clk, rst, wrf_id, aludc_id, wdc_id, wdmem_id, aluc_id, immc_id, shift_id,
						  pc8_id, rd1_id, shamt32_id, rd2_id, imm32_id, wa_id, wrf_exe, aludc_exe,
						  wdc_exe, wdmem_exe, aluc_exe, immc_exe, shift_exe, pc8_exe, rd1_exe, 
						  shamt32_exe, rd2_exe, imm32_exe, wa_exe1);
pipe_exe pipeexe(rd1_exe, rd2_exe, shamt32_exe, imm32_exe, pc8_exe, immc_exe, shift_exe, 
					  aludc_exe, aluc_exe, wa_exe1, wa_exe0, alud_exe, carry, negative, 
					  overflow);//zero,
reg_exe_mem regexemem(clk, rst, wrf_exe, wdc_exe, wdmem_exe, alud_exe, rd2_exe, wa_exe0, wrf_mem,
							 wdc_mem, wdmem_mem, alud_mem, rd2_mem, wa_mem);
pipe_mem pipemem(clk, dram_ena, wdmem_mem, alud_mem, rd2_mem, dmemd_mem);
reg_mem_wb regmemwb(clk, rst, wrf_mem, wdc_mem, dmemd_mem, alud_mem, wa_mem, wrf_wb, wdc_wb, 
						  dmemd_wb, alud_wb, wa_wb);
pipe_wb pipewb(dmemd_wb, alud_wb, wdc_wb, wbd_wb);

assign iram_ena = 1'b1;
assign iram_wena = 1'b0;
assign ena = ~stall;
assign pc_jr = rd1_id;
assign dram_ena = 1'b1;

endmodule
