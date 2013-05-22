`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:04:22 05/21/2013 
// Design Name: 
// Module Name:    state_machine 
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
module state_machine(
		input clk,
		input rst,
		input mem,
		input rw,
		input [16:0] data_in,
		input [25:0] addr,
		inout [16:0] data_ram,
		output[16:0] data_out,
		output  clk_ram,
		output  we_n,
		output  oe_n,
		output  adv_z,
		output  wait_z,
		output  mt_ce_n,
		output  mt_lb_n,
		output  mt_ub_n,
		output  mt_cre,
		output  reg busy
    );

parameter 
	IDLE = 3'b000,
	W1 = 3'b001,
	W2 = 3'b010,
	R1 = 3'b011,
	R2 = 3'b100;
	
reg [2:0] cstate, nstate;
reg [25:0] caddr, naddr;
reg [15:0] cdata, ndata;
reg coe_n, cwe_n, cce_n, ctri;
reg noe_n, nwe_n, nce_n, ntri;
//register
always @(posedge clk or posedge rst) begin
	if(rst) begin
		cstate <= 0;
		caddr <= 0;
		cdata <= 0;
		coe_n <= 1'b1;
		cwe_n <= 1'b1;
		cce_n <= 1'b1;
		ctri <= 1'b0;
	end else begin
		cstate <= nstate;
		caddr <= naddr;
		cdata <= ndata;
		coe_n <= noe_n;
		cwe_n <= nwe_n;
		cce_n <= nce_n;
		ctri <= ntri;
	end
end

//next input state
always @(*) begin
	naddr = caddr;
	ndata = cdata;
	case(cstate)
		IDLE: 
			begin
				if(~mem) begin
					nstate = IDLE;
					busy = 1'b0;
				end else if(rw) begin //read
					nstate = R1;
					naddr = addr;
					busy = 1'b1;
				end else begin //write
					nstate = W1;
					naddr = addr;
					ndata = data_in;
					busy = 1'b1;
				end
			end
		R1:
			begin
				nstate = R2;
			end
		R2:
			begin
				nstate = IDLE;
			end
		W1:
			begin
				nstate = W2;
			end
		W2:
			begin
				nstate = IDLE;
			end
		default:
			begin
				nstate = IDLE;
			end
	endcase
end

//next output
always @(*) begin
	nce_n = cce_n;
	nwe_n = cwe_n;
	case(cstate)
		IDLE:
			begin
				if(mem)
					nce_n = 1'b0;
			end
		W1:
			begin
				nwe_n = 1'b0;
				ntri = 1'b1;
			end
		W2:
			begin
				ntri = 1'b0;
				nwe_n = 1'b1;
				nce_n = 1'b1;
			end
		R1:
			begin
				noe_n = 1'b0;
				nwe_n = 1'b1;
			end
		R2:
			begin
				noe_n = 1'b1;
				nce_n = 1'b1;
				ndata = data_in;
			end
		default:
			begin
				
			end
	endcase
end

assign data_out = cdata;
assign data_ram = ctri ? data_in : 16'bz;
assign oe_n = coe_n;
assign we_n = cwe_n;
assign adv_z = 1'bz;
assign wait_z = 1'bz;
assign mt_ce_n = cce_n;
assign mt_lb_n = 1'b0;
assign mt_ub_n = 1'b0;
assign mt_cre = 1'b0;
assign clk_ram = clk;

endmodule
