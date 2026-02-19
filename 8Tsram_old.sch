v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -70 -170 -70 -70 {lab=q}
N 70 -170 70 -70 {lab=q_bar}
N -30 -200 -30 -40 {lab=q_bar}
N 30 -200 30 -40 {lab=q}
N -30 -150 70 -150 {lab=q_bar}
N -290 -110 -260 -110 {lab=BL}
N 70 -110 210 -110 {lab=q_bar}
N -320 20 -210 20 {lab=#net1}
N -230 -300 -230 -150 {lab=WL}
N -230 -300 240 -300 {lab=WL}
N 240 -300 240 -150 {lab=WL}
N -230 -380 -230 -300 {lab=WL}
N -180 -90 -70 -90 {lab=q}
N -180 -90 -180 -20 {lab=q}
N -70 -10 -70 90 {lab=VSS}
N 70 -10 70 90 {lab=VSS}
N -150 20 -70 20 {lab=VSS}
N -180 20 -180 30 {lab=VSS}
N -180 30 -150 30 {lab=VSS}
N -150 20 -150 30 {lab=VSS}
N -350 20 -310 30 {lab=VSS}
N -310 30 -180 30 {lab=VSS}
N -350 -380 -350 -20 {lab=RBL}
N -80 -200 -70 -200 {lab=VCC}
N -80 -230 -80 -200 {lab=VCC}
N -80 -230 -70 -230 {lab=VCC}
N 70 -200 80 -200 {lab=VCC}
N 80 -230 80 -200 {lab=VCC}
N 70 -230 80 -230 {lab=VCC}
N -80 -40 -70 -40 {lab=VSS}
N -80 -40 -80 -10 {lab=VSS}
N -80 -10 -70 -10 {lab=VSS}
N 70 -40 80 -40 {lab=VSS}
N 80 -40 80 -10 {lab=VSS}
N 70 -10 80 -10 {lab=VSS}
N 240 -110 240 90 {lab=VSS}
N -230 -110 -230 90 {lab=VSS}
N -530 90 240 90 {lab=VSS}
N 240 90 560 90 {lab=VSS}
N -290 -380 -290 -50 {lab=BL}
N 270 -380 270 -50 {lab=BLB}
N -70 -250 -70 -230 {lab=VCC}
N -70 -250 70 -250 {lab=VCC}
N 70 -250 70 -230 {lab=VCC}
N 0 -410 -0 -250 {lab=VCC}
N -0 90 -0 110 {lab=VSS}
N -70 -110 30 -110 {lab=q}
N -200 -110 -70 -110 {lab=q}
N -130 -130 -130 -110 {lab=q}
N 150 -130 150 -110 {lab=q_bar}
C {sky130_fd_pr/nfet_01v8.sym} 50 -40 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} -50 -40 0 1 {name=M2
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
C {sky130_fd_pr/pfet_01v8.sym} 50 -200 0 0 {name=M3
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -50 -200 0 1 {name=Mup
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
model=pfet_01v8
spiceprefix=X
}
C {vdd.sym} 0 -410 0 0 {name=l3 lab=VCC}
C {sky130_fd_pr/nfet_01v8.sym} 240 -130 1 0 {name=M5
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
C {sky130_fd_pr/nfet_01v8.sym} -350 0 1 0 {name=M6
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
C {sky130_fd_pr/nfet_01v8.sym} -180 0 1 0 {name=M7
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
C {sky130_fd_pr/nfet_01v8.sym} -230 -130 1 0 {name=M8
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
C {lab_pin.sym} -350 -380 0 0 {name=p1 sig_type=std_logic lab=RBL}
C {lab_pin.sym} -290 -380 0 0 {name=p2 sig_type=std_logic lab=BL}
C {lab_pin.sym} -230 -380 0 0 {name=p3 sig_type=std_logic lab=WL}
C {lab_pin.sym} 270 -380 0 0 {name=p4 sig_type=std_logic lab=BLB
}
C {iopin.sym} -640 -350 0 0 {name=p5 lab=WL}
C {iopin.sym} -640 -320 0 0 {name=p6 lab=BL}
C {iopin.sym} -640 -290 0 0 {name=p7 lab=BLB}
C {iopin.sym} -640 -260 0 0 {name=p8 lab=RBL}
C {iopin.sym} -640 -230 0 0 {name=p9 lab=VCC}
C {code_shown.sym} -940 -370 0 0 {name=s2 only_toplevel=false value=
"
vcc vcc 0 DC 1.8
vss vss 0 DC 0

VWL WL 0 PWL(0ns 0V 0ns 0.7V 5ns 0.7V 5.1ns 0V)
VBL BL 0 PWL(0ns 0V 0ns 0.7V 6ns 0.7V 6.1ns 0V)
VBLB BLB 0 PWL(0ns 0V 0ns 0V 6ns 0V 6.1ns 0V)

.tran 0.1ns 20ns
.control
run
plot v(q)
.endc
.saveall



"}
C {iopin.sym} 0 110 0 0 {name=p13 lab=VSS}
C {lab_pin.sym} -130 -130 0 0 {name=p11 sig_type=std_logic lab=q}
C {lab_pin.sym} 150 -130 0 0 {name=p10 sig_type=std_logic lab=q_bar}
