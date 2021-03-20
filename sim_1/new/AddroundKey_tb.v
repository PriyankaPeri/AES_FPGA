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
reg[7:0] G0,G1,G2,G3,G4,G5,G6,G7,G8,G9,GA,GB,GC,GD,GE,GF,
K0,K1,K2,K3,K4,K5,K6,K7,K8,K9,KA,KB,KC,KD,KE,KF;
wire[7:0] R0,R1,R2,R3,R4,R5,R6,R7,R8,R9,RA,RB,RC,RD,RE,RF;
AddroundKey dut(.G0(G0),.G1(G1),.G2(G2),.G3(G3),.G4(G4),.G5(G5),.G6(G6),.G7(G7),
.G8(G8),.G9(G9),.GA(GA),.GB(GB),.GC(GC),.GD(GD),.GE(GE),.GF(GF),.R0(R0),
.R1(R1),.R2(R2),.R3(R3),.R4(R4),.R5(R5),.R6(R6),.R7(R7),.R8(R8),.R9(R9),
.RA(RA),.RB(RB),.RC(RC),.RD(RD),.RE(RE),.RF(RF),.KC(KC),.KD(KD),.KE(KE),.KF(KF),
.K1(K1),.K0(K0),.K2(K2),.K3(K3),.K4(K4),.K5(K5),.K6(K6),.K7(K7),.K8(K8),.K9(K9),.KA(KA),.KB(KB));
initial begin
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
K0='h0C;
K1='h0D;
K2='h0E;
K3='h0F;
K4='h0C;
K5='h0D;
K6='h0E;
K7='h0F;
K8='h0C;
K9='h0D;
KA='h0E;
KB='h0F;
KC='h0C;
KD='h0D;
KE='h0E;
KF='h0F;
#1
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
K0='h0C;
K1='h0D;
K2='h0E;
K3='h0F;
K4='h0C;
K5='h0D;
K6='h0E;
K7='h0F;
K8='h0C;
K9='h0D;
KA='h0E;
KB='h0F;
KC='h0C;
KD='h0D;
KE='h0E;
KF='h0F;
#1
G0='h50;
G1='h51;
G2='h52;
G3='h53;
G4='h54;
G5='h55;
G6='h56;
G7='h57;
G8='h58;
G9='h59;
GA='h5A;
GB='h5B;
GC='h5C;
GD='h5D;
GE='h5E;
GF='h5F;
K0='h5C;
K1='h5D;
K2='h5E;
K3='h5F;
K4='h5C;
K5='h5D;
K6='h5E;
K7='h5F;
K8='h5C;
K9='h5D;
KA='h5E;
KB='h5F;
KC='h5C;
KD='h5D;
KE='h5E;
KF='h5F;
#1
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
K0='h0C;
K1='h0D;
K2='h0E;
K3='h0F;
K4='h0C;
K5='h0D;
K6='h0E;
K7='h0F;
K8='h0C;
K9='h0D;
KA='h0E;
KB='h0F;
KC='h0C;
KD='h0D;
KE='h0E;
KF='h0F;
#1
$finish;
end
endmodule
