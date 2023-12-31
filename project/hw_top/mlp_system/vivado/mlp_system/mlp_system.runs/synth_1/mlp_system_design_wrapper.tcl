# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
namespace eval ::optrace {
  variable script "/home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.runs/synth_1/mlp_system_design_wrapper.tcl"
  variable category "vivado_synth"
}

# Try to connect to running dispatch if we haven't done so already.
# This code assumes that the Tcl interpreter is not using threads,
# since the ::dispatch::connected variable isn't mutex protected.
if {![info exists ::dispatch::connected]} {
  namespace eval ::dispatch {
    variable connected false
    if {[llength [array get env XILINX_CD_CONNECT_ID]] > 0} {
      set result "true"
      if {[catch {
        if {[lsearch -exact [package names] DispatchTcl] < 0} {
          set result [load librdi_cd_clienttcl[info sharedlibextension]] 
        }
        if {$result eq "false"} {
          puts "WARNING: Could not load dispatch client library"
        }
        set connect_id [ ::dispatch::init_client -mode EXISTING_SERVER ]
        if { $connect_id eq "" } {
          puts "WARNING: Could not initialize dispatch client"
        } else {
          puts "INFO: Dispatch client connection id - $connect_id"
          set connected true
        }
      } catch_res]} {
        puts "WARNING: failed to connect to dispatch server - $catch_res"
      }
    }
  }
}
if {$::dispatch::connected} {
  # Remove the dummy proc if it exists.
  if { [expr {[llength [info procs ::OPTRACE]] > 0}] } {
    rename ::OPTRACE ""
  }
  proc ::OPTRACE { task action {tags {} } } {
    ::vitis_log::op_trace "$task" $action -tags $tags -script $::optrace::script -category $::optrace::category
  }
  # dispatch is generic. We specifically want to attach logging.
  ::vitis_log::connect_client
} else {
  # Add dummy proc if it doesn't exist.
  if { [expr {[llength [info procs ::OPTRACE]] == 0}] } {
    proc ::OPTRACE {{arg1 \"\" } {arg2 \"\"} {arg3 \"\" } {arg4 \"\"} {arg5 \"\" } {arg6 \"\"}} {
        # Do nothing
    }
  }
}

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
OPTRACE "synth_1" START { ROLLUP_AUTO }
OPTRACE "Creating in-memory project" START { }
create_project -in_memory -part xc7z020clg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.cache/wt [current_project]
set_property parent.project_path /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part em.avnet.com:zed:part0:1.4 [current_project]
set_property ip_repo_paths /home/sszabo/github/CPRE587/project/hw_top/mlp_conv [current_project]
update_ip_catalog
set_property ip_output_repo /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
OPTRACE "Creating in-memory project" END { }
OPTRACE "Adding files" START { }
read_vhdl -library xil_defaultlib /home/sszabo/github/CPRE587/project/hw_top/mlp_system/hdl/mlp_system_design_wrapper.vhd
add_files /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/mlp_system_design.bd
set_property used_in_implementation false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_input_blk_mem_0/mlp_system_design_input_blk_mem_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_input_bram_ctrl_0/mlp_system_design_input_bram_ctrl_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_inter_cont_0/mlp_system_design_inter_cont_0.xdc]
set_property used_in_implementation false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_inter_cont_0/mlp_system_design_inter_cont_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_inter_cont_0/mlp_system_design_inter_cont_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_output_blk_mem_0/mlp_system_design_output_blk_mem_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_output_bram_ctrl_0/mlp_system_design_output_bram_ctrl_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_xbar_0/mlp_system_design_xbar_0_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_auto_us_0/mlp_system_design_auto_us_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_auto_us_0/mlp_system_design_auto_us_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_auto_us_0/mlp_system_design_auto_us_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_auto_pc_5/mlp_system_design_auto_pc_5_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_auto_us_1/mlp_system_design_auto_us_1_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_auto_us_1/mlp_system_design_auto_us_1_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_auto_us_1/mlp_system_design_auto_us_1_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_auto_us_2/mlp_system_design_auto_us_2_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_auto_us_2/mlp_system_design_auto_us_2_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_auto_us_2/mlp_system_design_auto_us_2_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_auto_ds_0/mlp_system_design_auto_ds_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_auto_ds_0/mlp_system_design_auto_ds_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_auto_ds_0/mlp_system_design_auto_ds_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_auto_pc_0/mlp_system_design_auto_pc_0_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_auto_ds_1/mlp_system_design_auto_ds_1_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_auto_ds_1/mlp_system_design_auto_ds_1_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_auto_ds_1/mlp_system_design_auto_ds_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_auto_pc_1/mlp_system_design_auto_pc_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_auto_pc_2/mlp_system_design_auto_pc_2_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_auto_ds_2/mlp_system_design_auto_ds_2_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_auto_ds_2/mlp_system_design_auto_ds_2_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_auto_ds_2/mlp_system_design_auto_ds_2_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_auto_ds_3/mlp_system_design_auto_ds_3_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_auto_ds_3/mlp_system_design_auto_ds_3_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_auto_ds_3/mlp_system_design_auto_ds_3_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_auto_ds_4/mlp_system_design_auto_ds_4_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_auto_ds_4/mlp_system_design_auto_ds_4_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_auto_ds_4/mlp_system_design_auto_ds_4_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_auto_ds_5/mlp_system_design_auto_ds_5_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_auto_ds_5/mlp_system_design_auto_ds_5_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_auto_ds_5/mlp_system_design_auto_ds_5_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_auto_pc_3/mlp_system_design_auto_pc_3_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_auto_ds_6/mlp_system_design_auto_ds_6_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_auto_ds_6/mlp_system_design_auto_ds_6_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_auto_ds_6/mlp_system_design_auto_ds_6_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_auto_ds_7/mlp_system_design_auto_ds_7_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_auto_ds_7/mlp_system_design_auto_ds_7_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_auto_ds_7/mlp_system_design_auto_ds_7_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_auto_pc_4/mlp_system_design_auto_pc_4_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_processing_system_0/mlp_system_design_processing_system_0.xdc]
set_property used_in_implementation false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_rst_ps_100M_0/mlp_system_design_rst_ps_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_rst_ps_100M_0/mlp_system_design_rst_ps_100M_0.xdc]
set_property used_in_implementation false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_rst_ps_100M_0/mlp_system_design_rst_ps_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_system_dma_0/mlp_system_design_system_dma_0.xdc]
set_property used_in_implementation false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_system_dma_0/mlp_system_design_system_dma_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_weight_blk_mem_0/mlp_system_design_weight_blk_mem_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/ip/mlp_system_design_weight_bram_ctrl_0/mlp_system_design_weight_bram_ctrl_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sszabo/github/CPRE587/project/hw_top/mlp_system/vivado/mlp_system/mlp_system.srcs/sources_1/bd/mlp_system_design/mlp_system_design_ooc.xdc]

OPTRACE "Adding files" END { }
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/sszabo/github/CPRE587/project/hw_top/mlp_system/hdl/zedboard.xdc
set_property used_in_implementation false [get_files /home/sszabo/github/CPRE587/project/hw_top/mlp_system/hdl/zedboard.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

OPTRACE "synth_design" START { }
synth_design -top mlp_system_design_wrapper -part xc7z020clg484-1
OPTRACE "synth_design" END { }


OPTRACE "write_checkpoint" START { CHECKPOINT }
# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef mlp_system_design_wrapper.dcp
OPTRACE "write_checkpoint" END { }
OPTRACE "synth reports" START { REPORT }
create_report "synth_1_synth_report_utilization_0" "report_utilization -file mlp_system_design_wrapper_utilization_synth.rpt -pb mlp_system_design_wrapper_utilization_synth.pb"
OPTRACE "synth reports" END { }
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
OPTRACE "synth_1" END { }
