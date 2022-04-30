##############################

set design RMT_NIC
set top fpga
set device xcvu9p-flga2104-2L-e
set proj_dir ./project_synth

#############################
# Source files
set SYN_FILES [list rtl/fpga.v]
lappend SYN_FILES rtl/fpga_core.v
lappend SYN_FILES rtl/debounce_switch.v
lappend SYN_FILES rtl/sync_signal.v
lappend SYN_FILES rtl/common/mqnic_core_pcie_us.v
lappend SYN_FILES rtl/common/mqnic_core_pcie.v
lappend SYN_FILES rtl/common/mqnic_core.v
lappend SYN_FILES rtl/common/mqnic_interface.v
lappend SYN_FILES rtl/common/mqnic_interface_tx.v
lappend SYN_FILES rtl/common/mqnic_interface_rx.v
lappend SYN_FILES rtl/common/mqnic_egress.v
lappend SYN_FILES rtl/common/mqnic_ingress.v
lappend SYN_FILES rtl/common/mqnic_l2_egress.v
lappend SYN_FILES rtl/common/mqnic_l2_ingress.v
lappend SYN_FILES rtl/common/mqnic_ptp.v
lappend SYN_FILES rtl/common/mqnic_ptp_clock.v
lappend SYN_FILES rtl/common/mqnic_ptp_perout.v
lappend SYN_FILES rtl/common/cpl_write.v
lappend SYN_FILES rtl/common/cpl_op_mux.v
lappend SYN_FILES rtl/common/desc_fetch.v
lappend SYN_FILES rtl/common/desc_op_mux.v
lappend SYN_FILES rtl/common/event_mux.v
lappend SYN_FILES rtl/common/queue_manager.v
lappend SYN_FILES rtl/common/cpl_queue_manager.v
lappend SYN_FILES rtl/common/tx_fifo.v
lappend SYN_FILES rtl/common/rx_fifo.v
lappend SYN_FILES rtl/common/tx_req_mux.v
lappend SYN_FILES rtl/common/tx_engine.v
lappend SYN_FILES rtl/common/rx_engine.v
lappend SYN_FILES rtl/common/tx_checksum.v
lappend SYN_FILES rtl/common/rx_hash.v
lappend SYN_FILES rtl/common/rx_checksum.v
lappend SYN_FILES rtl/common/stats_counter.v
lappend SYN_FILES rtl/common/stats_collect.v
lappend SYN_FILES rtl/common/stats_pcie_if.v
lappend SYN_FILES rtl/common/stats_pcie_tlp.v
lappend SYN_FILES rtl/common/stats_dma_if_pcie.v
lappend SYN_FILES rtl/common/stats_dma_latency.v
lappend SYN_FILES rtl/common/mqnic_tx_scheduler_block_rr.v
lappend SYN_FILES rtl/common/tx_scheduler_rr.v
lappend SYN_FILES rtl/common/cmac_pad.v
lappend SYN_FILES lib/eth/rtl/ptp_clock.v
lappend SYN_FILES lib/eth/rtl/ptp_clock_cdc.v
lappend SYN_FILES lib/eth/rtl/ptp_perout.v
lappend SYN_FILES lib/axi/rtl/axil_interconnect.v
lappend SYN_FILES lib/axi/rtl/axil_ram.v
lappend SYN_FILES lib/axi/rtl/axil_crossbar.v
lappend SYN_FILES lib/axi/rtl/axil_crossbar_addr.v
lappend SYN_FILES lib/axi/rtl/axil_crossbar_rd.v
lappend SYN_FILES lib/axi/rtl/axil_crossbar_wr.v
lappend SYN_FILES lib/axi/rtl/axil_reg_if.v
lappend SYN_FILES lib/axi/rtl/axil_reg_if_rd.v
lappend SYN_FILES lib/axi/rtl/axil_reg_if_wr.v
lappend SYN_FILES lib/axi/rtl/axil_register_rd.v
lappend SYN_FILES lib/axi/rtl/axil_register_wr.v
lappend SYN_FILES lib/axi/rtl/arbiter.v
lappend SYN_FILES lib/axi/rtl/priority_encoder.v
lappend SYN_FILES lib/axis/rtl/axis_adapter.v
lappend SYN_FILES lib/axis/rtl/axis_arb_mux.v
lappend SYN_FILES lib/axis/rtl/axis_async_fifo.v
lappend SYN_FILES lib/axis/rtl/axis_async_fifo_adapter.v
lappend SYN_FILES lib/axis/rtl/axis_demux.v
lappend SYN_FILES lib/axis/rtl/axis_fifo.v
lappend SYN_FILES lib/axis/rtl/axis_fifo_adapter.v
lappend SYN_FILES lib/axis/rtl/axis_pipeline_fifo.v
lappend SYN_FILES lib/axis/rtl/axis_register.v
lappend SYN_FILES lib/axis/rtl/sync_reset.v
lappend SYN_FILES lib/pcie/rtl/pcie_axil_master.v
lappend SYN_FILES lib/pcie/rtl/pcie_tlp_demux.v
lappend SYN_FILES lib/pcie/rtl/pcie_tlp_demux_bar.v
lappend SYN_FILES lib/pcie/rtl/pcie_tlp_mux.v
lappend SYN_FILES lib/pcie/rtl/dma_if_pcie.v
lappend SYN_FILES lib/pcie/rtl/dma_if_pcie_rd.v
lappend SYN_FILES lib/pcie/rtl/dma_if_pcie_wr.v
lappend SYN_FILES lib/pcie/rtl/dma_if_mux.v
lappend SYN_FILES lib/pcie/rtl/dma_if_mux_rd.v
lappend SYN_FILES lib/pcie/rtl/dma_if_mux_wr.v
lappend SYN_FILES lib/pcie/rtl/dma_if_desc_mux.v
lappend SYN_FILES lib/pcie/rtl/dma_ram_demux_rd.v
lappend SYN_FILES lib/pcie/rtl/dma_ram_demux_wr.v
lappend SYN_FILES lib/pcie/rtl/dma_psdpram.v
lappend SYN_FILES lib/pcie/rtl/dma_client_axis_sink.v
lappend SYN_FILES lib/pcie/rtl/dma_client_axis_source.v
lappend SYN_FILES lib/pcie/rtl/pcie_us_if.v
lappend SYN_FILES lib/pcie/rtl/pcie_us_if_rc.v
lappend SYN_FILES lib/pcie/rtl/pcie_us_if_rq.v
lappend SYN_FILES lib/pcie/rtl/pcie_us_if_cc.v
lappend SYN_FILES lib/pcie/rtl/pcie_us_if_cq.v
lappend SYN_FILES lib/pcie/rtl/pcie_us_cfg.v
lappend SYN_FILES lib/pcie/rtl/pcie_us_msi.v
lappend SYN_FILES lib/pcie/rtl/pulse_merge.v

