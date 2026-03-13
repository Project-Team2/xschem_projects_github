v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
C {iopin.sym} 90 -140 0 1 {name=p15 lab=VSS}
C {lab_pin.sym} 90 -140 0 1 {name=p16 sig_type=std_logic lab=VSS}
C {iopin.sym} 90 -160 0 1 {name=p9 lab=VCC}
C {lab_pin.sym} 90 -160 0 1 {name=p10 sig_type=std_logic lab=VCC}
C {code_shown.sym} 0 -110 0 1 {name=s1 only_toplevel=false value=
"
.param VCC=1.8 VSS=0
V_VCC VCC 0 DC 1.8
V_VSS VSS 0 DC 0
"}
C {code.sym} -680 -120 0 0 {
name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false
      }
C {code_shown.sym} 0 140 0 1 {name=nor_test only_toplevel=false spice_ignore=true value=
"
.param rise=10ps fall=10ps time_period=2ns prds=2

V_A A VSS PULSE(\{VCC\} \{VSS\} 0ns \{rise\} \{fall\} \{time_period/2\} \{time_period\} \{prds\})
V_B B VSS PULSE(\{VCC\} \{VSS\} 0ns \{rise\} \{fall\} \{time_period\} \{time_period*2\} \{prds/2\})

.tran 0.01ns \{time_period*prds\}
.save all

.control
run
plot A B+2 Y+4
.endc
"}
C {code_shown.sym} 0 410 0 1 {name=priority_selector_test only_toplevel=false value=
"
.param dly=0ns rise=10ps fall=10ps time_period=256ns prds=128

V_I1 I8 0 PULSE(\{VCC\} \{VSS\} \{dly\} \{rise\} \{fall\} \{time_period/2\} \{time_period\} \{prds/128\})

V_I2 I7 0 PULSE(\{VCC\} \{VSS\} \{dly\} \{rise\} \{fall\} \{time_period/4\} \{time_period/2\} \{prds/64\})

V_I3 I6 0 PULSE(\{VCC\} \{VSS\} \{dly\} \{rise\} \{fall\} \{time_period/8\} \{time_period/4\} \{prds/32\})

V_I4 I5 0 PULSE(\{VCC\} \{VSS\} \{dly\} \{rise\} \{fall\} \{time_period/16\} \{time_period/8\} \{prds/16\})

V_I5 I4 0 PULSE(\{VCC\} \{VSS\} \{dly\} \{rise\} \{fall\} \{time_period/32\} \{time_period/16\} \{prds/8\})

V_I6 I3 0 PULSE(\{VCC\} \{VSS\} \{dly\} \{rise\} \{fall\} \{time_period/64\} \{time_period/32\} \{prds/4\})

V_I7 I2 0 PULSE(\{VCC\} \{VSS\} \{dly\} \{rise\} \{fall\} \{time_period/128\} \{time_period/64\} \{prds/2\})

V_I8 I1 0 PULSE(\{VCC\} \{VSS\} \{dly\} \{rise\} \{fall\} \{time_period/256\} \{time_period/128\} \{prds\})

.tran 0.01ns \{time_period\}
.save all

.control
run
plot I1-2 I2-4 I3-6 I4-8 I5-10 I6-12 I7-14 I8-16 Y1-22 Y2-24 Y3-26 Y4-28 Y5-30 Y6-32 Y7-34 I8-36
.endc
"}
C {RS_latch/priority_selector.sym} 210 110 0 0 {name=x1}
C {lab_pin.sym} 360 80 0 1 {name=p1 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 360 100 0 1 {name=p4 sig_type=std_logic lab=VSS}
C {iopin.sym} 90 -120 0 1 {name=p5 lab=I[8..1]}
C {lab_pin.sym} 90 -120 0 1 {name=p6 sig_type=std_logic lab=I[8..1]}
C {iopin.sym} 90 -100 0 1 {name=p8 lab=Y[7..1]}
C {lab_pin.sym} 90 -100 0 1 {name=p11 sig_type=std_logic lab=Y[7..1]}
C {lab_pin.sym} 360 120 0 1 {name=p2 sig_type=std_logic lab=I[8..1]}
C {lab_pin.sym} 360 140 0 1 {name=p3 sig_type=std_logic lab=Y[7..1]}
