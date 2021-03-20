`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.03.2021 12:55:22
// Design Name: 
// Module Name: MixColumnB_tb
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


module MixColumnB_tb();
reg[7:0] G0,G1,G2,G3,G4,G5,G6,G7,G8,G9,GA,GB,GC,GD,GE,Rcon_in,GF;
 wire[7:0] H0,H1,H2,H3,H4,H5,H6,H7,H8,H9,HA,HB,HC,HD,HE,HF,
 T0,T1,T2,T3,T4,T5,T6,T7,T8,T9,TA,TB,TC,TD,TE,TF,Rcon_out;
MixColumnB dut(.G0(G0),.G1(G1),.G2(G2),.G3(G3),.G4(G4),.G5(G5),.G6(G6),.G7(G7),
.G8(G8),.G9(G9),.GA(GA),.GB(GB),.GC(GC),.GD(GD),.GE(GE),.GF(GF),.Rcon_out(Rcon_out),
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
Rcon_in='h80;
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
GE='h1E;
GF='h1F;
Rcon_in='h1B;
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
Rcon_in='h20;
#1
G0='h90;
G1='h91;
G2='h92;
G3='h93;
G4='h94;
G5='h95;
G6='h96;
G7='h97;
G8='h98;
G9='h99;
GA='h9A;
GB='h9B;
GC='h9C;
GD='h9D;
GE='h9E;
GF='h9F;
Rcon_in='h01;
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
Rcon_in='h80;
#1
$finish;
end
endmodule
