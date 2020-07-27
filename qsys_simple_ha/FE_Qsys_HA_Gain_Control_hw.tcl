# TCL File Generated by Component Editor 16.0
# Tue Jun 13 08:14:18 MDT 2017
# DO NOT MODIFY


# 
# FE_Qsys_HA_Gain_Control "FE_Qsys_HA_Gain_Control" v1.0
#  2017.06.13.08:14:18
# 
# 

# 
# request TCL package from ACDS 16.0
# 
package require -exact qsys 16.0


# 
# module FE_Qsys_HA_Gain_Control
# 
set_module_property DESCRIPTION ""
set_module_property NAME FE_Qsys_HA_Gain_Control
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME FE_Qsys_HA_Gain_Control
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false
set_module_property GROUP "FPGA Open Speech Tools"

# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL FE_Qsys_HA_Gain_Control
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file FE_Qsys_HA_Gain_Control.vhd VHDL PATH FE_Qsys_HA_Gain_Control.vhd TOP_LEVEL_FILE


# 
# parameters
# 


# 
# display items
# 


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock clk clk Input 1


# 
# connection point reset
# 
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset CMSIS_SVD_VARIABLES ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset reset_n reset_n Input 1


# 
# connection point s1
# 
add_interface s1 avalon end
set_interface_property s1 addressUnits WORDS
set_interface_property s1 associatedClock clock
set_interface_property s1 associatedReset reset
set_interface_property s1 bitsPerSymbol 8
set_interface_property s1 burstOnBurstBoundariesOnly false
set_interface_property s1 burstcountUnits WORDS
set_interface_property s1 explicitAddressSpan 0
set_interface_property s1 holdTime 0
set_interface_property s1 linewrapBursts false
set_interface_property s1 maximumPendingReadTransactions 0
set_interface_property s1 maximumPendingWriteTransactions 0
set_interface_property s1 readLatency 0
set_interface_property s1 readWaitTime 1
set_interface_property s1 setupTime 0
set_interface_property s1 timingUnits Cycles
set_interface_property s1 writeWaitTime 0
set_interface_property s1 ENABLED true
set_interface_property s1 EXPORT_OF ""
set_interface_property s1 PORT_NAME_MAP ""
set_interface_property s1 CMSIS_SVD_VARIABLES ""
set_interface_property s1 SVD_ADDRESS_GROUP ""

add_interface_port s1 avs_s1_address address Input 3
add_interface_port s1 avs_s1_write write Input 1
add_interface_port s1 avs_s1_writedata writedata Input 32
add_interface_port s1 avs_s1_read read Input 1
add_interface_port s1 avs_s1_readdata readdata Output 32
set_interface_assignment s1 embeddedsw.configuration.isFlash 0
set_interface_assignment s1 embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment s1 embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment s1 embeddedsw.configuration.isPrintableDevice 0


# 
# connection point gains
# 
add_interface gains conduit end
set_interface_property gains associatedClock clock
set_interface_property gains associatedReset ""
set_interface_property gains ENABLED true
set_interface_property gains EXPORT_OF ""
set_interface_property gains PORT_NAME_MAP ""
set_interface_property gains CMSIS_SVD_VARIABLES ""
set_interface_property gains SVD_ADDRESS_GROUP ""

add_interface_port gains band_1_gain band_1_gain Output 32
add_interface_port gains band_2_gain band_2_gain Output 32
add_interface_port gains band_3_gain band_3_gain Output 32
add_interface_port gains band_4_gain band_4_gain Output 32
add_interface_port gains band_5_gain band_5_gain Output 32

# +-----------------------------------
# | Device tree generation
# |
set_module_assignment embeddedsw.dts.vendor "fe"
set_module_assignment embeddedsw.dts.compatible "dev,fe-ha"
set_module_assignment embeddedsw.dts.group "ha"
# |
# +-----------------------------------