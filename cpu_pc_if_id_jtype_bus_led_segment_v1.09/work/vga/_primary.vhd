library verilog;
use verilog.vl_types.all;
entity vga is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        data_in         : in     vl_logic_vector(7 downto 0);
        addr            : out    vl_logic_vector(20 downto 0);
        r               : out    vl_logic_vector(2 downto 0);
        g               : out    vl_logic_vector(2 downto 0);
        b               : out    vl_logic_vector(1 downto 0);
        hs              : out    vl_logic;
        vs              : out    vl_logic
    );
end vga;
