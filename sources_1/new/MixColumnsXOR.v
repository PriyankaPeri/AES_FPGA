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
       input empty_in,clock,
       output reg [7:0] KA0,KA1,KA2,KA3,KA4,KA5,KA6,KA7,KA8,KA9,KAA,KAB,KAC,KAD,KAE,KAF,
       output reg [7:0] R0,R1,R2,R3,R4,R5,R6,R7,R8,R9,RA,RB,RC,RD,RE,RF,Rcon_out,
       output reg empty
    );
    reg [7:0] R0_,R1_,R2_,R3_,R4_,R5_,R6_,R7_,R8_,R9_,RA_,RB_,RC_,RD_,RE_,RF_,
    KA0_,KA1_,KA2_,KA3_,KA4_,KA5_,KA6_,KA7_,KA8_,KA9_,KAA_,KAB_,KAC_,KAD_,KAE_,KAF_;
    reg empty_;
    reg [7:0]Rcon_out_;
    always@(posedge clock)
    begin
    R0_<=(Rcon_in=='h36)?G0:H0^T4^G8^GC;
    R1_<=(Rcon_in=='h36)?G1:G0^H4^T8^GC;
    R2_<=(Rcon_in=='h36)?G2:G0^G4^H8^TC;
    R3_<=(Rcon_in=='h36)?G3:T0^G4^G8^HC;
    R4_<=(Rcon_in=='h36)?G4:H1^T5^G9^GD;
    R5_<=(Rcon_in=='h36)?G5:G1^H5^T9^GD;
    R6_<=(Rcon_in=='h36)?G6:G1^G5^H9^TD;
    R7_<=(Rcon_in=='h36)?G7:T1^G5^G9^HD;
    R8_<=(Rcon_in=='h36)?G8:H2^T6^GA^GE;
    R9_<=(Rcon_in=='h36)?G9:G2^H6^TA^GE;
    RA_<=(Rcon_in=='h36)?GA:G2^G6^HA^TE;
    RB_<=(Rcon_in=='h36)?GB:T2^G6^GA^HE;
    RC_<=(Rcon_in=='h36)?GC:H3^T7^GB^GF;
    RD_<=(Rcon_in=='h36)?GD:G3^H7^TB^GF;
    RE_<=(Rcon_in=='h36)?GE:G3^G7^HB^TF;
    RF_<=(Rcon_in=='h36)?GF:T3^G7^GB^HF;
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
    KAC_<=KC^Rcon_in;
    KAD_<=KD;
    KAE_<=KE;
    KAF_<=KF;
    empty_<=empty_in;
    Rcon_out_<=Rcon_in;
    end
    always@(posedge clock)
    begin
    R0<=R0_;
    R1<=R1_;
    R2<=R2_;
    R3<=R3_;
    R4<=R4_;
    R5<=R5_;
    R6<=R6_;
    R7<=R7_;
    R8<=R8_;
    R9<=R9_;
    RA<=RA_;
    RB<=RB_;
    RC<=RC_;
    RD<=RD_;
    RE<=RE_;
    RF<=RF_;
    KA0<=KA0_;
    KA1<=KA1_;
    KA2<=KA2_;
    KA3<=KA3_;
    KA4<=KA4_;
    KA5<=KA5_;
    KA6<=KA6_;
    KA7<=KA7_;
    KA8<=KA8_;
    KA9<=KA9_;
    KAA<=KAA_;   
    KAB<=KAB_;  
    KAC<=KAC_;
    KAD<=KAD_;
    KAE<=KAE_;
    KAF<=KAF_;
    empty<=empty_;
    Rcon_out<=Rcon_out_;
    end
    endmodule
