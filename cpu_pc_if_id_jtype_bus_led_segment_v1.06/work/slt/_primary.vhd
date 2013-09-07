library verilog;
use verilog.vl_types.all;
entity slt is
    port(
        a               : in     vl_logic_vector(31 downto 0);
        b               : in     vl_logic_vector(31 downto 0);
        aluc            : in     vl_logic;
        c               : out    vl_logic_vector(31 downto 0);
        carry           : out    vl_logic;
        negative        : out    vl_logic
    );
end slt;
