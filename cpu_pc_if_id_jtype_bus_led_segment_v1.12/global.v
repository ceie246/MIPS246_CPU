//`define FPGA
`define TEST

`ifdef TEST
	`define CLK 2
`elsif FPGA
	`define CLK 17//20 
	//write_segment_new 17
	//write_led_new 17
	//write_vga_continously 16 normal mode 18 write_first
`endif

