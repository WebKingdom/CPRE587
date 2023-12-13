connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248526090" && level==0 && jtag_device_ctx=="jsn-Zed-210248526090-23727093-0"}
fpga -file /home/rnahra/CPRE587/project/bitstream_signed.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw /home/rnahra/CPRE587/project/sw_top/vitis_workspace/mlp_design_wrapper/export/mlp_design_wrapper/hw/mlp_system_design_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
stop
source /home/rnahra/CPRE587/project/sw_top/vitis_workspace/mpl/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
rst -processor
targets -set -nocase -filter {name =~ "*A9*#0"}
dow /home/rnahra/CPRE587/project/sw_top/vitis_workspace/mpl/Debug/mpl.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
