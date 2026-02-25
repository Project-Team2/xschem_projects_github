v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -90 30 -90 80 {lab=D}
N 110 30 110 80 {lab=D_bar}
N -120 -100 -60 -100 {lab=Q}
N -60 -100 -10 -100 {lab=Q}
N -10 -100 20 -130 {lab=Q}
N 20 -130 40 -130 {lab=Q}
N -20 -130 -10 -130 {lab=Q_bar}
N -10 -130 20 -100 {lab=Q_bar}
N -90 -100 -90 -30 {lab=Q}
N 110 -100 110 -30 {lab=Q_bar}
N 20 -100 140 -100 {lab=Q_bar}
N -0 -230 -0 -200 {lab=vcc}
N -120 -200 -120 -160 {lab=vcc}
N -120 -200 140 -200 {lab=vcc}
N 140 -200 140 -160 {lab=vcc}
N 80 -200 80 -160 {lab=vcc}
N -60 -200 -60 -160 {lab=vcc}
N 50 250 50 290 {lab=vss}
N -30 250 -30 290 {lab=vss}
N -30 110 -30 190 {lab=Q_bar}
N 50 110 50 190 {lab=Q}
N 50 -30 110 -30 {lab=Q_bar}
N 50 -30 50 50 {lab=Q_bar}
N -30 80 50 50 {lab=Q_bar}
N -30 80 -30 110 {lab=Q_bar}
N -90 -30 -30 -30 {lab=Q}
N -30 -30 -30 50 {lab=Q}
N -30 50 50 80 {lab=Q}
N 50 80 50 110 {lab=Q}
N -90 -0 -80 -0 {lab=D}
N -80 0 -80 30 {lab=D}
N -90 30 -80 30 {lab=D}
N 100 0 110 0 {lab=D_bar}
N 100 0 100 30 {lab=D_bar}
N 100 30 110 30 {lab=D_bar}
N 110 110 120 110 {lab=vss}
N 120 110 120 140 {lab=vss}
N 110 140 120 140 {lab=vss}
N -100 110 -90 110 {lab=vss}
N -100 110 -100 140 {lab=vss}
N -100 140 -90 140 {lab=vss}
N 40 220 50 220 {lab=vss}
N 40 220 40 250 {lab=vss}
N 40 250 50 250 {lab=vss}
N -30 220 -20 220 {lab=vss}
N -20 220 -20 250 {lab=vss}
N -30 250 -20 250 {lab=vss}
N -70 -130 -60 -130 {lab=vcc}
N -70 -160 -70 -130 {lab=vcc}
N -70 -160 -60 -160 {lab=vcc}
N -120 -130 -110 -130 {lab=vcc}
N -110 -160 -110 -130 {lab=vcc}
N -120 -160 -110 -160 {lab=vcc}
N 80 -130 90 -130 {lab=vcc}
N 90 -160 90 -130 {lab=vcc}
N 80 -160 90 -160 {lab=vcc}
N 130 -130 140 -130 {lab=vcc}
N 130 -160 130 -130 {lab=vcc}
N 130 -160 140 -160 {lab=vcc}
N -310 -130 -280 -130 {lab=S}
N -110 -60 -90 -60 {lab=Q}
N 110 -60 140 -60 {lab=Q_bar}
N 10 290 10 320 {lab=vss}
N -290 -130 -290 220 {lab=S}
N -220 -200 -220 -170 {lab=vcc}
N -220 -200 -120 -200 {lab=vcc}
N -290 220 -70 220 {lab=S}
N -160 -130 -160 -0 {lab=#net1}
N -160 -0 -130 0 {lab=#net1}
N 240 -200 240 -170 {lab=vcc}
N 140 -200 240 -200 {lab=vcc}
N 300 -130 330 -130 {lab=R}
N 180 -130 180 0 {lab=#net2}
N 150 0 180 0 {lab=#net2}
N 310 -130 310 220 {lab=R}
N 90 220 310 220 {lab=R}
N -220 290 240 290 {lab=vss}
N 110 140 110 290 {lab=vss}
N -90 140 -90 290 {lab=vss}
N 50 110 70 110 {lab=Q}
N -50 110 -30 110 {lab=Q_bar}
C {sky130_fd_pr/pfet_01v8.sym} -40 -130 0 1 {name=M3
L=0.15
W=1
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -140 -130 0 0 {name=M1
L=0.15
W=1
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 160 -130 0 1 {name=M2
L=0.15
W=1
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 60 -130 0 0 {name=M4
L=0.15
W=1
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -110 0 0 0 {name=M5
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 130 0 0 1 {name=M6
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -70 110 0 1 {name=M7
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 90 110 0 0 {name=M8
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -50 220 0 0 {name=M10
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 70 220 0 1 {name=M9
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {iopin.sym} -600 -260 0 1 {name=p9 lab=VCC}
C {iopin.sym} -600 -60 0 1 {name=p2 lab=VSS}
C {inv.sym} -220 -130 0 0 {name=x1}
C {inv.sym} 240 -130 0 1 {name=x2}
C {iopin.sym} -600 -220 0 1 {name=p7 lab=S}
C {iopin.sym} -600 -180 0 1 {name=p8 lab=R}
C {iopin.sym} -600 -140 0 1 {name=p10 lab=Q}
C {iopin.sym} -600 -100 0 1 {name=p11 lab=Q_bar}
C {lab_pin.sym} 10 320 0 0 {name=p1 sig_type=std_logic lab=vss}
C {lab_pin.sym} 0 -230 0 1 {name=p12 sig_type=std_logic lab=vcc}
C {lab_pin.sym} -600 -260 0 1 {name=p3 sig_type=std_logic lab=VCC}
C {lab_pin.sym} -600 -60 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -600 -100 0 1 {name=p6 sig_type=std_logic lab=Q_bar}
C {lab_pin.sym} -600 -140 0 1 {name=p14 sig_type=std_logic lab=Q}
C {lab_pin.sym} -600 -180 0 1 {name=p15 sig_type=std_logic lab=R}
C {lab_pin.sym} -600 -220 0 1 {name=p16 sig_type=std_logic lab=S}
C {lab_pin.sym} -110 -60 0 0 {name=p17 sig_type=std_logic lab=Q}
C {lab_pin.sym} 140 -60 0 1 {name=p18 sig_type=std_logic lab=Q_bar}
C {lab_pin.sym} -310 -130 0 0 {name=p19 sig_type=std_logic lab=S}
C {lab_pin.sym} -220 -90 0 1 {name=p4 sig_type=std_logic lab=vss}
C {lab_pin.sym} 330 -130 0 1 {name=p20 sig_type=std_logic lab=R}
C {lab_pin.sym} 240 -90 0 0 {name=p21 sig_type=std_logic lab=vss}
C {lab_pin.sym} -90 50 0 0 {name=p13 sig_type=std_logic lab=D}
C {lab_pin.sym} 110 50 0 1 {name=p22 sig_type=std_logic lab=D_bar}
