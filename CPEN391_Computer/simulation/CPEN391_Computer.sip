set_global_assignment -entity "CPEN391_Computer" -library "lib_CPEN391_Computer" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "CPEN391_Computer" -library "lib_CPEN391_Computer" -name IP_TOOL_VERSION "18.1"
set_global_assignment -entity "CPEN391_Computer" -library "lib_CPEN391_Computer" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_CPEN391_Computer" -name SPD_FILE [file join $::quartus(sip_path) "../CPEN391_Computer.spd"]
set_global_assignment -library "lib_CPEN391_Computer" -name MISC_FILE [file join $::quartus(sip_path) "../../CPEN391_Computer.qsys"]

set_global_assignment -library "lib_CPEN391_Computer" -name MISC_FILE [file join $::quartus(sip_path) "CPEN391_Computer.v"]
set_global_assignment -library "lib_CPEN391_Computer" -name MISC_FILE [file join $::quartus(sip_path) "submodules/CPEN391_Computer_System_PLL.v"]
set_global_assignment -library "lib_CPEN391_Computer" -name MISC_FILE [file join $::quartus(sip_path) "submodules/CPEN391_Computer_SysID.v"]
set_global_assignment -library "lib_CPEN391_Computer" -name MISC_FILE [file join $::quartus(sip_path) "submodules/CPEN391_Computer_Slider_Switches.v"]
set_global_assignment -library "lib_CPEN391_Computer" -name MISC_FILE [file join $::quartus(sip_path) "submodules/CPEN391_Computer_SDRAM.v"]
set_global_assignment -library "lib_CPEN391_Computer" -name MISC_FILE [file join $::quartus(sip_path) "submodules/CPEN391_Computer_SDRAM_test_component.v"]
set_global_assignment -library "lib_CPEN391_Computer" -name MISC_FILE [file join $::quartus(sip_path) "submodules/CPEN391_Computer_PushButtons.v"]
set_global_assignment -library "lib_CPEN391_Computer" -name MISC_FILE [file join $::quartus(sip_path) "submodules/CPEN391_Computer_Onchip_SRAM.hex"]
set_global_assignment -library "lib_CPEN391_Computer" -name MISC_FILE [file join $::quartus(sip_path) "submodules/CPEN391_Computer_Onchip_SRAM.v"]
set_global_assignment -library "lib_CPEN391_Computer" -name MISC_FILE [file join $::quartus(sip_path) "submodules/CPEN391_Computer_LEDS.v"]
set_global_assignment -library "lib_CPEN391_Computer" -name MISC_FILE [file join $::quartus(sip_path) "submodules/CPEN391_Computer_JTAG_UART_For_ARM0.v"]
set_global_assignment -library "lib_CPEN391_Computer" -name MISC_FILE [file join $::quartus(sip_path) "submodules/CPEN391_Computer_JTAG_To_FPGA_Bridge.v"]
set_global_assignment -library "lib_CPEN391_Computer" -name MISC_FILE [file join $::quartus(sip_path) "submodules/CPEN391_Computer_Interval_Timer.v"]
set_global_assignment -library "lib_CPEN391_Computer" -name MISC_FILE [file join $::quartus(sip_path) "submodules/CPEN391_Computer_HEX0_1.v"]
set_global_assignment -library "lib_CPEN391_Computer" -name MISC_FILE [file join $::quartus(sip_path) "submodules/CPEN391_Computer_ARM_A9_HPS.v"]
