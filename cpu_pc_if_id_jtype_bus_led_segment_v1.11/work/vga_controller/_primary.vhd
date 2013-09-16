library verilog;
use verilog.vl_types.all;
entity vga_controller is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        waddr           : in     vl_logic_vector(31 downto 0);
        wdata           : in     vl_logic_vector(7 downto 0);
        selRW           : in     vl_logic;
        r_out           : out    vl_logic_vector(2 downto 0);
        g_out           : out    vl_logic_vector(2 downto 0);
        b_out           : out    vl_logic_vector(1 downto 0);
        hs_out          : out    vl_logic;
        vs_out          : out    vl_logic
    );
end vga_controller;
