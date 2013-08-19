`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:52:27 07/08/2013 
// Design Name: 
// Module Name:    clkdiv_init 
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
module clkdiv_init (
		input clk,
		input rest,
		output reg rst
    );

reg [7:0] clk_count = 8'b0;
reg [3:0] count;
reg state_reg, state_next;

localparam 
		IDLE = 0,
		FIRST = 1;

always @(posedge clk or posedge rest) begin
	if(rest) begin
		state_reg <= IDLE;
	end else begin
		state_reg <= state_next;
	end
end
		
always @(*) begin
	case(state_reg)
	IDLE:
		if(clk_count == 8'd128) begin
			rst = 1;
			state_next = FIRST;
		end else begin
			state_next = IDLE;
		end
	FIRST: 
	begin
		if(count == 0) begin
			rst = 0;
		end
		state_next = FIRST;
	end
	endcase
end

always @(posedge clk) begin
	if(state_reg == IDLE && clk_count == 8'd128) begin
		count = 4'hf;
	end else if(state_reg == FIRST) begin
		count = count - 4'b1;
	end
	clk_count = clk_count + 8'b1;
end

endmodule
