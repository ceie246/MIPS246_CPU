library verilog;
use verilog.vl_types.all;
entity file_write is
    generic(
        WIDTH           : integer := 32;
        ARGUMENT        : string  := "0"
    );
    port(
        clk             : in     vl_logic;
        a               : in     vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
    attribute mti_svvh_generic_type of ARGUMENT : constant is 1;
end file_write;
