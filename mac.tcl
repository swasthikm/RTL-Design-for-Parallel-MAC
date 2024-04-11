#/**************************************************/
#/* Compile Script for Synopsys                    */
#/* OSU FreePDK 45nm                               */
#/**************************************************/

#/* All verilog files, separated by spaces         */
set my_verilog_files mac.v

#/* Top-level Module                               */
set my_toplevel mac

#/* The name of the clock pin. If no clock-pin     */
#/* exists, pick anything                          */
set my_clock_pin clk

#/* Target frequency in MHz for optimization       */
set my_clk_freq_MHz 100

#/* Delay of input signals (Clock-to-Q, Package etc.)  */
set my_input_delay_ns 0.1

#/* Reserved time for output signals (Holdtime etc.)   */
set my_output_delay_ns 0.1


#/**************************************************/
#/* No modifications needed below                  */
#/**************************************************/
set OSU_FREEPDK /bgfs/ece2192-2020f/kit/standardcell/lib/files
set search_path  [list "." "/bgfs/ece2192-2020f/kit/standardcell/lib/files"]
set alib_library_analysis_path $OSU_FREEPDK

set link_library "gscl45nm.db"
set target_library "gscl45nm.db"
define_design_lib WORK -path ./WORK
set verilogout_show_unconnected_pins "true"

analyze -f verilog $my_verilog_files

elaborate $my_toplevel

current_design $my_toplevel

link
uniquify

set my_period [expr 1000 / $my_clk_freq_MHz]

set find_clock [ find port [list $my_clock_pin] ]
if {  $find_clock != [list] } {
   set clk_name $my_clock_pin
   create_clock -period $my_period $clk_name
} else {
   set clk_name vclk
   create_clock -period $my_period -name $clk_name
}

set_driving_cell  -lib_cell INVX1  [all_inputs]
set_input_delay $my_input_delay_ns -clock $clk_name [remove_from_collection [all_inputs] $my_clock_pin]
set_output_delay $my_output_delay_ns -clock $clk_name [all_outputs]

compile -ungroup_all -map_effort medium

compile -incremental_mapping -map_effort medium

check_design
report_constraint -all_violators

source -verbose "/bgfs/ece2192-2020f/kit/misc/namingrules.tcl"

set filename [format "%s%s"  $my_toplevel "_syn.v"]
write -f verilog -output $filename

set filename [format "%s%s"  $my_toplevel ".sdc"]
write_sdc $filename

# Generate Standard Delay Format (SDF) file
write_sdf -context verilog "${my_toplevel}.dc.sdf"

redirect timing.rep { report_timing }
redirect cell.rep { report_cell }
redirect power.rep { report_power }
redirect area.rep { report_area }

quit
