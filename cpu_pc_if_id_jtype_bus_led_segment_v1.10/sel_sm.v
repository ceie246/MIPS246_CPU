`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:43:02 09/10/2013 
// Design Name: 
// Module Name:    sel_sm 
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
module sel_sm(
		input clk,
		input rst,
		input sel_in,
		output sel_out
    );

localparam IDEL  = 0,
			  FIRST = 1,
			  MORE  = 2;
			  
reg [1:0] state_reg, state_next;

always @(posedge clk or posedge rst) begin
	if(rst) begin
		state_reg <= IDEL;
	end else begin
		state_reg <= state_next;
	end
end

always @(*) begin
	case(state_reg)
	IDEL:
		if(sel_in == 1) begin
			state_next = FIRST;
		end else begin
			state_next = IDEL;
		end
	FIRST:
		if(sel_in == 1) begin
			state_next = MORE;
		end else begin
			state_next = IDEL;
		end
	MORE:
		if(sel_in == 1) begin
			state_next = MORE;
		end else begin
			state_next = IDEL;
		end
	endcase
end

assign sel_out = (state_reg == FIRST) ? 1'b1 : 1'b0;
endmodule
