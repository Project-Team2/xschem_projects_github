v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 30 40 30 60 {lab=#net1}
N 30 -220 30 -170 {lab=VCC}
N -70 -170 30 -170 {lab=VCC}
N -70 -140 -60 -140 {lab=VCC}
N -60 -170 -60 -140 {lab=VCC}
N 30 -140 40 -140 {lab=VCC}
N 40 -170 40 -140 {lab=VCC}
N 30 -170 40 -170 {lab=VCC}
N 30 120 30 170 {lab=VSS}
N 30 10 40 10 {lab=VSS}
N 40 10 40 120 {lab=VSS}
N 30 120 40 120 {lab=VSS}
N 30 90 40 90 {lab=VSS}
N -110 90 -10 90 {lab=B}
N -110 -140 -110 90 {lab=B}
N -10 -140 -10 10 {lab=A}
N -70 -110 30 -110 {lab=Y}
N 30 -110 30 -20 {lab=Y}
N 30 -50 130 -50 {lab=Y}
C {sky130_fd_pr/nfet_01v8.sym} 10 90 0 0 {name=M2
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 10 -140 0 0 {name=M11
L=0.15
W=1
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 10 10 0 0 {name=M1
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {iopin.sym} 30 -220 0 1 {name=p9 lab=VCC}
C {iopin.sym} 30 170 0 1 {name=p2 lab=VSS}
C {iopin.sym} 130 -50 0 0 {name=p3 lab=Y}
C {iopin.sym} -10 10 0 1 {name=p4 lab=A}
C {iopin.sym} -10 90 0 1 {name=p5 lab=B}
C {sky130_fd_pr/pfet_01v8.sym} -90 -140 0 0 {name=M3
L=0.15
W=1
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
