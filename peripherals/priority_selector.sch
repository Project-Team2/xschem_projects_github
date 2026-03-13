v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -320 -10 -260 -10 {lab=I7}
N -260 -80 -260 -10 {lab=I7}
N -140 -160 -140 -120 {lab=I8}
N -260 -10 -140 -10 {lab=I7}
N -320 100 -260 100 {lab=I6}
N -260 30 -260 100 {lab=I6}
N -260 100 -140 100 {lab=I6}
N -320 210 -260 210 {lab=I5}
N -260 140 -260 210 {lab=I5}
N -260 210 -140 210 {lab=I5}
N -320 320 -260 320 {lab=I4}
N -260 250 -260 320 {lab=I4}
N -260 320 -140 320 {lab=I4}
N -320 430 -260 430 {lab=I3}
N -260 360 -260 430 {lab=I3}
N -260 430 -140 430 {lab=I3}
N -320 540 -260 540 {lab=I2}
N -260 470 -260 540 {lab=I2}
N -260 540 -140 540 {lab=I2}
N -320 650 -260 650 {lab=I1}
N -260 580 -260 650 {lab=I1}
N -330 -200 -330 780 {lab=I[7..1]
bus=true}
N 70 -200 70 780 {lab=Y[7..1]
bus=true}
N -50 -100 60 -100 {lab=Y7}
N -50 10 60 10 {lab=Y6}
N -50 120 60 120 {lab=Y5}
N -50 230 60 230 {lab=Y4}
N -50 340 60 340 {lab=Y3}
N -50 450 60 450 {lab=Y2}
N -50 560 60 560 {lab=Y1}
N -320 -160 -140 -160 {lab=I8}
C {logic gates/nor.sym} -100 -100 0 0 {name=x1}
C {iopin.sym} -490 -300 0 1 {name=p1 lab=I[8..1]}
C {iopin.sym} -490 -280 0 1 {name=p3 lab=Y[7..1]}
C {bus_tap.sym} -330 -170 1 0 {name=l1 lab=8}
C {bus_tap.sym} -330 -20 1 0 {name=l2 lab=7}
C {inv.sym} -200 -80 0 0 {name=x3}
C {iopin.sym} -490 -320 0 1 {name=p7 lab=VSS}
C {iopin.sym} -490 -340 0 1 {name=p15 lab=VCC}
C {lab_pin.sym} -490 -340 0 1 {name=p16 sig_type=std_logic lab=VCC}
C {lab_pin.sym} -490 -320 0 1 {name=p17 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -200 -100 0 1 {name=p8 sig_type=std_logic lab=VCC}
C {lab_pin.sym} -100 -130 0 1 {name=p9 sig_type=std_logic lab=VCC}
C {lab_pin.sym} -200 -60 0 1 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -100 -70 0 1 {name=p11 sig_type=std_logic lab=VSS}
C {logic gates/nor.sym} -100 10 0 0 {name=x4}
C {inv.sym} -200 30 0 0 {name=x5}
C {lab_pin.sym} -200 10 0 1 {name=p12 sig_type=std_logic lab=VCC}
C {lab_pin.sym} -200 50 0 1 {name=p13 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -100 40 0 1 {name=p14 sig_type=std_logic lab=VSS}
C {bus_tap.sym} -330 90 1 0 {name=l5 lab=6}
C {logic gates/nor.sym} -100 120 0 0 {name=x6}
C {inv.sym} -200 140 0 0 {name=x7}
C {lab_pin.sym} -200 120 0 1 {name=p18 sig_type=std_logic lab=VCC}
C {lab_pin.sym} -200 160 0 1 {name=p19 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -100 150 0 1 {name=p20 sig_type=std_logic lab=VSS}
C {bus_tap.sym} -330 200 1 0 {name=l3 lab=5}
C {logic gates/nor.sym} -100 230 0 0 {name=x8}
C {inv.sym} -200 250 0 0 {name=x9}
C {lab_pin.sym} -200 230 0 1 {name=p21 sig_type=std_logic lab=VCC}
C {lab_pin.sym} -200 270 0 1 {name=p22 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -100 260 0 1 {name=p23 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -100 -20 0 1 {name=p24 sig_type=std_logic lab=VCC}
C {lab_pin.sym} -100 90 0 1 {name=p25 sig_type=std_logic lab=VCC}
C {lab_pin.sym} -100 200 0 1 {name=p26 sig_type=std_logic lab=VCC}
C {bus_tap.sym} -330 310 1 0 {name=l6 lab=4}
C {logic gates/nor.sym} -100 340 0 0 {name=x10}
C {inv.sym} -200 360 0 0 {name=x11}
C {lab_pin.sym} -200 340 0 1 {name=p27 sig_type=std_logic lab=VCC}
C {lab_pin.sym} -200 380 0 1 {name=p28 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -100 370 0 1 {name=p29 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -100 310 0 1 {name=p30 sig_type=std_logic lab=VCC}
C {bus_tap.sym} -330 420 1 0 {name=l7 lab=3}
C {logic gates/nor.sym} -100 450 0 0 {name=x12}
C {inv.sym} -200 470 0 0 {name=x13}
C {lab_pin.sym} -200 450 0 1 {name=p31 sig_type=std_logic lab=VCC}
C {lab_pin.sym} -200 490 0 1 {name=p32 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -100 480 0 1 {name=p33 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -100 420 0 1 {name=p34 sig_type=std_logic lab=VCC}
C {bus_tap.sym} -330 530 1 0 {name=l8 lab=2}
C {logic gates/nor.sym} -100 560 0 0 {name=x14}
C {inv.sym} -200 580 0 0 {name=x15}
C {lab_pin.sym} -200 560 0 1 {name=p35 sig_type=std_logic lab=VCC}
C {lab_pin.sym} -200 600 0 1 {name=p36 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -100 590 0 1 {name=p37 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -100 530 0 1 {name=p38 sig_type=std_logic lab=VCC}
C {bus_tap.sym} -330 640 1 0 {name=l9 lab=1}
C {bus_tap.sym} 70 -110 3 1 {name=l10 lab=7}
C {bus_tap.sym} 70 0 3 1 {name=l11 lab=6}
C {bus_tap.sym} 70 110 3 1 {name=l12 lab=5}
C {bus_tap.sym} 70 220 3 1 {name=l13 lab=4}
C {bus_tap.sym} 70 330 3 1 {name=l14 lab=3}
C {bus_tap.sym} 70 440 3 1 {name=l15 lab=2}
C {bus_tap.sym} 70 550 3 1 {name=l16 lab=1}
C {lab_pin.sym} -490 -300 0 1 {name=p2 sig_type=std_logic lab=I[8..1]}
C {lab_pin.sym} -490 -280 0 1 {name=p4 sig_type=std_logic lab=Y[7..1]}
C {lab_pin.sym} -330 -200 0 1 {name=p5 sig_type=std_logic lab=I[8..1]}
C {lab_pin.sym} 70 -200 0 1 {name=p6 sig_type=std_logic lab=Y[7..1]}
