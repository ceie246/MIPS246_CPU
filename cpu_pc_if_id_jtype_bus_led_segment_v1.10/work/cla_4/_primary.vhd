library verilog;
use verilog.vl_types.all;
entity cla_4 is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        c_in            : in     vl_logic;
        g_out           : out    vl_logic;
        p_out           : out    vl_logic;
        s               : out    vl_logic_vector(3 downto 0)
    );
end cla_4;
