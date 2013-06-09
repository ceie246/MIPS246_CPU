`timescale 1ns / 1ps

//用前面三个需要将data_out改为reg
//`define WRITE_FIRST 
//`define READ_FIRST 
//`define NO_CHANGE 
`define NORMAL

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:19:09 04/21/2013 
// Design Name: 
// Module Name:    ram 
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
module ram #(parameter WIDTH = 8, DEPTH = 3, INIT = 1)(
		input clk,
		input ram_ena,
		input wena,
		input [DEPTH - 1:0] addr,
		input [WIDTH - 1:0] data_in,
		output [WIDTH - 1:0] data_out
    );

   parameter RAM_WIDTH = WIDTH;
   parameter RAM_ADDR_BITS = DEPTH;
   
   reg [RAM_WIDTH-1:0] ram [(2**RAM_ADDR_BITS)-1:0];

   //  The following code is only necessary if you wish to initialize the RAM 
   //  contents via an external file (use $readmemb for binary data)
   initial begin
		if(INIT)
			$readmemh("memfile.tv", ram);
	end
	
	`ifdef WRITE_FIRST
		always @(posedge clk)
      if (ram_ena) begin
         if (wena) begin
            ram[addr] <= data_in;
            data_out <= data_in;
         end
         else
            data_out <= ram[addr];
      end
	`elsif READ_FIRST
		always @(posedge clk)
      if (ram_ena) begin
         if (wena)
            ram[addr] <= data_in;
         data_out <= ram[addr];
      end
	`elsif NO_CHANGE
		always @(posedge clk)
      if (ram_ena)
         if (wena)
            ram[addr] <= data_in;
         else
            data_out <= ram[addr];
	`elsif NORMAL
		  always @(posedge clk)
		  if (ram_ena)
			 if(wena)
            ram[addr] <= data_in;

			assign data_out = ram[addr];
	`endif
						
endmodule
