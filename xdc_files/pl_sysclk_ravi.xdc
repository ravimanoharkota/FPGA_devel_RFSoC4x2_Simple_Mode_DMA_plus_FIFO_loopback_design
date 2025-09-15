# External 100 MHz differential PL clock into clk_wiz_0
set_property PACKAGE_PIN AM15 [get_ports clk_in1_p_0]
#set_property PACKAGE_PIN AN15 [get_ports clk_in1_p_0]
set_property PACKAGE_PIN AN15 [get_ports clk_in1_n_0]

set_property IOSTANDARD LVDS [get_ports {clk_in1_p_0 clk_in1_n_0}]
# Differential termination: set on the P side (Vivado applies it to the pair)
set_property DIFF_TERM TRUE  [get_ports clk_in1_p_0]

# Optional but nice: tell timing about the incoming period
#create_clock -period 10.000 -name sys_clk_100m [get_ports clk_in1_p_0]



#design_2_i/dbghub_keep_alive_ILA/clk

connect_debug_port dbg_hub/clk [get_nets design_2_i/dbghub_keep_alive_ILA/clk]

