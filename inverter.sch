v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -60 -100 -60 -70 {lab=Vout}
N -100 -130 -100 -40 {lab=in}
N -60 -200 -60 -160 {lab=VDD}
N -60 -10 -60 10 {lab=GND}
N -200 -90 -100 -90 {lab=in}
N -60 -130 -50 -130 {lab=VDD}
N -50 -170 -50 -130 {lab=VDD}
N -60 -170 -50 -170 {lab=VDD}
N -200 -100 -200 -90 {lab=in}
N -30 -310 -30 -300 {lab=GND}
N -60 -90 30 -90 {lab=Vout}
N -60 -40 -50 -40 {lab=GND}
N -50 -40 -50 0 {lab=GND}
N -60 0 -50 0 {lab=GND}
N -90 -310 -90 -300 {lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} -80 -130 0 0 {name=M3
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
C {gnd.sym} -60 10 0 0 {name=l1 lab=GND}
C {vdd.sym} -60 -200 0 0 {name=l2 lab=VDD}
C {code_shown.sym} -400 -230 0 0 {name=s1 only_toplevel=true value=
"
**v+ vdd 0 DC 1.8
.dc Vin 0 1.8 1m
.op
;.tran 100p 10n

.control
run
plot Vout
.endc

.save all
"}
C {lab_pin.sym} -200 -100 0 0 {name=p2 sig_type=std_logic lab=in}
C {vsource.sym} -30 -340 0 0 {name=Vin value=0 savecurrent=false}
C {gnd.sym} -30 -300 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -30 -370 1 0 {name=p1 sig_type=std_logic lab=in}
C {lab_pin.sym} 30 -90 0 0 {name=p3 sig_type=std_logic lab=Vout}
C {sky130_fd_pr/nfet_01v8.sym} -80 -40 0 0 {name=M1
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
C {vsource.sym} -90 -340 0 0 {name=VDD value=1.8 savecurrent=false}
C {gnd.sym} -90 -300 0 0 {name=VDD1 lab=GND
value=1.8}
C {lab_pin.sym} -90 -370 1 0 {name=VDD2 sig_type=std_logic lab=in
value=1.8}
