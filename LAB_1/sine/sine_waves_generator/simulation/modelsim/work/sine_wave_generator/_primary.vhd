library verilog;
use verilog.vl_types.all;
entity sine_wave_generator is
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        phase           : in     vl_logic_vector(7 downto 0);
        sine_out        : out    vl_logic_vector(7 downto 0)
    );
end sine_wave_generator;
