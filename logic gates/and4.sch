v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -80 -60 -50 -60 {lab=#net1}
N -50 -60 -50 -30 {lab=#net1}
N -80 50 -50 50 {lab=#net2}
N -50 10 -50 50 {lab=#net2}
C {logic gates/nor.sym} -10 -10 0 0 {name=x1}
C {logic gates/nand.sym} -130 -60 0 0 {name=x2}
C {logic gates/nand.sym} -130 50 0 0 {name=x3}
C {iopin.sym} 130 -520 0 0 {name=p2 lab=VSS}
C {iopin.sym} 130 -390 0 0 {name=p3 lab=Y}
C {iopin.sym} 130 -480 0 0 {name=p4 lab=A}
C {iopin.sym} 130 -460 0 0 {name=p5 lab=B}
C {iopin.sym} 130 -440 0 0 {name=p1 lab=C}
C {iopin.sym} 130 -540 0 0 {name=p6 lab=VCC}
C {iopin.sym} 130 -420 0 0 {name=p7 lab=D}
C {lab_pin.sym} 130 -540 0 0 {name=p8 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 130 -520 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -170 -80 0 0 {name=p10 sig_type=std_logic lab=A}
C {lab_pin.sym} -170 -40 0 0 {name=p11 sig_type=std_logic lab=B}
C {lab_pin.sym} -170 30 0 0 {name=p12 sig_type=std_logic lab=C}
C {lab_pin.sym} -170 70 0 0 {name=p13 sig_type=std_logic lab=D}
C {lab_pin.sym} 40 -10 0 1 {name=p14 sig_type=std_logic lab=Y}
C {lab_pin.sym} -10 -40 0 1 {name=p15 sig_type=std_logic lab=VCC}
C {lab_pin.sym} -130 90 0 1 {name=p16 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -130 -100 0 1 {name=p17 sig_type=std_logic lab=VCC}
C {lab_pin.sym} -10 20 0 1 {name=p18 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 130 -480 0 0 {name=p19 sig_type=std_logic lab=A}
C {lab_pin.sym} 130 -460 0 0 {name=p20 sig_type=std_logic lab=B}
C {lab_pin.sym} 130 -440 0 0 {name=p21 sig_type=std_logic lab=C}
C {lab_pin.sym} 130 -420 0 0 {name=p22 sig_type=std_logic lab=D}
C {lab_pin.sym} 130 -390 0 0 {name=p23 sig_type=std_logic lab=Y}
C {lab_pin.sym} -130 -20 0 1 {name=p24 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -130 10 0 1 {name=p25 sig_type=std_logic lab=VCC}
