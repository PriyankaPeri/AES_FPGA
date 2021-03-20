`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2021 23:05:34
// Design Name: 
// Module Name: MixColumnsA
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


module MixColumnsA(input [7:0] G0,G1,G2,G3,G4,G5,G6,
    G7,G8,G9,GA,GB,GC,GD,GE,GF,Rcon_in,
    input empty_in,
    input  [7:0] K0,K1,K2,K3,K4,K5,K6,K7,K8,K9,KA,KB,KC,KD,KE,KF,
    output [7:0] H0,H1,H2,H3,H4,H5,H6,H7,H8,H9,HA,HB,HC,HD,HE,HF,
    output [7:0] T0,T1,T2,T3,T4,T5,T6,T7,T8,T9,TA,TB,TC,TD,TE,TF,Rcon_out,
    output [7:0] KA0,KA1,KA2,KA3,KA4,KA5,KA6,KA7,KA8,KA9,KAA,KAB,KAC,KAD,KAE,KAF,
    output empty);
    
    parameter k=8'b00011011;
    assign H0=G0[7]==1?{G0<<1}^k:{G0<<1};
    assign H1=G1[7]==1?{G1<<1}^k:{G1<<1};
    assign H2=G2[7]==1?{G2<<1}^k:{G2<<1};
    assign H3=G3[7]==1?{G3<<1}^k:{G3<<1};
    assign H4=G4[7]==1?{G4<<1}^k:{G4<<1};
    assign H5=G5[7]==1?{G5<<1}^k:{G5<<1};
    assign H6=G6[7]==1?{G6<<1}^k:{G6<<1};
    assign H7=G7[7]==1?{G7<<1}^k:{G7<<1};
    assign H8=G8[7]==1?{G8<<1}^k:{G8<<1};
    assign H9=G9[7]==1?{G9<<1}^k:{G9<<1};
    assign HA=GA[7]==1?{GA<<1}^k:{GA<<1};
    assign HB=GB[7]==1?{GB<<1}^k:{GB<<1};
    assign HC=GC[7]==1?{GC<<1}^k:{GC<<1};
    assign HD=GD[7]==1?{GD<<1}^k:{GD<<1};
    assign HE=GE[7]==1?{GE<<1}^k:{GE<<1};
    assign HF=GF[7]==1?{GF<<1}^k:{GF<<1};
    assign T0=H0^G0;
    assign T1=H1^G1;
    assign T2=H2^G2;
    assign T3=H3^G3;
    assign T4=H4^G4;
    assign T5=H5^G5;
    assign T6=H6^G6;
    assign T7=H7^G7;
    assign T8=H8^G8;
    assign T9=H9^G9;
    assign TA=HA^GA;
    assign TB=HB^GB;
    assign TC=HC^GC;
    assign TD=HD^GD;
    assign TE=HE^GE;
    assign TF=HF^GF;
    assign KA0=K0;
    assign KA1=K1;
    assign KA2=K2;
    assign KA3=K3;
    assign KA4=K4;
    assign KA5=K5;
    assign KA6=K6;
    assign KA7=K7;
    assign KA8=K8;
    assign KA9=K9;
    assign KAA=KA;
    assign KAB=KB;
    assign KAC=KC;
    assign KAD=KD;
    assign KAE=KE;
    assign KAF=KF;
    assign empty=empty_in;
    assign Rcon_out=Rcon_in[7]==1?{Rcon_in^8'b10011011}:{Rcon_in<<1};
endmodule
