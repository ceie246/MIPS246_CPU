`timescale 1ns / 1ps
`include "global.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:54:54 08/12/2013 
// Design Name: 
// Module Name:    file_write 
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
module file_write #(parameter WIDTH = 32, parameter ARGUMENT = "0")(
		input clk, //触发信号，单周期时钟上升沿触发
		input [WIDTH - 1 : 0] a //输出信号
    );

integer File_test, desc;

initial begin
	File_test = $fopen("file_test.out");
	desc = File_test | 1;
end

always @(posedge clk) begin
	$fdisplay(desc,  "%s = %h", ARGUMENT, a);//`ARGUMENT
end
endmodule
