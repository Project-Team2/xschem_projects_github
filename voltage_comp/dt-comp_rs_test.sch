v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -110 -210 40 -210 {lab=OUT+}
N -110 -190 40 -190 {lab=OUT-}
C {RS_latch/RS_latch.sym} 190 -180 0 1 {name=x1}
C {voltage_comp/double_tail_comp.sym} -260 -160 0 0 {name=x2}
C {iopin.sym} -330 -610 0 1 {name=p6 lab=OUT-}
C {iopin.sym} -330 -570 0 1 {name=p2 lab=VSS}
C {iopin.sym} -330 -690 0 1 {name=p9 lab=VCC}
C {iopin.sym} -330 -650 0 1 {name=p3 lab=OUT+}
C {iopin.sym} -330 -450 0 1 {name=p4 lab=IN+}
C {iopin.sym} -330 -410 0 1 {name=p5 lab=IN-}
C {iopin.sym} -330 -530 0 1 {name=p10 lab=CLK}
C {iopin.sym} -330 -490 0 1 {name=p11 lab=CLK_bar}
C {lab_pin.sym} -330 -690 0 1 {name=p7 sig_type=std_logic lab=VCC}
C {lab_pin.sym} -330 -570 0 1 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -330 -610 0 1 {name=p15 sig_type=std_logic lab=OUT-}
C {lab_pin.sym} -330 -650 0 1 {name=p16 sig_type=std_logic lab=OUT+}
C {lab_pin.sym} -330 -530 0 1 {name=p17 sig_type=std_logic lab=CLK}
C {lab_pin.sym} -330 -490 0 1 {name=p18 sig_type=std_logic lab=CLK_bar
}
C {lab_pin.sym} -330 -450 0 1 {name=p25 sig_type=std_logic lab=IN+}
C {lab_pin.sym} -330 -410 0 1 {name=p26 sig_type=std_logic lab=IN-}
C {iopin.sym} -330 -370 0 1 {name=p19 lab=Q}
C {iopin.sym} -330 -330 0 1 {name=p20 lab=Q_bar}
C {lab_pin.sym} -330 -330 0 1 {name=p21 sig_type=std_logic lab=Q_bar}
C {lab_pin.sym} -330 -370 0 1 {name=p22 sig_type=std_logic lab=Q}
C {lab_pin.sym} -110 -230 0 1 {name=p27 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 40 -230 0 0 {name=p28 sig_type=std_logic lab=VCC}
C {lab_pin.sym} -50 -210 0 1 {name=p29 sig_type=std_logic lab=OUT+}
C {lab_pin.sym} -50 -190 0 1 {name=p30 sig_type=std_logic lab=OUT-}
C {lab_pin.sym} -110 -170 0 1 {name=p31 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -110 -150 0 1 {name=p32 sig_type=std_logic lab=CLK}
C {lab_pin.sym} -110 -130 0 1 {name=p33 sig_type=std_logic lab=CLK_bar
}
C {lab_pin.sym} -110 -110 0 1 {name=p34 sig_type=std_logic lab=IN+}
C {lab_pin.sym} -110 -90 0 1 {name=p35 sig_type=std_logic lab=IN-}
C {lab_pin.sym} 40 -150 0 0 {name=p38 sig_type=std_logic lab=Q}
C {lab_pin.sym} 40 -170 0 0 {name=p39 sig_type=std_logic lab=Q_bar}
C {lab_pin.sym} 40 -130 0 0 {name=p40 sig_type=std_logic lab=VSS}
C {code_shown.sym} -1280 -360 0 0 {name=s1 only_toplevel=false value=
"
.param VSS=0 VCC=1.8 Vcm=1.45 Vdif=0.3 time_period=200ns prds=4 rise=100ps fall=100ps

VCC VCC 0 DC 1.8
VSS VSS 0 DC 0

V_CLK CLK 0 PULSE(\{VCC\} \{VSS\} 1ns \{rise\} \{fall\} \{time_period/2\} \{time_period\} \{prds\})
V_CLK_bar CLK_bar 0 PULSE(\{VSS\} \{VCC\} 1ns \{rise\} \{fall\} \{time_period/2\} \{time_period\} \{prds\})

V_IN+ IN+ 0 PULSE(\{Vcm+Vdif/2\} \{Vcm-Vdif/2\} 0 100ps 100ps \{time_period\} \{time_period*2\} \{prds\})
V_IN- IN- 0 PULSE(\{Vcm-Vdif/2\} \{Vcm+Vdif/2\} 0 100ps 100ps \{time_period\} \{time_period*2\} \{prds/2\})

.control

  foreach vdif 0.24 0.22 0.20 0.15 0.13
    alterparam Vdif = $vdif
    reset
    run
    plot v(IN+) v(IN-) v(OUT+)+2.2 v(OUT-)+2.2 Q-2.2 Q_bar-2.2
  end
.endc

.tran 0.01ns \{time_period*prds\}
.save all
"}
C {code.sym} -1290 -520 0 0 {
name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false
      }
