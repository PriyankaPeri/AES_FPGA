`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.03.2021 12:57:12
// Design Name: 
// Module Name: AddroundKey_tb
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


module AddroundKey_tb();
reg[7:0] G0,G1,G2,G3,G4,G5,G6,G7,G8,G9,GA,GB,GC,GD,GE,GF,KC,KD,KE,KF,
K0,K1,K2,K3,K4,K5,K6,K7,K8,K9,KA,KB,Rcon_in;
reg clock,empty_in;
wire[7:0] R0,R1,R2,R3,R4,R5,R6,R7,R8,R9,RA,RB,RC,RD,RE,RF,KAC,KAD,
KA0,KA1,KA2,KA3,KA4,KA5,KA6,KA7,KA8,KA9,KAA,KAB,KAE,KAF,Rcon_out;
wire empty;
AddroundKey dut(.clock(clock),.G0(G0),.R0(R0),.G1(G1),.G2(G2),.G3(G3),.G4(G4),.G5(G5),.G6(G6),.G7(G7),
.G8(G8),.G9(G9),.GA(GA),.GB(GB),.GC(GC),.GD(GD),.GE(GE),.GF(GF),
.R1(R1),.R2(R2),.R3(R3),.R4(R4),.R5(R5),.R6(R6),.R7(R7),.R8(R8),.R9(R9),
.RA(RA),.RB(RB),.RC(RC),.RD(RD),.RE(RE),.RF(RF),.KC(KC),.KD(KD),.KE(KE),
.KF(KF),.K0(K0),.K1(K1),.K2(K2),.K3(K3),.K4(K4),.K5(K5),.K6(K6),.K7(K7),
.K8(K8),.K9(K9),.KA(KA),.KB(KB),.KAC(KAC),.KAD(KAD),.KAE(KAE),.KAF(KAF),
.KA0(KA0),.KA1(KA1),.KA2(KA2),.KA3(KA3),.KA4(KA4),.KA5(KA5),.KA6(KA6),
.KA7(KA7),.KA8(KA8),.KA9(KA9),.KAA(KAA),.KAB(KAB),
.empty_in(empty_in),.empty(empty),.Rcon_in(Rcon_in),.Rcon_out(Rcon_out));
initial begin
clock=1;
G0='h0A;
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
Rcon_in='h02;
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
Rcon_in='h04;
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
Rcon_in='h08;
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