#add mqnic_app_block
lappend SYN_FILES app/template/rtl/mqnic_app_block.v


# RMT-related 
lappend SYN_FILES lib_rmt/rmtv2/rmt_wrapper.v
lappend SYN_FILES lib_rmt/rmtv2/pkt_filter.v
lappend SYN_FILES lib_rmt/rmtv2/parser.v
lappend SYN_FILES lib_rmt/rmtv2/deparser.v
lappend SYN_FILES lib_rmt/rmtv2/sub_parser.v
lappend SYN_FILES lib_rmt/rmtv2/sub_deparser.v
lappend SYN_FILES lib_rmt/rmtv2/stage.v
lappend SYN_FILES lib_rmt/rmtv2/action/action_engine.v
lappend SYN_FILES lib_rmt/rmtv2/action/alu_1.v
lappend SYN_FILES lib_rmt/rmtv2/action/alu_2.v
lappend SYN_FILES lib_rmt/rmtv2/action/alu_3.v
lappend SYN_FILES lib_rmt/rmtv2/action/crossbar.v
lappend SYN_FILES lib_rmt/rmtv2/extract/key_extract_2.v
lappend SYN_FILES lib_rmt/rmtv2/lookup/lookup_engine.v

# XDC files
set XDC_FILES [list fpga.xdc]
lappend XDC_FILES placement.xdc
lappend XDC_FILES boot.xdc
lappend XDC_FILES lib/axis/syn/vivado/axis_async_fifo.tcl
lappend XDC_FILES lib/axis/syn/vivado/sync_reset.tcl
lappend XDC_FILES lib/eth/syn/vivado/ptp_clock_cdc.tcl

# IP files
set IP_TCL_FILES [list ip/pcie4_uscale_plus_0.tcl]
lappend IP_TCL_FILES ip/cmac_usplus_0.tcl
lappend IP_TCL_FILES ip/cmac_usplus_1.tcl

# IPs for RMT pipeline
lappend IP_TCL_FILES ip/rmt/blk_mem_gen_0.tcl
lappend IP_TCL_FILES ip/rmt/blk_mem_gen_1.tcl
lappend IP_TCL_FILES ip/rmt/blk_mem_gen_2.tcl
lappend IP_TCL_FILES ip/rmt/blk_mem_gen_3.tcl
lappend IP_TCL_FILES ip/rmt/fifo_generator_512b.tcl
lappend IP_TCL_FILES ip/rmt/fifo_generator_522b.tcl
lappend IP_TCL_FILES ip/rmt/fifo_generator_705b.tcl
lappend IP_TCL_FILES ip/rmt/parse_act_ram_ip.tcl
lappend IP_TCL_FILES ip/rmt/tcam_generator.tcl


#############################

create_project -name ${design} -force -dir "${proj_dir}" -part ${device}

foreach syn $SYN_FILES {
	add_files -fileset sources_1 $syn
}

foreach xdc $XDC_FILES {
	add_files -fileset constrs_1 $xdc
}

foreach ip_tcl $IP_TCL_FILES {
	source $ip_tcl
}

##
#
add_files [glob ./lib_rmt/rmtv2/*.coe]
add_files [glob ./lib_rmt/rmtv2/*.mif]

# for better simulation
#config_ip_cache -disable_cache
#update_ip_catalog

exit
