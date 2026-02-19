v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -640 130 -640 150 {lab=GND}
N -640 40 -640 70 {lab=RWL}
N -580 130 -580 150 {lab=GND}
N -580 40 -580 70 {lab=BL}
N -450 130 -450 150 {lab=GND}
N -450 40 -450 70 {lab=BLB}
C {lab_pin.sym} -640 40 0 0 {name=p1 sig_type=std_logic lab=RWL}
C {lab_pin.sym} -580 40 0 0 {name=p2 sig_type=std_logic lab=BL}
C {lab_pin.sym} -450 40 0 0 {name=p3 sig_type=std_logic lab=BLB
}
C {vsource.sym} -640 100 0 0 {name=V2 value=1.8 savecurrent=false}
C {gnd.sym} -640 150 0 0 {name=l1 lab=GND}
C {vsource.sym} -580 100 0 0 {name=V3 value="PULSE(0 1.8 1ns 100ps 100ps 5ns 10ns 2)" savecurrent=false}
C {gnd.sym} -580 150 0 0 {name=l2 lab=GND}
C {vsource.sym} -450 100 0 0 {name=V5 value="PULSE(0 1.8 6ns 100ps 100ps 5ns 10ns 2)" savecurrent=false}
C {gnd.sym} -450 150 0 0 {name=l3 lab=GND}
C {code_shown.sym} -480 -260 0 0 {name=s2 only_toplevel=false value=
"
V_VCC VCC 0 DC 1.8
**vss vss 0 DC 0
V_WL WL 0 PULSE(0 1.8 2ns 100ps 100ps 3ns 5ns 4)


.tran 0.01ns 25ns
.control
run
plot BL+4 BLB+2 WL+6 RBL
.endc
.saveall

"}
C {code_shown.sym} -720 -370 0 0 {
name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false
      }
C {8T_sram_cell.sym} 570 80 0 1 {name=x1}
C {gnd.sym} 40 140 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 40 20 0 0 {name=p4 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 40 60 0 0 {name=p5 sig_type=std_logic lab=BLB0}
C {lab_pin.sym} 40 40 0 0 {name=p6 sig_type=std_logic lab=WL0}
C {lab_pin.sym} 40 80 0 0 {name=p7 sig_type=std_logic lab=BL0}
C {lab_pin.sym} 40 120 0 0 {name=p8 sig_type=std_logic lab=RWL0}
C {lab_pin.sym} 40 100 0 0 {name=p9 sig_type=std_logic lab=RBL0}
C {8T_sram_cell.sym} 570 350 0 1 {name=x2}
C {gnd.sym} 40 410 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 40 290 0 0 {name=p10 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 40 330 0 0 {name=p11 sig_type=std_logic lab=BLB0}
C {lab_pin.sym} 40 310 0 0 {name=p12 sig_type=std_logic lab=WL1}
C {lab_pin.sym} 40 350 0 0 {name=p13 sig_type=std_logic lab=BL0}
C {lab_pin.sym} 40 390 0 0 {name=p14 sig_type=std_logic lab=RWL1}
C {lab_pin.sym} 40 370 0 0 {name=p15 sig_type=std_logic lab=RBL1}
C {8T_sram_cell.sym} 570 620 0 1 {name=x3}
C {gnd.sym} 40 680 0 0 {name=l6 lab=GND}
C {lab_pin.sym} 40 560 0 0 {name=p16 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 40 600 0 0 {name=p17 sig_type=std_logic lab=BLB0}
C {lab_pin.sym} 40 580 0 0 {name=p18 sig_type=std_logic lab=WL2}
C {lab_pin.sym} 40 620 0 0 {name=p19 sig_type=std_logic lab=BL0}
C {lab_pin.sym} 40 660 0 0 {name=p20 sig_type=std_logic lab=RWL2}
C {lab_pin.sym} 40 640 0 0 {name=p21 sig_type=std_logic lab=RBL2}
C {8T_sram_cell.sym} 570 890 0 1 {name=x4}
C {gnd.sym} 40 950 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 40 830 0 0 {name=p22 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 40 870 0 0 {name=p23 sig_type=std_logic lab=BLB0}
C {lab_pin.sym} 40 850 0 0 {name=p24 sig_type=std_logic lab=WL3}
C {lab_pin.sym} 40 890 0 0 {name=p25 sig_type=std_logic lab=BL0}
C {lab_pin.sym} 40 930 0 0 {name=p26 sig_type=std_logic lab=RWL3}
C {lab_pin.sym} 40 910 0 0 {name=p27 sig_type=std_logic lab=RBL3}
C {8T_sram_cell.sym} 570 1160 0 1 {name=x5}
C {gnd.sym} 40 1220 0 0 {name=l8 lab=GND}
C {lab_pin.sym} 40 1100 0 0 {name=p28 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 40 1140 0 0 {name=p29 sig_type=std_logic lab=BLB0}
C {lab_pin.sym} 40 1120 0 0 {name=p30 sig_type=std_logic lab=WL4}
C {lab_pin.sym} 40 1160 0 0 {name=p31 sig_type=std_logic lab=BL0}
C {lab_pin.sym} 40 1200 0 0 {name=p32 sig_type=std_logic lab=RWL4}
C {lab_pin.sym} 40 1180 0 0 {name=p33 sig_type=std_logic lab=RBL4}
C {8T_sram_cell.sym} 570 1430 0 1 {name=x6}
C {gnd.sym} 40 1490 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 40 1370 0 0 {name=p34 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 40 1410 0 0 {name=p35 sig_type=std_logic lab=BLB0}
C {lab_pin.sym} 40 1390 0 0 {name=p36 sig_type=std_logic lab=WL5}
C {lab_pin.sym} 40 1430 0 0 {name=p37 sig_type=std_logic lab=BL0}
C {lab_pin.sym} 40 1470 0 0 {name=p38 sig_type=std_logic lab=RWL5}
C {lab_pin.sym} 40 1450 0 0 {name=p39 sig_type=std_logic lab=RBL5}
C {8T_sram_cell.sym} 570 1700 0 1 {name=x7}
C {gnd.sym} 40 1760 0 0 {name=l10 lab=GND}
C {lab_pin.sym} 40 1640 0 0 {name=p40 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 40 1680 0 0 {name=p41 sig_type=std_logic lab=BLB0}
C {lab_pin.sym} 40 1660 0 0 {name=p42 sig_type=std_logic lab=WL6}
C {lab_pin.sym} 40 1700 0 0 {name=p43 sig_type=std_logic lab=BL0}
C {lab_pin.sym} 40 1740 0 0 {name=p44 sig_type=std_logic lab=RWL6}
C {lab_pin.sym} 40 1720 0 0 {name=p45 sig_type=std_logic lab=RBL6}
C {8T_sram_cell.sym} 570 1970 0 1 {name=x8}
C {gnd.sym} 40 2030 0 0 {name=l11 lab=GND}
C {lab_pin.sym} 40 1910 0 0 {name=p46 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 40 1950 0 0 {name=p47 sig_type=std_logic lab=BLB0}
C {lab_pin.sym} 40 1930 0 0 {name=p48 sig_type=std_logic lab=WL7}
C {lab_pin.sym} 40 1970 0 0 {name=p49 sig_type=std_logic lab=BL0}
C {lab_pin.sym} 40 2010 0 0 {name=p50 sig_type=std_logic lab=RWL7}
C {lab_pin.sym} 40 1990 0 0 {name=p51 sig_type=std_logic lab=RBL7}
C {8T_sram_cell.sym} 1020 80 0 1 {name=x9}
C {gnd.sym} 490 140 0 0 {name=l12 lab=GND}
C {lab_pin.sym} 490 20 0 0 {name=p52 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 490 60 0 0 {name=p53 sig_type=std_logic lab=BLB1}
C {lab_pin.sym} 490 40 0 0 {name=p54 sig_type=std_logic lab=WL0}
C {lab_pin.sym} 490 80 0 0 {name=p55 sig_type=std_logic lab=BL1}
C {lab_pin.sym} 490 120 0 0 {name=p56 sig_type=std_logic lab=RWL0}
C {lab_pin.sym} 490 100 0 0 {name=p57 sig_type=std_logic lab=RBL0}
C {8T_sram_cell.sym} 1020 350 0 1 {name=x10}
C {gnd.sym} 490 410 0 0 {name=l13 lab=GND}
C {lab_pin.sym} 490 290 0 0 {name=p58 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 490 330 0 0 {name=p59 sig_type=std_logic lab=BLB1}
C {lab_pin.sym} 490 310 0 0 {name=p60 sig_type=std_logic lab=WL1}
C {lab_pin.sym} 490 350 0 0 {name=p61 sig_type=std_logic lab=BL1}
C {lab_pin.sym} 490 390 0 0 {name=p62 sig_type=std_logic lab=RWL1}
C {lab_pin.sym} 490 370 0 0 {name=p63 sig_type=std_logic lab=RBL1}
C {8T_sram_cell.sym} 1020 620 0 1 {name=x11}
C {gnd.sym} 490 680 0 0 {name=l14 lab=GND}
C {lab_pin.sym} 490 560 0 0 {name=p64 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 490 600 0 0 {name=p65 sig_type=std_logic lab=BLB1}
C {lab_pin.sym} 490 580 0 0 {name=p66 sig_type=std_logic lab=WL2}
C {lab_pin.sym} 490 620 0 0 {name=p67 sig_type=std_logic lab=BL1}
C {lab_pin.sym} 490 660 0 0 {name=p68 sig_type=std_logic lab=RWL2}
C {lab_pin.sym} 490 640 0 0 {name=p69 sig_type=std_logic lab=RBL2}
C {8T_sram_cell.sym} 1020 890 0 1 {name=x12}
C {gnd.sym} 490 950 0 0 {name=l15 lab=GND}
C {lab_pin.sym} 490 830 0 0 {name=p70 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 490 870 0 0 {name=p71 sig_type=std_logic lab=BLB1}
C {lab_pin.sym} 490 850 0 0 {name=p72 sig_type=std_logic lab=WL3}
C {lab_pin.sym} 490 890 0 0 {name=p73 sig_type=std_logic lab=BL1}
C {lab_pin.sym} 490 930 0 0 {name=p74 sig_type=std_logic lab=RWL3}
C {lab_pin.sym} 490 910 0 0 {name=p75 sig_type=std_logic lab=RBL3}
C {8T_sram_cell.sym} 1020 1160 0 1 {name=x13}
C {gnd.sym} 490 1220 0 0 {name=l16 lab=GND}
C {lab_pin.sym} 490 1100 0 0 {name=p76 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 490 1140 0 0 {name=p77 sig_type=std_logic lab=BLB1}
C {lab_pin.sym} 490 1120 0 0 {name=p78 sig_type=std_logic lab=WL4}
C {lab_pin.sym} 490 1160 0 0 {name=p79 sig_type=std_logic lab=BL1}
C {lab_pin.sym} 490 1200 0 0 {name=p80 sig_type=std_logic lab=RWL4}
C {lab_pin.sym} 490 1180 0 0 {name=p81 sig_type=std_logic lab=RBL4}
C {8T_sram_cell.sym} 1020 1430 0 1 {name=x14}
C {gnd.sym} 490 1490 0 0 {name=l17 lab=GND}
C {lab_pin.sym} 490 1370 0 0 {name=p82 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 490 1410 0 0 {name=p83 sig_type=std_logic lab=BLB1}
C {lab_pin.sym} 490 1390 0 0 {name=p84 sig_type=std_logic lab=WL5}
C {lab_pin.sym} 490 1430 0 0 {name=p85 sig_type=std_logic lab=BL1}
C {lab_pin.sym} 490 1470 0 0 {name=p86 sig_type=std_logic lab=RWL5}
C {lab_pin.sym} 490 1450 0 0 {name=p87 sig_type=std_logic lab=RBL5}
C {8T_sram_cell.sym} 1020 1700 0 1 {name=x15}
C {gnd.sym} 490 1760 0 0 {name=l18 lab=GND}
C {lab_pin.sym} 490 1640 0 0 {name=p88 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 490 1680 0 0 {name=p89 sig_type=std_logic lab=BLB1}
C {lab_pin.sym} 490 1660 0 0 {name=p90 sig_type=std_logic lab=WL6}
C {lab_pin.sym} 490 1700 0 0 {name=p91 sig_type=std_logic lab=BL1}
C {lab_pin.sym} 490 1740 0 0 {name=p92 sig_type=std_logic lab=RWL6}
C {lab_pin.sym} 490 1720 0 0 {name=p93 sig_type=std_logic lab=RBL6}
C {8T_sram_cell.sym} 1020 1970 0 1 {name=x16}
C {gnd.sym} 490 2030 0 0 {name=l19 lab=GND}
C {lab_pin.sym} 490 1910 0 0 {name=p94 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 490 1950 0 0 {name=p95 sig_type=std_logic lab=BLB1}
C {lab_pin.sym} 490 1930 0 0 {name=p96 sig_type=std_logic lab=WL7}
C {lab_pin.sym} 490 1970 0 0 {name=p97 sig_type=std_logic lab=BL1}
C {lab_pin.sym} 490 2010 0 0 {name=p98 sig_type=std_logic lab=RWL7}
C {lab_pin.sym} 490 1990 0 0 {name=p99 sig_type=std_logic lab=RBL7}
C {8T_sram_cell.sym} 1470 80 0 1 {name=x17}
C {gnd.sym} 940 140 0 0 {name=l20 lab=GND}
C {lab_pin.sym} 940 20 0 0 {name=p100 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 940 60 0 0 {name=p101 sig_type=std_logic lab=BLB2}
C {lab_pin.sym} 940 40 0 0 {name=p102 sig_type=std_logic lab=WL0}
C {lab_pin.sym} 940 80 0 0 {name=p103 sig_type=std_logic lab=BL2}
C {lab_pin.sym} 940 120 0 0 {name=p104 sig_type=std_logic lab=RWL0}
C {lab_pin.sym} 940 100 0 0 {name=p105 sig_type=std_logic lab=RBL0}
C {8T_sram_cell.sym} 1470 350 0 1 {name=x18}
C {gnd.sym} 940 410 0 0 {name=l21 lab=GND}
C {lab_pin.sym} 940 290 0 0 {name=p106 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 940 330 0 0 {name=p107 sig_type=std_logic lab=BLB2}
C {lab_pin.sym} 940 310 0 0 {name=p108 sig_type=std_logic lab=WL1}
C {lab_pin.sym} 940 350 0 0 {name=p109 sig_type=std_logic lab=BL2}
C {lab_pin.sym} 940 390 0 0 {name=p110 sig_type=std_logic lab=RWL1}
C {lab_pin.sym} 940 370 0 0 {name=p111 sig_type=std_logic lab=RBL1}
C {8T_sram_cell.sym} 1470 620 0 1 {name=x19}
C {gnd.sym} 940 680 0 0 {name=l22 lab=GND}
C {lab_pin.sym} 940 560 0 0 {name=p112 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 940 600 0 0 {name=p113 sig_type=std_logic lab=BLB2}
C {lab_pin.sym} 940 580 0 0 {name=p114 sig_type=std_logic lab=WL2}
C {lab_pin.sym} 940 620 0 0 {name=p115 sig_type=std_logic lab=BL2}
C {lab_pin.sym} 940 660 0 0 {name=p116 sig_type=std_logic lab=RWL2}
C {lab_pin.sym} 940 640 0 0 {name=p117 sig_type=std_logic lab=RBL2}
C {8T_sram_cell.sym} 1470 890 0 1 {name=x20}
C {gnd.sym} 940 950 0 0 {name=l23 lab=GND}
C {lab_pin.sym} 940 830 0 0 {name=p118 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 940 870 0 0 {name=p119 sig_type=std_logic lab=BLB2}
C {lab_pin.sym} 940 850 0 0 {name=p120 sig_type=std_logic lab=WL3}
C {lab_pin.sym} 940 890 0 0 {name=p121 sig_type=std_logic lab=BL2}
C {lab_pin.sym} 940 930 0 0 {name=p122 sig_type=std_logic lab=RWL3}
C {lab_pin.sym} 940 910 0 0 {name=p123 sig_type=std_logic lab=RBL3}
C {8T_sram_cell.sym} 1470 1160 0 1 {name=x21}
C {gnd.sym} 940 1220 0 0 {name=l24 lab=GND}
C {lab_pin.sym} 940 1100 0 0 {name=p124 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 940 1140 0 0 {name=p125 sig_type=std_logic lab=BLB2}
C {lab_pin.sym} 940 1120 0 0 {name=p126 sig_type=std_logic lab=WL4}
C {lab_pin.sym} 940 1160 0 0 {name=p127 sig_type=std_logic lab=BL2}
C {lab_pin.sym} 940 1200 0 0 {name=p128 sig_type=std_logic lab=RWL4}
C {lab_pin.sym} 940 1180 0 0 {name=p129 sig_type=std_logic lab=RBL4}
C {8T_sram_cell.sym} 1470 1430 0 1 {name=x22}
C {gnd.sym} 940 1490 0 0 {name=l25 lab=GND}
C {lab_pin.sym} 940 1370 0 0 {name=p130 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 940 1410 0 0 {name=p131 sig_type=std_logic lab=BLB2}
C {lab_pin.sym} 940 1390 0 0 {name=p132 sig_type=std_logic lab=WL5}
C {lab_pin.sym} 940 1430 0 0 {name=p133 sig_type=std_logic lab=BL2}
C {lab_pin.sym} 940 1470 0 0 {name=p134 sig_type=std_logic lab=RWL5}
C {lab_pin.sym} 940 1450 0 0 {name=p135 sig_type=std_logic lab=RBL5}
C {8T_sram_cell.sym} 1470 1700 0 1 {name=x23}
C {gnd.sym} 940 1760 0 0 {name=l26 lab=GND}
C {lab_pin.sym} 940 1640 0 0 {name=p136 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 940 1680 0 0 {name=p137 sig_type=std_logic lab=BLB2}
C {lab_pin.sym} 940 1660 0 0 {name=p138 sig_type=std_logic lab=WL6}
C {lab_pin.sym} 940 1700 0 0 {name=p139 sig_type=std_logic lab=BL2}
C {lab_pin.sym} 940 1740 0 0 {name=p140 sig_type=std_logic lab=RWL6}
C {lab_pin.sym} 940 1720 0 0 {name=p141 sig_type=std_logic lab=RBL6}
C {8T_sram_cell.sym} 1470 1970 0 1 {name=x24}
C {gnd.sym} 940 2030 0 0 {name=l27 lab=GND}
C {lab_pin.sym} 940 1910 0 0 {name=p142 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 940 1950 0 0 {name=p143 sig_type=std_logic lab=BLB2}
C {lab_pin.sym} 940 1930 0 0 {name=p144 sig_type=std_logic lab=WL7}
C {lab_pin.sym} 940 1970 0 0 {name=p145 sig_type=std_logic lab=BL2}
C {lab_pin.sym} 940 2010 0 0 {name=p146 sig_type=std_logic lab=RWL7}
C {lab_pin.sym} 940 1990 0 0 {name=p147 sig_type=std_logic lab=RBL7}
C {8T_sram_cell.sym} 1920 80 0 1 {name=x25}
C {gnd.sym} 1390 140 0 0 {name=l28 lab=GND}
C {lab_pin.sym} 1390 20 0 0 {name=p148 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1390 60 0 0 {name=p149 sig_type=std_logic lab=BLB3}
C {lab_pin.sym} 1390 40 0 0 {name=p150 sig_type=std_logic lab=WL0}
C {lab_pin.sym} 1390 80 0 0 {name=p151 sig_type=std_logic lab=BL3}
C {lab_pin.sym} 1390 120 0 0 {name=p152 sig_type=std_logic lab=RWL0}
C {lab_pin.sym} 1390 100 0 0 {name=p153 sig_type=std_logic lab=RBL0}
C {8T_sram_cell.sym} 1920 350 0 1 {name=x26}
C {gnd.sym} 1390 410 0 0 {name=l29 lab=GND}
C {lab_pin.sym} 1390 290 0 0 {name=p154 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1390 330 0 0 {name=p155 sig_type=std_logic lab=BLB3}
C {lab_pin.sym} 1390 310 0 0 {name=p156 sig_type=std_logic lab=WL1}
C {lab_pin.sym} 1390 350 0 0 {name=p157 sig_type=std_logic lab=BL3}
C {lab_pin.sym} 1390 390 0 0 {name=p158 sig_type=std_logic lab=RWL1}
C {lab_pin.sym} 1390 370 0 0 {name=p159 sig_type=std_logic lab=RBL1}
C {8T_sram_cell.sym} 1920 620 0 1 {name=x27}
C {gnd.sym} 1390 680 0 0 {name=l30 lab=GND}
C {lab_pin.sym} 1390 560 0 0 {name=p160 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1390 600 0 0 {name=p161 sig_type=std_logic lab=BLB3}
C {lab_pin.sym} 1390 580 0 0 {name=p162 sig_type=std_logic lab=WL2}
C {lab_pin.sym} 1390 620 0 0 {name=p163 sig_type=std_logic lab=BL3}
C {lab_pin.sym} 1390 660 0 0 {name=p164 sig_type=std_logic lab=RWL2}
C {lab_pin.sym} 1390 640 0 0 {name=p165 sig_type=std_logic lab=RBL2}
C {8T_sram_cell.sym} 1920 890 0 1 {name=x28}
C {gnd.sym} 1390 950 0 0 {name=l31 lab=GND}
C {lab_pin.sym} 1390 830 0 0 {name=p166 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1390 870 0 0 {name=p167 sig_type=std_logic lab=BLB3}
C {lab_pin.sym} 1390 850 0 0 {name=p168 sig_type=std_logic lab=WL3}
C {lab_pin.sym} 1390 890 0 0 {name=p169 sig_type=std_logic lab=BL3}
C {lab_pin.sym} 1390 930 0 0 {name=p170 sig_type=std_logic lab=RWL3}
C {lab_pin.sym} 1390 910 0 0 {name=p171 sig_type=std_logic lab=RBL3}
C {8T_sram_cell.sym} 1920 1160 0 1 {name=x29}
C {gnd.sym} 1390 1220 0 0 {name=l32 lab=GND}
C {lab_pin.sym} 1390 1100 0 0 {name=p172 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1390 1140 0 0 {name=p173 sig_type=std_logic lab=BLB3}
C {lab_pin.sym} 1390 1120 0 0 {name=p174 sig_type=std_logic lab=WL4}
C {lab_pin.sym} 1390 1160 0 0 {name=p175 sig_type=std_logic lab=BL3}
C {lab_pin.sym} 1390 1200 0 0 {name=p176 sig_type=std_logic lab=RWL4}
C {lab_pin.sym} 1390 1180 0 0 {name=p177 sig_type=std_logic lab=RBL4}
C {8T_sram_cell.sym} 1920 1430 0 1 {name=x30}
C {gnd.sym} 1390 1490 0 0 {name=l33 lab=GND}
C {lab_pin.sym} 1390 1370 0 0 {name=p178 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1390 1410 0 0 {name=p179 sig_type=std_logic lab=BLB3}
C {lab_pin.sym} 1390 1390 0 0 {name=p180 sig_type=std_logic lab=WL5}
C {lab_pin.sym} 1390 1430 0 0 {name=p181 sig_type=std_logic lab=BL3}
C {lab_pin.sym} 1390 1470 0 0 {name=p182 sig_type=std_logic lab=RWL5}
C {lab_pin.sym} 1390 1450 0 0 {name=p183 sig_type=std_logic lab=RBL5}
C {8T_sram_cell.sym} 1920 1700 0 1 {name=x31}
C {gnd.sym} 1390 1760 0 0 {name=l34 lab=GND}
C {lab_pin.sym} 1390 1640 0 0 {name=p184 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1390 1680 0 0 {name=p185 sig_type=std_logic lab=BLB3}
C {lab_pin.sym} 1390 1660 0 0 {name=p186 sig_type=std_logic lab=WL6}
C {lab_pin.sym} 1390 1700 0 0 {name=p187 sig_type=std_logic lab=BL3}
C {lab_pin.sym} 1390 1740 0 0 {name=p188 sig_type=std_logic lab=RWL6}
C {lab_pin.sym} 1390 1720 0 0 {name=p189 sig_type=std_logic lab=RBL6}
C {8T_sram_cell.sym} 1920 1970 0 1 {name=x32}
C {gnd.sym} 1390 2030 0 0 {name=l35 lab=GND}
C {lab_pin.sym} 1390 1910 0 0 {name=p190 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1390 1950 0 0 {name=p191 sig_type=std_logic lab=BLB3}
C {lab_pin.sym} 1390 1930 0 0 {name=p192 sig_type=std_logic lab=WL7}
C {lab_pin.sym} 1390 1970 0 0 {name=p193 sig_type=std_logic lab=BL3}
C {lab_pin.sym} 1390 2010 0 0 {name=p194 sig_type=std_logic lab=RWL7}
C {lab_pin.sym} 1390 1990 0 0 {name=p195 sig_type=std_logic lab=RBL7}
C {8T_sram_cell.sym} 2370 80 0 1 {name=x33}
C {gnd.sym} 1840 140 0 0 {name=l36 lab=GND}
C {lab_pin.sym} 1840 20 0 0 {name=p196 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1840 60 0 0 {name=p197 sig_type=std_logic lab=BLB4}
C {lab_pin.sym} 1840 40 0 0 {name=p198 sig_type=std_logic lab=WL0}
C {lab_pin.sym} 1840 80 0 0 {name=p199 sig_type=std_logic lab=BL4}
C {lab_pin.sym} 1840 120 0 0 {name=p200 sig_type=std_logic lab=RWL0}
C {lab_pin.sym} 1840 100 0 0 {name=p201 sig_type=std_logic lab=RBL0}
C {8T_sram_cell.sym} 2370 350 0 1 {name=x34}
C {gnd.sym} 1840 410 0 0 {name=l37 lab=GND}
C {lab_pin.sym} 1840 290 0 0 {name=p202 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1840 330 0 0 {name=p203 sig_type=std_logic lab=BLB4}
C {lab_pin.sym} 1840 310 0 0 {name=p204 sig_type=std_logic lab=WL1}
C {lab_pin.sym} 1840 350 0 0 {name=p205 sig_type=std_logic lab=BL4}
C {lab_pin.sym} 1840 390 0 0 {name=p206 sig_type=std_logic lab=RWL1}
C {lab_pin.sym} 1840 370 0 0 {name=p207 sig_type=std_logic lab=RBL1}
C {8T_sram_cell.sym} 2370 620 0 1 {name=x35}
C {gnd.sym} 1840 680 0 0 {name=l38 lab=GND}
C {lab_pin.sym} 1840 560 0 0 {name=p208 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1840 600 0 0 {name=p209 sig_type=std_logic lab=BLB4}
C {lab_pin.sym} 1840 580 0 0 {name=p210 sig_type=std_logic lab=WL2}
C {lab_pin.sym} 1840 620 0 0 {name=p211 sig_type=std_logic lab=BL4}
C {lab_pin.sym} 1840 660 0 0 {name=p212 sig_type=std_logic lab=RWL2}
C {lab_pin.sym} 1840 640 0 0 {name=p213 sig_type=std_logic lab=RBL2}
C {8T_sram_cell.sym} 2370 890 0 1 {name=x36}
C {gnd.sym} 1840 950 0 0 {name=l39 lab=GND}
C {lab_pin.sym} 1840 830 0 0 {name=p214 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1840 870 0 0 {name=p215 sig_type=std_logic lab=BLB4}
C {lab_pin.sym} 1840 850 0 0 {name=p216 sig_type=std_logic lab=WL3}
C {lab_pin.sym} 1840 890 0 0 {name=p217 sig_type=std_logic lab=BL4}
C {lab_pin.sym} 1840 930 0 0 {name=p218 sig_type=std_logic lab=RWL3}
C {lab_pin.sym} 1840 910 0 0 {name=p219 sig_type=std_logic lab=RBL3}
C {8T_sram_cell.sym} 2370 1160 0 1 {name=x37}
C {gnd.sym} 1840 1220 0 0 {name=l40 lab=GND}
C {lab_pin.sym} 1840 1100 0 0 {name=p220 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1840 1140 0 0 {name=p221 sig_type=std_logic lab=BLB4}
C {lab_pin.sym} 1840 1120 0 0 {name=p222 sig_type=std_logic lab=WL4}
C {lab_pin.sym} 1840 1160 0 0 {name=p223 sig_type=std_logic lab=BL4}
C {lab_pin.sym} 1840 1200 0 0 {name=p224 sig_type=std_logic lab=RWL4}
C {lab_pin.sym} 1840 1180 0 0 {name=p225 sig_type=std_logic lab=RBL4}
C {8T_sram_cell.sym} 2370 1430 0 1 {name=x38}
C {gnd.sym} 1840 1490 0 0 {name=l41 lab=GND}
C {lab_pin.sym} 1840 1370 0 0 {name=p226 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1840 1410 0 0 {name=p227 sig_type=std_logic lab=BLB4}
C {lab_pin.sym} 1840 1390 0 0 {name=p228 sig_type=std_logic lab=WL5}
C {lab_pin.sym} 1840 1430 0 0 {name=p229 sig_type=std_logic lab=BL4}
C {lab_pin.sym} 1840 1470 0 0 {name=p230 sig_type=std_logic lab=RWL5}
C {lab_pin.sym} 1840 1450 0 0 {name=p231 sig_type=std_logic lab=RBL5}
C {8T_sram_cell.sym} 2370 1700 0 1 {name=x39}
C {gnd.sym} 1840 1760 0 0 {name=l42 lab=GND}
C {lab_pin.sym} 1840 1640 0 0 {name=p232 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1840 1680 0 0 {name=p233 sig_type=std_logic lab=BLB4}
C {lab_pin.sym} 1840 1660 0 0 {name=p234 sig_type=std_logic lab=WL6}
C {lab_pin.sym} 1840 1700 0 0 {name=p235 sig_type=std_logic lab=BL4}
C {lab_pin.sym} 1840 1740 0 0 {name=p236 sig_type=std_logic lab=RWL6}
C {lab_pin.sym} 1840 1720 0 0 {name=p237 sig_type=std_logic lab=RBL6}
C {8T_sram_cell.sym} 2370 1970 0 1 {name=x40}
C {gnd.sym} 1840 2030 0 0 {name=l43 lab=GND}
C {lab_pin.sym} 1840 1910 0 0 {name=p238 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1840 1950 0 0 {name=p239 sig_type=std_logic lab=BLB4}
C {lab_pin.sym} 1840 1930 0 0 {name=p240 sig_type=std_logic lab=WL7}
C {lab_pin.sym} 1840 1970 0 0 {name=p241 sig_type=std_logic lab=BL4}
C {lab_pin.sym} 1840 2010 0 0 {name=p242 sig_type=std_logic lab=RWL7}
C {lab_pin.sym} 1840 1990 0 0 {name=p243 sig_type=std_logic lab=RBL7}
C {8T_sram_cell.sym} 2820 80 0 1 {name=x41}
C {gnd.sym} 2290 140 0 0 {name=l44 lab=GND}
C {lab_pin.sym} 2290 20 0 0 {name=p244 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 2290 60 0 0 {name=p245 sig_type=std_logic lab=BLB5}
C {lab_pin.sym} 2290 40 0 0 {name=p246 sig_type=std_logic lab=WL0}
C {lab_pin.sym} 2290 80 0 0 {name=p247 sig_type=std_logic lab=BL5}
C {lab_pin.sym} 2290 120 0 0 {name=p248 sig_type=std_logic lab=RWL0}
C {lab_pin.sym} 2290 100 0 0 {name=p249 sig_type=std_logic lab=RBL0}
C {8T_sram_cell.sym} 2820 350 0 1 {name=x42}
C {gnd.sym} 2290 410 0 0 {name=l45 lab=GND}
C {lab_pin.sym} 2290 290 0 0 {name=p250 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 2290 330 0 0 {name=p251 sig_type=std_logic lab=BLB5}
C {lab_pin.sym} 2290 310 0 0 {name=p252 sig_type=std_logic lab=WL1}
C {lab_pin.sym} 2290 350 0 0 {name=p253 sig_type=std_logic lab=BL5}
C {lab_pin.sym} 2290 390 0 0 {name=p254 sig_type=std_logic lab=RWL1}
C {lab_pin.sym} 2290 370 0 0 {name=p255 sig_type=std_logic lab=RBL1}
C {8T_sram_cell.sym} 2820 620 0 1 {name=x43}
C {gnd.sym} 2290 680 0 0 {name=l46 lab=GND}
C {lab_pin.sym} 2290 560 0 0 {name=p256 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 2290 600 0 0 {name=p257 sig_type=std_logic lab=BLB5}
C {lab_pin.sym} 2290 580 0 0 {name=p258 sig_type=std_logic lab=WL2}
C {lab_pin.sym} 2290 620 0 0 {name=p259 sig_type=std_logic lab=BL5}
C {lab_pin.sym} 2290 660 0 0 {name=p260 sig_type=std_logic lab=RWL2}
C {lab_pin.sym} 2290 640 0 0 {name=p261 sig_type=std_logic lab=RBL2}
C {8T_sram_cell.sym} 2820 890 0 1 {name=x44}
C {gnd.sym} 2290 950 0 0 {name=l47 lab=GND}
C {lab_pin.sym} 2290 830 0 0 {name=p262 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 2290 870 0 0 {name=p263 sig_type=std_logic lab=BLB5}
C {lab_pin.sym} 2290 850 0 0 {name=p264 sig_type=std_logic lab=WL3}
C {lab_pin.sym} 2290 890 0 0 {name=p265 sig_type=std_logic lab=BL5}
C {lab_pin.sym} 2290 930 0 0 {name=p266 sig_type=std_logic lab=RWL3}
C {lab_pin.sym} 2290 910 0 0 {name=p267 sig_type=std_logic lab=RBL3}
C {8T_sram_cell.sym} 2820 1160 0 1 {name=x45}
C {gnd.sym} 2290 1220 0 0 {name=l48 lab=GND}
C {lab_pin.sym} 2290 1100 0 0 {name=p268 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 2290 1140 0 0 {name=p269 sig_type=std_logic lab=BLB5}
C {lab_pin.sym} 2290 1120 0 0 {name=p270 sig_type=std_logic lab=WL4}
C {lab_pin.sym} 2290 1160 0 0 {name=p271 sig_type=std_logic lab=BL5}
C {lab_pin.sym} 2290 1200 0 0 {name=p272 sig_type=std_logic lab=RWL4}
C {lab_pin.sym} 2290 1180 0 0 {name=p273 sig_type=std_logic lab=RBL4}
C {8T_sram_cell.sym} 2820 1430 0 1 {name=x46}
C {gnd.sym} 2290 1490 0 0 {name=l49 lab=GND}
C {lab_pin.sym} 2290 1370 0 0 {name=p274 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 2290 1410 0 0 {name=p275 sig_type=std_logic lab=BLB5}
C {lab_pin.sym} 2290 1390 0 0 {name=p276 sig_type=std_logic lab=WL5}
C {lab_pin.sym} 2290 1430 0 0 {name=p277 sig_type=std_logic lab=BL5}
C {lab_pin.sym} 2290 1470 0 0 {name=p278 sig_type=std_logic lab=RWL5}
C {lab_pin.sym} 2290 1450 0 0 {name=p279 sig_type=std_logic lab=RBL5}
C {8T_sram_cell.sym} 2820 1700 0 1 {name=x47}
C {gnd.sym} 2290 1760 0 0 {name=l50 lab=GND}
C {lab_pin.sym} 2290 1640 0 0 {name=p280 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 2290 1680 0 0 {name=p281 sig_type=std_logic lab=BLB5}
C {lab_pin.sym} 2290 1660 0 0 {name=p282 sig_type=std_logic lab=WL6}
C {lab_pin.sym} 2290 1700 0 0 {name=p283 sig_type=std_logic lab=BL5}
C {lab_pin.sym} 2290 1740 0 0 {name=p284 sig_type=std_logic lab=RWL6}
C {lab_pin.sym} 2290 1720 0 0 {name=p285 sig_type=std_logic lab=RBL6}
C {8T_sram_cell.sym} 2820 1970 0 1 {name=x48}
C {gnd.sym} 2290 2030 0 0 {name=l51 lab=GND}
C {lab_pin.sym} 2290 1910 0 0 {name=p286 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 2290 1950 0 0 {name=p287 sig_type=std_logic lab=BLB5}
C {lab_pin.sym} 2290 1930 0 0 {name=p288 sig_type=std_logic lab=WL7}
C {lab_pin.sym} 2290 1970 0 0 {name=p289 sig_type=std_logic lab=BL5}
C {lab_pin.sym} 2290 2010 0 0 {name=p290 sig_type=std_logic lab=RWL7}
C {lab_pin.sym} 2290 1990 0 0 {name=p291 sig_type=std_logic lab=RBL7}
C {8T_sram_cell.sym} 3270 80 0 1 {name=x49}
C {gnd.sym} 2740 140 0 0 {name=l52 lab=GND}
C {lab_pin.sym} 2740 20 0 0 {name=p292 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 2740 60 0 0 {name=p293 sig_type=std_logic lab=BLB6}
C {lab_pin.sym} 2740 40 0 0 {name=p294 sig_type=std_logic lab=WL0}
C {lab_pin.sym} 2740 80 0 0 {name=p295 sig_type=std_logic lab=BL6}
C {lab_pin.sym} 2740 120 0 0 {name=p296 sig_type=std_logic lab=RWL0}
C {lab_pin.sym} 2740 100 0 0 {name=p297 sig_type=std_logic lab=RBL0}
C {8T_sram_cell.sym} 3270 350 0 1 {name=x50}
C {gnd.sym} 2740 410 0 0 {name=l53 lab=GND}
C {lab_pin.sym} 2740 290 0 0 {name=p298 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 2740 330 0 0 {name=p299 sig_type=std_logic lab=BLB6}
C {lab_pin.sym} 2740 310 0 0 {name=p300 sig_type=std_logic lab=WL1}
C {lab_pin.sym} 2740 350 0 0 {name=p301 sig_type=std_logic lab=BL6}
C {lab_pin.sym} 2740 390 0 0 {name=p302 sig_type=std_logic lab=RWL1}
C {lab_pin.sym} 2740 370 0 0 {name=p303 sig_type=std_logic lab=RBL1}
C {8T_sram_cell.sym} 3270 620 0 1 {name=x51}
C {gnd.sym} 2740 680 0 0 {name=l54 lab=GND}
C {lab_pin.sym} 2740 560 0 0 {name=p304 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 2740 600 0 0 {name=p305 sig_type=std_logic lab=BLB6}
C {lab_pin.sym} 2740 580 0 0 {name=p306 sig_type=std_logic lab=WL2}
C {lab_pin.sym} 2740 620 0 0 {name=p307 sig_type=std_logic lab=BL6}
C {lab_pin.sym} 2740 660 0 0 {name=p308 sig_type=std_logic lab=RWL2}
C {lab_pin.sym} 2740 640 0 0 {name=p309 sig_type=std_logic lab=RBL2}
C {8T_sram_cell.sym} 3270 890 0 1 {name=x52}
C {gnd.sym} 2740 950 0 0 {name=l55 lab=GND}
C {lab_pin.sym} 2740 830 0 0 {name=p310 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 2740 870 0 0 {name=p311 sig_type=std_logic lab=BLB6}
C {lab_pin.sym} 2740 850 0 0 {name=p312 sig_type=std_logic lab=WL3}
C {lab_pin.sym} 2740 890 0 0 {name=p313 sig_type=std_logic lab=BL6}
C {lab_pin.sym} 2740 930 0 0 {name=p314 sig_type=std_logic lab=RWL3}
C {lab_pin.sym} 2740 910 0 0 {name=p315 sig_type=std_logic lab=RBL3}
C {8T_sram_cell.sym} 3270 1160 0 1 {name=x53}
C {gnd.sym} 2740 1220 0 0 {name=l56 lab=GND}
C {lab_pin.sym} 2740 1100 0 0 {name=p316 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 2740 1140 0 0 {name=p317 sig_type=std_logic lab=BLB6}
C {lab_pin.sym} 2740 1120 0 0 {name=p318 sig_type=std_logic lab=WL4}
C {lab_pin.sym} 2740 1160 0 0 {name=p319 sig_type=std_logic lab=BL6}
C {lab_pin.sym} 2740 1200 0 0 {name=p320 sig_type=std_logic lab=RWL4}
C {lab_pin.sym} 2740 1180 0 0 {name=p321 sig_type=std_logic lab=RBL4}
C {8T_sram_cell.sym} 3270 1430 0 1 {name=x54}
C {gnd.sym} 2740 1490 0 0 {name=l57 lab=GND}
C {lab_pin.sym} 2740 1370 0 0 {name=p322 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 2740 1410 0 0 {name=p323 sig_type=std_logic lab=BLB6}
C {lab_pin.sym} 2740 1390 0 0 {name=p324 sig_type=std_logic lab=WL5}
C {lab_pin.sym} 2740 1430 0 0 {name=p325 sig_type=std_logic lab=BL6}
C {lab_pin.sym} 2740 1470 0 0 {name=p326 sig_type=std_logic lab=RWL5}
C {lab_pin.sym} 2740 1450 0 0 {name=p327 sig_type=std_logic lab=RBL5}
C {8T_sram_cell.sym} 3270 1700 0 1 {name=x55}
C {gnd.sym} 2740 1760 0 0 {name=l58 lab=GND}
C {lab_pin.sym} 2740 1640 0 0 {name=p328 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 2740 1680 0 0 {name=p329 sig_type=std_logic lab=BLB6}
C {lab_pin.sym} 2740 1660 0 0 {name=p330 sig_type=std_logic lab=WL6}
C {lab_pin.sym} 2740 1700 0 0 {name=p331 sig_type=std_logic lab=BL6}
C {lab_pin.sym} 2740 1740 0 0 {name=p332 sig_type=std_logic lab=RWL6}
C {lab_pin.sym} 2740 1720 0 0 {name=p333 sig_type=std_logic lab=RBL6}
C {8T_sram_cell.sym} 3270 1970 0 1 {name=x56}
C {gnd.sym} 2740 2030 0 0 {name=l59 lab=GND}
C {lab_pin.sym} 2740 1910 0 0 {name=p334 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 2740 1950 0 0 {name=p335 sig_type=std_logic lab=BLB6}
C {lab_pin.sym} 2740 1930 0 0 {name=p336 sig_type=std_logic lab=WL7}
C {lab_pin.sym} 2740 1970 0 0 {name=p337 sig_type=std_logic lab=BL6}
C {lab_pin.sym} 2740 2010 0 0 {name=p338 sig_type=std_logic lab=RWL7}
C {lab_pin.sym} 2740 1990 0 0 {name=p339 sig_type=std_logic lab=RBL7}
C {8T_sram_cell.sym} 3720 80 0 1 {name=x57}
C {gnd.sym} 3190 140 0 0 {name=l60 lab=GND}
C {lab_pin.sym} 3190 20 0 0 {name=p340 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 3190 60 0 0 {name=p341 sig_type=std_logic lab=BLB7}
C {lab_pin.sym} 3190 40 0 0 {name=p342 sig_type=std_logic lab=WL0}
C {lab_pin.sym} 3190 80 0 0 {name=p343 sig_type=std_logic lab=BL7}
C {lab_pin.sym} 3190 120 0 0 {name=p344 sig_type=std_logic lab=RWL0}
C {lab_pin.sym} 3190 100 0 0 {name=p345 sig_type=std_logic lab=RBL0}
C {8T_sram_cell.sym} 3720 350 0 1 {name=x58}
C {gnd.sym} 3190 410 0 0 {name=l61 lab=GND}
C {lab_pin.sym} 3190 290 0 0 {name=p346 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 3190 330 0 0 {name=p347 sig_type=std_logic lab=BLB7}
C {lab_pin.sym} 3190 310 0 0 {name=p348 sig_type=std_logic lab=WL1}
C {lab_pin.sym} 3190 350 0 0 {name=p349 sig_type=std_logic lab=BL7}
C {lab_pin.sym} 3190 390 0 0 {name=p350 sig_type=std_logic lab=RWL1}
C {lab_pin.sym} 3190 370 0 0 {name=p351 sig_type=std_logic lab=RBL1}
C {8T_sram_cell.sym} 3720 620 0 1 {name=x59}
C {gnd.sym} 3190 680 0 0 {name=l62 lab=GND}
C {lab_pin.sym} 3190 560 0 0 {name=p352 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 3190 600 0 0 {name=p353 sig_type=std_logic lab=BLB7}
C {lab_pin.sym} 3190 580 0 0 {name=p354 sig_type=std_logic lab=WL2}
C {lab_pin.sym} 3190 620 0 0 {name=p355 sig_type=std_logic lab=BL7}
C {lab_pin.sym} 3190 660 0 0 {name=p356 sig_type=std_logic lab=RWL2}
C {lab_pin.sym} 3190 640 0 0 {name=p357 sig_type=std_logic lab=RBL2}
C {8T_sram_cell.sym} 3720 890 0 1 {name=x60}
C {gnd.sym} 3190 950 0 0 {name=l63 lab=GND}
C {lab_pin.sym} 3190 830 0 0 {name=p358 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 3190 870 0 0 {name=p359 sig_type=std_logic lab=BLB7}
C {lab_pin.sym} 3190 850 0 0 {name=p360 sig_type=std_logic lab=WL3}
C {lab_pin.sym} 3190 890 0 0 {name=p361 sig_type=std_logic lab=BL7}
C {lab_pin.sym} 3190 930 0 0 {name=p362 sig_type=std_logic lab=RWL3}
C {lab_pin.sym} 3190 910 0 0 {name=p363 sig_type=std_logic lab=RBL3}
C {8T_sram_cell.sym} 3720 1160 0 1 {name=x61}
C {gnd.sym} 3190 1220 0 0 {name=l64 lab=GND}
C {lab_pin.sym} 3190 1100 0 0 {name=p364 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 3190 1140 0 0 {name=p365 sig_type=std_logic lab=BLB7}
C {lab_pin.sym} 3190 1120 0 0 {name=p366 sig_type=std_logic lab=WL4}
C {lab_pin.sym} 3190 1160 0 0 {name=p367 sig_type=std_logic lab=BL7}
C {lab_pin.sym} 3190 1200 0 0 {name=p368 sig_type=std_logic lab=RWL4}
C {lab_pin.sym} 3190 1180 0 0 {name=p369 sig_type=std_logic lab=RBL4}
C {8T_sram_cell.sym} 3720 1430 0 1 {name=x62}
C {gnd.sym} 3190 1490 0 0 {name=l65 lab=GND}
C {lab_pin.sym} 3190 1370 0 0 {name=p370 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 3190 1410 0 0 {name=p371 sig_type=std_logic lab=BLB7}
C {lab_pin.sym} 3190 1390 0 0 {name=p372 sig_type=std_logic lab=WL5}
C {lab_pin.sym} 3190 1430 0 0 {name=p373 sig_type=std_logic lab=BL7}
C {lab_pin.sym} 3190 1470 0 0 {name=p374 sig_type=std_logic lab=RWL5}
C {lab_pin.sym} 3190 1450 0 0 {name=p375 sig_type=std_logic lab=RBL5}
C {8T_sram_cell.sym} 3720 1700 0 1 {name=x63}
C {gnd.sym} 3190 1760 0 0 {name=l66 lab=GND}
C {lab_pin.sym} 3190 1640 0 0 {name=p376 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 3190 1680 0 0 {name=p377 sig_type=std_logic lab=BLB7}
C {lab_pin.sym} 3190 1660 0 0 {name=p378 sig_type=std_logic lab=WL6}
C {lab_pin.sym} 3190 1700 0 0 {name=p379 sig_type=std_logic lab=BL7}
C {lab_pin.sym} 3190 1740 0 0 {name=p380 sig_type=std_logic lab=RWL6}
C {lab_pin.sym} 3190 1720 0 0 {name=p381 sig_type=std_logic lab=RBL6}
C {8T_sram_cell.sym} 3720 1970 0 1 {name=x64}
C {gnd.sym} 3190 2030 0 0 {name=l67 lab=GND}
C {lab_pin.sym} 3190 1910 0 0 {name=p382 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 3190 1950 0 0 {name=p383 sig_type=std_logic lab=BLB7}
C {lab_pin.sym} 3190 1930 0 0 {name=p384 sig_type=std_logic lab=WL7}
C {lab_pin.sym} 3190 1970 0 0 {name=p385 sig_type=std_logic lab=BL7}
C {lab_pin.sym} 3190 2010 0 0 {name=p386 sig_type=std_logic lab=RWL7}
C {lab_pin.sym} 3190 1990 0 0 {name=p387 sig_type=std_logic lab=RBL7}