set_property -dict { PACKAGE_PIN R18   IOSTANDARD LVCMOS33 } [get_ports { led[0] }]; #IO_L7P_T1_D09_14 Sch=led[4]
set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports { led[1] }]; #IO_L18N_T2_A11_D27_14 Sch=led[5]
set_property -dict { PACKAGE_PIN U17   IOSTANDARD LVCMOS33 } [get_ports { led[2] }]; #IO_L17P_T2_A14_D30_14 Sch=led[6]
set_property -dict { PACKAGE_PIN U16   IOSTANDARD LVCMOS33 } [get_ports { led[3] }]; #IO_L18P_T2_A12_D28_14 Sch=led[7]

set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { in }]; #IO_L24N_T3_RS0_15 Sch=sw[0]

set_property -dict { PACKAGE_PIN V10   IOSTANDARD LVCMOS33 } [get_ports { clk }]; #IO_L21P_T3_DQS_14 Sch=sw[15]

set_property -dict { PACKAGE_PIN M18   IOSTANDARD LVCMOS33 } [get_ports { reset }]; #IO_L4N_T0_D05_14 Sch=btnu

set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { out }]; #IO_L18P_T2_A24_15 Sch=led[0]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets { in } ]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets { clk } ]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets { reset } ]
