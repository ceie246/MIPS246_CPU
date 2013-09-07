`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:59:07 05/02/2013 
// Design Name: 
// Module Name:    pipe_wb 
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
module pipe_wb(
		input [31:0] dmem_data,
		input [31:0] alud,
		input wdc,
		output [31:0] wd
    );

mux2x32 select_wd(alud, dmem_data, wdc, wd);
endmodule
