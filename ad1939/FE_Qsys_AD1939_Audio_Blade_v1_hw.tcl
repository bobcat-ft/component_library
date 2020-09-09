# TCL File Generated by Component Editor 18.0
# Wed Sep 09 10:09:41 MDT 2020
# DO NOT MODIFY


# 
# FE_Qsys_AD1939_Audio_Blade_v1 "FE_Qsys_AD1939_Audio_Blade_v1" v1.0
#  2020.09.09.10:09:41
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module FE_Qsys_AD1939_Audio_Blade_v1
# 
set_module_property DESCRIPTION ""
set_module_property NAME FE_Qsys_AD1939_Audio_Blade_v1
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP "FPGA Open Speech Tools"
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME FE_Qsys_AD1939_Audio_Blade_v1
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL AD1939_hps_audio_blade
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file AD1939_hps_audio_blade_v1.vhd VHDL PATH AD1939_hps_audio_blade_v1.vhd TOP_LEVEL_FILE
add_fileset_file Parallel2Serial_32bits.qip OTHER PATH ../serdes/Parallel2Serial_32bits.qip
add_fileset_file Serial2Parallel_32bits.qip OTHER PATH ../serdes/Serial2Parallel_32bits.qip


# 
# parameters
# 


# 
# display items
# 


# 
# connection point Line_In
# 
add_interface Line_In avalon_streaming start
set_interface_property Line_In associatedClock sys_clk
set_interface_property Line_In associatedReset sys_reset
set_interface_property Line_In dataBitsPerSymbol 32
set_interface_property Line_In errorDescriptor ""
set_interface_property Line_In firstSymbolInHighOrderBits true
set_interface_property Line_In maxChannel 0
set_interface_property Line_In readyLatency 0
set_interface_property Line_In ENABLED true
set_interface_property Line_In EXPORT_OF ""
set_interface_property Line_In PORT_NAME_MAP ""
set_interface_property Line_In CMSIS_SVD_VARIABLES ""
set_interface_property Line_In SVD_ADDRESS_GROUP ""

add_interface_port Line_In AD1939_ADC2_data data Output 32
add_interface_port Line_In AD1939_ADC2_channel channel Output 2
add_interface_port Line_In AD1939_ADC2_valid valid Output 1
add_interface_port Line_In AD1939_ADC2_error error Output 2


# 
# connection point Microphone_In
# 
add_interface Microphone_In avalon_streaming start
set_interface_property Microphone_In associatedClock sys_clk
set_interface_property Microphone_In associatedReset sys_reset
set_interface_property Microphone_In dataBitsPerSymbol 32
set_interface_property Microphone_In errorDescriptor ""
set_interface_property Microphone_In firstSymbolInHighOrderBits true
set_interface_property Microphone_In maxChannel 0
set_interface_property Microphone_In readyLatency 0
set_interface_property Microphone_In ENABLED true
set_interface_property Microphone_In EXPORT_OF ""
set_interface_property Microphone_In PORT_NAME_MAP ""
set_interface_property Microphone_In CMSIS_SVD_VARIABLES ""
set_interface_property Microphone_In SVD_ADDRESS_GROUP ""

add_interface_port Microphone_In AD1939_ADC1_channel channel Output 2
add_interface_port Microphone_In AD1939_ADC1_data data Output 32
add_interface_port Microphone_In AD1939_ADC1_error error Output 2
add_interface_port Microphone_In AD1939_ADC1_valid valid Output 1


# 
# connection point Line_Out
# 
add_interface Line_Out avalon_streaming end
set_interface_property Line_Out associatedClock sys_clk
set_interface_property Line_Out associatedReset sys_reset
set_interface_property Line_Out dataBitsPerSymbol 32
set_interface_property Line_Out errorDescriptor ""
set_interface_property Line_Out firstSymbolInHighOrderBits true
set_interface_property Line_Out maxChannel 0
set_interface_property Line_Out readyLatency 0
set_interface_property Line_Out ENABLED true
set_interface_property Line_Out EXPORT_OF ""
set_interface_property Line_Out PORT_NAME_MAP ""
set_interface_property Line_Out CMSIS_SVD_VARIABLES ""
set_interface_property Line_Out SVD_ADDRESS_GROUP ""

