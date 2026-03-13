v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
C {logic gates/and4.sym} 170 110 0 0 {name=x1}
C {iopin.sym} 40 -160 0 0 {name=p4 lab=I2}
C {iopin.sym} 40 -140 0 0 {name=p5 lab=I1}
C {iopin.sym} 40 -120 0 0 {name=p6 lab=I0}
C {lab_pin.sym} 40 -160 0 0 {name=p15 sig_type=std_logic lab=I2}
C {lab_pin.sym} 40 -140 0 0 {name=p16 sig_type=std_logic lab=I1}
C {lab_pin.sym} 40 -120 0 0 {name=p17 sig_type=std_logic lab=I0}
C {lab_pin.sym} 110 90 0 0 {name=p1 sig_type=std_logic lab=I2}
C {lab_pin.sym} 110 130 0 0 {name=p2 sig_type=std_logic lab=I1}
C {lab_pin.sym} 110 170 0 0 {name=p3 sig_type=std_logic lab=I0}
C {iopin.sym} 150 -150 0 0 {name=p35 lab=VCC}
C {iopin.sym} 150 -130 0 0 {name=p36 lab=VSS}
C {lab_pin.sym} 150 -130 0 0 {name=p37 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 150 -150 0 0 {name=p7 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 170 140 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 170 80 0 1 {name=p9 sig_type=std_logic lab=VCC}
C {iopin.sym} 40 -100 0 0 {name=p10 lab=Y}
C {lab_pin.sym} 40 -100 0 0 {name=p11 sig_type=std_logic lab=Y}
C {lab_pin.sym} 230 110 0 1 {name=p12 sig_type=std_logic lab=Y}
C {code_shown.sym} 0 30 0 1 {name=s1 only_toplevel=false value=
"
.param dly=0ns t_dly=2ns rise=10ps fall=10ps BL_period=5ns prds=11 pre_time=2ns read_time=0.5ns


V_BL I0 0 PULSE(\{VSS\} \{VCC\} \{dly\} \{rise\} \{fall\} \{BL_period\} \{BL_period*2\} \{prds\})

V_BL1 I1 0 PULSE(\{VSS\} \{VCC\} \{dly\} \{rise\} \{fall\} \{BL_period*2\} \{BL_period*4\} \{prds\})

V_BL2 I2 0 PULSE(\{VSS\} \{VCC\} \{dly\} \{rise\} \{fall\} \{BL_period*4\} \{BL_period*8\} \{prds\})

V_BL3 I3 0 PULSE(\{VSS\} \{VCC\} \{dly\} \{rise\} \{fall\} \{BL_period*8\} \{BL_period*16\} \{prds\})

.tran 0.01ns 80ns
.save all

.control
run
plot Y
.endc
"}
C {code.sym} -760 -110 0 0 {
name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false
      }
C {code_shown.sym} -460 -100 0 1 {name=s2 only_toplevel=false value=
"
.param VCC=1.8 VSS=0

V_VCC VCC 0 DC 1.8
V_VSS VSS 0 DC 0
"}
C {iopin.sym} 40 -180 0 0 {name=p13 lab=I3}
C {lab_pin.sym} 40 -180 0 0 {name=p14 sig_type=std_logic lab=I3}
C {lab_pin.sym} 110 50 0 0 {name=p18 sig_type=std_logic lab=I3}
