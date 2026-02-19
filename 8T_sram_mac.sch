v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -640 -10 -640 10 {lab=GND}
N -640 -100 -640 -70 {lab=RWL}
N -580 140 -580 160 {lab=GND}
N -580 50 -580 80 {lab=BLB}
C {lab_pin.sym} -640 -100 0 0 {name=p1 sig_type=std_logic lab=RWL}
C {lab_pin.sym} -580 50 0 0 {name=p3 sig_type=std_logic lab=BLB
}
C {vsource.sym} -640 -40 0 0 {name=V2 value=1.8 savecurrent=false}
C {gnd.sym} -640 10 0 0 {name=l1 lab=GND}
C {vsource.sym} -580 110 0 0 {name=V5 value="PULSE(0 1.8 6ns 100ps 100ps 5ns 10ns 2)" savecurrent=false}
C {gnd.sym} -580 160 0 0 {name=l3 lab=GND}
C {code_shown.sym} -740 300 0 0 {name=s2 only_toplevel=false value=
"
.param dly=1ns t_dly=2ns raise=100ps fall=100ps BL_period=10ns prds=2
.param VCC=1.8 VSS=0

V_VCC VCC 0 DC 1.8
V_VSS VSS 0 DC 0
**vss vss 0 DC 0
* PULSE(VSS 1.8 2ns 100ps 100ps 3ns 5ns 4)PULSE(0 1.7 \{dly + t_dly/2\} \{raise\} \{fall\} \{(BL_period/2)- t_dly\} \{BL_period/2\} \{prds*2\})

V_WL WL 0 PULSE(\{VSS\} \{VCC\} \{dly + t_dly/2\} \{raise\} \{fall\} \{(BL_period/2)- t_dly\} \{BL_period/2\} \{prds*2\})
V_BL BL 0 PULSE(\{VSS\} \{VCC\} \{dly\} \{raise\} \{fall\} \{(BL_period/2)\} \{BL_period\} \{prds\})
V_BLB BLB 0 PULSE(\{VCC\} \{VSS\} \{dly\} \{raise\} \{fall\} \{(BL_period/2)\} \{BL_period\} \{prds\})

.tran 0.01ns 22ns
.control
run
plot BL+4 BLB+2 WL+6 RBL
.endc
.saveall

"}
C {code_shown.sym} -730 200 0 0 {
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
C {lab_pin.sym} 40 60 0 0 {name=p5 sig_type=std_logic lab=BLB}
C {lab_pin.sym} 40 40 0 0 {name=p6 sig_type=std_logic lab=WL}
C {lab_pin.sym} 40 80 0 0 {name=p7 sig_type=std_logic lab=BL}
C {lab_pin.sym} 40 120 0 0 {name=p8 sig_type=std_logic lab=RWL}
C {lab_pin.sym} 40 100 0 0 {name=p9 sig_type=std_logic lab=RBL}
