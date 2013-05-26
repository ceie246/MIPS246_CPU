`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:56:02 05/26/2013 
// Design Name: 
// Module Name:    cache 
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
module cache #(parameter WIDTH = 8, DEPTH = 3, INIT = 1)(
		input clk,
		input ram_ena,
		input wena,
		input [31:0] addr,
		input [WIDTH - 1:0] data_in,
		output [WIDTH - 1:0] data_out,
		output zero
    );
wire [WIDTH - 1: 0] data_cache;
reg [29 - DEPTH - 1: 0] tag; //word aligned

ram #(WIDTH, DEPTH) iram(clk, ram_ena, wena, addr[1+DEPTH : 2], data_in, data_cache);
equal cache_equal(tag, addr[31: DEPTH + 2], zero); // zero: hit, ~zero: not hit

assign data_out = zero ? data_cache : 32'bz;

always @(negedge clk) begin
	if(wena) begin
		tag <= addr[31: DEPTH + 2];
	end
end

endmodule
