library verilog;
use verilog.vl_types.all;
entity top_cpu is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        r               : out    vl_logic_vector(2 downto 0);
        g               : out    vl_logic_vector(2 downto 0);
        b               : out    vl_logic_vector(1 downto 0);
        hs              : out    vl_logic;
        vs              : out    vl_logic
    );
end top_cpu;
