create_bd_design "design_1"
update_compile_order -fileset sources_1
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:zynq_ultra_ps_e:3.1 zynq_ultra_ps_e_0
endgroup
apply_bd_automation -rule xilinx.com:bd_rule:zynq_ultra_ps_e -config {apply_board_preset "1" }  [get_bd_cells zynq_ultra_ps_e_0]
set_property -dict [list CONFIG.PSU__FPGA_PL1_ENABLE {1} CONFIG.PSU__USE__M_AXI_GP1 {0} CONFIG.PSU__USE__S_AXI_GP2 {1} CONFIG.PSU__CRL_APB__PL0_REF_CTRL__SRCSEL {RPLL} CONFIG.PSU__CRL_APB__PL0_REF_CTRL__FREQMHZ {200} CONFIG.PSU__CRL_APB__PL1_REF_CTRL__FREQMHZ {333}] [get_bd_cells zynq_ultra_ps_e_0]
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_cdma:4.1 axi_cdma_0
endgroup
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_cdma:4.1 axi_cdma_1
endgroup
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_cdma:4.1 axi_cdma_2
endgroup
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0
endgroup
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_1
endgroup
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 smartconnect_0
endgroup
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 smartconnect_1
endgroup
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_apb_bridge:3.0 axi_apb_bridge_0
endgroup
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice:2.1 axi_register_slice_0
endgroup
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice:2.1 axi_register_slice_1
endgroup
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice:2.1 axi_register_slice_2
endgroup
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice:2.1 axi_register_slice_3
endgroup
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 axi_bram_ctrl_0
endgroup
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 axi_bram_ctrl_1
endgroup
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 axi_bram_ctrl_2
endgroup
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 axi_bram_ctrl_3
endgroup
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0
endgroup
set_property name proc_sys_reset_200 [get_bd_cells proc_sys_reset_0]
set_property name proc_sys_reset_333 [get_bd_cells proc_sys_reset_1]
set_property -dict [list CONFIG.C_M_AXI_DATA_WIDTH {128} CONFIG.C_M_AXI_MAX_BURST_LEN {256} CONFIG.C_INCLUDE_SF {1} CONFIG.C_INCLUDE_SG {0}] [get_bd_cells axi_cdma_0]
set_property -dict [list CONFIG.C_M_AXI_DATA_WIDTH {128} CONFIG.C_M_AXI_MAX_BURST_LEN {256} CONFIG.C_INCLUDE_SF {1} CONFIG.C_INCLUDE_SG {0}] [get_bd_cells axi_cdma_1]
set_property -dict [list CONFIG.C_M_AXI_DATA_WIDTH {128} CONFIG.C_M_AXI_MAX_BURST_LEN {256} CONFIG.C_INCLUDE_SF {1} CONFIG.C_INCLUDE_SG {0}] [get_bd_cells axi_cdma_2]
set_property -dict [list CONFIG.NUM_MI {4} CONFIG.NUM_SI {1} CONFIG.NUM_CLKS {2}] [get_bd_cells smartconnect_0]
set_property -dict [list CONFIG.NUM_MI {5} CONFIG.NUM_SI {3}] [get_bd_cells smartconnect_1]
set_property -dict [list CONFIG.DATA_WIDTH {128} CONFIG.SINGLE_PORT_BRAM {1} CONFIG.ECC_TYPE {0}] [get_bd_cells axi_bram_ctrl_0]
set_property -dict [list CONFIG.DATA_WIDTH {128} CONFIG.SINGLE_PORT_BRAM {1} CONFIG.ECC_TYPE {0}] [get_bd_cells axi_bram_ctrl_1]
set_property -dict [list CONFIG.DATA_WIDTH {128} CONFIG.SINGLE_PORT_BRAM {1} CONFIG.ECC_TYPE {0}] [get_bd_cells axi_bram_ctrl_2]
set_property -dict [list CONFIG.DATA_WIDTH {128} CONFIG.SINGLE_PORT_BRAM {1} CONFIG.ECC_TYPE {0}] [get_bd_cells axi_bram_ctrl_3]
set_property -dict [list CONFIG.NUM_PORTS {6}] [get_bd_cells xlconcat_0]
set_property -dict [list CONFIG.C_DPHASE_TIMEOUT {16} CONFIG.C_APB_NUM_SLAVES {1}] [get_bd_cells axi_apb_bridge_0]
connect_bd_intf_net [get_bd_intf_pins zynq_ultra_ps_e_0/M_AXI_HPM0_FPD] [get_bd_intf_pins smartconnect_0/S00_AXI]
connect_bd_intf_net [get_bd_intf_pins smartconnect_0/M00_AXI] [get_bd_intf_pins axi_apb_bridge_0/AXI4_LITE]
connect_bd_intf_net [get_bd_intf_pins smartconnect_0/M01_AXI] [get_bd_intf_pins axi_cdma_0/S_AXI_LITE]
connect_bd_intf_net [get_bd_intf_pins smartconnect_0/M02_AXI] [get_bd_intf_pins axi_cdma_1/S_AXI_LITE]
connect_bd_intf_net [get_bd_intf_pins smartconnect_0/M03_AXI] [get_bd_intf_pins axi_cdma_2/S_AXI_LITE]
connect_bd_intf_net [get_bd_intf_pins axi_cdma_0/M_AXI] [get_bd_intf_pins smartconnect_1/S00_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_cdma_1/M_AXI] [get_bd_intf_pins smartconnect_1/S01_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_cdma_2/M_AXI] [get_bd_intf_pins smartconnect_1/S02_AXI]
connect_bd_intf_net [get_bd_intf_pins smartconnect_1/M00_AXI] [get_bd_intf_pins zynq_ultra_ps_e_0/S_AXI_HP0_FPD]
connect_bd_intf_net [get_bd_intf_pins smartconnect_1/M01_AXI] [get_bd_intf_pins axi_register_slice_0/S_AXI]
connect_bd_intf_net [get_bd_intf_pins smartconnect_1/M02_AXI] [get_bd_intf_pins axi_register_slice_1/S_AXI]
connect_bd_intf_net [get_bd_intf_pins smartconnect_1/M03_AXI] [get_bd_intf_pins axi_register_slice_2/S_AXI]
connect_bd_intf_net [get_bd_intf_pins smartconnect_1/M04_AXI] [get_bd_intf_pins axi_register_slice_3/S_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_register_slice_0/M_AXI] [get_bd_intf_pins axi_bram_ctrl_0/S_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_register_slice_1/M_AXI] [get_bd_intf_pins axi_bram_ctrl_1/S_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_register_slice_2/M_AXI] [get_bd_intf_pins axi_bram_ctrl_2/S_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_register_slice_3/M_AXI] [get_bd_intf_pins axi_bram_ctrl_3/S_AXI]
connect_bd_net [get_bd_pins axi_apb_bridge_0/s_axi_aclk] [get_bd_pins zynq_ultra_ps_e_0/pl_clk0]
connect_bd_net [get_bd_pins proc_sys_reset_200/slowest_sync_clk] [get_bd_pins zynq_ultra_ps_e_0/pl_clk0]
connect_bd_net [get_bd_pins zynq_ultra_ps_e_0/pl_resetn0] [get_bd_pins proc_sys_reset_200/aux_reset_in]
connect_bd_net [get_bd_pins zynq_ultra_ps_e_0/pl_resetn0] [get_bd_pins proc_sys_reset_200/ext_reset_in]
connect_bd_net [get_bd_pins zynq_ultra_ps_e_0/pl_resetn0] [get_bd_pins proc_sys_reset_333/aux_reset_in]
connect_bd_net [get_bd_pins zynq_ultra_ps_e_0/pl_resetn0] [get_bd_pins proc_sys_reset_333/ext_reset_in]
connect_bd_net [get_bd_pins smartconnect_0/aclk] [get_bd_pins zynq_ultra_ps_e_0/pl_clk1]
connect_bd_net [get_bd_pins smartconnect_0/aclk1] [get_bd_pins zynq_ultra_ps_e_0/pl_clk0]
connect_bd_net [get_bd_pins smartconnect_0/aresetn] [get_bd_pins proc_sys_reset_333/interconnect_aresetn]
connect_bd_net [get_bd_pins proc_sys_reset_333/slowest_sync_clk] [get_bd_pins zynq_ultra_ps_e_0/pl_clk1]
connect_bd_net [get_bd_pins proc_sys_reset_200/peripheral_aresetn] [get_bd_pins axi_apb_bridge_0/s_axi_aresetn]
connect_bd_net [get_bd_pins smartconnect_1/aclk] [get_bd_pins zynq_ultra_ps_e_0/pl_clk1]
connect_bd_net [get_bd_pins zynq_ultra_ps_e_0/maxihpm0_fpd_aclk] [get_bd_pins zynq_ultra_ps_e_0/pl_clk1]
connect_bd_net [get_bd_pins zynq_ultra_ps_e_0/saxihp0_fpd_aclk] [get_bd_pins zynq_ultra_ps_e_0/pl_clk1]
connect_bd_net [get_bd_pins axi_cdma_0/s_axi_lite_aresetn] [get_bd_pins proc_sys_reset_333/peripheral_aresetn]
connect_bd_net [get_bd_pins zynq_ultra_ps_e_0/pl_clk1] [get_bd_pins axi_cdma_0/s_axi_lite_aclk]
connect_bd_net [get_bd_pins zynq_ultra_ps_e_0/pl_clk1] [get_bd_pins axi_cdma_0/m_axi_aclk]
connect_bd_net [get_bd_pins axi_cdma_1/m_axi_aclk] [get_bd_pins zynq_ultra_ps_e_0/pl_clk1]
connect_bd_net [get_bd_pins axi_cdma_1/s_axi_lite_aclk] [get_bd_pins zynq_ultra_ps_e_0/pl_clk1]
connect_bd_net [get_bd_pins axi_cdma_1/s_axi_lite_aresetn] [get_bd_pins proc_sys_reset_333/peripheral_aresetn]
connect_bd_net [get_bd_pins axi_cdma_2/m_axi_aclk] [get_bd_pins zynq_ultra_ps_e_0/pl_clk1]
connect_bd_net [get_bd_pins axi_cdma_2/s_axi_lite_aclk] [get_bd_pins zynq_ultra_ps_e_0/pl_clk1]
connect_bd_net [get_bd_pins axi_cdma_2/s_axi_lite_aresetn] [get_bd_pins proc_sys_reset_333/peripheral_aresetn]
connect_bd_net [get_bd_pins smartconnect_1/aresetn] [get_bd_pins proc_sys_reset_333/interconnect_aresetn]
connect_bd_net [get_bd_pins axi_register_slice_0/aclk] [get_bd_pins zynq_ultra_ps_e_0/pl_clk1]
connect_bd_net [get_bd_pins axi_register_slice_0/aresetn] [get_bd_pins proc_sys_reset_333/peripheral_aresetn]
connect_bd_net [get_bd_pins axi_register_slice_1/aresetn] [get_bd_pins proc_sys_reset_333/peripheral_aresetn]
connect_bd_net [get_bd_pins axi_register_slice_2/aresetn] [get_bd_pins proc_sys_reset_333/peripheral_aresetn]
connect_bd_net [get_bd_pins axi_register_slice_3/aresetn] [get_bd_pins proc_sys_reset_333/peripheral_aresetn]
connect_bd_net [get_bd_pins axi_register_slice_3/aclk] [get_bd_pins zynq_ultra_ps_e_0/pl_clk1]
connect_bd_net [get_bd_pins axi_register_slice_2/aclk] [get_bd_pins zynq_ultra_ps_e_0/pl_clk1]
connect_bd_net [get_bd_pins axi_register_slice_1/aclk] [get_bd_pins zynq_ultra_ps_e_0/pl_clk1]
connect_bd_net [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] [get_bd_pins zynq_ultra_ps_e_0/pl_clk1]
connect_bd_net [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] [get_bd_pins proc_sys_reset_333/peripheral_aresetn]
connect_bd_net [get_bd_pins axi_bram_ctrl_1/s_axi_aclk] [get_bd_pins zynq_ultra_ps_e_0/pl_clk1]
connect_bd_net [get_bd_pins axi_bram_ctrl_1/s_axi_aresetn] [get_bd_pins proc_sys_reset_333/peripheral_aresetn]
connect_bd_net [get_bd_pins axi_bram_ctrl_2/s_axi_aclk] [get_bd_pins zynq_ultra_ps_e_0/pl_clk1]
connect_bd_net [get_bd_pins axi_bram_ctrl_2/s_axi_aresetn] [get_bd_pins proc_sys_reset_333/peripheral_aresetn]
connect_bd_net [get_bd_pins axi_bram_ctrl_3/s_axi_aclk] [get_bd_pins zynq_ultra_ps_e_0/pl_clk1]
connect_bd_net [get_bd_pins axi_bram_ctrl_3/s_axi_aresetn] [get_bd_pins proc_sys_reset_333/peripheral_aresetn]
connect_bd_net [get_bd_pins axi_cdma_0/cdma_introut] [get_bd_pins xlconcat_0/In0]
connect_bd_net [get_bd_pins axi_cdma_1/cdma_introut] [get_bd_pins xlconcat_0/In1]
connect_bd_net [get_bd_pins axi_cdma_2/cdma_introut] [get_bd_pins xlconcat_0/In2]
connect_bd_net [get_bd_pins xlconcat_0/dout] [get_bd_pins zynq_ultra_ps_e_0/pl_ps_irq0]
