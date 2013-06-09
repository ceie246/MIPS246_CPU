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

//for test
//wire [31:0] iram_indata;

//------------------------控制信号---------------------------
//iram_ena: 指令寄存器使能信号， 常为高电平使能
//iram_wena: 指令寄存器写信号，用于debug时修改指令寄存器内部的值
//pc_ena：pc寄存器使能信号，高电平有效，在流水线stall时，使其低电平无效
//rf_ena：在回写阶段，需要写寄存器组给的写信号
//wrf: 在译码阶段，得到的写寄存器组信号
//shift：在译码阶段，得到的最终写入alua端的选择信号，低电平：选择寄存器读出的rd1，高电平：选择shamt32扩展后的值
//immc: 在译码阶段，得到的最终吸入alub端的选择信号，低电平：选择寄存器读出的rd2，高电平：选择imm32值
//aluc: 在译码阶段，得到的alu的控制信号
//shift_e: 在执行阶段，alua需要的控制信号
//aluc_e： 在执行阶段，alu需要的控制信号
//dram_ena: 在存储阶段，dram的使能信号
//dram_wena：在存储阶段，dram的写信号
//wbdc: 在回写阶段，最终回写到寄存器组数据的选择信号，高电平：数据存储器输出，低电平：alu端结果
//dmem: 译码阶段，写数据寄存器写信号
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

//------------------------数据总线---------------------------
//pc: 当前pc值
//npc：下一个pc值
//instr: 在取指阶段，从取指令单元得到的指令
//pc_jr: 在取值阶段，在译码阶段得到的从寄存器组得到的jr的跳转的地址，其中一个npc的值
//wrf_data：在回写阶段，最终写入到寄存器组的数据
//wrf_addr: 回写阶段写寄存器的地址
//rd1, rd2: 在译码阶段取出的源操作数a和b
//shamt32: 译码阶段instr[10:6]立即数的扩展值
//imm32：译码阶段instr[15:0]立即数扩展值
//alud: 在执行阶段，alu得出的运算结果
//zero, carry, overflow, negative：执行阶段得到的标志位
//wrf_addr_d: 译码阶段，得到要回写的寄存器地址
//dram_indata: 存储阶段，需要写到数据存储器的内容
//dram_outdata: 存储阶段，从数据存储器读出的内容
//wbd: 回写阶段，最终要写回寄存器的值
//imm18: 译码阶段，得到左移两位的imm值
//index28: 译码阶段，得到左移两位的index值
//pc8: 取指阶段，得到pc+8的值
//wa_f: 执行阶段，得到译码阶段得到的回写地址
//wa_e: 执行阶段，得到的回写地址
//aludc: 译码阶段，得到的控制最终alu输出端的控制信号
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
