//`define FPGA
`define TEST

`ifdef TEST
	`define CLK 2
`elsif FPGA
	`define CLK 20
`endif

