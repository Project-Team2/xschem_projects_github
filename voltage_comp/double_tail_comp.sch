v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 490 -490 490 -450 {lab=OUT-}
N 450 -520 450 -420 {lab=OUT+}
N 320 -490 320 -450 {lab=OUT+}
N 360 -520 360 -420 {lab=OUT-}
N 320 -480 450 -480 {lab=OUT+}
N 360 -460 490 -460 {lab=OUT-}
N 310 -30 490 -30 {lab=#net1}
N 310 -130 310 -90 {lab=Di-}
N 490 -130 490 -90 {lab=Di+}
N 230 -420 230 -110 {lab=Di-}
N 230 -110 310 -110 {lab=Di-}
N 580 -420 580 -110 {lab=Di+}
N 490 -110 580 -110 {lab=Di+}
N 400 -360 400 -340 {lab=VSS}
N 270 -390 320 -390 {lab=VSS}
N 490 -390 540 -390 {lab=VSS}
N 510 -390 510 -360 {lab=VSS}
N 300 -360 510 -360 {lab=VSS}
N 300 -390 300 -360 {lab=VSS}
N 400 -630 400 -610 {lab=VCC}
N 410 -240 410 -220 {lab=VCC}
N 310 -220 310 -190 {lab=VCC}
N 310 -220 490 -220 {lab=VCC}
N 490 -220 490 -190 {lab=VCC}
N 400 -580 410 -580 {lab=VCC}
N 410 -610 410 -580 {lab=VCC}
N 400 -610 410 -610 {lab=VCC}
N 310 -520 320 -520 {lab=#net2}
N 310 -550 310 -520 {lab=#net2}
N 310 -550 320 -550 {lab=#net2}
N 490 -520 500 -520 {lab=#net2}
N 500 -550 500 -520 {lab=#net2}
N 490 -550 500 -550 {lab=#net2}
N 300 -160 310 -160 {lab=VCC}
N 300 -190 300 -160 {lab=VCC}
N 300 -190 310 -190 {lab=VCC}
N 490 -160 500 -160 {lab=VCC}
N 500 -190 500 -160 {lab=VCC}
N 490 -190 500 -190 {lab=VCC}
N 400 30 410 30 {lab=VSS}
N 410 0 410 30 {lab=VSS}
N 400 0 410 0 {lab=VSS}
N 480 -60 480 -30 {lab=#net1}
N 480 -60 490 -60 {lab=#net1}
N 320 -60 320 -30 {lab=#net1}
N 310 -60 320 -60 {lab=#net1}
N 530 -420 530 -390 {lab=VSS}
N 530 -420 540 -420 {lab=VSS}
N 500 -420 500 -390 {lab=VSS}
N 490 -420 500 -420 {lab=VSS}
N 310 -420 310 -390 {lab=VSS}
N 310 -420 320 -420 {lab=VSS}
N 280 -420 280 -390 {lab=VSS}
N 270 -420 280 -420 {lab=VSS}
N 180 -480 320 -480 {lab=OUT+}
N 490 -480 630 -480 {lab=OUT-}
N 180 -60 270 -60 {lab=IN+}
N 530 -60 630 -60 {lab=IN-}
N 400 30 400 50 {lab=VSS}
N 350 -160 450 -160 {lab=CLK}
N 400 -180 400 -160 {lab=CLK}
N 490 -450 540 -450 {lab=OUT-}
N 270 -450 320 -450 {lab=OUT+}
N 320 -550 400 -550 {lab=#net2}
N 400 -550 490 -550 {lab=#net2}
N 410 30 480 30 {lab=VSS}
N 460 -0 460 30 {lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 470 -420 0 0 {name=M2
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 470 -520 0 0 {name=M11
L=0.15
W=1
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 340 -420 0 1 {name=M1
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 340 -520 0 1 {name=M3
L=0.15
W=1
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 250 -420 0 0 {name=M4
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 560 -420 0 1 {name=M5
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 380 -580 0 0 {name=M6
L=0.15
W=1
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 330 -160 0 1 {name=M8
L=0.15
W=1
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 290 -60 0 0 {name=M9
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 470 -160 0 0 {name=M7
L=0.15
W=1
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 510 -60 0 1 {name=M10
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 380 0 0 0 {name=M12
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {iopin.sym} 0 -600 0 1 {name=p6 lab=OUT-}
C {iopin.sym} 0 -560 0 1 {name=p8 lab=VSS}
C {iopin.sym} 0 -680 0 1 {name=p9 lab=VCC}
C {iopin.sym} 0 -640 0 1 {name=p2 lab=OUT+}
C {iopin.sym} 0 -440 0 1 {name=p3 lab=IN+}
C {iopin.sym} 0 -400 0 1 {name=p4 lab=IN-}
C {iopin.sym} 0 -520 0 1 {name=p10 lab=CLK}
C {iopin.sym} 0 -480 0 1 {name=p11 lab=CLK_bar}
C {lab_pin.sym} 230 -280 0 0 {name=p12 sig_type=std_logic lab=Di-}
C {lab_pin.sym} 580 -280 0 1 {name=p13 sig_type=std_logic lab=Di+}
C {lab_pin.sym} 0 -680 0 1 {name=p1 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 0 -560 0 1 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 0 -600 0 1 {name=p15 sig_type=std_logic lab=OUT-}
C {lab_pin.sym} 0 -640 0 1 {name=p16 sig_type=std_logic lab=OUT+}
C {lab_pin.sym} 0 -520 0 1 {name=p17 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 0 -480 0 1 {name=p18 sig_type=std_logic lab=CLK_bar
}
C {lab_pin.sym} 400 -630 0 1 {name=p19 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 410 -240 0 1 {name=p20 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 630 -480 0 1 {name=p21 sig_type=std_logic lab=OUT-}
C {lab_pin.sym} 180 -480 0 0 {name=p22 sig_type=std_logic lab=OUT+}
C {lab_pin.sym} 400 50 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 400 -180 0 1 {name=p23 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 0 -440 0 1 {name=p25 sig_type=std_logic lab=IN+}
C {lab_pin.sym} 0 -400 0 1 {name=p26 sig_type=std_logic lab=IN-}
C {lab_pin.sym} 180 -60 0 0 {name=p27 sig_type=std_logic lab=IN+}
C {lab_pin.sym} 630 -60 0 1 {name=p28 sig_type=std_logic lab=IN-}
C {lab_pin.sym} 400 -340 0 1 {name=p29 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 360 0 0 0 {name=p7 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 360 -580 0 0 {name=p24 sig_type=std_logic lab=CLK_bar
}
