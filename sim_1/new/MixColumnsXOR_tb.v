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
 T0,T1,T2,T3,T4,T5,T6,T7,T8,T9,TA,TB,TC,TD,TE,TF,Rcon_in,KC;
wire[7:0] R0,R1,R2,R3,R4,R5,R6,R7,R8,R9,RA,RB,RC,RD,RE,RF,KAC;
MixColumnsXOR dut(.G0(G0),.G1(G1),.G2(G2),.G3(G3),.G4(G4),.G5(G5),.G6(G6),.G7(G7),
.G8(G8),.G9(G9),.GA(GA),.GB(GB),.GC(GC),.GD(GD),.GE(GE),.GF(GF),.R0(R0),
.R1(R1),.R2(R2),.R3(R3),.R4(R4),.R5(R5),.R6(R6),.R7(R7),.R8(R8),.R9(R9),
.RA(RA),.RB(RB),.RC(RC),.RD(RD),.RE(RE),.RF(RF),.KC(KC),.KAC(KAC),
.Rcon_in(Rcon_in),.H0(H0),.H1(H1),.H2(H2),.H3(H3),.H4(H4),.H5(H5),.H6(H6)
,.H7(H7),.H8(H8),.H9(H9),.HA(HA),.HB(HB),.HC(HC),.HD(HD),.HE(HE),.HF(HF),
 .T0(T0),.T1(T1),.T2(T2),.T3(T3),.T4(T4),.T5(T5),.T6(T6),.T7(T7),.T8(T8),
 .T9(T9),.TA(TA),.TB(TB),.TC(TC),.TD(TD),.TE(TE),.TF(TF));
initial begin
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
$finish;
end
endmodule
