onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc"  -L xilinx_vip -L xpm -L lib_pkg_v1_0_2 -L fifo_generator_v13_2_8 -L lib_fifo_v1_0_17 -L lib_srl_fifo_v1_0_2 -L lib_cdc_v1_0_2 -L axi_datamover_v5_1_30 -L audio_formatter_v1_0_10 -L xil_defaultlib -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_28 -L axi_data_fifo_v2_1_27 -L axi_crossbar_v2_1_29 -L axi_protocol_converter_v2_1_28 -L axi_clock_converter_v2_1_27 -L blk_mem_gen_v8_4_6 -L axi_dwidth_converter_v2_1_28 -L i2s_receiver_v1_0_6 -L i2s_transmitter_v1_0_6 -L proc_sys_reset_v5_0_13 -L util_vector_logic_v2_0_2 -L axis_infrastructure_v1_1_0 -L axis_register_slice_v1_1_28 -L axis_subset_converter_v1_1_28 -L axi_lite_ipif_v3_0_4 -L v_tc_v6_2_6 -L v_tc_v6_1_13 -L v_vid_in_axi4s_v4_0_9 -L v_axi4s_vid_out_v4_0_16 -L xbip_utils_v3_0_10 -L axi_utils_v2_0_6 -L xbip_pipe_v3_0_6 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_dsp48_addsub_v3_0_6 -L xbip_bram18k_v3_0_6 -L mult_gen_v12_0_18 -L floating_point_v7_0_20 -L xbip_dsp48_mult_v3_0_6 -L xbip_dsp48_multadd_v3_0_6 -L div_gen_v5_1_19 -L v_frmbuf_rd_v2_4_0 -L xlslice_v1_0_2 -L v_frmbuf_wr_v2_4_0 -L v_csc_v1_1_7 -L v_tpg_v8_2_2 -L interrupt_control_v3_1_4 -L axi_iic_v2_1_4 -L axi_gpio_v2_0_30 -L axi_vip_v1_1_14 -L processing_system7_vip_v1_0_16 -L xlconcat_v2_1_4 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.design_1 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {design_1.udo}

run 1000ns

quit -force
