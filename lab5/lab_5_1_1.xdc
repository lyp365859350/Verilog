set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { R }]; #IO_L24N_T3_RS0_15 Sch=sw[0]
set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { S }]; #IO_L3N_T0_DQS_EMCCLK_14 Sch=sw[1]

set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { Qbar }]; #IO_L18P_T2_A24_15 Sch=led[0]
set_property -dict { PACKAGE_PIN K15   IOSTANDARD LVCMOS33 } [get_ports { Q }]; #IO_L24P_T3_RS1_15 Sch=led[1]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets R]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets S]

#set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets R]
#set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets S]