v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
C {code_shown.txt} -750 -280 0 0 {name=x1 only_toplevel=true value=
"
.param dly=1ns t_dly=2ns raise=100ps fall=100ps BL_period=20ns prds=2
.param VCC=1.8 VSS=0

V_VCC VCC 0 DC 1.8
V_VSS VSS 0 DC 0
**vss vss 0 DC 0
* PULSE(VSS 1.8 2ns 100ps 100ps 3ns 5ns 4)PULSE(0 1.7 \{dly + t_dly/2\} \{raise\} \{fall\} \{(BL_period/2)- t_dly\} \{BL_period/2\} \{prds*2\})

V_WL WL 0 PULSE(\{VSS\} \{VCC\} \{dly + t_dly/2\} \{raise\} \{fall\} \{(BL_period/2)- t_dly\} \{BL_period\} \{prds\})
V_BL BLB 0 PULSE(\{VSS\} \{VCC\} \{dly\} \{raise\} \{fall\} \{(BL_period)\} \{BL_period*2\} \{prds\})
V_BLB BL 0 PULSE(\{VCC\} \{VSS\} \{dly\} \{raise\} \{fall\} \{(BL_period)\} \{BL_period*2\} \{prds\})

V_RWL RWL 0 PULSE(\{VSS\} \{VCC\} \{dly + BL_period/2 + 6ns\} \{raise\} \{fall\} \{t_dly\} \{BL_period\} \{prds\})
V_PRE PRE 0 PULSE(\{VCC\} \{VSS\} \{dly + BL_period/2\} \{raise\} \{fall\} 4ns \{BL_period\} \{prds\})

.tran 0.1ns 100ns
.control
run
plot WL BL-2 BLB-4 RWL-6 RBL-8 PRE-10
.endc
.saveall

"}
C {lab_pin.sym} 440 -200 0 0 {name=p9 sig_type=std_logic lab=RBL}
C {vsource.sym} 440 -170 0 0 {name=V1 value=0 savecurrent=false}
C {gnd.sym} 440 -140 0 0 {name=l1 lab=GND}
C {code_shown.txt} -50 110 0 0 {name=x2 only_toplevel=true value=
"
.param dly=0ns t_dly=2ns raise=100ps fall=100ps BL_period=20ns prds=8 pre_time=2ns read_time=0.7ns
.param VCC=1.8 VSS=0

V_VCC VCC 0 DC 1.8
V_VSS VSS 0 DC 0
**vss vss 0 DC 0
* PULSE(VSS 1.8 2ns 100ps 100ps 3ns 5ns 4)PULSE(0 1.7 \{dly + t_dly/2\} \{raise\} \{fall\} \{(BL_period/2)- t_dly\} \{BL_period/2\} \{prds*2\})

V_WL WL 0 PULSE(\{VSS\} \{VCC\} \{dly + t_dly/2\} \{raise\} \{fall\} \{(BL_period/2)- t_dly\} \{BL_period\} \{prds*2\})


V_BL BLB 0 PULSE(\{VSS\} \{VCC\} \{dly\} \{raise\} \{fall\} \{BL_period\} \{BL_period*2\} \{prds\})
V_BLB BL 0 PULSE(\{VCC\} \{VSS\} \{dly\} \{raise\} \{fall\} \{BL_period\} \{BL_period*2\} \{prds\})

V_BL1 BLB1 0 PULSE(\{VSS\} \{VCC\} \{dly\} \{raise\} \{fall\} \{BL_period*2\} \{BL_period*4\} \{prds\})
V_BLB1 BL1 0 PULSE(\{VCC\} \{VSS\} \{dly\} \{raise\} \{fall\} \{BL_period*2\} \{BL_period*4\} \{prds\})

V_BL2 BLB2 0 PULSE(\{VSS\} \{VCC\} \{dly\} \{raise\} \{fall\} \{BL_period*4\} \{BL_period*8\} \{prds\})
V_BLB2 BL2 0 PULSE(\{VCC\} \{VSS\} \{dly\} \{raise\} \{fall\} \{BL_period*4\} \{BL_period*8\} \{prds\})

V_BL3 BLB3 0 PULSE(\{VSS\} \{VCC\} \{dly\} \{raise\} \{fall\} \{BL_period*8\} \{BL_period*16\} \{prds\})
V_BLB3 BL3 0 PULSE(\{VCC\} \{VSS\} \{dly\} \{raise\} \{fall\} \{BL_period*8\} \{BL_period*16\} \{prds\})


V_RWL RWL 0 PULSE(\{VSS\} \{VCC\} \{dly + BL_period/2 + 6ns\} \{raise\} \{fall\} \{read_time\} \{BL_period\} \{prds*2\})
V_PRE PRE 0 PULSE(\{VCC\} \{VSS\} \{dly + BL_period/2\} \{raise\} \{fall\} \{pre_time\} \{BL_period\} \{prds*2\})

.tran 0.01ns 350ns
.control
run
* plot WL BL-2 BLB-4 RWL-6 RBL-8 PRE-10
plot WL BL-2 BL1-4 BL2-6 BL3-8 RWL-10 RBL-12 PRE-14
.endc
.saveall

"}
C {code_shown.sym} -530 -1100 0 0 {name=s1 only_toplevel=true value=
"
.param dly=0ns t_dly=2ns raise=100ps fall=100ps BL_period=20ns prds=128 pre_time=2ns read_time=0.7ns
.param VCC=1.8 VSS=0

V_VCC VCC 0 DC 1.8
V_VSS VSS 0 DC 0
**vss vss 0 DC 0
* PULSE(VSS 1.8 2ns 100ps 100ps 3ns 5ns 4)PULSE(0 1.7 \{dly + t_dly/2\} \{raise\} \{fall\} \{(BL_period/2)- t_dly\} \{BL_period/2\} \{prds*2\})

V_WL WL 0 PULSE(\{VSS\} \{VCC\} \{dly + t_dly/2\} \{raise\} \{fall\} \{(BL_period/2)- t_dly\} \{BL_period\} \{prds*2\})


V_BL BLB 0 PULSE(\{VSS\} \{VCC\} \{dly\} \{raise\} \{fall\} \{BL_period\} \{BL_period*2\} \{prds\})
V_BLB BL 0 PULSE(\{VCC\} \{VSS\} \{dly\} \{raise\} \{fall\} \{BL_period\} \{BL_period*2\} \{prds\})

V_BL1 BLB1 0 PULSE(\{VSS\} \{VCC\} \{dly\} \{raise\} \{fall\} \{BL_period*2\} \{BL_period*4\} \{prds\})
V_BLB1 BL1 0 PULSE(\{VCC\} \{VSS\} \{dly\} \{raise\} \{fall\} \{BL_period*2\} \{BL_period*4\} \{prds\})

V_BL2 BLB2 0 PULSE(\{VSS\} \{VCC\} \{dly\} \{raise\} \{fall\} \{BL_period*4\} \{BL_period*8\} \{prds\})
V_BLB2 BL2 0 PULSE(\{VCC\} \{VSS\} \{dly\} \{raise\} \{fall\} \{BL_period*4\} \{BL_period*8\} \{prds\})

V_BL3 BLB3 0 PULSE(\{VSS\} \{VCC\} \{dly\} \{raise\} \{fall\} \{BL_period*8\} \{BL_period*16\} \{prds\})
V_BLB3 BL3 0 PULSE(\{VCC\} \{VSS\} \{dly\} \{raise\} \{fall\} \{BL_period*8\} \{BL_period*16\} \{prds\})

V_BL4 BLB4 0 PULSE(\{VSS\} \{VCC\} \{dly\} \{raise\} \{fall\} \{BL_period*16\} \{BL_period*32\} \{prds\})
V_BLB4 BL4 0 PULSE(\{VCC\} \{VSS\} \{dly\} \{raise\} \{fall\} \{BL_period*16\} \{BL_period*32\} \{prds\})

V_BL5 BLB5 0 PULSE(\{VSS\} \{VCC\} \{dly\} \{raise\} \{fall\} \{BL_period*32\} \{BL_period*64\} \{prds\})
V_BLB5 BL5 0 PULSE(\{VCC\} \{VSS\} \{dly\} \{raise\} \{fall\} \{BL_period*32\} \{BL_period*64\} \{prds\})

V_BL6 BLB6 0 PULSE(\{VSS\} \{VCC\} \{dly\} \{raise\} \{fall\} \{BL_period*64\} \{BL_period*128\} \{prds\})
V_BLB6 BL6 0 PULSE(\{VCC\} \{VSS\} \{dly\} \{raise\} \{fall\} \{BL_period*64\} \{BL_period*128\} \{prds\})

V_BL7 BLB7 0 PULSE(\{VSS\} \{VCC\} \{dly\} \{raise\} \{fall\} \{BL_period*128\} \{BL_period*256\} \{prds\})
V_BLB7 BL7 0 PULSE(\{VCC\} \{VSS\} \{dly\} \{raise\} \{fall\} \{BL_period*128\} \{BL_period*256\} \{prds\})


V_RWL RWL 0 PULSE(\{VSS\} \{VCC\} \{dly + BL_period/2 + 6ns\} \{raise\} \{fall\} \{read_time\} \{BL_period\} \{prds*2\})
V_PRE PRE 0 PULSE(\{VCC\} \{VSS\} \{dly + BL_period/2\} \{raise\} \{fall\} \{pre_time\} \{BL_period\} \{prds*2\})

.tran 0.01ns 5130ns
.control
run
* plot WL BL-2 BLB-4 RWL-6 RBL-8 PRE-10
plot WL BL-2 BL1-4 BL2-6 BL3-8 RWL-10 RBL-12 PRE-14
.endc
.saveall

"}
