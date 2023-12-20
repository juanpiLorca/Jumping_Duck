# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
namespace eval ::optrace {
  variable script "C:/Users/juanp/OneDrive/Desktop/SEP/ProjectSEPFinal/Hardware_Booster_Project/Hardware_Proyecto_Booster.runs/synth_1/DEMO_wrapper.tcl"
  variable category "vivado_synth"
}

# Try to connect to running dispatch if we haven't done so already.
# This code assumes that the Tcl interpreter is not using threads,
# since the ::dispatch::connected variable isn't mutex protected.
if {![info exists ::dispatch::connected]} {
  namespace eval ::dispatch {
    variable connected false
    if {[llength [array get env XILINX_CD_CONNECT_ID]] > 0} {
      set result "true"
      if {[catch {
        if {[lsearch -exact [package names] DispatchTcl] < 0} {
          set result [load librdi_cd_clienttcl[info sharedlibextension]] 
        }
        if {$result eq "false"} {
          puts "WARNING: Could not load dispatch client library"
        }
        set connect_id [ ::dispatch::init_client -mode EXISTING_SERVER ]
        if { $connect_id eq "" } {
          puts "WARNING: Could not initialize dispatch client"
        } else {
          puts "INFO: Dispatch client connection id - $connect_id"
          set connected true
        }
      } catch_res]} {
        puts "WARNING: failed to connect to dispatch server - $catch_res"
      }
    }
  }
}
if {$::dispatch::connected} {
  # Remove the dummy proc if it exists.
  if { [expr {[llength [info procs ::OPTRACE]] > 0}] } {
    rename ::OPTRACE ""
  }
  proc ::OPTRACE { task action {tags {} } } {
    ::vitis_log::op_trace "$task" $action -tags $tags -script $::optrace::script -category $::optrace::category
  }
  # dispatch is generic. We specifically want to attach logging.
  ::vitis_log::connect_client
} else {
  # Add dummy proc if it doesn't exist.
  if { [expr {[llength [info procs ::OPTRACE]] == 0}] } {
    proc ::OPTRACE {{arg1 \"\" } {arg2 \"\"} {arg3 \"\" } {arg4 \"\"} {arg5 \"\" } {arg6 \"\"}} {
        # Do nothing
    }
  }
}

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
OPTRACE "synth_1" START { ROLLUP_AUTO }
set_param tcl.collectionResultDisplayLimit 0
set_param xicom.use_bs_reader 1
OPTRACE "Creating in-memory project" START { }
create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/juanp/OneDrive/Desktop/SEP/ProjectSEPFinal/Hardware_Booster_Project/Hardware_Proyecto_Booster.cache/wt [current_project]
set_property parent.project_path C:/Users/juanp/OneDrive/Desktop/SEP/ProjectSEPFinal/Hardware_Booster_Project/Hardware_Proyecto_Booster.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_repo_paths c:/Users/juanp/OneDrive/Desktop/SEP/ProjectSEPFinal/ip_repo [current_project]
update_ip_catalog
set_property ip_output_repo c:/Users/juanp/OneDrive/Desktop/SEP/ProjectSEPFinal/Hardware_Booster_Project/Hardware_Proyecto_Booster.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
OPTRACE "Creating in-memory project" END { }
OPTRACE "Adding files" START { }
add_files C:/Users/juanp/OneDrive/Desktop/SEP/Project2/Hardware_Proyecto2/ip_repo/1024_sine_wave_samples.coe
add_files C:/Users/juanp/OneDrive/Desktop/SEP/ProjectSEPFinal/Hardware_Booster_Project/Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ip/1024_sine_wave_samples.coe
read_vhdl -library xil_defaultlib C:/Users/juanp/OneDrive/Desktop/SEP/ProjectSEPFinal/Hardware_Booster_Project/Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/hdl/DEMO_wrapper.vhd
add_files C:/Users/juanp/OneDrive/Desktop/SEP/ProjectSEPFinal/Hardware_Booster_Project/Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/DEMO.bd
set_property used_in_implementation false [get_files -all c:/Users/juanp/OneDrive/Desktop/SEP/ProjectSEPFinal/Hardware_Booster_Project/Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ip/DEMO_axi_quad_spi_0_0/DEMO_axi_quad_spi_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/juanp/OneDrive/Desktop/SEP/ProjectSEPFinal/Hardware_Booster_Project/Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ip/DEMO_axi_quad_spi_0_0/DEMO_axi_quad_spi_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/juanp/OneDrive/Desktop/SEP/ProjectSEPFinal/Hardware_Booster_Project/Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ip/DEMO_axi_quad_spi_0_0/DEMO_axi_quad_spi_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/juanp/OneDrive/Desktop/SEP/ProjectSEPFinal/Hardware_Booster_Project/Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ip/DEMO_axi_quad_spi_0_0/DEMO_axi_quad_spi_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/juanp/OneDrive/Desktop/SEP/ProjectSEPFinal/Hardware_Booster_Project/Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ip/DEMO_processing_system7_0_0/DEMO_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/juanp/OneDrive/Desktop/SEP/ProjectSEPFinal/Hardware_Booster_Project/Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ip/DEMO_axi_gpio_0_0/DEMO_axi_gpio_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/juanp/OneDrive/Desktop/SEP/ProjectSEPFinal/Hardware_Booster_Project/Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ip/DEMO_axi_gpio_0_0/DEMO_axi_gpio_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/juanp/OneDrive/Desktop/SEP/ProjectSEPFinal/Hardware_Booster_Project/Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ip/DEMO_axi_gpio_0_0/DEMO_axi_gpio_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/juanp/OneDrive/Desktop/SEP/ProjectSEPFinal/Hardware_Booster_Project/Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ip/DEMO_xbar_0/DEMO_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/juanp/OneDrive/Desktop/SEP/ProjectSEPFinal/Hardware_Booster_Project/Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ip/DEMO_rst_ps7_0_50M_0/DEMO_rst_ps7_0_50M_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/juanp/OneDrive/Desktop/SEP/ProjectSEPFinal/Hardware_Booster_Project/Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ip/DEMO_rst_ps7_0_50M_0/DEMO_rst_ps7_0_50M_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/juanp/OneDrive/Desktop/SEP/ProjectSEPFinal/Hardware_Booster_Project/Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ip/DEMO_rst_ps7_0_50M_0/DEMO_rst_ps7_0_50M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/juanp/OneDrive/Desktop/SEP/ProjectSEPFinal/Hardware_Booster_Project/Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ip/DEMO_axi_quad_spi_1_0/DEMO_axi_quad_spi_1_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/juanp/OneDrive/Desktop/SEP/ProjectSEPFinal/Hardware_Booster_Project/Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ip/DEMO_axi_quad_spi_1_0/DEMO_axi_quad_spi_1_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/juanp/OneDrive/Desktop/SEP/ProjectSEPFinal/Hardware_Booster_Project/Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ip/DEMO_axi_quad_spi_1_0/DEMO_axi_quad_spi_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/juanp/OneDrive/Desktop/SEP/ProjectSEPFinal/Hardware_Booster_Project/Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ip/DEMO_axi_quad_spi_1_0/DEMO_axi_quad_spi_1_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/juanp/OneDrive/Desktop/SEP/ProjectSEPFinal/Hardware_Booster_Project/Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ip/DEMO_axi_iic_0_1/DEMO_axi_iic_0_1_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/juanp/OneDrive/Desktop/SEP/ProjectSEPFinal/Hardware_Booster_Project/Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ip/DEMO_axi_iic_0_1/DEMO_axi_iic_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/juanp/OneDrive/Desktop/SEP/ProjectSEPFinal/Hardware_Booster_Project/Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ip/DEMO_axi_timer_0_0/DEMO_axi_timer_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/juanp/OneDrive/Desktop/SEP/ProjectSEPFinal/Hardware_Booster_Project/Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ip/DEMO_axi_timer_0_0/DEMO_axi_timer_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/juanp/OneDrive/Desktop/SEP/ProjectSEPFinal/Hardware_Booster_Project/Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ip/DEMO_axi_timer_1_0/DEMO_axi_timer_1_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/juanp/OneDrive/Desktop/SEP/ProjectSEPFinal/Hardware_Booster_Project/Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ip/DEMO_axi_timer_1_0/DEMO_axi_timer_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/juanp/OneDrive/Desktop/SEP/ProjectSEPFinal/Hardware_Booster_Project/Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ip/DEMO_AXI_SPWM_driver_0_0/src/Sine_Wave_RAM/Sine_Wave_RAM_ooc.xdc]
set_property used_in_synthesis false [get_files -all c:/Users/juanp/OneDrive/Desktop/SEP/ProjectSEPFinal/Hardware_Booster_Project/Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ip/DEMO_ila_0_0/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all c:/Users/juanp/OneDrive/Desktop/SEP/ProjectSEPFinal/Hardware_Booster_Project/Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ip/DEMO_ila_0_0/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all c:/Users/juanp/OneDrive/Desktop/SEP/ProjectSEPFinal/Hardware_Booster_Project/Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ip/DEMO_ila_0_0/ila_v6_2/constraints/ila.xdc]
set_property used_in_implementation false [get_files -all c:/Users/juanp/OneDrive/Desktop/SEP/ProjectSEPFinal/Hardware_Booster_Project/Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ip/DEMO_ila_0_0/DEMO_ila_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/juanp/OneDrive/Desktop/SEP/ProjectSEPFinal/Hardware_Booster_Project/Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ip/DEMO_vio_0_0/DEMO_vio_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/juanp/OneDrive/Desktop/SEP/ProjectSEPFinal/Hardware_Booster_Project/Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ip/DEMO_vio_0_0/DEMO_vio_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/juanp/OneDrive/Desktop/SEP/ProjectSEPFinal/Hardware_Booster_Project/Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ip/DEMO_auto_pc_0/DEMO_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all C:/Users/juanp/OneDrive/Desktop/SEP/ProjectSEPFinal/Hardware_Booster_Project/Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/DEMO_ooc.xdc]

OPTRACE "Adding files" END { }
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/juanp/OneDrive/Desktop/SEP/ProjectSEPFinal/Hardware_Booster_Project/Hardware_Proyecto_Booster.srcs/constrs_1/imports/ProjectSEPFinal/Constr_Project.xdc
set_property used_in_implementation false [get_files C:/Users/juanp/OneDrive/Desktop/SEP/ProjectSEPFinal/Hardware_Booster_Project/Hardware_Proyecto_Booster.srcs/constrs_1/imports/ProjectSEPFinal/Constr_Project.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

OPTRACE "synth_design" START { }
synth_design -top DEMO_wrapper -part xc7z010clg400-1
OPTRACE "synth_design" END { }


OPTRACE "write_checkpoint" START { CHECKPOINT }
# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef DEMO_wrapper.dcp
OPTRACE "write_checkpoint" END { }
OPTRACE "synth reports" START { REPORT }
create_report "synth_1_synth_report_utilization_0" "report_utilization -file DEMO_wrapper_utilization_synth.rpt -pb DEMO_wrapper_utilization_synth.pb"
OPTRACE "synth reports" END { }
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
OPTRACE "synth_1" END { }
