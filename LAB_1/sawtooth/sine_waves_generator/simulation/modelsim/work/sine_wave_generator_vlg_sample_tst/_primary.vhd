library verilog;
use verilog.vl_types.all;
entity sine_wave_generator_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        phase           : in     vl_logic_vector(7 downto 0);
        rst_n           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end sine_wave_generator_vlg_sample_tst;
