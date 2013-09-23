`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:20:00 09/10/2013 
// Design Name: 
// Module Name:    ready_sm 
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
module ready_sm(
		input clk,
		input rst,
		input ready_in,
		output ready_out,
		output [31:0] addr
    );
	 
localparam IDLE 	= 0,
			  FIRST 	= 1,
			  MORE 	= 2;

reg [2:0] state_reg, state_next;
reg [7:0] addr_temp;

always @(posedge clk or posedge rst) begin
	if(rst) begin
		state_reg <= IDLE;
	end else begin
		state_reg <= state_next;
	end
end

always @(*) begin
	case(state_reg) 
	IDLE:
		if(ready_in == 0) begin
			state_next = IDLE;
		end else begin
			state_next = FIRST;
		end
	FIRST:
		if(ready_in == 0) begin
			state_next = IDLE;
		end else begin
			state_next = MORE;
		end
	MORE:
		if(ready_in == 0) begin
			state_next = IDLE;
		end else begin
			state_next = MORE;
		end
	default:
		state_next = IDLE;
	endcase
end

//for fifo addr
//reg flag;
//always @(posedge clk or posedge rst) begin
//	if(rst) begin
//		addr_temp <= 8'h0;
//		ready_out <= 1'b0;
//		flag <= 1'b0;
//	end else if(state_reg == FIRST) begin
//		if(flag == 1'b0) begin
//			flag <= 1'b1;
//		end else begin
//			addr_temp <= addr_temp + 8'b1;
//		end
//		ready_out <= 1'b1;
//	end else begin
//		ready_out <= 1'b0;
//	end
//end


//assign addr = 32'hffff_fe00 + {24'b0, addr_temp};
assign addr = 32'hffff_fe00;
assign ready_out = (state_reg == FIRST) ? 1'b1 : 1'b0;

endmodule
