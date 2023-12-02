add_force {/mlp_conv_v1_0_PE/ARESETN} -radix hex {0 0ns}
add_force {/mlp_conv_v1_0_PE/ACLK} -radix hex {1 0ns} {0 5000ps} -repeat_every 10000ps
add_force {/mlp_conv_v1_0_PE/input} -radix hex {1 0ns}
add_force {/mlp_conv_v1_0_PE/weight} -radix hex {2 0ns}
add_force {/mlp_conv_v1_0_PE/add_mux_ctrl} -radix hex {1 0ns}
add_force {/mlp_conv_v1_0_PE/input_valid} -radix hex {0 0ns}
add_force {/mlp_conv_v1_0_PE/stall_ctl} -radix hex {0 0ns}
add_force {/mlp_conv_v1_0_PE/add_val} -radix hex {1 0ns}
run 20
add_force {/mlp_conv_v1_0_PE/ARESETN} -radix hex {1 0ns}
add_force {/mlp_conv_v1_0_PE/input_valid} -radix hex {1 0ns}
