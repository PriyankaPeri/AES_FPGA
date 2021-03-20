`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.03.2021 00:28:47
// Design Name: 
// Module Name: AddroundKey
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


module AddroundKey(input[7:0] G0,G1,G2,G3,G4,G5,G6,G7,G8,G9,GA,GB,GC,GD,GE,GF,
    input[7:0] K0,K1,K2,K3,K4,K5,K6,K7,K8,K9,KA,KB,KC,KD,KE,KF,Rcon_in,
    output[7:0] R0,R1,R2,R3,R4,R5,R6,R7,R8,R9,RA,RB,RC,RD,RE,RF,Rcon_out,
    output [7:0] KA0,KA1,KA2,KA3,KA4,KA5,KA6,KA7,KA8,KA9,KAA,KAB,KAC,KAD,KAE,KAF,
    input empty_in,
    output empty
    );
    assign R0=G0^KC;
    assign R1=G1^KD;
    assign R2=G2^KE;
    assign R3=G3^KF;
    assign R4=G4^KC^K0;
    assign R5=G5^KD^K1;
    assign R6=G6^KE^K2;
    assign R7=G7^KF^K3;
    assign R8=G8^KC^K0^K4;
    assign R9=G9^KD^K1^K5;
    assign RA=GA^KE^K2^K6;
    assign RB=GB^KF^K3^K7;
    assign RC=GC^K8^KC^K0^K4;
    assign RD=GD^K9^KD^K1^K5;
    assign RE=GE^KA^KE^K2^K6;
    assign RF=GF^KB^KF^K3^K7;
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
    assign Rcon_out=Rcon_in;
    
endmodule
