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


module AddroundKey(
        input [7:0] K0,K1,K2,K3,K4,K5,K6,K7,K8,K9,KA,KB,KC,KD,KE,KF,
        input [7:0] Rcon_in,
        input empty_in, input clock,
        input [7:0] G0,G1,G2,G3,G4,G5,G6,G7,G8,G9,GA,GB,GC,GD,GE,GF,
        output reg [7:0] R0,R1,R2,R3,R4,R5,R6,R7,R8,R9,RA,RB,RC,RD,RE,RF,
        output reg [7:0] KA0,KA1,KA2,KA3,KA4,KA5,KA6,KA7,KA8,KA9,KAA,KAB,KAC,KAD,KAE,KAF,
        output reg [7:0] Rcon_out,
        output reg empty);
reg [7:0] R0_,R1_,R2_,R3_,R4_,R5_,R6_,R7_,R8_,R9_,RA_,RB_,RC_,RD_,RE_,RF_,
KA0_,KA1_,KA2_,KA3_,KA4_,KA5_,KA6_,KA7_,KA8_,KA9_,KAA_,KAB_,KAC_,KAD_,KAE_,KAF_,
Rcon_out_,empty_;
    always@(posedge clock)
    begin
    R0_<=G0^KC;
    R1_<=G1^KD;
    R2_<=G2^KE;
    R3_<=G3^KF;
    R4_<=G4^KC^K0;
    R5_<=G5^KD^K1;
    R6_<=G6^KE^K2;
    R7_<=G7^KF^K3;
    R8_<=G8^KC^K0^K4;
    R9_<=G9^KD^K1^K5;
    RA_<=GA^KE^K2^K6;
    RB_<=GB^KF^K3^K7;
    RC_<=GC^K8^KC^K0^K4;
    RD_<=GD^K9^KD^K1^K5;
    RE_<=GE^KA^KE^K2^K6;
    RF_<=GF^KB^KF^K3^K7;
    KA0_<=K0;
    KA1_<=K1;
    KA2_<=K2;
    KA3_<=K3;
    KA4_<=K4;
    KA5_<=K5;
    KA6_<=K6;
    KA7_<=K7;
    KA8_<=K8;
    KA9_<=K9;
    KAA_<=KA;
    KAB_<=KB;
    KAC_<=KC;
    KAD_<=KD;
    KAE_<=KE;
    KAF_<=KF;
    empty_<=empty_in;
    Rcon_out_<=Rcon_in;
    end
    always @(posedge clock)
     begin
     R0 <=  R0_;
     R1 <=  R1_;
     R2 <=  R2_;
     R3 <=  R3_;
     R4 <=  R4_;
     R5 <=  R5_;
     R6 <=  R6_;
     R7 <=  R7_;
     R8 <=  R8_;
     R9 <=  R9_;
     RA <=  RA_;
     RB <=  RB_;
     RC <=  RC_;
     RD <=  RD_;
     RE <=  RE_;
     RF <=  RF_;
     KAC <= KAC_;
     KAD <= KAD_;
     KAE <= KAE_;
     KAF <= KAF_;
     KA0 <= KA0_;
     KA1 <= KA1_;
     KA2 <= KA2_;
     KA3 <= KA3_; 
     KA4 <= KA4_;
     KA5 <= KA5_;
     KA6 <= KA6_;
     KA7 <= KA7_; 
     KA8 <= KA8_;
     KA9 <= KA9_;
     KAA <= KAA_;
     KAB <= KAB_;
     Rcon_out <= Rcon_out_;
     empty <= empty_;        
     end
    
endmodule
