v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 4 -160 -260 90 -160 {fill=false
sim_ignore=false}
B 4 -350 -510 250 -330 {fill=false
sim_ignore=true}
N 10 -50 50 -50 {lab=out}
N -110 -50 -50 -50 {lab=in}
N -110 10 50 10 {lab=GND}
N -30 10 -30 30 {lab=GND}
N 50 -70 50 -50 {lab=out}
N -110 -70 -110 -50 {lab=in}
C {res.sym} -20 -50 3 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} 50 -20 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -30 30 0 0 {name=l1 lab=GND}
C {code_shown.sym} 170 -80 0 0 {name=s1 only_toplevel=false value=
"
V1 in 0 PULSE(0 3 0 1p 1p 10ms 20ms)
.tran 10p 500p

.control
run
plot out in
.endc
.save all
"}
C {lab_pin.sym} 50 -70 0 0 {name=p2 sig_type=std_logic lab=out}
C {lab_pin.sym} -110 -70 0 0 {name=p3 sig_type=std_logic lab=in}
C {res.sym} -100 -230 3 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1
sim_ignore=true}
C {res.sym} -290 -470 3 0 {name=R3
value=1k
footprint=1206
device=resistor
m=1
sim_ignore=true}
C {lab_pin.sym} 30 -420 0 0 {name=p11 sig_type=std_logic lab=xxx}
C {sky130_fd_pr/nfet_01v8.sym} -140 -470 1 0 {name=M9
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
C {sky130_fd_pr/pfet_01v8.sym} -60 -470 3 1 {name=M10
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
C {iopin.sym} 0 -480 0 0 {name=p12 lab=xxx}
C {gnd.sym} 10 -460 0 0 {name=l4 lab=GND}
C {code_shown.sym} -320 -400 0 0 {name=s2 only_toplevel=false value=blabla sim_ignore=true}
