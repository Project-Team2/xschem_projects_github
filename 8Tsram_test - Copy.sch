v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -640 110 -640 130 {lab=GND}
N -640 20 -640 50 {lab=RBL}
N -810 430 -810 450 {lab=GND}
N -810 340 -810 370 {lab=BL}
N -560 270 -560 290 {lab=GND}
N -560 180 -560 210 {lab=WL}
N -560 440 -560 460 {lab=GND}
N -560 350 -560 380 {lab=BLB}
N -640 270 -640 290 {lab=GND}
N -640 180 -640 210 {lab=VCC}
N -640 80 -630 80 {lab=GND}
N -630 80 -630 110 {lab=GND}
N -640 110 -630 110 {lab=GND}
N -730 270 -730 290 {lab=GND}
N -730 180 -730 210 {lab=RWL}
N -810 590 -810 610 {lab=GND}
N -810 500 -810 530 {lab=BL2}
N -560 600 -560 620 {lab=GND}
N -560 510 -560 540 {lab=BLB2}
C {code_shown.sym} -110 -160 0 0 {name=s2 only_toplevel=false value=
"
**vcc vcc 0 DC 1.8
**vss vss 0 DC 0


.tran 0.01ns 30ns
.control
run
* plot RBL WL+2 BL+2.1 BLB+2.1
plot RBL BL+2 BL2+4 BLB+6 BLB2+8 WL+10
.endc
.saveall

"}
C {lab_pin.sym} -640 20 0 0 {name=p8 sig_type=std_logic lab=RBL}
C {lab_pin.sym} -810 340 0 0 {name=p9 sig_type=std_logic lab=BL}
C {lab_pin.sym} -560 180 0 0 {name=p12 sig_type=std_logic lab=WL}
C {lab_pin.sym} -560 350 0 0 {name=p13 sig_type=std_logic lab=BLB
}
C {gnd.sym} -640 130 0 0 {name=l4 lab=GND}
C {vsource.sym} -810 400 0 0 {name=V3 value="PULSE(0 1.8 1ns 100ps 100ps 5ns 10ns 2)" savecurrent=false}
C {gnd.sym} -810 450 0 0 {name=l5 lab=GND}
C {vsource.sym} -560 240 0 0 {name=V4 value="PULSE(0 1.8 1.5ns 100ps 100ps 4ns 5ns 4)" savecurrent=false}
C {gnd.sym} -560 290 0 0 {name=l6 lab=GND}
C {vsource.sym} -560 410 0 0 {name=V5 value="PULSE(0 1.8 6ns 100ps 100ps 5ns 10ns 2)" savecurrent=false}
C {gnd.sym} -560 460 0 0 {name=l7 lab=GND}
C {code_shown.sym} -650 -140 0 0 {
name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false
      }
C {lab_pin.sym} -640 180 0 0 {name=p1 sig_type=std_logic lab=VCC
}
C {vsource.sym} -640 240 0 0 {name=VSS value=1.8 savecurrent=false
lab=vcc}
C {gnd.sym} -640 290 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -20 220 2 1 {name=p2 sig_type=std_logic lab=RBL}
C {lab_pin.sym} -20 200 2 1 {name=p3 sig_type=std_logic lab=BL}
C {lab_pin.sym} -20 160 2 1 {name=p4 sig_type=std_logic lab=WL}
C {lab_pin.sym} -20 180 2 1 {name=p5 sig_type=std_logic lab=BLB
}
C {lab_pin.sym} -20 140 2 1 {name=p6 sig_type=std_logic lab=VCC
}
C {gnd.sym} -20 260 1 1 {name=l2 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} -660 80 0 0 {name=M6
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
C {lab_pin.sym} -680 80 0 0 {name=p7 sig_type=std_logic lab=VCC
}
C {8T_sram_cell.sym} 510 200 0 1 {name=x1}
C {lab_pin.sym} -730 180 0 0 {name=p17 sig_type=std_logic lab=RWL
}
C {vsource.sym} -730 240 0 0 {name=VSS1 value=1.8 savecurrent=false
lab=RWL}
C {lab_pin.sym} -30 240 0 0 {name=p18 sig_type=std_logic lab=RWL
}
C {lab_pin.sym} -20 400 2 1 {name=p10 sig_type=std_logic lab=RBL}
C {lab_pin.sym} -20 380 2 1 {name=p11 sig_type=std_logic lab=BL2}
C {lab_pin.sym} -20 340 2 1 {name=p14 sig_type=std_logic lab=WL}
C {lab_pin.sym} -20 360 2 1 {name=p15 sig_type=std_logic lab=BLB2
}
C {lab_pin.sym} -20 320 2 1 {name=p16 sig_type=std_logic lab=VCC
}
C {gnd.sym} -20 440 1 1 {name=l3 lab=GND}
C {8T_sram_cell.sym} 510 380 0 1 {name=x2}
C {lab_pin.sym} -20 420 0 0 {name=p19 sig_type=std_logic lab=RWL
}
C {lab_pin.sym} -810 500 0 0 {name=p20 sig_type=std_logic lab=BL2}
C {lab_pin.sym} -560 510 0 0 {name=p21 sig_type=std_logic lab=BLB2
}
C {vsource.sym} -810 560 0 0 {name=V1 value="PULSE(0 1.8 1ns 100ps 100ps 10ns 20ns 1)" savecurrent=false}
C {gnd.sym} -810 610 0 0 {name=l9 lab=GND}
C {vsource.sym} -560 570 0 0 {name=V2 value="PULSE(0 1.8 11ns 100ps 100ps 10ns 20ns 1)" savecurrent=false}
C {gnd.sym} -560 620 0 0 {name=l10 lab=GND}
C {gnd.sym} -730 290 0 0 {name=l8 lab=GND}
