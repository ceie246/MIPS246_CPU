library verilog;
use verilog.vl_types.all;
entity clk_div is
    generic(
        SEL             : integer := 8
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        sel_clk         : out    vl_logic;
        vga_clk         : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of SEL : constant is 1;
end clk_div;
