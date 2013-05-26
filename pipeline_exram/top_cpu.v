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
		//修改imem时的数据
		input [31:0] iram_indata
    );

//---------------------控制信号---------------------
//ena：pc寄存器和ifid寄存器使能信号，高电平有效，在流水线stall时，使其低电平无效
//iram_ena: 指令存储器片选信号
//iram_wena: 指令存储器写信号，用于debug时修改指令寄存器内部的值
//pcsource: 下一个pc选择信号：00：pc+4, 01：pc_jr, 10: pc_beqbne, 11: pc_jjal
//zero: 译码阶段，得到的来自执行阶段的运算零标志位
//wrf_id: 译码阶段，得到的来自执行阶段的写寄存器组信号
//shift_id：译码阶段，得到的最终写入alua端的选择信号，低电平：选择寄存器读出的rd1，高电平：选择shamt32扩展后的值
//immc_id: 译码阶段，得到的最终吸入alub端的选择信号，低电平：选择寄存器读出的rd2，高电平：选择imm32值
//wdmem_id: 译码阶段，写数据寄存器写信号
//wdc_id: 译码阶段，得到的最终回写到寄存器组数据的选择信号，高电平：数据存储器输出，低电平：alu端结果
//aludc_id: 译码阶段，得到的alu输出端的选择控制信号， 高电平：pc8， 低电平：alu的输出
//aluc_id： 译码阶段，得到的执行阶段alu需要的控制信号
//wrf_exe: 执行阶段，写寄存器组的写信号
//aludc_exe: 执行阶段，得到的alu输出端的选择控制信号， 高电平：pc8， 低电平：alu的输出
//wdc_exe: 执行阶段，得到的最终回写到寄存器组数据的选择信号，高电平：数据存储器输出，低电平：alu端结果
//wdmem_exe: 执行阶段，写数据寄存器写信号
//immc_exe: 执行阶段，得到的最终吸入alub端的选择信号，低电平：选择寄存器读出的rd2，高电平：选择imm32值
//shift_exe：执行阶段，得到的最终写入alua端的选择信号，低电平：选择寄存器读出的rd1，高电平：选择shamt32扩展后的值
//aluc_exe： 执行阶段，得到的执行阶段alu需要的控制信号
//carry, negative, overflow: 执行阶段得到的进位标志位，负数标志位，溢出标志位
//wrf_mem: 存储阶段，写寄存器组的写信号
//wdc_mem: 存储阶段，得到的最终回写到寄存器组数据的选择信号，高电平：数据存储器输出，低电平：alu端结果
//wdmem_mem: 存储阶段，写数据寄存器写信号
//dram_ena: 数据存储器片选信号
//wrf_wb: 回写阶段，写寄存器组的写信号
//wdc_wb: 回写阶段，得到的最终回写到寄存器组数据的选择信号，高电平：数据存储器输出，低电平：alu端结果
//stall: 译码阶段，暂停流水线的信号
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


//-----------------------数据----------------------
////pc_if: 当前pc值
////npc：下一个pc值
////pc_jr: 取值阶段，在译码阶段得到的从寄存器组得到的jr的跳转的地址，其中一个npc的值
//pc_beqbne: 取值阶段，在译码阶段得到的从寄存器组得到的beqbne的跳转的地址，其中一个npc的值
////index28: 译码阶段，得到左移两位的index值
//instr_if：取指阶段，得到的指令
//pc8_if：取指阶段，得到pc+8的值
//instr_id: 译码阶段，得到的指令
//pc8_id: 译码阶段，得到的pc+8值
//pc_id: 译码阶段，得到的pc值
//wbd_wb: 回写阶段，最终写入寄存器组的值
////rd1_id, rd2_id: 译码阶段, 取出的源操作数a和b
////shamt32: 译码阶段, instr[10:6]立即数的扩展值
////imm32：译码阶段, instr[15:0]立即数扩展值
//wa_wb: 回写阶段，得到的回写寄存器组的地址
//wa_id: 译码阶段，得到的回写寄存器组的地址
//pc8_exe: 执行阶段，得到的pc+8值
//rd1_exe, rd2_exe: 执行阶段，得到的远操作数a和b
//shamt32_exe: 执行阶段，得到的shamt扩展32位后的值
//imm32_exe: 执行阶段，得到的imm扩展32位后的值
//alud_exe: 执行阶段，从alu输出端得到的值
//wa_exe1: 执行阶段，输入到执行阶段的回写寄存器组的地址
//wa_exe0: 执行阶段，从执行阶段输出的回写寄存器组的地址
//alud_mem: 存储阶段，从alu输出端得到的值
//rd2_mem: 存储阶段，译码阶段得到源操作数b
//wa_mem: 存储阶段，得到的回写寄存器组的地址
//dmemd_mem: 存储阶段，得到的从数据存储器取出的值
//dmemd_wb: 回写阶段，得到的从数据存储器取出的值
//alud_wb: 回写阶段，从alu输出端得到的值

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
