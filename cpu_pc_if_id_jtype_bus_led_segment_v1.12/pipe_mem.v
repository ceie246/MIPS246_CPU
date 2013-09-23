`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:21:26 05/02/2013 
// Design Name: 
// Module Name:    pipe_mem 
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
module pipe_mem(
		input clk,
		input ram_ena,
		input ram_wena,
		input [31:0] addr,
		input [31:0] ram_indata,
		output[31:0] ram_outdata
    );

ram #(32, 5, 0) dram(clk, ram_ena, ram_wena, addr[6:2], ram_indata, ram_outdata);
endmodule