add_interface_port Line_Out AD1939_DAC2_channel channel Input 2
add_interface_port Line_Out AD1939_DAC2_data data Input 32
add_interface_port Line_Out AD1939_DAC2_error error Input 2
add_interface_port Line_Out AD1939_DAC2_valid valid Input 1


# 
# connection point Headphone_Out
# 
add_interface Headphone_Out avalon_streaming end
set_interface_property Headphone_Out associatedClock sys_clk
set_interface_property Headphone_Out associatedReset sys_reset
set_interface_property Headphone_Out dataBitsPerSymbol 32
set_interface_property Headphone_Out errorDescriptor ""
set_interface_property Headphone_Out firstSymbolInHighOrderBits true
set_interface_property Headphone_Out maxChannel 0
set_interface_property Headphone_Out readyLatency 0
set_interface_property Headphone_Out ENABLED true
set_interface_property Headphone_Out EXPORT_OF ""
set_interface_property Headphone_Out PORT_NAME_MAP ""
set_interface_property Headphone_Out CMSIS_SVD_VARIABLES ""
set_interface_property Headphone_Out SVD_ADDRESS_GROUP ""

add_interface_port Headphone_Out AD1939_DAC1_channel channel Input 2
add_interface_port Headphone_Out AD1939_DAC1_data data Input 32
add_interface_port Headphone_Out AD1939_DAC1_error error Input 2
add_interface_port Headphone_Out AD1939_DAC1_valid valid Input 1


# 
# connection point sys_clk
# 
add_interface sys_clk clock end
set_interface_property sys_clk clockRate 0
set_interface_property sys_clk ENABLED true
set_interface_property sys_clk EXPORT_OF ""
set_interface_property sys_clk PORT_NAME_MAP ""
set_interface_property sys_clk CMSIS_SVD_VARIABLES ""
set_interface_property sys_clk SVD_ADDRESS_GROUP ""

add_interface_port sys_clk sys_clk clk Input 1


# 
# connection point sys_reset
# 
add_interface sys_reset reset end
set_interface_property sys_reset associatedClock sys_clk
set_interface_property sys_reset synchronousEdges DEASSERT
set_interface_property sys_reset ENABLED true
set_interface_property sys_reset EXPORT_OF ""
set_interface_property sys_reset PORT_NAME_MAP ""
set_interface_property sys_reset CMSIS_SVD_VARIABLES ""
set_interface_property sys_reset SVD_ADDRESS_GROUP ""

add_interface_port sys_reset sys_reset reset_n Input 1


# 
# connection point connect_to_AD1939
# 
add_interface connect_to_AD1939 conduit end
set_interface_property connect_to_AD1939 associatedClock sys_clk
set_interface_property connect_to_AD1939 associatedReset sys_reset
set_interface_property connect_to_AD1939 ENABLED true
set_interface_property connect_to_AD1939 EXPORT_OF ""
set_interface_property connect_to_AD1939 PORT_NAME_MAP ""
set_interface_property connect_to_AD1939 CMSIS_SVD_VARIABLES ""
set_interface_property connect_to_AD1939 SVD_ADDRESS_GROUP ""

add_interface_port connect_to_AD1939 AD1939_ADC_ASDATA1 ad1939_adc_asdata1 Input 1
add_interface_port connect_to_AD1939 AD1939_ADC_ASDATA2 ad1939_adc_asdata2 Input 1
add_interface_port connect_to_AD1939 AD1939_ADC_ABCLK ad1939_adc_abclk Input 1
add_interface_port connect_to_AD1939 AD1939_ADC_ALRCLK ad1939_adc_alrclk Input 1
add_interface_port connect_to_AD1939 AD1939_DAC_DSDATA1 ad1939_dac_dsdata1 Output 1
add_interface_port connect_to_AD1939 AD1939_DAC_DSDATA2 ad1939_dac_dsdata2 Output 1
add_interface_port connect_to_AD1939 AD1939_DAC_DBCLK ad1939_dac_dbclk Output 1
add_interface_port connect_to_AD1939 AD1939_DAC_DLRCLK ad1939_dac_dlrclk Output 1

