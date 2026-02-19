v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 20 -0 30 0 {lab=GND}
N 30 0 30 30 {lab=GND}
N 20 30 30 30 {lab=GND}
N -90 -0 -20 0 {lab=#net1}
N -90 60 -0 60 {lab=GND}
N -0 30 0 60 {lab=GND}
N 0 30 20 30 {lab=GND}
N 30 30 150 30 {lab=GND}
N 20 -30 150 -30 {lab=#net2}
C {gnd.sym} 20 30 0 0 {name=l4 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 0 0 0 0 {name=M9
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
C {vsource.sym} -90 30 0 0 {name=Vgs value=1.8 savecurrent=false}
C {vsource.sym} 150 0 0 0 {name=Vds value=3 savecurrent=false}
C {code_shown.sym} -450 -140 0 0 {name=s1 only_toplevel=false value="

.dc Vgs 0 1 0.1  Vds 0.3 0.9 0.3

.control
run
let ids=-vds#branch
plot ids
meas dc VTH FIND net1 WHEN ids=1u
.endc
.save all
.end

**Finding Vth
**meas dc VTH FIND net1 WHEN ids=1u
"}
C {code.sym} -460 -280 0 0 {
name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false
      }
C {code_shown.sym} -360 -270 0 0 {name=ngspice_pdf only_toplevel=false value="
*meas ->pg334
"}
