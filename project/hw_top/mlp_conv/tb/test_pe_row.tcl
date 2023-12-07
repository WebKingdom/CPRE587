add_force {/mlp_conv_v1_0_PE_ROW/stall_ctl} -radix hex {0 0ns}
add_force {/mlp_conv_v1_0_PE_ROW/input_valid} -radix hex {0 0ns}
add_force {/mlp_conv_v1_0_PE_ROW/add_mux_ctrl} -radix hex {1F 0ns}
add_force {/mlp_conv_v1_0_PE_ROW/output_in} -radix hex {0 0ns}
add_force {/mlp_conv_v1_0_PE_ROW/row_out_mux_ctrl} -radix hex {4 0ns}
add_force {/mlp_conv_v1_0_PE_ROW/ARESETN} -radix hex {0 0ns}
add_force {/mlp_conv_v1_0_PE_ROW/ACLK} -radix hex {1 0ns} {0 5000ps} -repeat_every 10000ps
run 20 ns
add_force {/mlp_conv_v1_0_PE_ROW/ARESETN} -radix hex {1 0ns}
run 20 ns

# set input
add_force {/mlp_conv_v1_0_PE_ROW/weight} -radix hex {0504030201 0ns}
add_force {/mlp_conv_v1_0_PE_ROW/input} -radix hex {02 0ns}
add_force {/mlp_conv_v1_0_PE_ROW/input_valid} -radix hex {1 0ns}

run 200


