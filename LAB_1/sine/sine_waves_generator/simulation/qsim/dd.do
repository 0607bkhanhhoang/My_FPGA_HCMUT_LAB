onerror {quit -f}
vlib work
vlog -work work dd.vo
vlog -work work dd.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.sine_wave_generator_vlg_vec_tst
vcd file -direction dd.msim.vcd
vcd add -internal sine_wave_generator_vlg_vec_tst/*
vcd add -internal sine_wave_generator_vlg_vec_tst/i1/*
add wave /*
run -all
