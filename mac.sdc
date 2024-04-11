###################################################################

# Created by write_sdc on Fri Feb  2 17:50:36 2024

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA
set_driving_cell -lib_cell INVX1 [get_ports {din_a[7]}]
set_driving_cell -lib_cell INVX1 [get_ports {din_a[6]}]
set_driving_cell -lib_cell INVX1 [get_ports {din_a[5]}]
set_driving_cell -lib_cell INVX1 [get_ports {din_a[4]}]
set_driving_cell -lib_cell INVX1 [get_ports {din_a[3]}]
set_driving_cell -lib_cell INVX1 [get_ports {din_a[2]}]
set_driving_cell -lib_cell INVX1 [get_ports {din_a[1]}]
set_driving_cell -lib_cell INVX1 [get_ports {din_a[0]}]
set_driving_cell -lib_cell INVX1 [get_ports {din_b[7]}]
set_driving_cell -lib_cell INVX1 [get_ports {din_b[6]}]
set_driving_cell -lib_cell INVX1 [get_ports {din_b[5]}]
set_driving_cell -lib_cell INVX1 [get_ports {din_b[4]}]
set_driving_cell -lib_cell INVX1 [get_ports {din_b[3]}]
set_driving_cell -lib_cell INVX1 [get_ports {din_b[2]}]
set_driving_cell -lib_cell INVX1 [get_ports {din_b[1]}]
set_driving_cell -lib_cell INVX1 [get_ports {din_b[0]}]
set_driving_cell -lib_cell INVX1 [get_ports clk]
set_driving_cell -lib_cell INVX1 [get_ports rst_b]
set_driving_cell -lib_cell INVX1 [get_ports start]
create_clock [get_ports clk]  -period 10  -waveform {0 5}
set_input_delay -clock clk  0.1  [get_ports {din_a[7]}]
set_input_delay -clock clk  0.1  [get_ports {din_a[6]}]
set_input_delay -clock clk  0.1  [get_ports {din_a[5]}]
set_input_delay -clock clk  0.1  [get_ports {din_a[4]}]
set_input_delay -clock clk  0.1  [get_ports {din_a[3]}]
set_input_delay -clock clk  0.1  [get_ports {din_a[2]}]
set_input_delay -clock clk  0.1  [get_ports {din_a[1]}]
set_input_delay -clock clk  0.1  [get_ports {din_a[0]}]
set_input_delay -clock clk  0.1  [get_ports {din_b[7]}]
set_input_delay -clock clk  0.1  [get_ports {din_b[6]}]
set_input_delay -clock clk  0.1  [get_ports {din_b[5]}]
set_input_delay -clock clk  0.1  [get_ports {din_b[4]}]
set_input_delay -clock clk  0.1  [get_ports {din_b[3]}]
set_input_delay -clock clk  0.1  [get_ports {din_b[2]}]
set_input_delay -clock clk  0.1  [get_ports {din_b[1]}]
set_input_delay -clock clk  0.1  [get_ports {din_b[0]}]
set_input_delay -clock clk  0.1  [get_ports rst_b]
set_input_delay -clock clk  0.1  [get_ports start]
set_output_delay -clock clk  0.1  [get_ports {dout[15]}]
set_output_delay -clock clk  0.1  [get_ports {dout[14]}]
set_output_delay -clock clk  0.1  [get_ports {dout[13]}]
set_output_delay -clock clk  0.1  [get_ports {dout[12]}]
set_output_delay -clock clk  0.1  [get_ports {dout[11]}]
set_output_delay -clock clk  0.1  [get_ports {dout[10]}]
set_output_delay -clock clk  0.1  [get_ports {dout[9]}]
set_output_delay -clock clk  0.1  [get_ports {dout[8]}]
set_output_delay -clock clk  0.1  [get_ports {dout[7]}]
set_output_delay -clock clk  0.1  [get_ports {dout[6]}]
set_output_delay -clock clk  0.1  [get_ports {dout[5]}]
set_output_delay -clock clk  0.1  [get_ports {dout[4]}]
set_output_delay -clock clk  0.1  [get_ports {dout[3]}]
set_output_delay -clock clk  0.1  [get_ports {dout[2]}]
set_output_delay -clock clk  0.1  [get_ports {dout[1]}]
set_output_delay -clock clk  0.1  [get_ports {dout[0]}]
set_output_delay -clock clk  0.1  [get_ports done]