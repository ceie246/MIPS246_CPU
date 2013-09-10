library verilog;
use verilog.vl_types.all;
entity wram2asciiram_addr is
    port(
        addr_in         : in     vl_logic_vector(31 downto 0);
        addr_out        : out    vl_logic_vector(11 downto 0)
    );
end wram2asciiram_addr;
