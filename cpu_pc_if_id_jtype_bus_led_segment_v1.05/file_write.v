`timescale 1ns / 1ps
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
module file_write(
		input clk,
		input a
    );

integer signed File_test;

initial
	File_test = $fopen("file_test.out");

always @(posedge clk) begin
	$fdisplay(a, "File_test");
end
endmodule
