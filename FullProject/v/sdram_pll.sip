set_global_assignment -entity "sdram_pll" -library "lib_sdram_pll" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "sdram_pll" -library "lib_sdram_pll" -name IP_TOOL_VERSION "23.1"
set_global_assignment -entity "sdram_pll" -library "lib_sdram_pll" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_sdram_pll" -name SPD_FILE [file join $::quartus(sip_path) "sdram_pll.spd"]

set_global_assignment -library "lib_sdram_pll" -name MISC_FILE [file join $::quartus(sip_path) "sdram_pll_sim/sdram_pll.vo"]
