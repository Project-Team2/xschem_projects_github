v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
C {RS_latch/RS_latch.sym} 220 -140 0 1 {name=x1}
C {code_shown.sym} -570 -40 0 0 {name=s1 only_toplevel=false value=
"
.param VSS=0 VCC=1.8 Vcm=1.45 Vdif=0.4 time_period=200ns prds=4 rise=100ps fall=100ps

VCC VCC 0 DC 1.8
VSS VSS 0 DC 0

V_R R 0 PULSE(\{VCC\} \{VSS\} 1ns \{rise\} \{fall\} \{time_period/4\} \{time_period/2\} \{prds/2\})
V_S S 0 PULSE(\{VCC\} \{VSS\} 1ns \{rise\} \{fall\} \{time_period/2\} \{time_period\} \{prds\})

.control
run
plot R S+2 Q+4 Q_bar+6
.endc

.tran 0.01ns \{time_period*prds\}
.save all
"}
C {code.sym} -590 -200 0 0 {
name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false
      }
C {lab_pin.sym} 70 -190 0 0 {name=p1 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 70 -150 0 0 {name=p2 sig_type=std_logic lab=R}
C {lab_pin.sym} 70 -170 0 0 {name=p3 sig_type=std_logic lab=S}
C {lab_pin.sym} 70 -130 0 0 {name=p4 sig_type=std_logic lab=Q_bar}
C {lab_pin.sym} 70 -110 0 0 {name=p5 sig_type=std_logic lab=Q}
C {lab_pin.sym} 70 -90 0 0 {name=p6 sig_type=std_logic lab=VSS}
