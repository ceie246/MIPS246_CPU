`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:58:31 04/22/2013 
// Design Name: 
// Module Name:    pipe_if 
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
module pipe_if(
		input clk,
		input [31:0] pc, //当前pc值
		//ram_ena, ram_wena, ram_indata供修改指令寄存器时使用
		input ram_ena,
		input ram_wena,
		input [31:0] ram_indata,
		input [31:0] pc_jr,
		input [1:0] pcsource,
		input [17:0] imm18,
		input [27:0] index28,
		output [31:0] ram_outdata, //通过pc值的修改从指令存储器中取出当前指令
		output [31:0] npc, //下一个pc值
		output [31:0] pc8 //pc+8的值
    );

wire [31:0] pc4; //pc+4后产生的下一个pc值
wire npc4_carry, npc8_carry; //npc4和npc8产生的进位，这里不使用
wire [31:0] pc_beqbne, pc_jjal;

ram #(32, 5) iram(clk, ram_ena, ram_wena, pc[6:2], ram_indata, ram_outdata);
top_cla_32 pcplus4(pc, 32'd4, 1'b0, npc4_carry, pc4);
top_cla_32 pcplus8(pc4, 32'd4, 1'b0, npc8_carry, pc8);
mux4x32 select_npc(pc4, pc_jr, pc_beqbne, pc_jjal, pcsource, npc);

assign pc_beqbne = pc + imm18;
assign pc_jjal = {pc[31:28], index28};

endmodule
