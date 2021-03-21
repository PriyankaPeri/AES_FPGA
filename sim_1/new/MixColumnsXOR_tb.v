`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.03.2021 12:14:57
// Design Name: 
// Module Name: MixColumnsXOR_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MixColumnsXOR_tb();
reg[7:0] G0,G1,G2,G3,G4,G5,G6,G7,G8,G9,GA,GB,GC,GD,GE,GF,
 H0,H1,H2,H3,H4,H5,H6,H7,H8,H9,HA,HB,HC,HD,HE,HF,
 T0,T1,T2,T3,T4,T5,T6,T7,T8,T9,TA,TB,TC,TD,TE,TF,Rcon_in,
 K0,K1,K2,K3,K4,K5,K6,K7,K8,K9,KA,KB,KC,KD,KE,KF;
 reg clock, empty_in;
wire[7:0] R0,R1,R2,R3,R4,R5,R6,R7,R8,R9,RA,RB,RC,RD,RE,RF,Rcon_out,
KA0,KA1,KA2,KA3,KA4,KA5,KA6,KA7,KA8,KA9,KAA,KAB,KAC,KAD,KAE,KAF;
wire empty;
MixColumnsXOR dut(.G0(G0),.G1(G1),.G2(G2),.G3(G3),.G4(G4),.G5(G5),.G6(G6),.G7(G7),
.G8(G8),.G9(G9),.GA(GA),.GB(GB),.GC(GC),.GD(GD),.GE(GE),.GF(GF),.R0(R0),
.R1(R1),.R2(R2),.R3(R3),.R4(R4),.R5(R5),.R6(R6),.R7(R7),.R8(R8),.R9(R9),
.RA(RA),.RB(RB),.RC(RC),.RD(RD),.RE(RE),.RF(RF),.Rcon_out(Rcon_out),
.KC(KC),.KD(KD),.KE(KE),.KA7(KA7),.KA8(KA8),.KA9(KA9),.KAA(KAA),.KAB(KAB),
.KF(KF),.K0(K0),.K1(K1),.K2(K2),.K3(K3),.K4(K4),.K5(K5),.K6(K6),.K7(K7),
.K8(K8),.K9(K9),.KA(KA),.KB(KB),.KAC(KAC),.KAD(KAD),.KAE(KAE),.KAF(KAF),
.KA0(KA0),.KA1(KA1),.KA2(KA2),.KA3(KA3),.KA4(KA4),.KA5(KA5),.KA6(KA6),
.Rcon_in(Rcon_in),.H0(H0),.H1(H1),.H2(H2),.H3(H3),.H4(H4),.H5(H5),.H6(H6)
,.H7(H7),.H8(H8),.H9(H9),.HA(HA),.HB(HB),.HC(HC),.HD(HD),.HE(HE),.HF(HF),
 .T0(T0),.T1(T1),.T2(T2),.T3(T3),.T4(T4),.T5(T5),.T6(T6),.T7(T7),.T8(T8),
 .T9(T9),.TA(TA),.TB(TB),.TC(TC),.TD(TD),.TE(TE),.TF(TF),.clock(clock)
 ,.empty_in(empty_in),.empty(empty));
initial begin
clock=1;
G0='h00;
G1='h01;
G2='h02;
G3='h03;
G4='h04;
G5='h05;
G6='h06;
G7='h07;
G8='h08;
G9='h09;
GA='h0A;
GB='h0B;
GC='h0C;
GD='h0D;
GE='h0E;
GF='h0F;
KC='h0C;
Rcon_in='h36;
H0='h00;
H1='h01;
H2='h02;
H3='h03;
H4='h04;
H5='h05;
H6='h06;
H7='h07;
H8='h08;
H9='h09;
HA='h0A;
HB='h0B;
HC='h0C;
HD='h0D;
HE='h0E;
HF='h0F;
T0='h00;
T1='h01;
T2='h02;
T3='h03;
T4='h04;
T5='h05;
T6='h06;
T7='h07;
T8='h08;
T9='h09;
TA='h0A;
TB='h0B;
TC='h0C;
TD='h0D;
TE='h0E;
TF='h0F;
empty_in=1;
#2
G0='h10;
G1='h11;
G2='h12;
G3='h13;
G4='h14;
G5='h15;
G6='h16;
G7='h17;
G8='h18;
G9='h19;
GA='h1A;
GB='h1B;
GC='h1C;
GD='h1D;
GE='h1E;
GF='h1F;
KC='h1C;
Rcon_in='h1b;
H0='h11;
H1='h14;
H2='h18;
H3='h13;
H4='h1a;
H5='h15;
H6='h1b;
H7='h17;
H8='h19;
H9='h1d;
HA='h13;
HB='h1f;
HC='h1d;
HD='h13;
HE='h1a;
HF='h11;
T0='h10;
T1='h11;
T2='h12;
T3='h13;
T4='h14;
T5='h15;
T6='h16;
T7='h17;
T8='h18;
T9='h19;
TA='h1A;
TB='h1B;
TC='h1C;
TD='h1D;
TE='h1E;
TF='h1F;
empty_in=0;
end
always
#1 clock=!clock;
endmodule
