`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:13:08 07/01/2013 
// Design Name: 
// Module Name:    CLK_MANAGER 
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
module CLK_MANAGER #(parameter clk = 3)(
		input clk_100M,
		input res,
		output CPU_clk,
		output reset
    );

reg init_rst;
wire res_init;

//FPGA doesn't synthesize init_rst, just used to modelsim
initial begin
	init_rst = 1;
   #20;
	init_rst = 0;
end

clkdiv_init rstinit(clk_100M, init_rst, res_init);
dff dff_res(CPU_clk, res_init, reset);
clk_div #(clk) clkdiv(clk_100M, init_rst, CPU_clk);

endmodule
