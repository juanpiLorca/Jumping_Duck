vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/dist_mem_gen_v8_0_13
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/lib_srl_fifo_v1_0_2
vlib activehdl/fifo_generator_v13_2_5
vlib activehdl/lib_fifo_v1_0_14
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/interrupt_control_v3_1_4
vlib activehdl/axi_quad_spi_v3_2_20
vlib activehdl/xil_defaultlib
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_7
vlib activehdl/processing_system7_vip_v1_0_9
vlib activehdl/axi_gpio_v2_0_23
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_register_slice_v2_1_21
vlib activehdl/axi_data_fifo_v2_1_20
vlib activehdl/axi_crossbar_v2_1_22
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/axi_iic_v2_0_24
vlib activehdl/xlconcat_v2_1_3
vlib activehdl/axi_timer_v2_0_23
vlib activehdl/blk_mem_gen_v8_4_4
vlib activehdl/axi_protocol_converter_v2_1_21

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap dist_mem_gen_v8_0_13 activehdl/dist_mem_gen_v8_0_13
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap lib_srl_fifo_v1_0_2 activehdl/lib_srl_fifo_v1_0_2
vmap fifo_generator_v13_2_5 activehdl/fifo_generator_v13_2_5
vmap lib_fifo_v1_0_14 activehdl/lib_fifo_v1_0_14
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_4 activehdl/interrupt_control_v3_1_4
vmap axi_quad_spi_v3_2_20 activehdl/axi_quad_spi_v3_2_20
vmap xil_defaultlib activehdl/xil_defaultlib
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_7 activehdl/axi_vip_v1_1_7
vmap processing_system7_vip_v1_0_9 activehdl/processing_system7_vip_v1_0_9
vmap axi_gpio_v2_0_23 activehdl/axi_gpio_v2_0_23
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_21 activehdl/axi_register_slice_v2_1_21
vmap axi_data_fifo_v2_1_20 activehdl/axi_data_fifo_v2_1_20
vmap axi_crossbar_v2_1_22 activehdl/axi_crossbar_v2_1_22
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap axi_iic_v2_0_24 activehdl/axi_iic_v2_0_24
vmap xlconcat_v2_1_3 activehdl/xlconcat_v2_1_3
vmap axi_timer_v2_0_23 activehdl/axi_timer_v2_0_23
vmap blk_mem_gen_v8_4_4 activehdl/blk_mem_gen_v8_4_4
vmap axi_protocol_converter_v2_1_21 activehdl/axi_protocol_converter_v2_1_21

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work dist_mem_gen_v8_0_13  -v2k5 "+incdir+../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/0bf5/simulation/dist_mem_gen_v8_0.v" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_14 -93 \
"../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/a5cb/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_quad_spi_v3_2_20 -93 \
"../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/1735/hdl/axi_quad_spi_v3_2_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/DEMO/ip/DEMO_axi_quad_spi_0_0/sim/DEMO_axi_quad_spi_0_0.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_7  -sv2k12 "+incdir+../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/ce6c/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_9  -sv2k12 "+incdir+../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/DEMO/ip/DEMO_processing_system7_0_0/sim/DEMO_processing_system7_0_0.v" \

vcom -work axi_gpio_v2_0_23 -93 \
"../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/bb35/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/DEMO/ip/DEMO_axi_gpio_0_0/sim/DEMO_axi_gpio_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_21  -v2k5 "+incdir+../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/2ef9/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_20  -v2k5 "+incdir+../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/47c9/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_22  -v2k5 "+incdir+../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/b68e/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/DEMO/ip/DEMO_xbar_0/sim/DEMO_xbar_0.v" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/DEMO/ip/DEMO_rst_ps7_0_50M_0/sim/DEMO_rst_ps7_0_50M_0.vhd" \
"../../../bd/DEMO/ip/DEMO_axi_quad_spi_1_0/sim/DEMO_axi_quad_spi_1_0.vhd" \

vcom -work axi_iic_v2_0_24 -93 \
"../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/d1e4/hdl/axi_iic_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/DEMO/ip/DEMO_axi_iic_0_1/sim/DEMO_axi_iic_0_1.vhd" \
"../../../bd/DEMO/ip/DEMO_BUZZER_0_0/sim/DEMO_BUZZER_0_0.vhd" \
"../../../bd/DEMO/ip/DEMO_Music_0_0/sim/DEMO_Music_0_0.vhd" \

vlog -work xlconcat_v2_1_3  -v2k5 "+incdir+../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/DEMO/ip/DEMO_xlconcat_0_0/sim/DEMO_xlconcat_0_0.v" \

vcom -work axi_timer_v2_0_23 -93 \
"../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/eb71/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/DEMO/ip/DEMO_axi_timer_0_0/sim/DEMO_axi_timer_0_0.vhd" \
"../../../bd/DEMO/ip/DEMO_axi_timer_1_0/sim/DEMO_axi_timer_1_0.vhd" \

vlog -work blk_mem_gen_v8_4_4  -v2k5 "+incdir+../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ip/DEMO_AXI_SPWM_driver_0_0/src/Sine_Wave_RAM/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/DEMO/ip/DEMO_AXI_SPWM_driver_0_0/src/Sine_Wave_RAM/sim/Sine_Wave_RAM.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/DEMO/ipshared/9e87/hdl/AXI_SPWM_driver_v1_0_S00_AXI.vhd" \
"../../../bd/DEMO/ipshared/9e87/src/Comp.vhd" \
"../../../bd/DEMO/ipshared/9e87/src/Counter.vhd" \
"../../../bd/DEMO/ipshared/9e87/src/Local_Oscillator.vhd" \
"../../../bd/DEMO/ipshared/9e87/src/SPWM.vhd" \
"../../../bd/DEMO/ipshared/9e87/src/Sine_Memory.vhd" \
"../../../bd/DEMO/ipshared/9e87/src/clock_divider.vhd" \
"../../../bd/DEMO/ipshared/9e87/hdl/AXI_SPWM_driver_v1_0.vhd" \
"../../../bd/DEMO/ip/DEMO_AXI_SPWM_driver_0_0/sim/DEMO_AXI_SPWM_driver_0_0.vhd" \

vlog -work axi_protocol_converter_v2_1_21  -v2k5 "+incdir+../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/8dfa/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/ec67/hdl" "+incdir+../../../../Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/DEMO/ip/DEMO_auto_pc_0/sim/DEMO_auto_pc_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/DEMO/sim/DEMO.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

