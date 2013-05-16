library verilog;
use verilog.vl_types.all;
entity equal is
    port(
        a               : in     vl_logic_vector(31 downto 0);
        b               : in     vl_logic_vector(31 downto 0);
        zero            : out    vl_logic
    );
end equal;
