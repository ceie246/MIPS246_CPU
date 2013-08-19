library verilog;
use verilog.vl_types.all;
entity clkdiv_init is
    port(
        clk             : in     vl_logic;
        rest            : in     vl_logic;
        rst             : out    vl_logic
    );
end clkdiv_init;
