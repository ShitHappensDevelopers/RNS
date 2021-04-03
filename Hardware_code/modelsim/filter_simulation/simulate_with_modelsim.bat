filter_input_data_generator.exe input_signal.txt signal.txt signal_rns.txt
filter_input_data_generator.exe input_coefs.txt coefs.txt coefs_rns.txt

rd /s /q sim_tmp
md sim_tmp
copy coefs.txt sim_tmp
copy coefs_rns.txt sim_tmp
copy signal.txt sim_tmp
cd sim_tmp

vsim -novopt -do ../modelsim_script.tcl
cd ..
