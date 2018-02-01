# 
# Synthesis run script generated by Vivado
# 

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
set_param xicom.use_bs_reader 1
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/cao2/storm_soc_everything/storm_soc_everything.cache/wt [current_project]
set_property parent.project_path C:/Users/cao2/storm_soc_everything/storm_soc_everything.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_output_repo c:/Users/cao2/storm_soc_everything/storm_soc_everything.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  C:/Users/cao2/storm_soc_everything/storm_soc_everything.srcs/sources_1/imports/rtl/CORE_PKG.vhd
  C:/Users/cao2/storm_soc_everything/storm_soc_everything.srcs/sources_1/imports/rtl/ALU.vhd
  C:/Users/cao2/storm_soc_everything/storm_soc_everything.srcs/sources_1/imports/rtl/BARREL_SHIFTER.vhd
  C:/Users/cao2/storm_soc_everything/storm_soc_everything.srcs/sources_1/imports/trunk/components/boot_rom/rtl/BOOT_ROM_FILE.vhd
  C:/Users/cao2/storm_soc_everything/storm_soc_everything.srcs/sources_1/imports/rtl/BUS_UNIT.vhd
  C:/Users/cao2/storm_soc_everything/storm_soc_everything.srcs/sources_1/imports/rtl/CACHE.vhd
  C:/Users/cao2/storm_soc_everything/storm_soc_everything.srcs/sources_1/imports/rtl/CORE.vhd
  C:/Users/cao2/storm_soc_everything/storm_soc_everything.srcs/sources_1/imports/rtl/FLOW_CTRL.vhd
  C:/Users/cao2/storm_soc_everything/storm_soc_everything.srcs/sources_1/imports/trunk/components/io_controller/rtl/GP_IO_CTRL.vhd
  C:/Users/cao2/storm_soc_everything/storm_soc_everything.srcs/sources_1/imports/rtl/LOAD_STORE_UNIT.vhd
  C:/Users/cao2/storm_soc_everything/storm_soc_everything.srcs/sources_1/imports/rtl/MC_SYS.vhd
  C:/Users/cao2/storm_soc_everything/storm_soc_everything.srcs/sources_1/imports/trunk/components/sram_memory/rtl/MEMORY.vhd
  C:/Users/cao2/storm_soc_everything/storm_soc_everything.srcs/sources_1/imports/trunk/components/miniuart/rtl/vhdl/MINI_UART.vhd
  C:/Users/cao2/storm_soc_everything/storm_soc_everything.srcs/sources_1/imports/rtl/MS_UNIT.vhd
  C:/Users/cao2/storm_soc_everything/storm_soc_everything.srcs/sources_1/imports/rtl/MULTIPLY_UNIT.vhd
  C:/Users/cao2/storm_soc_everything/storm_soc_everything.srcs/sources_1/imports/rtl/OPCODE_DECODER.vhd
  C:/Users/cao2/storm_soc_everything/storm_soc_everything.srcs/sources_1/imports/rtl/OPERAND_UNIT.vhd
  C:/Users/cao2/storm_soc_everything/storm_soc_everything.srcs/sources_1/imports/trunk/components/pwm_controller/rtl/PWM_CTRL.vhd
  C:/Users/cao2/storm_soc_everything/storm_soc_everything.srcs/sources_1/imports/rtl/REG_FILE.vhd
  C:/Users/cao2/storm_soc_everything/storm_soc_everything.srcs/sources_1/imports/trunk/components/reset_protector/rtl/RST_PROTECT.vhd
  C:/Users/cao2/storm_soc_everything/storm_soc_everything.srcs/sources_1/imports/trunk/components/miniuart/rtl/vhdl/Rxunit.vhd
  C:/Users/cao2/storm_soc_everything/storm_soc_everything.srcs/sources_1/imports/rtl/STORM_TOP.vhd
  C:/Users/cao2/storm_soc_everything/storm_soc_everything.srcs/sources_1/imports/trunk/components/timer/rtl/TIMER.vhd
  C:/Users/cao2/storm_soc_everything/storm_soc_everything.srcs/sources_1/imports/trunk/components/miniuart/rtl/vhdl/Txunit.vhd
  C:/Users/cao2/storm_soc_everything/storm_soc_everything.srcs/sources_1/imports/trunk/components/vector_interrupt_controller/rtl/VIC.vhd
  C:/Users/cao2/storm_soc_everything/storm_soc_everything.srcs/sources_1/imports/rtl/WB_UNIT.vhd
  C:/Users/cao2/storm_soc_everything/storm_soc_everything.srcs/sources_1/imports/trunk/components/i2c_controller/rtl/vhdl/i2c_master_bit_ctrl.vhd
  C:/Users/cao2/storm_soc_everything/storm_soc_everything.srcs/sources_1/imports/trunk/components/i2c_controller/rtl/vhdl/i2c_master_byte_ctrl.vhd
  C:/Users/cao2/storm_soc_everything/storm_soc_everything.srcs/sources_1/imports/trunk/components/i2c_controller/rtl/vhdl/i2c_master_top.vhd
  C:/Users/cao2/storm_soc_everything/storm_soc_everything.srcs/sources_1/imports/trunk/components/miniuart/rtl/vhdl/utils.vhd
  C:/Users/cao2/storm_soc_everything/storm_soc_everything.srcs/sources_1/imports/trunk/basic_system/rtl/STORM_SoC_basic.vhd
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/cao2/storm_soc_everything/storm_soc_everything.srcs/constrs_1/imports/soc_ic/Basys3_Master.xdc
set_property used_in_implementation false [get_files C:/Users/cao2/storm_soc_everything/storm_soc_everything.srcs/constrs_1/imports/soc_ic/Basys3_Master.xdc]


synth_design -top STORM_SoC_basic -part xc7a35tcpg236-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef STORM_SoC_basic.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file STORM_SoC_basic_utilization_synth.rpt -pb STORM_SoC_basic_utilization_synth.pb"