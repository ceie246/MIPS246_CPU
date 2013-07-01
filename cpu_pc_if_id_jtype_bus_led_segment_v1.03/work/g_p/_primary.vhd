library verilog;
use verilog.vl_types.all;
entity g_p is
    port(
        g               : in     vl_logic_vector(1 downto 0);
        p               : in     vl_logic_vector(1 downto 0);
        c_in            : in     vl_logic;
        g_out           : out    vl_logic;
        p_out           : out    vl_logic;
        c_out           : out    vl_logic
    );
end g_p;
