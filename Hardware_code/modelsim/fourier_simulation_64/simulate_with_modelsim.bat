rd /s /q sim_tmp
md sim_tmp
copy *.txt sim_tmp
cd sim_tmp

vsim -novopt -do ../modelsim_script.tcl

cd ..
