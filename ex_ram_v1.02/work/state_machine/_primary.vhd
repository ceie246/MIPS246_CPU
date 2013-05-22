library verilog;
use verilog.vl_types.all;
entity state_machine is
    generic(
        IDLE            : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi0);
        W1              : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi1);
        W2              : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi0);
        R1              : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi1);
        R2              : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi0)
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        mem             : in     vl_logic;
        rw              : in     vl_logic;
        data_in         : in     vl_logic_vector(15 downto 0);
        addr            : in     vl_logic_vector(25 downto 0);
        data_ram        : inout  vl_logic_vector(15 downto 0);
        data_out        : out    vl_logic_vector(15 downto 0);
        clk_ram         : out    vl_logic;
        we_n            : out    vl_logic;
        oe_n            : out    vl_logic;
        adv_z           : out    vl_logic;
        wait_z          : out    vl_logic;
        mt_ce_n         : out    vl_logic;
        mt_lb_n         : out    vl_logic;
        mt_ub_n         : out    vl_logic;
        mt_cre          : out    vl_logic;
        busy            : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of IDLE : constant is 1;
    attribute mti_svvh_generic_type of W1 : constant is 1;
    attribute mti_svvh_generic_type of W2 : constant is 1;
    attribute mti_svvh_generic_type of R1 : constant is 1;
    attribute mti_svvh_generic_type of R2 : constant is 1;
end state_machine;
