v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
C {code_shown.sym} -740 300 0 0 {name=s2 only_toplevel=false value=
"
.param dly=1ns t_dly=2ns raise=100ps fall=100ps BL_period=10ns prds=2
.param VCC=1.8 VSS=0

V_VCC VCC 0 DC 1.8
V_VSS VSS 0 DC 0
V_RWL RWL 0 DC 1.8

**vss vss 0 DC 0
* PULSE(VSS 1.8 2ns 100ps 100ps 3ns 5ns 4)PULSE(0 1.7 \{dly + t_dly/2\} \{raise\} \{fall\} \{(BL_period/2)- t_dly\} \{BL_period/2\} \{prds*2\})

V_WL WL 0 PULSE(\{VSS\} \{VCC\} \{dly + t_dly/2\} \{raise\} \{fall\} \{(BL_period/2)- t_dly\} \{BL_period/2\} \{prds*2\})
V_BL BL 0 PULSE(\{VSS\} \{VCC\} \{dly\} \{raise\} \{fall\} \{(BL_period/2)\} \{BL_period\} \{prds\})
V_BLB BLB 0 PULSE(\{VCC\} \{VSS\} \{dly\} \{raise\} \{fall\} \{(BL_period/2)\} \{BL_period\} \{prds\})


.tran 0.1ns 22ns
.control
run
plot BL+4 BLB+2 WL+6 RBL
plot BL+2 WL+2 RBL
plot BL+2 BLB+2 WL+2 RBL
plot BL+4 BLB+2 WL+4 RBL
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
** .include /home/user/.ciel/ciel/sky130/versions/d400e26845538beaeb7cc5fdb9bfc06c30ea27cb/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_01v8__tt.corner.spice
** .include /home/user/.ciel/ciel/sky130/versions/d400e26845538beaeb7cc5fdb9bfc06c30ea27cb/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_01v8__tt.corner.spice
"
spice_ignore=false
      }
C {gnd.sym} 40 140 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 40 20 0 0 {name=p4 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 40 60 0 0 {name=p5 sig_type=std_logic lab=BLB}
C {lab_pin.sym} 40 40 0 0 {name=p6 sig_type=std_logic lab=WL}
C {lab_pin.sym} 40 80 0 0 {name=p7 sig_type=std_logic lab=BL}
C {lab_pin.sym} 40 120 0 0 {name=p8 sig_type=std_logic lab=RWL}
C {lab_pin.sym} 40 100 0 0 {name=p9 sig_type=std_logic lab=RBL}
C {8T_sram_cell2.sym} 190 80 0 1 {name=x2}
