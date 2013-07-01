`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:18:49 04/15/2013 
// Design Name: 
// Module Name:    dffe 
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
module dffe #(parameter WIDTH = 8) //���첽��λ��ʹ�ܴ�����D������
	 (
		input clk,
		input rst,
		input ena, //�ߵ�ƽ����
		input [WIDTH - 1: 0] data_in,
		output reg [WIDTH - 1: 0] data_out
    );

	always @(posedge clk or posedge rst) begin
		if(rst) begin
			data_out <= 0;
		end else if(ena) begin
			data_out <= data_in;
		end
	end
	
endmodule
