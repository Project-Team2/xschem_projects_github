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
C {code_shown.sym} -1150 -50 0 0 {name=s2 only_toplevel=true value=
"
.param dly=1ns t_dly=2ns raise=100ps fall=100ps BL_period=20ns prds=2
.param VCC=1.8 VSS=0

V_VCC VCC 0 DC 1.8
V_VSS VSS 0 DC 0
**vss vss 0 DC 0
* PULSE(VSS 1.8 2ns 100ps 100ps 3ns 5ns 4)PULSE(0 1.7 \{dly + t_dly/2\} \{raise\} \{fall\} \{(BL_period/2)- t_dly\} \{BL_period/2\} \{prds*2\})

V_WL WL 0 PULSE(\{VSS\} \{VCC\} \{dly + t_dly/2\} \{raise\} \{fall\} \{(BL_period/2)- t_dly\} \{BL_period\} \{prds\})
V_BL BLB 0 PULSE(\{VSS\} \{VCC\} \{dly\} \{raise\} \{fall\} \{(BL_period)\} \{BL_period*2\} \{prds\})
V_BLB BL 0 PULSE(\{VCC\} \{VSS\} \{dly\} \{raise\} \{fall\} \{(BL_period)\} \{BL_period*2\} \{prds\})

V_RWL RWL 0 PULSE(\{VSS\} \{VCC\} \{dly + BL_period/2 + 6ns\} \{raise\} \{fall\} \{t_dly\} \{BL_period\} \{prds\})
V_PRE PRE 0 PULSE(\{VCC\} \{VSS\} \{dly + BL_period/2\} \{raise\} \{fall\} 4ns \{BL_period\} \{prds\})

.tran 0.01ns 100ns
.control
run
plot WL BL-2 BLB-4 RWL-6 RBL-8 PRE-10
.endc
.saveall

"}
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
C {lab_pin.sym} 80 110 0 0 {name=p1 sig_type=std_logic lab=PRE}
C {sky130_fd_pr/res_high_po.sym} 120 320 0 0 {name=R1
W=1
L=1
model=res_high_po
spiceprefix=X
mult=1}
C {gnd.sym} 120 350 0 0 {name=l1 lab=GND}
