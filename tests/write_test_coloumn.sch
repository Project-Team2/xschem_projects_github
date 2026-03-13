v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -1180 -2420 -380 -2020 {flags=graph
y1=-0.027
y2=1.9
ypos1=1.5146
ypos2=3.4416
divy=5
subdivy=1
unity=1
x1=6.8688974e-08
x2=1.1107493e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="x8.q
x7.q
x6.q
x5.q
x4.q
x3.q
x2.q
x1.q
x8.q_bar
x7.q_bar
x6.q_bar
x5.q_bar
x4.q_bar
x3.q_bar
x2.q_bar
x1.q_bar
in0"
color="4 5 6 7 8 9 10 11 6 6 6 6 6 6 6 6 4"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/write_test.raw
autoload=0
digital=1
legend=1}
B 2 -2000 -2420 -1200 -2020 {flags=graph
y1=-0.027
y2=1.9
ypos1=0.06935
ypos2=1.99635
divy=5
subdivy=1
unity=1
x1=6.8688974e-08
x2=1.1107493e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/write_test.raw
autoload=0
digital=1
color="4 5 6 7 8 9 10 11 12 13 14 15"
node="en
s2
s1
s0
y7
y6
y5
y4
y3
y2
y1
y0"}
B 2 -2000 -1880 -1200 -1480 {flags=graph
y1=-0.027
y2=1.9
ypos1=0.45475
ypos2=2.38175
divy=5
subdivy=1
unity=1
x1=6.8688974e-08
x2=1.1107493e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/write_test.raw
autoload=0
digital=1
color="4 5 6 7 8 9 10 11 12 13"
node="in0_bar
in0
y7
y6
y5
y4
y3
y2
y1
y0"}
B 2 -1170 -1880 -370 -1480 {flags=graph
y1=-0.026
y2=1.9
ypos1=-0.027
ypos2=1.9
divy=5
subdivy=1
unity=1
x1=6.8688974e-08
x2=1.1107493e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/write_test.raw
autoload=0
digital=0
color=6
node=y6}
B 2 -1170 -1430 -370 -1030 {flags=graph
y1=0
y2=1.8
ypos1=-0.027
ypos2=1.9
divy=5
subdivy=1
unity=1
x1=6.8688974e-08
x2=1.1107493e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/write_test.raw
autoload=0
digital=0
color="4 5 6"
node="pre
rwl
rbl"}
N 120 -1290 120 -1200 {lab=RBL}
N 120 -1230 270 -1230 {lab=RBL}
N 120 -1370 120 -1350 {lab=GND}
N 120 -1320 130 -1320 {lab=GND}
N 130 -1360 130 -1320 {lab=GND}
N 120 -1360 130 -1360 {lab=GND}
N 50 -1320 80 -1320 {lab=PRE}
C {logic gates/decoder.sym} 100 -1570 0 0 {name=x77}
C {iopin.sym} 110 -2110 0 0 {name=p7 lab=Y7}
C {iopin.sym} 110 -2090 0 0 {name=p8 lab=Y6}
C {iopin.sym} 110 -2070 0 0 {name=p9 lab=Y5}
C {iopin.sym} 110 -2050 0 0 {name=p10 lab=Y4}
C {iopin.sym} 110 -2030 0 0 {name=p11 lab=Y3}
C {iopin.sym} 110 -2010 0 0 {name=p12 lab=Y2}
C {iopin.sym} 110 -1990 0 0 {name=p13 lab=Y1}
C {iopin.sym} 110 -1970 0 0 {name=p14 lab=Y0}
C {lab_pin.sym} 110 -2110 0 0 {name=p18 sig_type=std_logic lab=Y7}
C {lab_pin.sym} 110 -2090 0 0 {name=p19 sig_type=std_logic lab=Y6}
C {lab_pin.sym} 110 -2070 0 0 {name=p20 sig_type=std_logic lab=Y5}
C {lab_pin.sym} 110 -2050 0 0 {name=p21 sig_type=std_logic lab=Y4}
C {lab_pin.sym} 110 -2030 0 0 {name=p22 sig_type=std_logic lab=Y3}
C {lab_pin.sym} 110 -2010 0 0 {name=p23 sig_type=std_logic lab=Y2}
C {lab_pin.sym} 110 -1990 0 0 {name=p24 sig_type=std_logic lab=Y1}
C {lab_pin.sym} 110 -1970 0 0 {name=p25 sig_type=std_logic lab=Y0}
C {lab_pin.sym} 370 -2100 0 0 {name=p1 sig_type=std_logic lab=Y7}
C {lab_pin.sym} 370 -1860 0 0 {name=p2 sig_type=std_logic lab=Y6}
C {lab_pin.sym} 370 -1620 0 0 {name=p3 sig_type=std_logic lab=Y5}
C {lab_pin.sym} 370 -1380 0 0 {name=p4 sig_type=std_logic lab=Y4}
C {lab_pin.sym} 370 -1140 0 0 {name=p5 sig_type=std_logic lab=Y3}
C {lab_pin.sym} 370 -900 0 0 {name=p6 sig_type=std_logic lab=Y2}
C {lab_pin.sym} 370 -660 0 0 {name=p15 sig_type=std_logic lab=Y1}
C {lab_pin.sym} 370 -420 0 0 {name=p16 sig_type=std_logic lab=Y0}
C {iopin.sym} 110 -1930 0 0 {name=p17 lab=IN0}
C {lab_pin.sym} 110 -1930 0 0 {name=p26 sig_type=std_logic lab=IN0}
C {lab_pin.sym} 370 -2060 0 0 {name=p27 sig_type=std_logic lab=IN0}
C {lab_pin.sym} 370 -1820 0 0 {name=p28 sig_type=std_logic lab=IN0}
C {lab_pin.sym} 370 -1580 0 0 {name=p29 sig_type=std_logic lab=IN0}
C {lab_pin.sym} 370 -1340 0 0 {name=p30 sig_type=std_logic lab=IN0}
C {lab_pin.sym} 370 -1100 0 0 {name=p31 sig_type=std_logic lab=IN0}
C {lab_pin.sym} 370 -860 0 0 {name=p32 sig_type=std_logic lab=IN0}
C {lab_pin.sym} 370 -620 0 0 {name=p33 sig_type=std_logic lab=IN0}
C {lab_pin.sym} 370 -380 0 0 {name=p34 sig_type=std_logic lab=IN0}
C {lab_pin.sym} 370 -2080 0 0 {name=p35 sig_type=std_logic lab=IN0_bar}
C {lab_pin.sym} 370 -1840 0 0 {name=p36 sig_type=std_logic lab=IN0_bar}
C {lab_pin.sym} 370 -1600 0 0 {name=p37 sig_type=std_logic lab=IN0_bar}
C {lab_pin.sym} 370 -1360 0 0 {name=p38 sig_type=std_logic lab=IN0_bar}
C {lab_pin.sym} 370 -1120 0 0 {name=p39 sig_type=std_logic lab=IN0_bar}
C {lab_pin.sym} 370 -880 0 0 {name=p40 sig_type=std_logic lab=IN0_bar}
C {lab_pin.sym} 370 -640 0 0 {name=p41 sig_type=std_logic lab=IN0_bar}
C {lab_pin.sym} 370 -400 0 0 {name=p42 sig_type=std_logic lab=IN0_bar}
C {lab_pin.sym} 370 -2000 0 0 {name=p43 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 370 -1760 0 0 {name=p44 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 370 -1520 0 0 {name=p45 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 370 -1280 0 0 {name=p46 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 370 -1040 0 0 {name=p47 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 370 -800 0 0 {name=p48 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 370 -560 0 0 {name=p49 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 370 -320 0 0 {name=p50 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 370 -2120 0 0 {name=p51 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 370 -1880 0 0 {name=p52 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 370 -1640 0 0 {name=p53 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 370 -1400 0 0 {name=p54 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 370 -1160 0 0 {name=p55 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 370 -920 0 0 {name=p56 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 370 -680 0 0 {name=p57 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 370 -440 0 0 {name=p58 sig_type=std_logic lab=VCC}
C {iopin.sym} 110 -1910 0 0 {name=p59 lab=IN0_bar}
C {lab_pin.sym} 110 -1910 0 0 {name=p60 sig_type=std_logic lab=IN0_bar}
C {code_shown.sym} -2400 -1730 0 1 {name=s1 only_toplevel=false value=
"

"}
C {code.sym} -2900 -1730 0 0 {
name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
spice_ignore=false
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false
      }
C {code_shown.sym} -2530 -1730 0 1 {name=s2 only_toplevel=false spice_ignore=false value=
"
.param VCC=1.8 VSS=0

V_VCC VCC 0 DC 1.8
V_VSS VSS 0 DC 0
"}
C {lab_pin.sym} 150 -1640 0 1 {name=p61 sig_type=std_logic lab=Y7}
C {lab_pin.sym} 150 -1620 0 1 {name=p62 sig_type=std_logic lab=Y6}
C {lab_pin.sym} 150 -1600 0 1 {name=p63 sig_type=std_logic lab=Y5}
C {lab_pin.sym} 150 -1580 0 1 {name=p64 sig_type=std_logic lab=Y4}
C {lab_pin.sym} 150 -1560 0 1 {name=p65 sig_type=std_logic lab=Y3}
C {lab_pin.sym} 150 -1540 0 1 {name=p66 sig_type=std_logic lab=Y2}
C {lab_pin.sym} 150 -1520 0 1 {name=p67 sig_type=std_logic lab=Y1}
C {lab_pin.sym} 150 -1500 0 1 {name=p68 sig_type=std_logic lab=Y0}
C {iopin.sym} 110 -1870 0 0 {name=p69 lab=S2}
C {iopin.sym} 110 -1850 0 0 {name=p70 lab=S1}
C {iopin.sym} 110 -1830 0 0 {name=p71 lab=S0}
C {lab_pin.sym} 110 -1870 0 0 {name=p72 sig_type=std_logic lab=S2}
C {lab_pin.sym} 110 -1850 0 0 {name=p73 sig_type=std_logic lab=S1}
C {lab_pin.sym} 110 -1830 0 0 {name=p74 sig_type=std_logic lab=S0}
C {lab_pin.sym} 40 -1590 0 0 {name=p75 sig_type=std_logic lab=S2}
C {lab_pin.sym} 40 -1570 0 0 {name=p76 sig_type=std_logic lab=S1}
C {lab_pin.sym} 40 -1550 0 0 {name=p77 sig_type=std_logic lab=S0}
C {iopin.sym} 110 -2200 0 0 {name=p78 lab=VCC}
C {iopin.sym} 110 -2180 0 0 {name=p79 lab=VSS}
C {lab_pin.sym} 110 -2180 0 0 {name=p80 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 110 -2200 0 0 {name=p81 sig_type=std_logic lab=VCC}
C {iopin.sym} 110 -2150 0 0 {name=p82 lab=EN}
C {lab_pin.sym} 110 -2150 0 0 {name=p83 sig_type=std_logic lab=EN}
C {lab_pin.sym} 40 -1520 0 0 {name=p84 sig_type=std_logic lab=EN}
C {lab_pin.sym} 100 -1660 0 0 {name=p85 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 100 -1480 0 0 {name=p86 sig_type=std_logic lab=VSS}
C {code_shown.sym} -2050 -1560 0 1 {name=s3 only_toplevel=false spice_ignore=false value=
"
.param dly=0ns t_dly=1ns rise=10ps fall=10ps BL_period=10ns prds=8 pre_time=6ns read_time=0.5ns write_delay=(BL_period*8) 


V_S0 S0 0 PULSE(\{VSS\} \{VCC\} \{dly\} \{rise\} \{fall\} \{BL_period\} \{BL_period*2\} \{prds\})
V_S1 S1 0 PULSE(\{VSS\} \{VCC\} \{dly\} \{rise\} \{fall\} \{BL_period*2\} \{BL_period*4\} \{prds\})
V_S2 S2 0 PULSE(\{VSS\} \{VCC\} \{dly\} \{rise\} \{fall\} \{BL_period*4\} \{BL_period*8\} \{prds\})

*V_EN EN 0 DC 1.8
V_EN EN 0 PULSE(\{VSS\} \{VCC\} \{dly+t_dly\} \{rise\} \{fall\} \{(BL_period)-t_dly*2\} \{BL_period\} \{prds\})

*V_IN0 IN0 0 DC 1
*V_IN0_bar IN0_bar 0 DC 0
V_IN0 IN0 0 PWL(0ns 1.8 9.99ns 1.8 10ns 0 20ns 0 30ns 0 40ns 0 50ns 0 60ns 0 69.99ns 0 70ns 1.8)
V_IN0_bar IN0_bar 0 PWL(0ns 0 9.99ns 0 10ns 1.8 20ns 1.8 30ns 1.8 40ns 1.8 50ns 1.8 60ns 1.8 69.99ns 1.8 70ns 0)
*V_IN0 IN0 0 PULSE(\{VSS\} \{VCC\} \{dly\} \{rise\} \{fall\} \{BL_period\} \{BL_period*2\} \{prds\})
*V_IN0_bar IN0_bar 0 PULSE(\{VCC\} \{VSS\} \{dly\} \{rise\} \{fall\} \{BL_period\} \{BL_period*2\} \{prds\})

*V_RWL RWL 0 DC 1.8
*V_RBL RBL 0 DC 0
V_RWL RWL 0 PULSE(\{VCC\} \{VSS\} \{write_delay+t_dly+pre_time+t_dly\} \{rise\} \{fall\} \{read_time\} \{BL_period\} \{prds\})
V_PRE PRE 0 PULSE(\{VSS\} \{VCC\} \{write_delay+t_dly\} \{rise\} \{fall\} \{pre_time\} \{BL_period\} \{prds\})

.tran 0.01ns \{BL_period*11\}
.save all

.control
run
plot Y0 Y1+2 Y2+4 Y3+6 Y4+8 Y5+10 Y6+12 Y7+14
plot EN
plot I0 I1+2 I2+4
.endc
"}
C {launcher.sym} -1040 -1990 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/write_test.raw tran"
}
C {8T_sram_cell_c.sym} 520 -620 0 1 {name=x2}
C {8T_sram_cell_c.sym} 520 -380 0 1 {name=x1}
C {8T_sram_cell_c.sym} 520 -1820 0 1 {name=x7}
C {8T_sram_cell_c.sym} 520 -860 0 1 {name=x3}
C {8T_sram_cell_c.sym} 520 -1340 0 1 {name=x5}
C {8T_sram_cell_c.sym} 520 -1100 0 1 {name=x4}
C {8T_sram_cell_c.sym} 520 -2060 0 1 {name=x8}
C {8T_sram_cell_c.sym} 520 -1580 0 1 {name=x6}
C {lab_pin.sym} 370 -2020 0 0 {name=p87 sig_type=std_logic lab=RWL}
C {lab_pin.sym} 370 -1780 0 0 {name=p88 sig_type=std_logic lab=RWL}
C {lab_pin.sym} 370 -1540 0 0 {name=p97 sig_type=std_logic lab=RWL}
C {lab_pin.sym} 370 -1300 0 0 {name=p98 sig_type=std_logic lab=RWL}
C {lab_pin.sym} 370 -1060 0 0 {name=p99 sig_type=std_logic lab=RWL}
C {lab_pin.sym} 370 -820 0 0 {name=p100 sig_type=std_logic lab=RWL}
C {lab_pin.sym} 370 -580 0 0 {name=p101 sig_type=std_logic lab=RWL}
C {lab_pin.sym} 370 -340 0 0 {name=p102 sig_type=std_logic lab=RWL}
C {lab_pin.sym} 370 -2040 0 0 {name=p103 sig_type=std_logic lab=RBL}
C {lab_pin.sym} 370 -1800 0 0 {name=p104 sig_type=std_logic lab=RBL}
C {lab_pin.sym} 370 -1560 0 0 {name=p105 sig_type=std_logic lab=RBL}
C {lab_pin.sym} 370 -1320 0 0 {name=p106 sig_type=std_logic lab=RBL}
C {lab_pin.sym} 370 -1080 0 0 {name=p107 sig_type=std_logic lab=RBL}
C {lab_pin.sym} 370 -840 0 0 {name=p108 sig_type=std_logic lab=RBL}
C {lab_pin.sym} 370 -600 0 0 {name=p109 sig_type=std_logic lab=RBL}
C {lab_pin.sym} 370 -360 0 0 {name=p110 sig_type=std_logic lab=RBL}
C {iopin.sym} 110 -1800 0 0 {name=p89 lab=RBL}
C {iopin.sym} 110 -1780 0 0 {name=p90 lab=RWL}
C {lab_pin.sym} 110 -1800 0 0 {name=p91 sig_type=std_logic lab=RBL}
C {lab_pin.sym} 110 -1780 0 0 {name=p92 sig_type=std_logic lab=RWL}
C {sky130_fd_pr/cap_mim_m3_1.sym} 120 -1170 0 0 {name=C2 model=cap_mim_m3_1 W=200 L=1 MF=1 spiceprefix=X}
C {gnd.sym} 120 -1370 2 0 {name=l1 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 100 -1320 2 1 {name=M2
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {gnd.sym} 120 -1140 0 1 {name=l10 lab=GND}
C {lab_pin.sym} 270 -1230 0 1 {name=p94 sig_type=std_logic lab=RBL}
C {iopin.sym} 110 -1750 0 0 {name=p93 lab=PRE}
C {lab_pin.sym} 110 -1750 0 0 {name=p95 sig_type=std_logic lab=PRE}
C {lab_pin.sym} 50 -1320 0 0 {name=p96 sig_type=std_logic lab=PRE}
