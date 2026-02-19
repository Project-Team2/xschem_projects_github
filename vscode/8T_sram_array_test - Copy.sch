v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 120 140 120 230 {lab=RBL}
N 120 200 270 200 {lab=RBL}
N 120 60 120 80 {lab=VCC}
N 120 110 130 110 {lab=VCC}
N 130 70 130 110 {lab=VCC}
N 120 70 130 70 {lab=VCC}
N 100 320 100 350 {lab=GND}
N 100 350 120 350 {lab=GND}
N 50 110 80 110 {lab=PRE}
N 220 380 270 380 {lab=RBL}
N 220 560 270 560 {lab=RBL}
N 220 740 270 740 {lab=RBL}
N 220 1100 270 1100 {lab=RBL}
N 220 1280 270 1280 {lab=RBL}
N 220 1460 270 1460 {lab=RBL}
N 220 920 270 920 {lab=RBL}
N 220 200 220 1520 {lab=RBL}
C {code_shown.sym} -1140 -150 0 0 {
name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false
      }
C {8T_sram_cell.sym} 800 180 0 1 {name=x1}
C {gnd.sym} 270 240 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 270 120 0 0 {name=p4 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 270 160 0 0 {name=p5 sig_type=std_logic lab=BLB}
C {lab_pin.sym} 270 140 0 0 {name=p6 sig_type=std_logic lab=WL}
C {lab_pin.sym} 270 180 0 0 {name=p7 sig_type=std_logic lab=BL}
C {lab_pin.sym} 270 220 0 0 {name=p8 sig_type=std_logic lab=RWL}
C {lab_pin.sym} 270 200 0 0 {name=p9 sig_type=std_logic lab=RBL}
C {sky130_fd_pr/cap_mim_m3_1.sym} 120 260 0 0 {name=C2 model=cap_mim_m3_1 W=100 L=1 MF=1 spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 100 110 0 0 {name=M3
W=4
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 120 60 0 0 {name=p2 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 50 110 0 0 {name=p1 sig_type=std_logic lab=PRE}
C {sky130_fd_pr/res_high_po.sym} 120 320 0 0 {name=R1
W=1
L=1
model=res_high_po
spiceprefix=X
mult=1}
C {gnd.sym} 120 350 0 0 {name=l1 lab=GND}
C {8T_sram_cell.sym} 800 360 0 1 {name=x2}
C {gnd.sym} 270 420 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 270 300 0 0 {name=p3 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 270 340 0 0 {name=p10 sig_type=std_logic lab=BLB1}
C {lab_pin.sym} 270 320 0 0 {name=p11 sig_type=std_logic lab=WL}
C {lab_pin.sym} 270 360 0 0 {name=p12 sig_type=std_logic lab=BL1}
C {lab_pin.sym} 270 400 0 0 {name=p13 sig_type=std_logic lab=RWL}
C {lab_pin.sym} 270 380 0 0 {name=p14 sig_type=std_logic lab=RBL}
C {8T_sram_cell.sym} 800 540 0 1 {name=x3}
C {gnd.sym} 270 600 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 270 480 0 0 {name=p15 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 270 520 0 0 {name=p16 sig_type=std_logic lab=BLB2}
C {lab_pin.sym} 270 500 0 0 {name=p17 sig_type=std_logic lab=WL}
C {lab_pin.sym} 270 540 0 0 {name=p18 sig_type=std_logic lab=BL2}
C {lab_pin.sym} 270 580 0 0 {name=p19 sig_type=std_logic lab=RWL}
C {lab_pin.sym} 270 560 0 0 {name=p20 sig_type=std_logic lab=RBL}
C {8T_sram_cell.sym} 800 720 0 1 {name=x4}
C {gnd.sym} 270 780 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 270 660 0 0 {name=p21 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 270 700 0 0 {name=p22 sig_type=std_logic lab=BLB3}
C {lab_pin.sym} 270 680 0 0 {name=p23 sig_type=std_logic lab=WL}
C {lab_pin.sym} 270 720 0 0 {name=p24 sig_type=std_logic lab=BL3}
C {lab_pin.sym} 270 760 0 0 {name=p25 sig_type=std_logic lab=RWL}
C {lab_pin.sym} 270 740 0 0 {name=p26 sig_type=std_logic lab=RBL}
C {8T_sram_cell.sym} 800 900 0 1 {name=x5}
C {gnd.sym} 270 960 0 0 {name=l6 lab=GND}
C {lab_pin.sym} 270 840 0 0 {name=p27 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 270 880 0 0 {name=p28 sig_type=std_logic lab=BLB4}
C {lab_pin.sym} 270 860 0 0 {name=p29 sig_type=std_logic lab=WL}
C {lab_pin.sym} 270 900 0 0 {name=p30 sig_type=std_logic lab=BL4}
C {lab_pin.sym} 270 940 0 0 {name=p31 sig_type=std_logic lab=RWL}
C {lab_pin.sym} 270 920 0 0 {name=p32 sig_type=std_logic lab=RBL}
C {8T_sram_cell.sym} 800 1080 0 1 {name=x6}
C {gnd.sym} 270 1140 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 270 1020 0 0 {name=p33 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 270 1060 0 0 {name=p34 sig_type=std_logic lab=BLB5}
C {lab_pin.sym} 270 1040 0 0 {name=p35 sig_type=std_logic lab=WL}
C {lab_pin.sym} 270 1080 0 0 {name=p36 sig_type=std_logic lab=BL5}
C {lab_pin.sym} 270 1120 0 0 {name=p37 sig_type=std_logic lab=RWL}
C {lab_pin.sym} 270 1100 0 0 {name=p38 sig_type=std_logic lab=RBL}
C {8T_sram_cell.sym} 800 1260 0 1 {name=x7}
C {gnd.sym} 270 1320 0 0 {name=l8 lab=GND}
C {lab_pin.sym} 270 1200 0 0 {name=p39 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 270 1240 0 0 {name=p40 sig_type=std_logic lab=BLB6}
C {lab_pin.sym} 270 1220 0 0 {name=p41 sig_type=std_logic lab=WL}
C {lab_pin.sym} 270 1260 0 0 {name=p42 sig_type=std_logic lab=BL6}
C {lab_pin.sym} 270 1300 0 0 {name=p43 sig_type=std_logic lab=RWL}
C {lab_pin.sym} 270 1280 0 0 {name=p44 sig_type=std_logic lab=RBL}
C {8T_sram_cell.sym} 800 1440 0 1 {name=x8}
C {gnd.sym} 270 1500 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 270 1380 0 0 {name=p45 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 270 1420 0 0 {name=p46 sig_type=std_logic lab=BLB7}
C {lab_pin.sym} 270 1400 0 0 {name=p47 sig_type=std_logic lab=WL}
C {lab_pin.sym} 270 1440 0 0 {name=p48 sig_type=std_logic lab=BL7}
C {lab_pin.sym} 270 1480 0 0 {name=p49 sig_type=std_logic lab=RWL}
C {lab_pin.sym} 270 1460 0 0 {name=p50 sig_type=std_logic lab=RBL}
C {code_shown.sym} -1190 -60 0 0 {name=s2 only_toplevel=true value=
"
.param dly=0ns t_dly=2ns raise=10ps fall=10ps BL_period=20ns prds=128 pre_time=2ns read_time=0.5ns
.param VCC=1.8 VSS=0

V_VCC VCC 0 DC 1.8
V_VSS VSS 0 DC 0
**vss vss 0 DC 0
* PULSE(VSS 1.8 2ns 100ps 100ps 3ns 5ns 4)PULSE(0 1.7 \{dly + t_dly/2\} \{raise\} \{fall\} \{(BL_period/2)- t_dly\} \{BL_period/2\} \{prds*2\})

V_WL WL 0 PULSE(\{VSS\} \{VCC\} \{dly + t_dly/2\} \{raise\} \{fall\} \{(BL_period/2)- t_dly\} \{BL_period\} \{prds*2\})


V_BL BLB 0 PULSE(\{VSS\} \{VCC\} \{dly\} \{raise\} \{fall\} \{BL_period\} \{BL_period*2\} \{prds\})
V_BLB BL 0 PULSE(\{VCC\} \{VSS\} \{dly\} \{raise\} \{fall\} \{BL_period\} \{BL_period*2\} \{prds\})

V_BL1 BLB1 0 PULSE(\{VSS\} \{VCC\} \{dly\} \{raise\} \{fall\} \{BL_period*2\} \{BL_period*4\} \{prds\})
V_BLB1 BL1 0 PULSE(\{VCC\} \{VSS\} \{dly\} \{raise\} \{fall\} \{BL_period*2\} \{BL_period*4\} \{prds\})

V_BL2 BLB2 0 PULSE(\{VSS\} \{VCC\} \{dly\} \{raise\} \{fall\} \{BL_period*4\} \{BL_period*8\} \{prds\})
V_BLB2 BL2 0 PULSE(\{VCC\} \{VSS\} \{dly\} \{raise\} \{fall\} \{BL_period*4\} \{BL_period*8\} \{prds\})

V_BL3 BLB3 0 PULSE(\{VSS\} \{VCC\} \{dly\} \{raise\} \{fall\} \{BL_period*8\} \{BL_period*16\} \{prds\})
V_BLB3 BL3 0 PULSE(\{VCC\} \{VSS\} \{dly\} \{raise\} \{fall\} \{BL_period*8\} \{BL_period*16\} \{prds\})

V_BL4 BLB4 0 PULSE(\{VSS\} \{VCC\} \{dly\} \{raise\} \{fall\} \{BL_period*16\} \{BL_period*32\} \{prds\})
V_BLB4 BL4 0 PULSE(\{VCC\} \{VSS\} \{dly\} \{raise\} \{fall\} \{BL_period*16\} \{BL_period*32\} \{prds\})

V_BL5 BLB5 0 PULSE(\{VSS\} \{VCC\} \{dly\} \{raise\} \{fall\} \{BL_period*32\} \{BL_period*64\} \{prds\})
V_BLB5 BL5 0 PULSE(\{VCC\} \{VSS\} \{dly\} \{raise\} \{fall\} \{BL_period*32\} \{BL_period*64\} \{prds\})

V_BL6 BLB6 0 PULSE(\{VSS\} \{VCC\} \{dly\} \{raise\} \{fall\} \{BL_period*64\} \{BL_period*128\} \{prds\})
V_BLB6 BL6 0 PULSE(\{VCC\} \{VSS\} \{dly\} \{raise\} \{fall\} \{BL_period*64\} \{BL_period*128\} \{prds\})

V_BL7 BLB7 0 PULSE(\{VSS\} \{VCC\} \{dly\} \{raise\} \{fall\} \{BL_period*128\} \{BL_period*256\} \{prds\})
V_BLB7 BL7 0 PULSE(\{VCC\} \{VSS\} \{dly\} \{raise\} \{fall\} \{BL_period*128\} \{BL_period*256\} \{prds\})


V_RWL RWL 0 PULSE(\{VSS\} \{VCC\} \{dly + BL_period/2 + 6ns\} \{raise\} \{fall\} \{read_time\} \{BL_period\} \{prds*2\})
V_PRE PRE 0 PULSE(\{VCC\} \{VSS\} \{dly + BL_period/2\} \{raise\} \{fall\} \{pre_time\} \{BL_period\} \{prds*2\})

.tran 0.01ns 5130ns
.control
run
* plot WL BL-2 BLB-4 RWL-6 RBL-8 PRE-10
plot WL BL-2 BL1-4 BL2-6 BL3-8 RWL-10 RBL-12 PRE-14
.endc
.save V(WL) V(BL) V(BL1) V(BL2) V(BL3) V(BL4) V(BL5) V(BL6) V(BL7) V(RWL) V(RBL) V(PRE)

"}
