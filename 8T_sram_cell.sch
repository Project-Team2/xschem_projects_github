v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -630 -420 -630 -320 {lab=q}
N -490 -420 -490 -320 {lab=q_bar}
N -590 -450 -590 -290 {lab=q_bar}
N -530 -450 -530 -290 {lab=q}
N -590 -400 -490 -400 {lab=q_bar}
N -850 -360 -820 -360 {lab=BL}
N -490 -360 -350 -360 {lab=q_bar}
N -790 -550 -790 -400 {lab=WL}
N -790 -550 -320 -550 {lab=WL}
N -320 -550 -320 -400 {lab=WL}
N -790 -630 -790 -550 {lab=WL}
N -740 -340 -630 -340 {lab=q}
N -740 -340 -740 -270 {lab=q}
N -630 -260 -630 -160 {lab=VSS}
N -490 -260 -490 -160 {lab=VSS}
N -640 -450 -630 -450 {lab=VCC}
N -640 -480 -640 -450 {lab=VCC}
N -640 -480 -630 -480 {lab=VCC}
N -490 -450 -480 -450 {lab=VCC}
N -480 -480 -480 -450 {lab=VCC}
N -490 -480 -480 -480 {lab=VCC}
N -640 -290 -630 -290 {lab=VSS}
N -640 -290 -640 -260 {lab=VSS}
N -640 -260 -630 -260 {lab=VSS}
N -490 -290 -480 -290 {lab=VSS}
N -480 -290 -480 -260 {lab=VSS}
N -490 -260 -480 -260 {lab=VSS}
N -320 -360 -320 -160 {lab=VSS}
N -790 -360 -790 -160 {lab=VSS}
N -1090 -160 -320 -160 {lab=VSS}
N -320 -160 0 -160 {lab=VSS}
N -850 -630 -850 -300 {lab=BL}
N -290 -630 -290 -300 {lab=BLB}
N -630 -500 -630 -480 {lab=VCC}
N -630 -500 -490 -500 {lab=VCC}
N -490 -500 -490 -480 {lab=VCC}
N -630 -360 -530 -360 {lab=q}
N -760 -360 -630 -360 {lab=q}
N -690 -380 -690 -360 {lab=q}
N -410 -380 -410 -360 {lab=q_bar}
N -560 -160 -560 -130 {lab=VSS}
N 30 -550 30 -270 {lab=RBL}
N 30 -630 30 -550 {lab=RBL}
N -110 -260 -110 -160 {lab=VSS}
N -1090 -780 0 -780 {lab=VCC}
N -560 -780 -560 -500 {lab=VCC}
N -560 -800 -560 -780 {lab=VCC}
N -110 -360 -110 -320 {lab=#net1}
N -110 -360 -70 -360 {lab=#net1}
N -10 -360 30 -360 {lab=RBL}
N -40 -630 -40 -400 {lab=RWL}
N -370 -290 -150 -290 {lab=q_bar}
N -370 -360 -370 -290 {lab=q_bar}
N -40 -360 -40 -160 {lab=VSS}
N -110 -290 -100 -290 {lab=VSS}
N -100 -290 -100 -260 {lab=VSS}
N -110 -260 -100 -260 {lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} -510 -290 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} -610 -290 0 1 {name=M2
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
C {sky130_fd_pr/pfet_01v8.sym} -510 -450 0 0 {name=M3
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
C {sky130_fd_pr/pfet_01v8.sym} -610 -450 0 1 {name=M4
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
C {sky130_fd_pr/nfet_01v8.sym} -320 -380 1 0 {name=M5
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
C {sky130_fd_pr/nfet_01v8.sym} -790 -380 1 0 {name=M8
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
C {lab_pin.sym} -690 -380 0 0 {name=p11 sig_type=std_logic lab=q}
C {lab_pin.sym} -410 -380 0 0 {name=p10 sig_type=std_logic lab=q_bar}
C {iopin.sym} -560 -800 0 0 {name=p1 lab=VCC}
C {iopin.sym} -290 -630 0 0 {name=p8 lab=BLB}
C {iopin.sym} -790 -630 0 0 {name=p9 lab=WL}
C {iopin.sym} -850 -630 0 0 {name=p12 lab=BL}
C {iopin.sym} -560 -130 0 0 {name=p22 lab=VSS}
C {iopin.sym} 30 -630 0 0 {name=p3 lab=RBL}
C {iopin.sym} -40 -630 0 0 {name=p2 lab=RWL}
C {sky130_fd_pr/nfet_01v8.sym} -130 -290 0 0 {name=M6
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
C {sky130_fd_pr/nfet_01v8.sym} -40 -380 1 0 {name=M7
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
