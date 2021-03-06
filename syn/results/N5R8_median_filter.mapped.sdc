###################################################################

# Created by write_sdc on Thu May 27 10:11:02 2021

###################################################################
set sdc_version 2.0

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current mA
set_load -pin_load 1 [get_ports {Y[7]}]
set_load -pin_load 1 [get_ports {Y[6]}]
set_load -pin_load 1 [get_ports {Y[5]}]
set_load -pin_load 1 [get_ports {Y[4]}]
set_load -pin_load 1 [get_ports {Y[3]}]
set_load -pin_load 1 [get_ports {Y[2]}]
set_load -pin_load 1 [get_ports {Y[1]}]
set_load -pin_load 1 [get_ports {Y[0]}]
create_clock [get_ports clk]  -period 6  -waveform {0 3}
group_path -name FEEDTHROUGH  -from [list [get_ports srst] [get_ports {X[7]}] [get_ports {X[6]}] [get_ports {X[5]}] [get_ports {X[4]}] [get_ports {X[3]}] [get_ports {X[2]}] [get_ports {X[1]}] [get_ports {X[0]}]]  -to [list [get_ports {Y[7]}] [get_ports {Y[6]}] [get_ports {Y[5]}] [get_ports {Y[4]}] [get_ports {Y[3]}] [get_ports {Y[2]}] [get_ports {Y[1]}] [get_ports {Y[0]}]]
group_path -name REGIN  -from [list [get_ports srst] [get_ports {X[7]}] [get_ports {X[6]}] [get_ports {X[5]}] [get_ports {X[4]}] [get_ports {X[3]}] [get_ports {X[2]}] [get_ports {X[1]}] [get_ports {X[0]}]]
group_path -name REGOUT  -to [list [get_ports {Y[7]}] [get_ports {Y[6]}] [get_ports {Y[5]}] [get_ports {Y[4]}] [get_ports {Y[3]}] [get_ports {Y[2]}] [get_ports {Y[1]}] [get_ports {Y[0]}]]
set_input_delay -clock clk  -max 3.6  [get_ports srst]
set_input_delay -clock clk  -max 3.6  [get_ports {X[7]}]
set_input_delay -clock clk  -max 3.6  [get_ports {X[6]}]
set_input_delay -clock clk  -max 3.6  [get_ports {X[5]}]
set_input_delay -clock clk  -max 3.6  [get_ports {X[4]}]
set_input_delay -clock clk  -max 3.6  [get_ports {X[3]}]
set_input_delay -clock clk  -max 3.6  [get_ports {X[2]}]
set_input_delay -clock clk  -max 3.6  [get_ports {X[1]}]
set_input_delay -clock clk  -max 3.6  [get_ports {X[0]}]
set_output_delay -clock clk  -max 3.6  [get_ports {Y[7]}]
set_output_delay -clock clk  -max 3.6  [get_ports {Y[6]}]
set_output_delay -clock clk  -max 3.6  [get_ports {Y[5]}]
set_output_delay -clock clk  -max 3.6  [get_ports {Y[4]}]
set_output_delay -clock clk  -max 3.6  [get_ports {Y[3]}]
set_output_delay -clock clk  -max 3.6  [get_ports {Y[2]}]
set_output_delay -clock clk  -max 3.6  [get_ports {Y[1]}]
set_output_delay -clock clk  -max 3.6  [get_ports {Y[0]}]
set_input_transition -max 0.1  [get_ports srst]
set_input_transition -min 0.1  [get_ports srst]
set_input_transition -max 0.1  [get_ports {X[7]}]
set_input_transition -min 0.1  [get_ports {X[7]}]
set_input_transition -max 0.1  [get_ports {X[6]}]
set_input_transition -min 0.1  [get_ports {X[6]}]
set_input_transition -max 0.1  [get_ports {X[5]}]
set_input_transition -min 0.1  [get_ports {X[5]}]
set_input_transition -max 0.1  [get_ports {X[4]}]
set_input_transition -min 0.1  [get_ports {X[4]}]
set_input_transition -max 0.1  [get_ports {X[3]}]
set_input_transition -min 0.1  [get_ports {X[3]}]
set_input_transition -max 0.1  [get_ports {X[2]}]
set_input_transition -min 0.1  [get_ports {X[2]}]
set_input_transition -max 0.1  [get_ports {X[1]}]
set_input_transition -min 0.1  [get_ports {X[1]}]
set_input_transition -max 0.1  [get_ports {X[0]}]
set_input_transition -min 0.1  [get_ports {X[0]}]
