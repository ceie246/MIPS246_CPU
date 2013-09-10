library verilog;
use verilog.vl_types.all;
entity vga_controller is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        waddr           : in     vl_logic_vector(31 downto 0);
        wdata           : in     vl_logic_vector(7 downto 0);
        sel_rw          : in     vl_logic;
        r               : out    vl_logic_vector(2 downto 0);
        g               : out    vl_logic_vector(2 downto 0);
        b               : out    vl_logic_vector(1 downto 0);
        hs              : out    vl_logic;
        vs              : out    vl_logic
    );
end vga_controller;
