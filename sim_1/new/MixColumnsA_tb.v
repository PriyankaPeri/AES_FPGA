`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.03.2021 12:43:52
// Design Name: 
// Module Name: MixColumnsA_tb
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


module MixColumnsA_tb();
reg[7:0] G0,G1,G2,G3,G4,G5,G6,G7,G8,G9,GA,GB,GC,GD,GE,Rcon_in,GF,
K0,K1,K2,K3,K4,K5,K6,K7,K8,K9,KA,KB,KC,KD,KE,KF;
reg clock,empty_in;
 wire[7:0] H0,H1,H2,H3,H4,H5,H6,H7,H8,H9,HA,HB,HC,HD,HE,HF,
 T0,T1,T2,T3,T4,T5,T6,T7,T8,T9,TA,TB,TC,TD,TE,TF,
 KA0,KA1,KA2,KA3,KA4,KA5,KA6,KA7,KA8,KA9,KAA,KAB,KAC,KAD,KAE,KAF
 ,Rcon_out,R1,R2,R3,R4,R5,
 R6,R7,R8,R9,RA,RB,RC,RD,RE,RF,R0;
 wire empty;
MixColumnsA dut(.G0(G0),.G1(G1),.G2(G2),.G3(G3),.G4(G4),.G5(G5),.G6(G6),.G7(G7),
.G8(G8),.G9(G9),.GA(GA),.GB(GB),.GC(GC),.GD(GD),.GE(GE),.GF(GF),.Rcon_out(Rcon_out),
.KC(KC),.KD(KD),.KE(KE),.KA7(KA7),.KA8(KA8),.KA9(KA9),.KAA(KAA),.KAB(KAB),
.KF(KF),.K0(K0),.K1(K1),.K2(K2),.K3(K3),.K4(K4),.K5(K5),.K6(K6),.K7(K7),
.K8(K8),.K9(K9),.KA(KA),.KB(KB),.KAC(KAC),.KAD(KAD),.KAE(KAE),.KAF(KAF),
.KA0(KA0),.KA1(KA1),.KA2(KA2),.KA3(KA3),.KA4(KA4),.KA5(KA5),.KA6(KA6),
.Rcon_in(Rcon_in),.H0(H0),.H1(H1),.H2(H2),.H3(H3),.H4(H4),.H5(H5),.H6(H6)
,.H7(H7),.H8(H8),.H9(H9),.HA(HA),.HB(HB),.HC(HC),.HD(HD),.HE(HE),.HF(HF),
 .T0(T0),.T1(T1),.T2(T2),.T3(T3),.T4(T4),.T5(T5),.T6(T6),.T7(T7),.T8(T8),
 .T9(T9),.TA(TA),.TB(TB),.TC(TC),.TD(TD),.TE(TE),.TF(TF),.clock(clock)
 ,.empty_in(empty_in),.empty(empty),.R1(R1),.R2(R2),.R3(R3),.R4(R4),.R5(R5),
 .R6(R6),.R7(R7),.R8(R8),.R9(R9),.RA(RA),.RB(RB),.RC(RC),.RD(RD),.RE(RE),.RF(RF),.R0(R0));
initial begin
clock=1;
G0='hAA;
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
K0='h01;
K1='h02;
K2='h03;
K3='h04;
K4='h05;
K5='h06;
K6='h07;
K7='h08;
K8='h09;
K9='h0A;
KA='h0B;
KB='h04;
KC='h0C;
KD='h0D;
KE='h0E;
KF='h0F;
empty_in=0;
Rcon_in='h1b;
#2
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
K0='h01;
K1='h02;
K2='h03;
K3='h04;
K4='h05;
K5='h06;
K6='h07;
K7='h08;
K8='h09;
K9='h0A;
KA='h0B;
KB='h04;
KC='h0C;
KD='h0D;
KE='h0E;
KF='h0F;
empty_in=0;
Rcon_in='h80;
#2
G0='h01;
G1='h02;
G2='h03;
G3='h04;
G4='h05;
G5='h02;
G6='h01;
G7='h03;
G8='h04;
G9='h09;
GA='h0A;
GB='h0B;
GC='h0C;
GD='h0D;
GE='h0E;
GF='h0F;
K0='h02;
K1='h05;
K2='h08;
K3='h01;
K4='h0A;
K5='h08;
K6='h00;
K7='h01;
K8='h09;
K9='h0A;
KA='h0B;
KB='h04;
KC='h0C;
KD='h0D;
KE='h0E;
KF='h0F;
empty_in=1;
Rcon_in='h36;
#2
G0='h08;
G1='h07;
G2='h02;
G3='h03;
G4='h04;
G5='h02;
G6='h05;
G7='h0A;
G8='h0B;
G9='h03;
GA='h0C;
GB='h09;
GC='h02;
GD='h04;
GE='h0D;
GF='h0F;
K0='h04;
K1='h07;
K2='h09;
K3='h02;
K4='h03;
K5='h0D;
K6='h0B;
K7='h0A;
K8='h04;
K9='h02;
KA='h0B;
KB='h04;
KC='h0C;
KD='h0D;
KE='h0E;
KF='h0F;
empty_in=0;
Rcon_in='h02;
#2
G0='h01;
G1='h00;
G2='h03;
G3='h02;
G4='h05;
G5='h04;
G6='h07;
G7='h06;
G8='h08;
G9='h09;
GA='h0A;
GB='h0B;
GC='h0C;
GD='h0D;
GE='h0E;
GF='h0F;
K0='h03;
K1='h09;
K2='h08;
K3='h02;
K4='h05;
K5='h06;
K6='h05;
K7='h02;
K8='h03;
K9='h01;
KA='h08;
KB='h04;
KC='h0C;
KD='h0D;
KE='h0E;
KF='h0F;
empty_in=0;
Rcon_in='h04;
end

always
#1 clock=!clock;
endmodule
