transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {ex1.vo}

vlog -vlog01compat -work work +incdir+D:/B20-01,\ CA/B20-01-CAl-labs/week10/ex1 {D:/B20-01, CA/B20-01-CAl-labs/week10/ex1/ex1.v}
vlog -vlog01compat -work work +incdir+D:/B20-01,\ CA/B20-01-CAl-labs/week10/ex1 {D:/B20-01, CA/B20-01-CAl-labs/week10/ex1/testbench.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L gate_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
