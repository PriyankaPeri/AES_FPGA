`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.03.2021 00:03:01
// Design Name: 
// Module Name: MixColumnsXOR
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


module MixColumnsXOR(input[7:0] G0,G1,G2,G3,G4,G5,G6,G7,G8,G9,GA,GB,GC,GD,GE,GF,
       input[7:0] H0,H1,H2,H3,H4,H5,H6,H7,H8,H9,HA,HB,HC,HD,HE,HF,
       input[7:0] K0,K1,K2,K3,K4,K5,K6,K7,K8,K9,KA,KB,KC,KD,KE,KF,
       input[7:0] T0,T1,T2,T3,T4,T5,T6,T7,T8,T9,TA,TB,TC,TD,TE,TF,Rcon_in,
       input empty_in,
       output [7:0] KA0,KA1,KA2,KA3,KA4,KA5,KA6,KA7,KA8,KA9,KAA,KAB,KAC,KAD,KAE,KAF,
       output[7:0] R0,R1,R2,R3,R4,R5,R6,R7,R8,R9,RA,RB,RC,RD,RE,RF,Rcon_out,
       output empty
    );
       
       assign R0=(Rcon_in=='h36)?G0:H0^T4^G8^GC;
       assign R1=(Rcon_in=='h36)?G1:G0^H4^T8^GC;
       assign R2=(Rcon_in=='h36)?G2:G0^G4^H8^TC;
       assign R3=(Rcon_in=='h36)?G3:T0^G4^G8^HC;
       assign R4=(Rcon_in=='h36)?G4:H1^T5^G9^GD;
       assign R5=(Rcon_in=='h36)?G5:G1^H5^T9^GD;
       assign R6=(Rcon_in=='h36)?G6:G1^G5^H9^TD;
       assign R7=(Rcon_in=='h36)?G7:T1^G5^G9^HD;
       assign R8=(Rcon_in=='h36)?G8:H2^T6^GA^GE;
       assign R9=(Rcon_in=='h36)?G9:G2^H6^TA^GE;
       assign RA=(Rcon_in=='h36)?GA:G2^G6^HA^TE;
       assign RB=(Rcon_in=='h36)?GB:T2^G6^GA^HE;
       assign RC=(Rcon_in=='h36)?GC:H3^T7^GB^GF;
       assign RD=(Rcon_in=='h36)?GD:G3^H7^TB^GF;
       assign RE=(Rcon_in=='h36)?GE:G3^G7^HB^TF;
       assign RF=(Rcon_in=='h36)?GF:T3^G7^GB^HF;
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
       assign KAC=KC^Rcon_in;
       assign KAD=KD;
       assign KAE=KE;
       assign KAF=KF;
       assign empty=empty_in;
       assign Rcon_out=Rcon_in;
   endmodule
