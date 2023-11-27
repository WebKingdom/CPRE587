set_property SRC_FILE_INFO {cfile:/home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_input_bram_ctrl_0/mlp_system_design_input_bram_ctrl_0/mlp_system_design_output_bram_ctrl_0_in_context.xdc rfile:../../../mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_input_bram_ctrl_0/mlp_system_design_input_bram_ctrl_0/mlp_system_design_output_bram_ctrl_0_in_context.xdc id:1 order:EARLY scoped_inst:mlp_system_design_i/input_bram_ctrl} [current_design]
set_property SRC_FILE_INFO {cfile:/home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_output_bram_ctrl_0/mlp_system_design_output_bram_ctrl_0/mlp_system_design_output_bram_ctrl_0_in_context.xdc rfile:../../../mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_output_bram_ctrl_0/mlp_system_design_output_bram_ctrl_0/mlp_system_design_output_bram_ctrl_0_in_context.xdc id:2 order:EARLY scoped_inst:mlp_system_design_i/output_bram_ctrl} [current_design]
set_property SRC_FILE_INFO {cfile:/home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_processing_system_0/mlp_system_design_processing_system_0/mlp_system_design_processing_system_0_in_context.xdc rfile:../../../mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_processing_system_0/mlp_system_design_processing_system_0/mlp_system_design_processing_system_0_in_context.xdc id:3 order:EARLY scoped_inst:mlp_system_design_i/processing_system} [current_design]
set_property SRC_FILE_INFO {cfile:/home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_weight_bram_ctrl_0/mlp_system_design_weight_bram_ctrl_0/mlp_system_design_output_bram_ctrl_0_in_context.xdc rfile:../../../mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_weight_bram_ctrl_0/mlp_system_design_weight_bram_ctrl_0/mlp_system_design_output_bram_ctrl_0_in_context.xdc id:4 order:EARLY scoped_inst:mlp_system_design_i/weight_bram_ctrl} [current_design]
set_property SRC_FILE_INFO {cfile:/home/sszabo/github/CPRE587/project/hw_top/mlp_system/hdl/zedboard.xdc rfile:../../../../../hdl/zedboard.xdc id:5} [current_design]
current_instance mlp_system_design_i/input_bram_ctrl
set_property src_info {type:SCOPED_XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 10.000 [get_ports {}]
current_instance
current_instance mlp_system_design_i/output_bram_ctrl
set_property src_info {type:SCOPED_XDC file:2 line:2 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 10.000 [get_ports {}]
current_instance
current_instance mlp_system_design_i/processing_system
set_property src_info {type:SCOPED_XDC file:3 line:2 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 10.000 [get_ports {}]
current_instance
current_instance mlp_system_design_i/weight_bram_ctrl
set_property src_info {type:SCOPED_XDC file:4 line:2 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 10.000 [get_ports {}]
current_instance
set_property src_info {type:XDC file:5 line:361 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 33]];
set_property src_info {type:XDC file:5 line:366 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 34]];
set_property src_info {type:XDC file:5 line:371 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 35]];
set_property src_info {type:XDC file:5 line:374 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 13]];
set_property src_info {type:XDC file:5 line:376 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 5.00 -name main -waveform {0.000 0.050} [get_ports ACLK]
