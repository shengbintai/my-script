mkdir Work_Dir
mkdir RTL
mkdir Testbenches
mkdir Constraints
mkdir IP
mkdir IPI_BDs
mkdir HLS
mkdir DSP
mkdir Script
mkdir Doc

echo -e "*
!run_vivado.tcl">Work_Dir/.gitignore

echo -e "create_project pl2ps_prj ../Work_Dir/matlab_ctrl_pl -part xczu9eg-ffvb1156-2-i-es2 -force
set_property board_part xilinx.com:zcu102_es2:part0:2.3 [current_project]
add_files -fileset constrs_1 -norecurse ../Constraints/top.xdc
current_project pl2ps_prj
set_property  ip_repo_paths  ../IP [current_project]
update_ip_catalog
source ../IPI_BDs/system_top.tcl
make_wrapper -files [get_files ../Work_Dir/matlab_ctrl_pl/pl2ps_prj.srcs/sources_1/bd/system_top/system_top.bd] -top
add_files -norecurse ../Work_Dir/matlab_ctrl_pl/pl2ps_prj.srcs/sources_1/bd/system_top/hdl/system_top_wrapper.v
update_compile_order -fileset sources_1
start_gui
" >Work_Dir/run_vivado.tcl
