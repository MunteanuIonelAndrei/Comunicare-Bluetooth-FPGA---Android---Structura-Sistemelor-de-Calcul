# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/andre/Documents/An3_sem1/ssc/AndroBasys/AndroBasys.cache/wt [current_project]
set_property parent.project_path C:/Users/andre/Documents/An3_sem1/ssc/AndroBasys/AndroBasys.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_output_repo c:/Users/andre/Documents/An3_sem1/ssc/AndroBasys/AndroBasys.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  C:/Users/andre/Documents/An3_sem1/ssc/AndroBasys/AndroBasys.srcs/sources_1/new/RX_FSM.vhd
  C:/Users/andre/Documents/An3_sem1/ssc/AndroBasys/AndroBasys.srcs/sources_1/new/test_env.vhd
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/andre/Documents/An3_sem1/ssc/AndroBasys/AndroBasys.srcs/constrs_1/imports/AC/Basys3_test_env.xdc
set_property used_in_implementation false [get_files C:/Users/andre/Documents/An3_sem1/ssc/AndroBasys/AndroBasys.srcs/constrs_1/imports/AC/Basys3_test_env.xdc]


synth_design -top test_env -part xc7a100tcsg324-1


write_checkpoint -force -noxdef test_env.dcp

catch { report_utilization -file test_env_utilization_synth.rpt -pb test_env_utilization_synth.pb }
