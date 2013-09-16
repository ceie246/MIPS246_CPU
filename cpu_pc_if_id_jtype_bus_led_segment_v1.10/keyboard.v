`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:34:30 01/14/2013 
// Design Name: 
// Module Name:    keyboard 
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
module keyboard(
	input rst,
	input clk,
	input ps2_clk,
	input ps2_data,
   input ena, //发送端忙信号，如果不忙使能
	output [7:0] data,
	output ready
    );

//reg [3:0] lcount; //serial 2 parallel count
reg [8:0] buffer; // serial 2 parallel reg
reg ps2_clk_r0, ps2_clk_r1;//, ps2_clk_r2; //滤波寄存器
wire neg_ps2_clk;


always @(posedge clk or posedge rst) begin //滤波
	if(rst) begin
		ps2_clk_r0 <= 1'b1;
		ps2_clk_r1 <= 1'b1;
//		ps2_clk_r2 <= 1'b1;
	end else begin
		ps2_clk_r0 <= ps2_clk; //&& ~ena_n;
		ps2_clk_r1 <= ps2_clk_r0;
//		ps2_clk_r2 <= ps2_clk_r1;
	end
end

assign neg_ps2_clk = ~ps2_clk_r0 && ps2_clk_r1;


localparam [3:0] 
	idle = 4'b0000,
	num0 = 4'b0001,
	num1 = 4'b0010,
	num2 = 4'b0011,
	num3 = 4'b0100,
	num4 = 4'b0101,
	num5 = 4'b0110,
	num6 = 4'b0111,
	num7 = 4'b1000,
	num8 = 4'b1001,
	stop = 4'b1010;
	
reg [7:0] data_r;
reg ready_r;
reg [3:0] state;
always @(posedge clk or posedge rst) begin //写数
	if(rst) begin
		buffer <= 0;
//		lcount <= 0;
		ready_r <= 1'b0;
		state <= idle;
	end else if(neg_ps2_clk) begin
		case(state)
		idle:
			begin
				if(~ps2_data && ena) begin
					state <= num0;
				end else
					state <= idle;
					
				ready_r <= 1'b0;
			end
		num0:
			begin
				buffer[0] <= ps2_data;
				ready_r <= 1'b0;
				state <= num1;
			end
		num1:
			begin
				buffer[1] <= ps2_data;
				ready_r <= 1'b0;
				state <= num2;
			end
		num2:
			begin
				buffer[2] <= ps2_data;
				ready_r <= 1'b0;
				state <= num3;
			end
		num3:
			begin
				buffer[3] <= ps2_data;
				ready_r <= 1'b0;
				state <= num4;
			end
		num4:
			begin
				buffer[4] <= ps2_data;
				ready_r <= 1'b0;
				state <= num5;
			end
		num5:
			begin
				buffer[5] <= ps2_data;
				ready_r <= 1'b0;
				state <= num6;
			end
		num6:
			begin
				buffer[6] <= ps2_data;
				ready_r <= 1'b0;
				state <= num7;
			end
		num7:
			begin
				buffer[7] <= ps2_data;
				ready_r <= 1'b0;
				state <= num8;
			end
		num8:  //校验位
			begin
				buffer[8] <= ps2_data;
				ready_r <= 1'b0;
				state <= stop;
			end
		stop:
			begin
				if(ps2_data && ^buffer) begin
					data_r <= buffer[7:0];
					ready_r <= 1'b1;
				end else begin
					ready_r <= 1'b0;
				end
				state <= idle;
			end
		default: state <= idle;
		endcase
	end
end

assign data = data_r;
assign ready = ready_r;

endmodule
