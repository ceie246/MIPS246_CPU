library verilog;
use verilog.vl_types.all;
entity ext is
    generic(
        WIDTH           : integer := 5
    );
    port(
        a               : in     vl_logic_vector;
        sext            : in     vl_logic;
        b               : out    vl_logic_vector(31 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
end ext;
