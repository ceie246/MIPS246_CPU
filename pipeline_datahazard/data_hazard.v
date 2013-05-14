`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:38:19 05/13/2013 
// Design Name: 
// Module Name:    data_hazard 
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
module data_hazard(
		input wrf_exe,
		input wdc_exe,
		input aludc_exe,
		input wrf_mem,
		input wdc_mem,
		input wrf_id,
		input [4:0] rs,
		input [4:0] rt,
		input [4:0] wa_exe0,
		input [4:0] wa_mem,
		output reg [1:0] rd1c,
		output reg [1:0] rd2c,
		output stall
    );

	//---------------------------------rd1c控制信号-----------------------------------
	//00:不存在数据相关性问题
	//01:第一条指令为alu结果回写寄存器操作，第二条指令为读寄存器操作 ==> 将回写的结果前推到EXE级
	//10:第一条指令为alu结果回写寄存器操作，第二条为不相关指令，第三条指令为读寄存器操作 ==> 将回写的结果前推到MEM级，不从dmem中取数
	//11:第一条指令为dmem结果回写寄存器操作，第二条为不相关指令，第三条指令为读寄存器操作 ==> 将回写的结果前推到MEM级，从dmem中取数
	always @(wrf_exe, wdc_exe, aludc_exe, wrf_mem, wdc_mem, rs, wa_exe0, wa_mem) begin
		rd1c <= 2'b00;
		if(wrf_exe && ~wdc_exe && ~aludc_exe //第一条指令满足条件
				&& (rs != 0) && (rs == wa_exe0)) begin //后续指令满足条件
				rd1c <= 2'b01;
		end else if(wrf_mem && ~wdc_mem 
							&& (rs != 0) && (rs == wa_mem)) begin
				rd1c <= 2'b10;
		end else if(wrf_mem && wdc_mem
							&& (rs != 0) && (rs == wa_mem)) begin
				rd1c <= 2'b11;
		end
	end
	
	//rd2c控制信号
	always @(wrf_exe, wdc_exe, aludc_exe, wrf_mem, wdc_mem, rt, wa_exe0, wa_mem) begin
		rd2c <= 2'b00;
		if(wrf_exe && ~wdc_exe && ~aludc_exe //第一条指令满足条件
				&& (rt != 0) && (rt == wa_exe0)) begin //后续指令满足条件
				rd2c <= 2'b01;
		end else if(wrf_mem && ~wdc_mem 
							&& (rt != 0) && (rt == wa_mem)) begin
				rd2c <= 2'b10;
		end else if(wrf_mem && wdc_mem
							&& (rt != 0) && (rt == wa_mem)) begin
				rd2c <= 2'b11;
		end
	end
	
	//-----------------------------------阻塞信号--------------------------------------
	//第一条指令为dmem结果回写寄存器操作，第二条为读寄存器操作 ==> 将流水线暂停一个时钟周期，即插入一条相同的指令
	assign stall = (wdc_exe && ~aludc_exe && wrf_exe
							&& ((rs != 0) && (rs == wa_exe0) || (rt != 0) && (rt == wa_exe0))) ? 1'b1: 1'b0; 
							
	
	
endmodule
