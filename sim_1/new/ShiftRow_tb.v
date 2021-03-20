`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.03.2021 10:22:30
// Design Name: 
// Module Name: ShiftRow_tb
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


module ShiftRow_tb();
reg[7:0] G0,G1,G2,G3,G4,G5,G6,G7,G8,G9,GA,GB,GC,GD,GE,GF,KC,KD,KE,KF;
wire[7:0] R0,R1,R2,R3,R4,R5,R6,R7,R8,R9,RA,RB,RC,RD,RE,RF,KAC,KAD,KAE,KAF;
ShiftRow dut(.G0(G0),.G1(G1),.G2(G2),.G3(G3),.G4(G4),.G5(G5),.G6(G6),.G7(G7),
.G8(G8),.G9(G9),.GA(GA),.GB(GB),.GC(GC),.GD(GD),.GE(GE),.GF(GF),.R0(R0),
.R1(R1),.R2(R2),.R3(R3),.R4(R4),.R5(R5),.R6(R6),.R7(R7),.R8(R8),.R9(R9),
.RA(RA),.RB(RB),.RC(RC),.RD(RD),.RE(RE),.RF(RF),.KC(KC),.KD(KD),.KE(KE),.KF(KF),
.KAC(KAC),.KAD(KAD),.KAE(KAE),.KAF(KAF));
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
GE='h0F;
GF='h0F;
KC='h0C;
KD='h0D;
KE='h0E;
KF='h0F;
#1
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
GE='h1F;
GF='h1F;
KC='h1C;
KD='h1D;
KE='h1E;
KF='h1F;
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
KC='h5C;
KD='h5D;
KE='h5E;
KF='h5F;
#1
G0='h70;
G1='h71;
G2='h72;
G3='h73;
G4='h74;
G5='h75;
G6='h76;
G7='h77;
G8='h78;
G9='h79;
GA='h7A;
GB='h7B;
GC='h7C;
GD='h7D;
GE='h7E;
GF='h7F;
KC='h7C;
KD='h7D;
KE='h7E;
KF='h7F;
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
GE='h0F;
GF='h0F;
KC='h0C;
KD='h0D;
KE='h0E;
KF='h0F;
#1
$finish;
end
endmodule
