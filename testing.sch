v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 5 -350 -600 930 -600 930 -380 -350 -380 -350 -600 {}
T {To call Python instead of ngspice:
Simulation -> Configure simulators and tools
ngspice -b -r %s.raw %s.spice   --->   python3 run_sim.py %s.spice
} -300 -560 0 0 0.7 0.7 {layer=8}
C {res.sym} -40 100 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} -40 70 0 0 {name=p2 sig_type=std_logic lab=in}
C {gnd.sym} -40 130 0 0 {name=l2 lab=GND}
C {code_shown.sym} -490 -240 0 0 {name=s1 only_toplevel=false value="

.param VDD=1.8 VSS=0
VSS_V VSS 0 DC 0
Vt in VSS PULSE(\{VDD\} \{VSS\} 1ns 100ps 100ps 5ns 10ns 2)

.tran 5ps 30ns
.control
run
plot in in2 in3+0.1
.endc
.save all

"}
C {res.sym} 260 100 0 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 260 0 0 0 {name=V2 value="PULSE(0 1.8 2ns 100ps 100ps 3ns 5ns 4)" savecurrent=false}
C {lab_pin.sym} 260 -30 0 0 {name=p3 sig_type=std_logic lab=in2}
C {lab_pin.sym} 260 70 0 0 {name=p4 sig_type=std_logic lab=in2}
C {gnd.sym} 260 30 0 0 {name=l3 lab=GND}
C {gnd.sym} 260 130 0 0 {name=l4 lab=GND}
C {res.sym} -50 -100 0 0 {name=R3
value=1k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -50 -200 0 0 {name=V3 value="PULSE(0 1.8 1ns 100ps 100ps 5ns 10ns 2)" savecurrent=false}
C {lab_pin.sym} -50 -230 0 0 {name=p5 sig_type=std_logic lab=in3}
C {lab_pin.sym} -50 -130 0 0 {name=p6 sig_type=std_logic lab=in3}
C {gnd.sym} -50 -170 0 0 {name=l5 lab=GND}
C {gnd.sym} -50 -70 0 0 {name=l6 lab=GND}
