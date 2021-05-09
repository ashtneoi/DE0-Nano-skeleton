create_clock -period 20 -name clock_50 [get_ports clock_50]

derive_pll_clocks
derive_clock_uncertainty

set_false_path -from [get_ports key_n[*]]
set_false_path -to [get_ports led[*]]
