v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 160 -170 160 -150 {lab=#net1}
N 0 -30 160 -30 {lab=Y}
N 0 30 160 30 {lab=VSS}
N 160 -90 160 -30 {lab=Y}
N 160 -270 160 -230 {lab=VCC}
N 160 30 160 80 {lab=VSS}
N -40 -200 -40 -0 {lab=A}
N -40 -200 120 -200 {lab=A}
N 120 -120 120 0 {lab=B}
N 160 -60 270 -60 {lab=Y}
N 160 -200 170 -200 {lab=VCC}
N 170 -230 170 -200 {lab=VCC}
N 160 -230 170 -230 {lab=VCC}
N 160 -120 170 -120 {lab=VCC}
N 170 -200 170 -120 {lab=VCC}
N -0 -0 10 0 {lab=VSS}
N 10 0 10 30 {lab=VSS}
N 160 -0 170 -0 {lab=VSS}
N 170 -0 170 30 {lab=VSS}
N 160 30 170 30 {lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 140 0 0 0 {name=M2
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 140 -120 0 0 {name=M11
L=0.15
W=1
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -20 0 0 0 {name=M1
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 140 -200 0 0 {name=M3
L=0.15
W=1
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {iopin.sym} 160 -270 0 1 {name=p9 lab=VCC}
C {iopin.sym} 160 80 0 1 {name=p2 lab=VSS}
C {iopin.sym} 270 -60 0 0 {name=p3 lab=Y}
C {iopin.sym} -40 0 0 1 {name=p4 lab=A}
C {iopin.sym} 120 0 0 1 {name=p5 lab=B}
