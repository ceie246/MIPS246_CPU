library verilog;
use verilog.vl_types.all;
entity addsub32 is
    port(
        a               : in     vl_logic_vector(31 downto 0);
        b               : in     vl_logic_vector(31 downto 0);
        aluc            : in     vl_logic_vector(1 downto 0);
        c               : out    vl_logic_vector(31 downto 0);
        overflow        : out    vl_logic;
        carry           : out    vl_logic;
        negative        : out    vl_logic
    );
end addsub32;
