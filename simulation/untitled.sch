v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 390 100 420 100 {
lab=GND}
N 420 70 420 100 {
lab=GND}
N 390 70 420 70 {
lab=GND}
N 380 -90 410 -90 {
lab=Vcc}
N 410 -90 410 -60 {
lab=Vcc}
N 380 -60 410 -60 {
lab=Vcc}
N 320 -60 340 -60 {
lab=in}
N 320 -60 320 70 {
lab=in}
N 320 70 350 70 {
lab=in}
N 220 -10 320 -10 {
lab=in}
N 220 50 220 100 {
lab=GND}
N 10 -90 10 -10 {
lab=Vcc}
N 10 50 10 110 {
lab=GND}
N 10 110 220 100 {
lab=GND}
N 220 100 390 100 {
lab=GND}
N 10 -90 380 -90 {
lab=Vcc}
N 200 -10 220 -10 {
lab=in}
N -0 -90 10 -90 {
lab=Vcc}
N 380 -30 390 -30 {
lab=inv_out}
N 390 -30 390 40 {
lab=inv_out}
N 390 -10 440 -10 {
lab=inv_out}
C {devices/vsource.sym} 220 20 0 0 {name=Vin value="pulse(0 1.8 1ns 1ns 1ns 5ns 10ns)"}
C {devices/vsource.sym} 10 20 0 0 {name=Vss value="pwl 0 1.8"}
C {devices/gnd.sym} 220 100 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 360 -60 0 0 {name=M1
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 370 70 0 0 {name=M2
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 200 -10 0 0 {name=p3 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 440 -10 0 1 {name=p4 sig_type=std_logic lab=inv_out}
C {devices/lab_pin.sym} 0 -90 0 0 {name=p1 sig_type=std_logic lab=Vcc
}
C {devices/code_shown.sym} 10 200 0 0 {name=SPICE only_toplevel=false value=".lib /home/impact/tools/open_pdks/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.tran 0.1n 1u
.save all"}
