v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
C {voltage_comp/double_tail_comp.sym} 230 -110 0 1 {name=x1}
C {iopin.sym} -110 -460 0 1 {name=p6 lab=OUT-}
C {iopin.sym} -110 -420 0 1 {name=p8 lab=VSS}
C {iopin.sym} -110 -540 0 1 {name=p9 lab=VCC}
C {iopin.sym} -110 -500 0 1 {name=p2 lab=OUT+}
C {iopin.sym} -110 -300 0 1 {name=p3 lab=IN+}
C {iopin.sym} -110 -260 0 1 {name=p4 lab=IN-}
C {iopin.sym} -110 -380 0 1 {name=p10 lab=CLK}
C {iopin.sym} -110 -340 0 1 {name=p11 lab=CLK_bar}
C {lab_pin.sym} -110 -540 0 1 {name=p1 sig_type=std_logic lab=VCC}
C {lab_pin.sym} -110 -420 0 1 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -110 -460 0 1 {name=p15 sig_type=std_logic lab=OUT-}
C {lab_pin.sym} -110 -500 0 1 {name=p16 sig_type=std_logic lab=OUT+}
C {lab_pin.sym} -110 -380 0 1 {name=p17 sig_type=std_logic lab=CLK}
C {lab_pin.sym} -110 -340 0 1 {name=p18 sig_type=std_logic lab=CLK_bar
}
C {lab_pin.sym} -110 -300 0 1 {name=p25 sig_type=std_logic lab=IN+}
C {lab_pin.sym} -110 -260 0 1 {name=p26 sig_type=std_logic lab=IN-}
C {code_shown.sym} -830 280 0 0 {name=s1 only_toplevel=false spice_ignore=true value=
"
.param VSS=0 VCC=1.8 Vcm=1.45 Vdif=0.3 time_period=200ns prds=4 rise=100ps fall=100ps

VCC VCC 0 DC 1.8
VSS VSS 0 DC 0

V_CLK CLK 0 PULSE(\{VCC\} \{VSS\} 1ns \{rise\} \{fall\} \{time_period/2\} \{time_period\} \{prds\})
V_CLK_bar CLK_bar 0 PULSE(\{VSS\} \{VCC\} 1ns \{rise\} \{fall\} \{time_period/2\} \{time_period\} \{prds\})

V_IN+ IN+ 0 PULSE(\{Vcm+Vdif\} \{Vcm-Vdif\} 0 100ps 100ps \{time_period\} \{time_period*2\} \{prds\})
V_IN- IN- 0 PULSE(\{Vcm-Vdif\} \{Vcm+Vdif\} 0 100ps 100ps \{time_period\} \{time_period*2\} \{prds/2\})

.control
  foreach refval 1.45 1.48
    alterparam Vcm = $refval
    reset
    run
    let mytitle = & refval &
    plot v(IN+) v(IN-) v(OUT+)+2.2 v(OUT-)+2.2
    title $mytitle
  end
*run
*plot v(IN+) v(IN-) v(OUT+)+2.2 v(OUT-)+2.2
.endc

.tran 0.01ns \{time_period*prds\}
.save all
"}
C {code.sym} -850 -390 0 0 {
name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false
      }
C {lab_pin.sym} 80 -180 0 0 {name=p5 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 80 -160 0 0 {name=p7 sig_type=std_logic lab=OUT+}
C {lab_pin.sym} 80 -140 0 0 {name=p12 sig_type=std_logic lab=OUT-}
C {lab_pin.sym} 80 -120 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 80 -100 0 0 {name=p19 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 80 -80 0 0 {name=p20 sig_type=std_logic lab=CLK_bar
}
C {lab_pin.sym} 80 -60 0 0 {name=p21 sig_type=std_logic lab=IN+}
C {lab_pin.sym} 80 -40 0 0 {name=p22 sig_type=std_logic lab=IN-}
C {code_shown.sym} -830 -200 0 0 {name=s2 only_toplevel=false value=
"
.param VSS=0 VCC=1.8 Vcm=1.45 Vdif=0.3 time_period=200ns prds=4 rise=100ps fall=100ps

VCC VCC 0 DC 1.8
VSS VSS 0 DC 0

V_CLK CLK 0 PULSE(\{VCC\} \{VSS\} 1ns \{rise\} \{fall\} \{time_period/2\} \{time_period\} \{prds\})
V_CLK_bar CLK_bar 0 PULSE(\{VSS\} \{VCC\} 1ns \{rise\} \{fall\} \{time_period/2\} \{time_period\} \{prds\})

V_IN+ IN+ 0 PULSE(\{Vcm+Vdif\} \{Vcm-Vdif\} 0 100ps 100ps \{time_period\} \{time_period*2\} \{prds\})
V_IN- IN- 0 PULSE(\{Vcm-Vdif\} \{Vcm+Vdif\} 0 100ps 100ps \{time_period\} \{time_period*2\} \{prds/2\})

.control

  foreach vdif 0.36 0.35 0.34 0.32 0.31 0.30 0.29 0.28 0.27 0.26
    alterparam Vdif = $vdif
    reset
    run
    plot v(IN+) v(IN-) v(OUT+)+2.2 v(OUT-)+2.2
  end
.endc

.tran 0.01ns \{time_period*prds\}
.save all
"}
