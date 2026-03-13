v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -70 -90 30 -90 {lab=OUT+}
N -70 -70 30 -70 {lab=OUT-}
N 150 -90 260 -90 {lab=#net1}
N 150 -70 260 -70 {lab=#net2}
N 30 -70 90 -70 {lab=OUT-}
N 90 -90 150 -90 {lab=#net1}
N 90 -200 90 -180 {lab=EN}
N 60 -180 90 -180 {lab=EN}
N 60 -180 60 -90 {lab=EN}
N 90 -180 120 -180 {lab=EN}
N 120 -180 120 -70 {lab=EN}
N 60 -50 60 -20 {lab=EN_bar}
N 60 -20 120 -20 {lab=EN_bar}
N 120 -30 120 -20 {lab=EN_bar}
N 90 -20 90 0 {lab=EN_bar}
C {RS_latch/RS_latch.sym} 410 -60 0 1 {name=x1}
C {voltage_comp/double_tail_comp.sym} -160 -90 0 0 {name=x2}
C {iopin.sym} -330 -570 0 1 {name=p2 lab=VSS}
C {iopin.sym} -330 -690 0 1 {name=p9 lab=VCC}
C {iopin.sym} -330 -450 0 1 {name=p4 lab=IN+}
C {iopin.sym} -330 -410 0 1 {name=p5 lab=IN-}
C {iopin.sym} -330 -530 0 1 {name=p10 lab=CLK}
C {iopin.sym} -330 -490 0 1 {name=p11 lab=CLK_bar}
C {lab_pin.sym} -330 -690 0 1 {name=p7 sig_type=std_logic lab=VCC}
C {lab_pin.sym} -330 -570 0 1 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -330 -530 0 1 {name=p17 sig_type=std_logic lab=CLK}
C {lab_pin.sym} -330 -490 0 1 {name=p18 sig_type=std_logic lab=CLK_bar
}
C {lab_pin.sym} -330 -450 0 1 {name=p25 sig_type=std_logic lab=IN+}
C {lab_pin.sym} -330 -410 0 1 {name=p26 sig_type=std_logic lab=IN-}
C {iopin.sym} -330 -370 0 1 {name=p19 lab=Q}
C {iopin.sym} -330 -330 0 1 {name=p20 lab=Q_bar}
C {lab_pin.sym} -330 -330 0 1 {name=p21 sig_type=std_logic lab=Q_bar}
C {lab_pin.sym} -330 -370 0 1 {name=p22 sig_type=std_logic lab=Q}
C {lab_pin.sym} -160 -150 0 1 {name=p27 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 320 -140 0 0 {name=p28 sig_type=std_logic lab=VCC}
C {lab_pin.sym} -40 -90 0 1 {name=p29 sig_type=std_logic lab=OUT+}
C {lab_pin.sym} -40 -70 0 1 {name=p30 sig_type=std_logic lab=OUT-}
C {lab_pin.sym} -160 -20 0 1 {name=p31 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -250 -70 0 0 {name=p32 sig_type=std_logic lab=CLK}
C {lab_pin.sym} -250 -50 0 0 {name=p33 sig_type=std_logic lab=CLK_bar
}
C {lab_pin.sym} -250 -110 0 0 {name=p34 sig_type=std_logic lab=IN+}
C {lab_pin.sym} -250 -90 0 0 {name=p35 sig_type=std_logic lab=IN-}
C {lab_pin.sym} 390 -90 2 0 {name=p38 sig_type=std_logic lab=Q}
C {lab_pin.sym} 390 -70 2 0 {name=p39 sig_type=std_logic lab=Q_bar}
C {lab_pin.sym} 320 -30 0 0 {name=p40 sig_type=std_logic lab=VSS}
C {code_shown.sym} -1280 -360 0 0 {name=s1 only_toplevel=false spice_ignore=true value=
"
.param VSS=0 VCC=1.8 Vcm=1.65 Vdif=1.75 time_period=30ns prds=16 rise=100ps fall=100ps

VCC VCC 0 DC 1.8
VSS VSS 0 DC 0

V_CLK CLK 0 PULSE(\{VCC\} \{VSS\} 0ns \{rise\} \{fall\} \{time_period/2\} \{time_period\} \{prds\})
V_CLK_bar CLK_bar 0 PULSE(\{VSS\} \{VCC\} 0ns \{rise\} \{fall\} \{time_period/2\} \{time_period\} \{prds\})

V_IN+ IN+ 0 PULSE(\{Vdif\} \{Vcm\} 0 100ps 100ps \{time_period\} \{time_period*2\} \{prds/2\})
V_IN- IN- 0 PULSE(\{Vcm\} \{Vdif\} 0 100ps 100ps \{time_period\} \{time_period*2\} \{prds/2\})

V_EN EN 0 PULSE(\{VCC\} \{VSS\} 0ns \{rise\} \{fall\} \{time_period*prds/8\} \{time_period*prds/4\} prds)
V_EN_bar EN_bar 0 PULSE(\{VSS\} \{VCC\} 0ns \{rise\} \{fall\} \{time_period*prds/8\} \{time_period*prds/4\} prds)

.tran 0.01ns \{time_period*prds\}
.save all

.control
* 
*  foreach vdif 1.907 1.886 1.906 1.887 1.905 1.887
*    alterparam Vdif = $vdif
*    reset
*    run
*    plot v(IN+) v(IN-) v(OUT+)+2.2 v(OUT-)+2.2 Q-2.2 Q_bar-2.2 CLK+4.2
*  end
run
plot v(IN+) v(IN-) v(OUT+)+2.2 v(OUT-)+2.2 EN -2.2 Q-4.2 CLK+4.2
.endc
"}
C {code.sym} -1290 -520 0 0 {
name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=true
      }
C {code.sym} -1160 -520 0 0 {name="all threshold test" only_toplevel=false spice_ignore=true value=
"
.param VSS=0 VCC=1.8 Vcm=1.45 Vdif=0.3 time_period=30ns prds=127 rise=100ps fall=100ps

VCC VCC 0 DC 1.8
VSS VSS 0 DC 0

V_CLK CLK 0 PULSE(\{VCC\} \{VSS\} 0ns \{rise\} \{fall\} \{(time_period)/2\} \{time_period\} \{prds\})
V_CLK_bar CLK_bar 0 PULSE(\{VSS\} \{VCC\} 0ns \{rise\} \{fall\} \{(time_period)/2\} \{time_period\} \{prds\})

V_IN+ IN+ 0 PWL(0ns 1.906 29.9ns 1.906 30ns 1.8981 59.9ns 1.8981 60ns 1.898 89.9ns 1.898 90ns 1.8839 119.9ns 1.8839 120ns 1.8838 149.9ns 1.8838 150ns 1.8435 179.9ns 1.8435 180ns 1.8426 209.9ns 1.8426 210ns 1.7519 239.9ns 1.7519 240ns 1.7476 269.9ns 1.7476 270ns 1.5662 299.9ns 1.5662 300ns 1.5382 329.9ns 1.5382 330ns 1.2361 359.9ns 1.2361 360ns 1.1518 389.9ns 1.1518 390ns 0.7665 419.9ns 0.7665 420ns 0.6388 449.9ns 0.6388 450ns 0.1203 479.9ns 0.1203 480ns 1.906 509.9ns 1.906 510ns 1.8981 539.9ns 1.8981 540ns 1.898 569.9ns 1.898 570ns 1.8839 599.9ns 1.8839 600ns 1.8838 629.9ns 1.8838 630ns 1.8435 659.9ns 1.8435 660ns 1.8426 689.9ns 1.8426 690ns 1.7519 719.9ns 1.7519 720ns 1.7476 749.9ns 1.7476 750ns 1.5662 779.9ns 1.5662 780ns 1.5382 809.9ns 1.5382 810ns 1.2361 839.9ns 1.2361 840ns 1.1518 869.9ns 1.1518 870ns 0.7665 899.9ns 0.7665 900ns 0.6388 929.9ns 0.6388 930ns 0.1203 959.9ns 0.1203 960ns 1.906 989.9ns 1.906 990ns 1.8981 1019.9ns 1.8981 1020ns 1.898 1049.9ns 1.898 1050ns 1.8839 1079.9ns 1.8839 1080ns 1.8838 1109.9ns 1.8838 1110ns 1.8435 1139.9ns 1.8435 1140ns 1.8426 1169.9ns 1.8426 1170ns 1.7519 1199.9ns 1.7519 1200ns 1.7476 1229.9ns 1.7476 1230ns 1.5662 1259.9ns 1.5662 1260ns 1.5382 1289.9ns 1.5382 1290ns 1.2361 1319.9ns 1.2361 1320ns 1.1518 1349.9ns 1.1518 1350ns 0.7665 1379.9ns 0.7665 1380ns 0.6388 1409.9ns 0.6388 1410ns 0.1203 1439.9ns 0.1203 1440ns 1.906 1469.9ns 1.906 1470ns 1.8981 1499.9ns 1.8981 1500ns 1.898 1529.9ns 1.898 1530ns 1.8839 1559.9ns 1.8839 1560ns 1.8838 1589.9ns 1.8838 1590ns 1.8435 1619.9ns 1.8435 1620ns 1.8426 1649.9ns 1.8426 1650ns 1.7519 1679.9ns 1.7519 1680ns 1.7476 1709.9ns 1.7476 1710ns 1.5662 1739.9ns 1.5662 1740ns 1.5382 1769.9ns 1.5382 1770ns 1.2361 1799.9ns 1.2361 1800ns 1.1518 1829.9ns 1.1518 1830ns 0.7665 1859.9ns 0.7665 1860ns 0.6388 1889.9ns 0.6388 1890ns 0.1203 1919.9ns 0.1203 1920ns 1.906 1949.9ns 1.906 1950ns 1.8981 1979.9ns 1.8981 1980ns 1.898 2009.9ns 1.898 2010ns 1.8839 2039.9ns 1.8839 2040ns 1.8838 2069.9ns 1.8838 2070ns 1.8435 2099.9ns 1.8435 2100ns 1.8426 2129.9ns 1.8426 2130ns 1.7519 2159.9ns 1.7519 2160ns 1.7476 2189.9ns 1.7476 2190ns 1.5662 2219.9ns 1.5662 2220ns 1.5382 2249.9ns 1.5382 2250ns 1.2361 2279.9ns 1.2361 2280ns 1.1518 2309.9ns 1.1518 2310ns 0.7665 2339.9ns 0.7665 2340ns 0.6388 2369.9ns 0.6388 2370ns 0.1203 2399.9ns 0.1203 2400ns 1.906 2429.9ns 1.906 2430ns 1.8981 2459.9ns 1.8981 2460ns 1.898 2489.9ns 1.898 2490ns 1.8839 2519.9ns 1.8839 2520ns 1.8838 2549.9ns 1.8838 2550ns 1.8435 2579.9ns 1.8435 2580ns 1.8426 2609.9ns 1.8426 2610ns 1.7519 2639.9ns 1.7519 2640ns 1.7476 2669.9ns 1.7476 2670ns 1.5662 2699.9ns 1.5662 2700ns 1.5382 2729.9ns 1.5382 2730ns 1.2361 2759.9ns 1.2361 2760ns 1.1518 2789.9ns 1.1518 2790ns 0.7665 2819.9ns 0.7665 2820ns 0.6388 2849.9ns 0.6388 2850ns 0.1203 2879.9ns 0.1203 2880ns 1.906 2909.9ns 1.906 2910ns 1.8981 2939.9ns 1.8981 2940ns 1.898 2969.9ns 1.898 2970ns 1.8839 2999.9ns 1.8839 3000ns 1.8838 3029.9ns 1.8838 3030ns 1.8435 3059.9ns 1.8435 3060ns 1.8426 3089.9ns 1.8426 3090ns 1.7519 3119.9ns 1.7519 3120ns 1.7476 3149.9ns 1.7476 3150ns 1.5662 3179.9ns 1.5662 3180ns 1.5382 3209.9ns 1.5382 3210ns 1.2361 3239.9ns 1.2361 3240ns 1.1518 3269.9ns 1.1518 3270ns 0.7665 3299.9ns 0.7665 3300ns 0.6388 3329.9ns 0.6388 3330ns 0.1203 3359.9ns 0.1203 3360ns 1.906 3389.9ns 1.906 3390ns 1.8981 3419.9ns 1.8981 3420ns 1.898 3449.9ns 1.898 3450ns 1.8839 3479.9ns 1.8839 3480ns 1.8838 3509.9ns 1.8838 3510ns 1.8435 3539.9ns 1.8435 3540ns 1.8426 3569.9ns 1.8426 3570ns 1.7519 3599.9ns 1.7519 3600ns 1.7476 3629.9ns 1.7476 3630ns 1.5662 3659.9ns 1.5662 3660ns 1.5382 3689.9ns 1.5382 3690ns 1.2361 3719.9ns 1.2361 3720ns 1.1518 3749.9ns 1.1518 3750ns 0.7665 3779.9ns 0.7665 3780ns 0.6388 3809.9ns 0.6388 3810ns 0.1203)
V_IN- IN- 0 PWL(0ns 1.90205 30ns 1.90205 60ns 1.90205 90ns 1.90205 120ns 1.90205 150ns 1.90205 180ns 1.90205 210ns 1.90205 240ns 1.90205 270ns 1.90205 300ns 1.90205 330ns 1.90205 360ns 1.90205 390ns 1.90205 420ns 1.90205 450ns 1.90205 479.9ns 1.90205 480ns 1.89095 510ns 1.89095 540ns 1.89095 570ns 1.89095 600ns 1.89095 630ns 1.89095 660ns 1.89095 690ns 1.89095 720ns 1.89095 750ns 1.89095 780ns 1.89095 810ns 1.89095 840ns 1.89095 870ns 1.89095 900ns 1.89095 930ns 1.89095 959.9ns 1.89095 960ns 1.86365 990ns 1.86365 1020ns 1.86365 1050ns 1.86365 1080ns 1.86365 1110ns 1.86365 1140ns 1.86365 1170ns 1.86365 1200ns 1.86365 1230ns 1.86365 1260ns 1.86365 1290ns 1.86365 1320ns 1.86365 1350ns 1.86365 1380ns 1.86365 1410ns 1.86365 1439.9ns 1.86365 1440ns 1.79725 1470ns 1.79725 1500ns 1.79725 1530ns 1.79725 1560ns 1.79725 1590ns 1.79725 1620ns 1.79725 1650ns 1.79725 1680ns 1.79725 1710ns 1.79725 1740ns 1.79725 1770ns 1.79725 1800ns 1.79725 1830ns 1.79725 1860ns 1.79725 1890ns 1.79725 1919.9ns 1.79725 1920ns 1.6569 1950ns 1.6569 1980ns 1.6569 2010ns 1.6569 2040ns 1.6569 2070ns 1.6569 2100ns 1.6569 2130ns 1.6569 2160ns 1.6569 2190ns 1.6569 2220ns 1.6569 2250ns 1.6569 2280ns 1.6569 2310ns 1.6569 2340ns 1.6569 2370ns 1.6569 2399.9ns 1.6569 2400ns 1.38715 2430ns 1.38715 2460ns 1.38715 2490ns 1.38715 2520ns 1.38715 2550ns 1.38715 2580ns 1.38715 2610ns 1.38715 2640ns 1.38715 2670ns 1.38715 2700ns 1.38715 2730ns 1.38715 2760ns 1.38715 2790ns 1.38715 2820ns 1.38715 2850ns 1.38715 2879.9ns 1.38715 2880ns 0.95915 2910ns 0.95915 2940ns 0.95915 2970ns 0.95915 3000ns 0.95915 3030ns 0.95915 3060ns 0.95915 3090ns 0.95915 3120ns 0.95915 3150ns 0.95915 3180ns 0.95915 3210ns 0.95915 3240ns 0.95915 3270ns 0.95915 3300ns 0.95915 3330ns 0.95915 3359.9ns 0.95915 3360ns 0.5 3390ns 0.5 3420ns 0.5 3450ns 0.5 3480ns 0.5 3510ns 0.5 3540ns 0.5 3570ns 0.5 3600ns 0.5 3630ns 0.5 3660ns 0.5 3690ns 0.5 3720ns 0.5 3750ns 0.5 3780ns 0.5 3810ns 0.5)

.tran 0.01ns 3820ns
.save all

.control
run
plot v(IN+)+2.2 v(IN-)+2.2 v(OUT+) v(OUT-) Q-2.2 CLK+4.4
.endc
"}
C {code.sym} -1000 -520 0 0 {name="Vcm 0.6" only_toplevel=false spice_ignore=true value=
"
.param VSS=0 VCC=1.8 Vcm=0.5 Vdif=0.3 time_period=15ns prds=10 rise=100ps fall=100ps

VCC VCC 0 DC 1.8
VSS VSS 0 DC 0

V_CLK CLK 0 PULSE(\{VCC\} \{VSS\} 0ns \{rise\} \{fall\} \{(time_period)/2\} \{time_period\} \{prds\})
V_CLK_bar CLK_bar 0 PULSE(\{VSS\} \{VCC\} 0ns \{rise\} \{fall\} \{(time_period)/2\} \{time_period\} \{prds\})

V_IN+ IN+ 0 PULSE(\{Vcm+Vdif/2\} \{Vcm-Vdif/2\} 0 100ps 100ps \{time_period\} \{time_period*2\} \{prds/2\})
V_IN- IN- 0 PULSE(\{Vcm-Vdif/2\} \{Vcm+Vdif/2\} 0 100ps 100ps \{time_period\} \{time_period*2\} \{prds/2\})

.tran 0.01ns \{time_period*prds\}
.save all

.control
* 
  foreach vdif 0.2 0.25 0.1 0.15 0.07
    alterparam Vdif = $vdif
    reset
    run
    plot v(IN+)+2.2 v(IN-)+2.2 v(OUT+) v(OUT-) Q-2.2 Q_bar-2.2 CLK+4.4 CLK_bar+4.4 
  end
.endc
"}
C {iopin.sym} -330 -290 0 1 {name=p8 lab=EN}
C {lab_pin.sym} -330 -290 0 1 {name=p12 sig_type=std_logic lab=EN}
C {iopin.sym} -330 -260 0 1 {name=p13 lab=EN_bar}
C {lab_pin.sym} -330 -260 0 1 {name=p23 sig_type=std_logic lab=EN_bar}
C {sky130_fd_pr/pfet_01v8.sym} 60 -70 3 0 {name=M11
L=0.15
W=1
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 120 -50 3 0 {name=M1
L=0.15
W=1
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 90 -200 0 1 {name=p1 sig_type=std_logic lab=EN}
C {lab_pin.sym} 90 0 0 1 {name=p36 sig_type=std_logic lab=EN_bar}
