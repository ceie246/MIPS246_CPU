library verilog;
use verilog.vl_types.all;
entity pipe_exe is
    port(
        rd1             : in     vl_logic_vector(31 downto 0);
        rd2             : in     vl_logic_vector(31 downto 0);
        shamt32         : in     vl_logic_vector(31 downto 0);
        imm32           : in     vl_logic_vector(31 downto 0);
        pc8             : in     vl_logic_vector(31 downto 0);
        immc            : in     vl_logic;
        shift           : in     vl_logic;
        aludc           : in     vl_logic;
        aluc            : in     vl_logic_vector(3 downto 0);
        wa_f            : in     vl_logic_vector(4 downto 0);
        wa_e            : out    vl_logic_vector(4 downto 0);
        wd              : out    vl_logic_vector(31 downto 0);
        zero            : out    vl_logic;
        carry           : out    vl_logic;
        negative        : out    vl_logic;
        overflow        : out    vl_logic
    );
end pipe_exe;
