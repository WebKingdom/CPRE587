add_force {/mlp_conv_v1_0_PE_ARR/ARESETN} -radix hex {0 0ns}
add_force {/mlp_conv_v1_0_PE_ARR/ACLK} -radix hex {1 0ns} {0 5000ps} -repeat_every 10000ps
add_force {/mlp_conv_v1_0_PE_ARR/stall_ctl} -radix hex {0 0ns}
add_force {/mlp_conv_v1_0_PE_ARR/psum_out_ctrl} -radix hex {4 0ns}
add_force {/mlp_conv_v1_0_PE_ARR/row_out_mux_ctrl} -radix hex {44444 0ns}
add_force {/mlp_conv_v1_0_PE_ARR/add_mux_ctrl} -radix hex {1FFFFFF 0ns}
add_force {/mlp_conv_v1_0_PE_ARR/psum_in} -radix hex {2 0ns}
run 20
add_force {/mlp_conv_v1_0_PE_ARR/ARESETN} -radix hex {1 0ns}
run 20
add_force {/mlp_conv_v1_0_PE_ARR/input_valid} -radix hex {1 0ns}
add_force {/mlp_conv_v1_0_PE_ARR/input} -radix hex {1 0ns}
add_force {/mlp_conv_v1_0_PE_ARR/weight} -radix hex {01020304050607080910111213141516171819202122232425 0ns}
