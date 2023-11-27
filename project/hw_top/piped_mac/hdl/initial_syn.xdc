#set_units 
#time in nano seconds?
create_clock -period 5.00 -name main_clk -waveform {0.000 2.500} [get_ports clk]

set_input_delay -clock main_clk 0.25 [all_inputs]
set_output_delay -clock main_clk 0.15 [all_outputs]