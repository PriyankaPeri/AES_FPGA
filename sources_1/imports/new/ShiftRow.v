`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.01.2021 20:05:38
// Design Name: 
// Module Name: ShiftRow
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


module ShiftRow(
        input [7:0] K0,K1,K2,K3,K4,K5,K6,K7,K8,K9,KA,KB,KC,KD,KE,KF,
        input [7:0] Rcon_in,
        input empty_in, 
    input [7:0] G0,G1,G2,G3,G4,G5,G6,G7,G8,G9,GA,GB,GC,GD,GE,GF,
    output [7:0] R0,R1,R2,R3,R4,R5,R6,R7,R8,R9,RA,RB,RC,RD,RE,RF,
    output [7:0] KA0,KA1,KA2,KA3,KA4,KA5,KA6,KA7,KA8,KA9,KAA,KAB,KAC,KAD,KAE,KAF,
    output [7:0] Rcon_out,
    output empty);
    assign R0=G0;
    assign R1=G1;
    assign R2=G2;
    assign R3=G3;
    assign R4=G5;
    assign R5=G6;
    assign R6=G7;
    assign R7=G4;
    assign R8=GA;
    assign R9=GB;
    assign RA=G8;
    assign RB=G9;
    assign RC=GF;
    assign RD=GC;
    assign RE=GD;
    assign RF=GE;   
    assign KAC=KD;
    assign KAD=KE;
    assign KAE=KF;
    assign KAF=KC;
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

    assign Rcon_out=Rcon_in;
    assign empty= empty_in;
    
endmodule
