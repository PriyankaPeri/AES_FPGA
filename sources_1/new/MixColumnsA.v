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
    input empty_in,clock,
    input  [7:0] K0,K1,K2,K3,K4,K5,K6,K7,K8,K9,KA,KB,KC,KD,KE,KF,
    output reg [7:0] R0,R1,R2,R3,R4,R5,R6,R7,R8,R9,RA,RB,RC,RD,RE,RF,
    output reg [7:0] H0,H1,H2,H3,H4,H5,H6,H7,H8,H9,HA,HB,HC,HD,HE,HF,
    output reg [7:0] T0,T1,T2,T3,T4,T5,T6,T7,T8,T9,TA,TB,TC,TD,TE,TF,Rcon_out,
    output reg [7:0] KA0,KA1,KA2,KA3,KA4,KA5,KA6,KA7,KA8,KA9,KAA,KAB,KAC,KAD,KAE,KAF,
    output reg empty);
    reg [7:0] H0_,H1_,H2_,H3_,H4_,H5_,H6_,H7_,H8_,H9_,HA_,HB_,HC_,HD_,HE_,HF_,
    T0_,T1_,T2_,T3_,T4_,T5_,T6_,T7_,T8_,T9_,TA_,TB_,TC_,TD_,TE_,TF_,
    KA0_,KA1_,KA2_,KA3_,KA4_,KA5_,KA6_,KA7_,KA8_,KA9_,KAA_,KAB_,KAC_,KAD_,KAE_,KAF_,
    R0_,R1_,R2_,R3_,R4_,R5_,R6_,R7_,R8_,R9_,RA_,RB_,RC_,RD_,RE_,RF_;
    reg empty_;
    reg [7:0]Rcon_out_;
    parameter k=8'b00011011;
    always@(posedge clock)
    begin
    H0_<=G0[7]==1?{G0<<1}^k:{G0<<1};
    H1_<=G1[7]==1?{G1<<1}^k:{G1<<1};
    H2_<=G2[7]==1?{G2<<1}^k:{G2<<1};
    H3_<=G3[7]==1?{G3<<1}^k:{G3<<1};
    H4_<=G4[7]==1?{G4<<1}^k:{G4<<1};
    H5_<=G5[7]==1?{G5<<1}^k:{G5<<1};
    H6_<=G6[7]==1?{G6<<1}^k:{G6<<1};
    H7_<=G7[7]==1?{G7<<1}^k:{G7<<1};
    H8_<=G8[7]==1?{G8<<1}^k:{G8<<1};
    H9_<=G9[7]==1?{G9<<1}^k:{G9<<1};
    HA_<=GA[7]==1?{GA<<1}^k:{GA<<1};
    HB_<=GB[7]==1?{GB<<1}^k:{GB<<1};
    HC_<=GC[7]==1?{GC<<1}^k:{GC<<1};
    HD_<=GD[7]==1?{GD<<1}^k:{GD<<1};
    HE_<=GE[7]==1?{GE<<1}^k:{GE<<1};
    HF_<=GF[7]==1?{GF<<1}^k:{GF<<1};
    T0_<=G0[7]==1?{G0<<1}^k^G0:{G0<<1}^G0;
    T1_<=G1[7]==1?{G1<<1}^k^G1:{G1<<1}^G1;
    T2_<=G2[7]==1?{G2<<1}^k^G2:{G2<<1}^G2;
    T3_<=G3[7]==1?{G3<<1}^k^G3:{G3<<1}^G3;
    T4_<=G4[7]==1?{G4<<1}^k^G4:{G4<<1}^G4;
    T5_<=G5[7]==1?{G5<<1}^k^G5:{G5<<1}^G5;
    T6_<=G6[7]==1?{G6<<1}^k^G6:{G6<<1}^G6;
    T7_<=G7[7]==1?{G7<<1}^k^G7:{G7<<1}^G7;
    T8_<=G8[7]==1?{G8<<1}^k^G8:{G8<<1}^G8;
    T9_<=G9[7]==1?{G9<<1}^k^G9:{G9<<1}^G9;
    TA_<=GA[7]==1?{GA<<1}^k^GA:{GA<<1}^GA;
    TB_<=GB[7]==1?{GB<<1}^k^GB:{GB<<1}^GB;
    TC_<=GC[7]==1?{GC<<1}^k^GC:{GC<<1}^GC;
    TD_<=GD[7]==1?{GD<<1}^k^GD:{GD<<1}^GD;
    TE_<=GE[7]==1?{GE<<1}^k^GE:{GE<<1}^GE;
    TF_<=GF[7]==1?{GF<<1}^k^GF:{GF<<1}^GF;
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
    R0_<=G0;
    R1_<=G1;
    R2_<=G2;
    R3_<=G3;
    R4_<=G4;
    R5_<=G5;
    R6_<=G6;
    R7_<=G7;
    R8_<=G8;
    R9_<=G9;
    RA_<=GA;
    RB_<=GB;
    RC_<=GC;
    RD_<=GD;
    RE_<=GE;
    RF_<=GF;
    empty_<=empty_in;
    Rcon_out_<=Rcon_in[7]==1?8'h1b:{Rcon_in<<1};
    end
    always@(posedge clock)
    begin
    H0<=H0_;
    H1<=H1_;
    H2<=H2_;
    H3<=H3_;
    H4<=H4_;
    H5<=H5_;
    H6<=H6_;
    H7<=H7_;
    H8<=H8_;
    H9<=H9_;
    HA<=HA_;
    HB<=HB_;
    HC<=HC_;
    HD<=HD_;
    HE<=HE_;
    HF<=HF_;
    T0<=T0_;
    T1<=T1_;
    T2<=T2_;
    T3<=T3_;
    T4<=T4_;
    T5<=T5_;
    T6<=T6_;
    T7<=T7_;
    T8<=T8_;
    T9<=T9_;
    TA<=TA_;
    TB<=TB_;
    TC<=TC_;
    TD<=TD_;
    TE<=TE_;
    TF<=TF_;
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
