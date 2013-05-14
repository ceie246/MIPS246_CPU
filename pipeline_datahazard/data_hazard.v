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

	//---------------------------------rd1c�����ź�-----------------------------------
	//00:�������������������
	//01:��һ��ָ��Ϊalu�����д�Ĵ����������ڶ���ָ��Ϊ���Ĵ������� ==> ����д�Ľ��ǰ�Ƶ�EXE��
	//10:��һ��ָ��Ϊalu�����д�Ĵ����������ڶ���Ϊ�����ָ�������ָ��Ϊ���Ĵ������� ==> ����д�Ľ��ǰ�Ƶ�MEM��������dmem��ȡ��
	//11:��һ��ָ��Ϊdmem�����д�Ĵ����������ڶ���Ϊ�����ָ�������ָ��Ϊ���Ĵ������� ==> ����д�Ľ��ǰ�Ƶ�MEM������dmem��ȡ��
	always @(wrf_exe, wdc_exe, aludc_exe, wrf_mem, wdc_mem, rs, wa_exe0, wa_mem) begin
		rd1c <= 2'b00;
		if(wrf_exe && ~wdc_exe && ~aludc_exe //��һ��ָ����������
				&& (rs != 0) && (rs == wa_exe0)) begin //����ָ����������
				rd1c <= 2'b01;
		end else if(wrf_mem && ~wdc_mem 
							&& (rs != 0) && (rs == wa_mem)) begin
				rd1c <= 2'b10;
		end else if(wrf_mem && wdc_mem
							&& (rs != 0) && (rs == wa_mem)) begin
				rd1c <= 2'b11;
		end
	end
	
	//rd2c�����ź�
	always @(wrf_exe, wdc_exe, aludc_exe, wrf_mem, wdc_mem, rt, wa_exe0, wa_mem) begin
		rd2c <= 2'b00;
		if(wrf_exe && ~wdc_exe && ~aludc_exe //��һ��ָ����������
				&& (rt != 0) && (rt == wa_exe0)) begin //����ָ����������
				rd2c <= 2'b01;
		end else if(wrf_mem && ~wdc_mem 
							&& (rt != 0) && (rt == wa_mem)) begin
				rd2c <= 2'b10;
		end else if(wrf_mem && wdc_mem
							&& (rt != 0) && (rt == wa_mem)) begin
				rd2c <= 2'b11;
		end
	end
	
	//-----------------------------------�����ź�--------------------------------------
	//��һ��ָ��Ϊdmem�����д�Ĵ����������ڶ���Ϊ���Ĵ������� ==> ����ˮ����ͣһ��ʱ�����ڣ�������һ����ͬ��ָ��
	assign stall = (wdc_exe && ~aludc_exe && wrf_exe
							&& ((rs != 0) && (rs == wa_exe0) || (rt != 0) && (rt == wa_exe0))) ? 1'b1: 1'b0; 
							
	
	
endmodule
