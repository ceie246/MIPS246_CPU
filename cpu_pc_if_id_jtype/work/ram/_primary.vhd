library verilog;
use verilog.vl_types.all;
entity ram is
    generic(
        WIDTH           : integer := 8;
        DEPTH           : integer := 3;
        INIT            : integer := 1
    );
    port(
        clk             : in     vl_logic;
        ram_ena         : in     vl_logic;
        wena            : in     vl_logic;
        addr            : in     vl_logic_vector;
        data_in         : in     vl_logic_vector;
        data_out        : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
    attribute mti_svvh_generic_type of DEPTH : constant is 1;
    attribute mti_svvh_generic_type of INIT : constant is 1;
end ram;
