
vlib work


#set p0 -vlog01compat
set p1 +define+SIMULATION

# dirs where to search for files
set i0 +incdir+../../../src
set i01 +incdir+../../../src/*
set i1 +incdir+../

# files to compile
set s0 ../../../src/*.sv
set s01 ../../../src/*/*.sv
set s1 ../testbench.sv

vlog $p1  $i0 $i01 $i1   $s0 $s01 $s1

vsim work.testbench

add wave -radix decimal -recursive *
#add wave -radix hex sim:/sm_testbench/*
#add wave -radix hex sim:/sm_testbench/sm_top/sm_cpu/*
#add wave -radix hex sim:/sm_testbench/sm_top/sm_cpu/rf/*
#add wave -radix hex sim:/sm_testbench/sm_top/sm_cpu/rf/rf

run -all

wave zoom full