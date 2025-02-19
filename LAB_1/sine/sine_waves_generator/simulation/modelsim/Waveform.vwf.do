vlog -work work E:/Quartus/sine_waves_generator/simulation/modelsim/Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.sine_wave_generator_vlg_vec_tst
onerror {resume}
add wave {sine_wave_generator_vlg_vec_tst/i1/clk}
add wave {sine_wave_generator_vlg_vec_tst/i1/phase}
add wave {sine_wave_generator_vlg_vec_tst/i1/phase[7]}
add wave {sine_wave_generator_vlg_vec_tst/i1/phase[6]}
add wave {sine_wave_generator_vlg_vec_tst/i1/phase[5]}
add wave {sine_wave_generator_vlg_vec_tst/i1/phase[4]}
add wave {sine_wave_generator_vlg_vec_tst/i1/phase[3]}
add wave {sine_wave_generator_vlg_vec_tst/i1/phase[2]}
add wave {sine_wave_generator_vlg_vec_tst/i1/phase[1]}
add wave {sine_wave_generator_vlg_vec_tst/i1/phase[0]}
add wave {sine_wave_generator_vlg_vec_tst/i1/rst_n}
add wave {sine_wave_generator_vlg_vec_tst/i1/sine_out}
add wave {sine_wave_generator_vlg_vec_tst/i1/sine_out[7]}
add wave {sine_wave_generator_vlg_vec_tst/i1/sine_out[6]}
add wave {sine_wave_generator_vlg_vec_tst/i1/sine_out[5]}
add wave {sine_wave_generator_vlg_vec_tst/i1/sine_out[4]}
add wave {sine_wave_generator_vlg_vec_tst/i1/sine_out[3]}
add wave {sine_wave_generator_vlg_vec_tst/i1/sine_out[2]}
add wave {sine_wave_generator_vlg_vec_tst/i1/sine_out[1]}
add wave {sine_wave_generator_vlg_vec_tst/i1/sine_out[0]}
run -all
