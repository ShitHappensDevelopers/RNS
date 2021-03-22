rd /s /q sim_tmp
md sim_tmp
copy tw_re.txt sim_tmp
copy tw_im.txt sim_tmp
copy tw_re_rns.txt sim_tmp
copy tw_im_rns.txt sim_tmp
copy signal.txt sim_tmp
cd sim_tmp

vsim -novopt -do ../modelsim_script.tcl

cd ..
