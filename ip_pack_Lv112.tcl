set_property version 1.1.2.0 [ipx::current_core]
set_property display_name SVNetEngine_v1_1_2_0 [ipx::current_core]
set_property description SVNetEngine_v1_1_2_0 [ipx::current_core]

set_property name SVNetEngine [ipx::current_core]
set_property vendor_display_name StradVision [ipx::current_core]
set_property company_url http://www.stradvision.com/ [ipx::current_core]
ipx::infer_bus_interface rstn_if xilinx.com:signal:reset_rtl:1.0 [ipx::current_core]
ipx::infer_bus_interface intr_0 xilinx.com:signal:interrupt_rtl:1.0 [ipx::current_core]
ipx::infer_bus_interface intr_1 xilinx.com:signal:interrupt_rtl:1.0 [ipx::current_core]
ipx::infer_bus_interface intr_2 xilinx.com:signal:interrupt_rtl:1.0 [ipx::current_core]
ipx::infer_bus_interface {s_apb_penable s_apb_psel s_apb_paddr s_apb_pwrite s_apb_pwdata s_apb_pready s_apb_prdata s_apb_pslverr} xilinx.com:interface:apb_rtl:1.0 [ipx::current_core]
ipx::associate_bus_interfaces -busif s_apb -clock clk [ipx::current_core]
ipx::infer_bus_interface {bram_0_clk_a bram_0_rstn_a bram_0_en_a bram_0_we_a bram_0_addr_a bram_0_din_a bram_0_dout_a} xilinx.com:interface:bram_rtl:1.0 [ipx::current_core]
ipx::add_bus_parameter MASTER_TYPE [ipx::get_bus_interfaces bram_0_a -of_objects [ipx::current_core]]
set_property parameter_types BRAM_CTRL [ipx::get_bus_parameters MASTER_TYPE -of_objects [ipx::get_bus_interfaces bram_0_a -of_objects [ipx::current_core]]]
ipx::infer_bus_interface {bram_1_clk_a bram_1_rstn_a bram_1_en_a bram_1_we_a bram_1_addr_a bram_1_din_a bram_1_dout_a} xilinx.com:interface:bram_rtl:1.0 [ipx::current_core]
ipx::add_bus_parameter MASTER_TYPE [ipx::get_bus_interfaces bram_1_a -of_objects [ipx::current_core]]
set_property parameter_types BRAM_CTRL [ipx::get_bus_parameters MASTER_TYPE -of_objects [ipx::get_bus_interfaces bram_1_a -of_objects [ipx::current_core]]]
ipx::infer_bus_interface {bram_2_clk_a bram_2_rstn_a bram_2_en_a bram_2_we_a bram_2_addr_a bram_2_din_a bram_2_dout_a} xilinx.com:interface:bram_rtl:1.0 [ipx::current_core]
ipx::add_bus_parameter MASTER_TYPE [ipx::get_bus_interfaces bram_2_a -of_objects [ipx::current_core]]
ipx::infer_bus_interface {bram_3_clk_a bram_3_rstn_a bram_3_en_a bram_3_we_a bram_3_addr_a bram_3_din_a bram_3_dout_a} xilinx.com:interface:bram_rtl:1.0 [ipx::current_core]
ipx::add_bus_parameter MASTER_TYPE [ipx::get_bus_interfaces bram_3_a -of_objects [ipx::current_core]]
set_property parameter_types BRAM_CTRL [ipx::get_bus_parameters MASTER_TYPE -of_objects [ipx::get_bus_interfaces bram_3_a -of_objects [ipx::current_core]]]
ipx::add_memory_map s_apb_reg_map [ipx::current_core]
set_property slave_memory_map_ref s_apb_reg_map [ipx::get_bus_interfaces s_apb -of_objects [ipx::current_core]]
ipx::add_address_block s_apb_reg [ipx::get_memory_maps s_apb_reg_map -of_objects [ipx::current_core]]
set_property range 8192 [ipx::get_address_blocks s_apb_reg -of_objects [ipx::get_memory_maps s_apb_reg_map -of_objects [ipx::current_core]]]
