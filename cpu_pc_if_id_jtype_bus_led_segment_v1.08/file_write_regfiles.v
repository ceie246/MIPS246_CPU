`timescale 1ns / 1ps
`include "global.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:16:18 08/18/2013 
// Design Name: 
// Module Name:    file_write_regfiles 
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
module file_write_regfiles (
		input clk,
		input [31:0] regfiles0,
		input [31:0] regfiles1,
		input [31:0] regfiles2,
		input [31:0] regfiles3,
		input [31:0] regfiles4,
		input [31:0] regfiles5,
		input [31:0] regfiles6,
		input [31:0] regfiles7,
		input [31:0] regfiles8,
		input [31:0] regfiles9,
		input [31:0] regfiles10,
		input [31:0] regfiles11,
		input [31:0] regfiles12,
		input [31:0] regfiles13,
		input [31:0] regfiles14,
		input [31:0] regfiles15,
		input [31:0] regfiles16,
		input [31:0] regfiles17,
		input [31:0] regfiles18,	
		input [31:0] regfiles19,
		input [31:0] regfiles20,
		input [31:0] regfiles21,
		input [31:0] regfiles22,
		input [31:0] regfiles23,
		input [31:0] regfiles24,
		input [31:0] regfiles25,
		input [31:0] regfiles26,
		input [31:0] regfiles27,
		input [31:0] regfiles28,	
		input [31:0] regfiles29,
		input [31:0] regfiles30,
		input [31:0] regfiles31
    );
	localparam WIDTH = 32;
   localparam ISREG = 1;
	
	file_write #(WIDTH, "regfiles0")fw_rf0(clk, regfiles0);
	file_write #(WIDTH, "regfiles1")fw_rf1(clk, regfiles1);
	file_write #(WIDTH, "regfiles2")fw_rf2(clk, regfiles2);
	file_write #(WIDTH, "regfiles3")fw_rf3(clk, regfiles3);
	file_write #(WIDTH, "regfiles4")fw_rf4(clk, regfiles4);
	file_write #(WIDTH, "regfiles5")fw_rf5(clk, regfiles5);
	file_write #(WIDTH, "regfiles6")fw_rf6(clk, regfiles6);
	file_write #(WIDTH, "regfiles7")fw_rf7(clk, regfiles7);
	file_write #(WIDTH, "regfiles8")fw_rf8(clk, regfiles8);
	file_write #(WIDTH, "regfiles9")fw_rf9(clk, regfiles9);
	file_write #(WIDTH, "regfiles10")fw_rf10(clk, regfiles10);
	file_write #(WIDTH, "regfiles11")fw_rf11(clk, regfiles11);
	file_write #(WIDTH, "regfiles12")fw_rf12(clk, regfiles12);
	file_write #(WIDTH, "regfiles13")fw_rf13(clk, regfiles13);
	file_write #(WIDTH, "regfiles14")fw_rf14(clk, regfiles14);
	file_write #(WIDTH, "regfiles15")fw_rf15(clk, regfiles15);
	file_write #(WIDTH, "regfiles16")fw_rf16(clk, regfiles16);
	file_write #(WIDTH, "regfiles17")fw_rf17(clk, regfiles17);
	file_write #(WIDTH, "regfiles18")fw_rf18(clk, regfiles18);
	file_write #(WIDTH, "regfiles19")fw_rf19(clk, regfiles19);
	file_write #(WIDTH, "regfiles20")fw_rf20(clk, regfiles20);
	file_write #(WIDTH, "regfiles21")fw_rf21(clk, regfiles21);
	file_write #(WIDTH, "regfiles22")fw_rf22(clk, regfiles22);
	file_write #(WIDTH, "regfiles23")fw_rf23(clk, regfiles23);
	file_write #(WIDTH, "regfiles24")fw_rf24(clk, regfiles24);
	file_write #(WIDTH, "regfiles25")fw_rf25(clk, regfiles25);
	file_write #(WIDTH, "regfiles26")fw_rf26(clk, regfiles26);
	file_write #(WIDTH, "regfiles27")fw_rf27(clk, regfiles27);
	file_write #(WIDTH, "regfiles28")fw_rf28(clk, regfiles28);
	file_write #(WIDTH, "regfiles29")fw_rf29(clk, regfiles29);
	file_write #(WIDTH, "regfiles30")fw_rf30(clk, regfiles30);
	file_write #(WIDTH, "regfiles31")fw_rf31(clk, regfiles31);

endmodule
