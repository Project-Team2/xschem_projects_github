v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -640 -420 -640 -320 {lab=q}
N -500 -420 -500 -320 {lab=q_bar}
N -600 -450 -600 -290 {lab=q_bar}
N -540 -450 -540 -290 {lab=q}
N -600 -400 -500 -400 {lab=q_bar}
N -860 -360 -830 -360 {lab=BL}
N -500 -360 -360 -360 {lab=q_bar}
N -890 -230 -780 -230 {lab=read}
N -800 -550 -800 -400 {lab=WL}
N -800 -550 -330 -550 {lab=WL}
N -330 -550 -330 -400 {lab=WL}
N -800 -630 -800 -550 {lab=WL}
N -750 -340 -640 -340 {lab=q}
N -750 -340 -750 -270 {lab=q}
N -640 -260 -640 -160 {lab=GND}
N -500 -260 -500 -160 {lab=GND}
N -920 -630 -920 -270 {lab=RBL}
N -650 -450 -640 -450 {lab=VCC}
N -650 -480 -650 -450 {lab=VCC}
N -650 -480 -640 -480 {lab=VCC}
N -500 -450 -490 -450 {lab=VCC}
N -490 -480 -490 -450 {lab=VCC}
N -500 -480 -490 -480 {lab=VCC}
N -650 -290 -640 -290 {lab=GND}
N -650 -290 -650 -260 {lab=GND}
N -650 -260 -640 -260 {lab=GND}
N -500 -290 -490 -290 {lab=GND}
N -490 -290 -490 -260 {lab=GND}
N -500 -260 -490 -260 {lab=GND}
N -330 -360 -330 -160 {lab=GND}
N -800 -360 -800 -160 {lab=GND}
N -1100 -160 -330 -160 {lab=GND}
N -330 -160 -10 -160 {lab=GND}
N -860 -630 -860 -300 {lab=BL}
N -300 -630 -300 -300 {lab=BLB}
N -640 -500 -640 -480 {lab=VCC}
N -640 -500 -500 -500 {lab=VCC}
N -500 -500 -500 -480 {lab=VCC}
N -570 -660 -570 -500 {lab=VCC}
N -640 -360 -540 -360 {lab=q}
N -770 -360 -640 -360 {lab=q}
N -700 -380 -700 -360 {lab=q}
N -420 -380 -420 -360 {lab=q_bar}
N -570 -160 -570 -130 {lab=GND}
N -1560 -320 -1560 -300 {lab=GND}
N -1560 -410 -1560 -380 {lab=RBL}
N -1500 -320 -1500 -300 {lab=GND}
N -1500 -410 -1500 -380 {lab=BL}
N -1440 -320 -1440 -300 {lab=GND}
N -1440 -410 -1440 -380 {lab=WL}
N -1370 -320 -1370 -300 {lab=GND}
N -1370 -410 -1370 -380 {lab=BLB}
N -1040 -230 -1040 -160 {lab=GND}
N -980 -230 -950 -230 {lab=mac}
N -1310 -320 -1310 -300 {lab=GND}
N -1310 -410 -1310 -380 {lab=VCC}
N -690 -230 -690 -210 {lab=VCC}
N -720 -230 -690 -230 {lab=VCC}
N -1010 -230 -1010 -220 {lab=GND}
N -1040 -220 -1010 -220 {lab=GND}
N -920 -230 -920 -160 {lab=GND}
N -750 -230 -750 -160 {lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} -520 -290 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} -620 -290 0 1 {name=M2
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
C {sky130_fd_pr/pfet_01v8.sym} -520 -450 0 0 {name=M3
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
C {sky130_fd_pr/pfet_01v8.sym} -620 -450 0 1 {name=M4
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
C {sky130_fd_pr/nfet_01v8.sym} -330 -380 1 0 {name=M5
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
C {sky130_fd_pr/nfet_01v8.sym} -800 -380 1 0 {name=M8
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
C {lab_pin.sym} -920 -630 0 0 {name=p3 sig_type=std_logic lab=RBL}
C {lab_pin.sym} -860 -630 0 0 {name=p4 sig_type=std_logic lab=BL}
C {lab_pin.sym} -800 -630 0 0 {name=p5 sig_type=std_logic lab=WL}
C {lab_pin.sym} -300 -630 0 0 {name=p6 sig_type=std_logic lab=BLB
}
C {lab_pin.sym} -700 -380 0 0 {name=p11 sig_type=std_logic lab=q}
C {lab_pin.sym} -420 -380 0 0 {name=p10 sig_type=std_logic lab=q_bar}
C {code_shown.sym} -1370 -770 0 0 {name=s2 only_toplevel=false value=
"
**vcc vcc 0 DC 1.8
**vss vss 0 DC 0



.tran 0.01ns 25ns
.control
run
plot q q_bar BL+4 BLB+2 WL+6
.endc
.saveall

"}
C {lab_pin.sym} -1560 -410 0 0 {name=p8 sig_type=std_logic lab=RBL}
C {lab_pin.sym} -1500 -410 0 0 {name=p9 sig_type=std_logic lab=BL}
C {lab_pin.sym} -1440 -410 0 0 {name=p12 sig_type=std_logic lab=WL}
C {lab_pin.sym} -1370 -410 0 0 {name=p13 sig_type=std_logic lab=BLB
}
C {vsource.sym} -1560 -350 0 0 {name=V2 value=1.8 savecurrent=false}
C {gnd.sym} -1560 -300 0 0 {name=l4 lab=GND}
C {vsource.sym} -1500 -350 0 0 {name=V3 value="PULSE(0 1.8 1ns 100ps 100ps 5ns 10ns 2)" savecurrent=false}
C {gnd.sym} -1500 -300 0 0 {name=l5 lab=GND}
C {vsource.sym} -1440 -350 0 0 {name=V4 value="PULSE(0 1.8 2ns 100ps 100ps 3ns 5ns 4)" savecurrent=false}
C {gnd.sym} -1440 -300 0 0 {name=l6 lab=GND}
C {vsource.sym} -1370 -350 0 0 {name=V5 value="PULSE(0 1.8 6ns 100ps 100ps 5ns 10ns 2)" savecurrent=false}
C {gnd.sym} -1370 -300 0 0 {name=l7 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} -1010 -250 1 0 {name=M9
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
C {lab_pin.sym} -960 -230 1 0 {name=p14 sig_type=std_logic lab=mac}
C {code_shown.sym} -1610 -880 0 0 {
name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false
      }
C {lab_pin.sym} -1310 -410 0 0 {name=p1 sig_type=std_logic lab=VCC
}
C {vsource.sym} -1310 -350 0 0 {name=VSS value=1.8 savecurrent=false
lab=vcc}
C {gnd.sym} -1310 -300 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -570 -660 0 0 {name=p7 sig_type=std_logic lab=VCC
}
C {gnd.sym} -570 -130 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -690 -210 0 0 {name=p15 sig_type=std_logic lab=VCC
}
C {lab_pin.sym} -850 -230 1 0 {name=p16 sig_type=std_logic lab=read}
C {sky130_fd_pr/nfet_01v8.sym} -920 -250 1 0 {name=M6
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
C {sky130_fd_pr/nfet_01v8.sym} -750 -250 1 0 {name=M7
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
C {lab_pin.sym} -1010 -270 0 0 {name=p2 sig_type=std_logic lab=VCC
}
