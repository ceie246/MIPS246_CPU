library verilog;
use verilog.vl_types.all;
entity led_seg7 is
    generic(
        seg0            : vl_logic_vector(0 to 7) := (Hi1, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        seg1            : vl_logic_vector(0 to 7) := (Hi1, Hi1, Hi1, Hi1, Hi1, Hi0, Hi0, Hi1);
        seg2            : vl_logic_vector(0 to 7) := (Hi1, Hi0, Hi1, Hi0, Hi0, Hi1, Hi0, Hi0);
        seg3            : vl_logic_vector(0 to 7) := (Hi1, Hi0, Hi1, Hi1, Hi0, Hi0, Hi0, Hi0);
        seg4            : vl_logic_vector(0 to 7) := (Hi1, Hi0, Hi0, Hi1, Hi1, Hi0, Hi0, Hi1);
        seg5            : vl_logic_vector(0 to 7) := (Hi1, Hi0, Hi0, Hi1, Hi0, Hi0, Hi1, Hi0);
        seg6            : vl_logic_vector(0 to 7) := (Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0);
        seg7            : vl_logic_vector(0 to 7) := (Hi1, Hi1, Hi1, Hi1, Hi1, Hi0, Hi0, Hi0);
        seg8            : vl_logic_vector(0 to 7) := (Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        seg9            : vl_logic_vector(0 to 7) := (Hi1, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0);
        sega            : vl_logic_vector(0 to 7) := (Hi1, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0);
        segb            : vl_logic_vector(0 to 7) := (Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi1);
        segc            : vl_logic_vector(0 to 7) := (Hi1, Hi1, Hi0, Hi0, Hi0, Hi1, Hi1, Hi0);
        segd            : vl_logic_vector(0 to 7) := (Hi1, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi1);
        sege            : vl_logic_vector(0 to 7) := (Hi1, Hi0, Hi0, Hi0, Hi0, Hi1, Hi1, Hi0);
        segf            : vl_logic_vector(0 to 7) := (Hi1, Hi0, Hi0, Hi0, Hi1, Hi1, Hi1, Hi0);
        seg_off         : vl_logic_vector(0 to 7) := (Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1)
    );
    port(
        data_in         : in     vl_logic_vector(3 downto 0);
        ena             : in     vl_logic;
        AN              : out    vl_logic;
        data_out        : out    vl_logic_vector(7 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of seg0 : constant is 1;
    attribute mti_svvh_generic_type of seg1 : constant is 1;
    attribute mti_svvh_generic_type of seg2 : constant is 1;
    attribute mti_svvh_generic_type of seg3 : constant is 1;
    attribute mti_svvh_generic_type of seg4 : constant is 1;
    attribute mti_svvh_generic_type of seg5 : constant is 1;
    attribute mti_svvh_generic_type of seg6 : constant is 1;
    attribute mti_svvh_generic_type of seg7 : constant is 1;
    attribute mti_svvh_generic_type of seg8 : constant is 1;
    attribute mti_svvh_generic_type of seg9 : constant is 1;
    attribute mti_svvh_generic_type of sega : constant is 1;
    attribute mti_svvh_generic_type of segb : constant is 1;
    attribute mti_svvh_generic_type of segc : constant is 1;
    attribute mti_svvh_generic_type of segd : constant is 1;
    attribute mti_svvh_generic_type of sege : constant is 1;
    attribute mti_svvh_generic_type of segf : constant is 1;
    attribute mti_svvh_generic_type of seg_off : constant is 1;
end led_seg7;
