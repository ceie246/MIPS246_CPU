`timescale 1ns / 1ps
`include "define.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:50:06 09/09/2013 
// Design Name: 
// Module Name:    wram2asciiram_addr 
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
module wram2asciiram_addr(
		input [31:0] addr_in,
		output [`RAM_ADDR - 1:0] addr_out
    );
wire [31:0] addr_reg;
wire [`RAM_ROW_BIT - 1 : 0] addr_row;
wire [`RAM_COL_BIT - 1 : 0] addr_col;



assign addr_reg = addr_in - 31'hffef_fe00;
assign addr_row = ((addr_reg + 1) * 13107) >> 20;/// 80;//`RAM_COL_NUM;//(2 ** `RAM_COL_BIT);
assign addr_col = (((addr_reg + 1) * 13107) & 20'hfffff) * 80 >> 20;//% 80;//`RAM_COL_NUM;//(2 ** `RAM_COL_BIT);
assign addr_out = {addr_row, addr_col};

endmodule
