library verilog;
use verilog.vl_types.all;
entity kb_controller is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        ps2_clk         : in     vl_logic;
        ps2_data        : in     vl_logic;
        sel_rw          : in     vl_logic;
        raddr           : in     vl_logic_vector(31 downto 0);
        rdata           : out    vl_logic_vector(7 downto 0)
    );
end kb_controller;
