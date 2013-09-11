library verilog;
use verilog.vl_types.all;
entity dffe is
    generic(
        WIDTH           : integer := 8
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        ena             : in     vl_logic;
        data_in         : in     vl_logic_vector;
        data_out        : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
end dffe;
