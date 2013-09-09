`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:01:41 01/29/2013 
// Design Name: 
// Module Name:    vga 
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
module vga (
	input clk, //100MHZ==vga_clk
	input rst,
	input [7:0] data_in,
	output[20:0] addr, //1280(2048)*1024
//	output valid,
	output [2:0] r, g, 
	output [1:0] b,
	output hs, vs
    );

	wire vga_clk;
	assign vga_clk = clk;
	
	//h_counter
	reg [10:0] h_count;
	always @(posedge vga_clk or posedge rst) begin
		if(rst) begin
			h_count <= 11'd0;
		end else if(h_count == 11'd1687) begin//1687
			h_count <= 11'd0;
		end else begin
			h_count <= h_count + 11'b1;
		end
	end
	
	//v_count
	reg [10:0] v_count;
	always @(posedge vga_clk or posedge rst) begin
		if(rst) begin
			v_count <= 11'd0;
		end else if(h_count == 11'd1687) begin//1687
			if(v_count == 11'd1065) begin//1065
				v_count <= 11'd0;
			end else begin
				v_count <= v_count + 11'b1;
			end
		end
	end
	
	//wire [20:0] addr;
	//wire [7:0] data_in;
	//vga_ram ram(clk, rst, addr, data_in);
	//锁存数据
	wire valid;
	reg [7:0] data_reg;
	reg video_out;
	always @(posedge vga_clk or posedge rst) begin
		if(rst) begin
			data_reg <= 8'b0;
			video_out <= 1'b0;
		end else begin
			data_reg <= data_in;
			video_out <= valid;
		end
	end
	
	wire [10:0] row;
	wire [10:0] col;
	assign valid = ((h_count >= 11'd359) && (h_count < 11'd1640) &&
					 (v_count >= 11'd40) && (v_count < 11'd1065)) ? 1'b1 : 1'b0; //1640,1065
	assign col = h_count - 11'd359; //vga上的列坐标
	assign row = v_count - 11'd40; //vga上的行坐标
	assign addr = {row[9:0], col};
	assign hs = (h_count >= 10'd0 && h_count < 10'd112) ? 1'b1 : 1'b0;
	assign vs = (v_count >= 10'd0 && v_count < 10'd3) ? 1'b1 : 1'b0;
	assign r = video_out? data_reg[7:5] : 3'b0;
	assign g = video_out? data_reg[4:2] : 3'b0;
	assign b = video_out? data_reg[1:0] : 2'b0;
endmodule
