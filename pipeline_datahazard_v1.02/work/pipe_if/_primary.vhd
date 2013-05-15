library verilog;
use verilog.vl_types.all;
entity pipe_if is
    port(
        clk             : in     vl_logic;
        pc              : in     vl_logic_vector(31 downto 0);
        ram_ena         : in     vl_logic;
        ram_wena        : in     vl_logic;
        ram_indata      : in     vl_logic_vector(31 downto 0);
        pc_jr           : in     vl_logic_vector(31 downto 0);
        pcsource        : in     vl_logic_vector(1 downto 0);
        imm18           : in     vl_logic_vector(17 downto 0);
        index28         : in     vl_logic_vector(27 downto 0);
        ram_outdata     : out    vl_logic_vector(31 downto 0);
        npc             : out    vl_logic_vector(31 downto 0);
        pc8             : out    vl_logic_vector(31 downto 0)
    );
end pipe_if;
