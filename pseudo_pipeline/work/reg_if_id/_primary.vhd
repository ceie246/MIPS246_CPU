library verilog;
use verilog.vl_types.all;
entity reg_if_id is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        ena             : in     vl_logic;
        pc8_if          : in     vl_logic_vector(31 downto 0);
        instr_if        : in     vl_logic_vector(31 downto 0);
        pc8_id          : out    vl_logic_vector(31 downto 0);
        instr_id        : out    vl_logic_vector(31 downto 0)
    );
end reg_if_id;
