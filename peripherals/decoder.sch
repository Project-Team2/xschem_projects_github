v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 40 0 40 60 {lab=I2}
N 40 60 70 60 {lab=I2}
N 40 -120 40 -60 {lab=I1}
N 40 -60 70 -60 {lab=I1}
N 40 -240 40 -180 {lab=I0}
N 40 -180 70 -180 {lab=I0}
N 190 60 1900 60 {lab=I2_bar}
N 40 0 1900 0 {lab=I2}
N 190 -60 1900 -60 {lab=I1_bar}
N 40 -120 1900 -120 {lab=I1}
N 190 -180 1900 -180 {lab=I0_bar}
N 40 -240 1900 -240 {lab=I0}
N 1740 -180 1740 210 {lab=I0_bar}
N 1700 -60 1700 210 {lab=I1_bar}
N 1660 60 1660 210 {lab=I2_bar}
N 1540 -240 1540 210 {lab=I0}
N 1500 -60 1500 210 {lab=I1_bar}
N 1460 60 1460 210 {lab=I2_bar}
N 1340 -180 1340 210 {lab=I0_bar}
N 1300 -120 1300 210 {lab=I1}
N 1140 -240 1140 210 {lab=I0}
N 940 -180 940 210 {lab=I0_bar}
N 740 -240 740 210 {lab=I0}
N 540 -180 540 210 {lab=I0_bar}
N 340 -240 340 210 {lab=I0}
N 1100 -120 1100 210 {lab=I1}
N 900 -60 900 210 {lab=I1_bar}
N 700 -60 700 210 {lab=I1_bar}
N 500 -120 500 210 {lab=I1}
N 300 -120 300 210 {lab=I1}
N 1260 60 1260 210 {lab=I2_bar}
N 1060 60 1060 210 {lab=I2_bar}
N 860 0 860 210 {lab=I2}
N 660 0 660 210 {lab=I2}
N 460 0 460 210 {lab=I2}
N 260 0 260 210 {lab=I2}
C {iopin.sym} 60 -470 0 0 {name=p1 lab=I2}
C {iopin.sym} 60 -450 0 0 {name=p2 lab=I1}
C {iopin.sym} 60 -430 0 0 {name=p3 lab=I0}
C {iopin.sym} 190 -470 0 0 {name=p4 lab=Y7}
C {iopin.sym} 190 -450 0 0 {name=p5 lab=Y6}
C {iopin.sym} 190 -430 0 0 {name=p6 lab=Y5}
C {iopin.sym} 190 -410 0 0 {name=p7 lab=Y4}
C {iopin.sym} 190 -390 0 0 {name=p8 lab=Y3}
C {iopin.sym} 190 -370 0 0 {name=p9 lab=Y2}
C {iopin.sym} 190 -350 0 0 {name=p10 lab=Y1}
C {iopin.sym} 190 -330 0 0 {name=p11 lab=Y0}
C {inv.sym} 130 60 0 0 {name=x3}
C {lab_pin.sym} 60 -470 0 0 {name=p13 sig_type=std_logic lab=I2}
C {lab_pin.sym} 60 -450 0 0 {name=p14 sig_type=std_logic lab=I1}
C {lab_pin.sym} 60 -430 0 0 {name=p15 sig_type=std_logic lab=I0}
C {lab_pin.sym} 190 -470 0 0 {name=p12 sig_type=std_logic lab=Y7}
C {lab_pin.sym} 190 -450 0 0 {name=p16 sig_type=std_logic lab=Y6}
C {lab_pin.sym} 190 -430 0 0 {name=p17 sig_type=std_logic lab=Y5}
C {lab_pin.sym} 190 -410 0 0 {name=p18 sig_type=std_logic lab=Y4}
C {lab_pin.sym} 190 -390 0 0 {name=p19 sig_type=std_logic lab=Y3}
C {lab_pin.sym} 190 -370 0 0 {name=p20 sig_type=std_logic lab=Y2}
C {lab_pin.sym} 190 -350 0 0 {name=p21 sig_type=std_logic lab=Y1}
C {lab_pin.sym} 190 -330 0 0 {name=p22 sig_type=std_logic lab=Y0}
C {lab_pin.sym} 40 0 0 0 {name=p23 sig_type=std_logic lab=I2}
C {lab_pin.sym} 40 -120 0 0 {name=p24 sig_type=std_logic lab=I1}
C {lab_pin.sym} 40 -240 0 0 {name=p25 sig_type=std_logic lab=I0}
C {inv.sym} 130 -60 0 0 {name=x4}
C {inv.sym} 130 -180 0 0 {name=x5}
C {lab_pin.sym} 60 -400 0 0 {name=p34 sig_type=std_logic lab=VCC}
C {iopin.sym} 60 -400 0 0 {name=p35 lab=VCC}
C {iopin.sym} 60 -380 0 0 {name=p36 lab=VSS}
C {lab_pin.sym} 60 -380 0 0 {name=p37 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 130 -200 0 1 {name=p38 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 130 -160 0 1 {name=p39 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 130 -80 0 1 {name=p40 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 130 -40 0 1 {name=p41 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 130 40 0 1 {name=p42 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 130 80 0 1 {name=p43 sig_type=std_logic lab=VSS}
C {logic gates/and4.sym} 280 270 1 0 {name=x1}
C {logic gates/and4.sym} 480 270 1 0 {name=x2}
C {iopin.sym} 60 -360 0 0 {name=p26 lab=EN}
C {lab_pin.sym} 60 -360 0 0 {name=p27 sig_type=std_logic lab=EN}
C {lab_pin.sym} 220 210 0 0 {name=p28 sig_type=std_logic lab=EN}
C {lab_pin.sym} 280 330 3 0 {name=p29 sig_type=std_logic lab=Y7}
C {lab_pin.sym} 480 330 3 0 {name=p30 sig_type=std_logic lab=Y6}
C {lab_pin.sym} 680 330 3 0 {name=p31 sig_type=std_logic lab=Y5}
C {lab_pin.sym} 880 330 3 0 {name=p32 sig_type=std_logic lab=Y4}
C {lab_pin.sym} 1080 330 3 0 {name=p33 sig_type=std_logic lab=Y3}
C {lab_pin.sym} 1280 330 3 0 {name=p44 sig_type=std_logic lab=Y2}
C {lab_pin.sym} 1480 330 3 0 {name=p45 sig_type=std_logic lab=Y1}
C {lab_pin.sym} 1680 330 3 0 {name=p46 sig_type=std_logic lab=Y0}
C {logic gates/and4.sym} 680 270 1 0 {name=x6}
C {logic gates/and4.sym} 880 270 1 0 {name=x7}
C {logic gates/and4.sym} 1080 270 1 0 {name=x8}
C {logic gates/and4.sym} 1280 270 1 0 {name=x9}
C {logic gates/and4.sym} 1480 270 1 0 {name=x10}
C {logic gates/and4.sym} 1680 270 1 0 {name=x11}
C {lab_pin.sym} 420 210 0 0 {name=p47 sig_type=std_logic lab=EN}
C {lab_pin.sym} 620 210 0 0 {name=p48 sig_type=std_logic lab=EN}
C {lab_pin.sym} 820 210 0 0 {name=p49 sig_type=std_logic lab=EN}
C {lab_pin.sym} 1020 210 0 0 {name=p50 sig_type=std_logic lab=EN}
C {lab_pin.sym} 1220 210 0 0 {name=p51 sig_type=std_logic lab=EN}
C {lab_pin.sym} 1420 210 0 0 {name=p52 sig_type=std_logic lab=EN}
C {lab_pin.sym} 1620 210 0 0 {name=p53 sig_type=std_logic lab=EN}
C {lab_pin.sym} 510 270 0 1 {name=p54 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 250 270 0 0 {name=p55 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 450 270 0 0 {name=p56 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 310 270 0 1 {name=p57 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 910 270 0 1 {name=p58 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 650 270 0 0 {name=p59 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 850 270 0 0 {name=p60 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 710 270 0 1 {name=p61 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1310 270 0 1 {name=p62 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1050 270 0 0 {name=p63 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1250 270 0 0 {name=p64 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1110 270 0 1 {name=p65 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1710 270 0 1 {name=p66 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1450 270 0 0 {name=p67 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1650 270 0 0 {name=p68 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1510 270 0 1 {name=p69 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 240 -180 0 0 {name=p70 sig_type=std_logic lab=I0_bar}
C {lab_pin.sym} 240 -60 0 0 {name=p71 sig_type=std_logic lab=I1_bar}
C {lab_pin.sym} 240 60 0 0 {name=p72 sig_type=std_logic lab=I2_bar}
