library verilog;
use verilog.vl_types.all;
entity sine_wave_generator_vlg_check_tst is
    port(
        sine_out        : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end sine_wave_generator_vlg_check_tst;
