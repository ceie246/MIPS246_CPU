library verilog;
use verilog.vl_types.all;
entity dff is
    generic(
        WIDTH           : integer := 1
    );
    port(
        clk             : in     vl_logic;
        d               : in     vl_logic_vector;
        q               : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
end dff;
