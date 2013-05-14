library verilog;
use verilog.vl_types.all;
entity top_cla_32 is
    port(
        a               : in     vl_logic_vector(31 downto 0);
        b               : in     vl_logic_vector(31 downto 0);
        c_in            : in     vl_logic;
        c_out           : out    vl_logic;
        s               : out    vl_logic_vector(31 downto 0)
    );
end top_cla_32;
