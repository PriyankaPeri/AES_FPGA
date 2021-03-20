`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2021 01:33:39
// Design Name: 
// Module Name: AES_block
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


module AES_block(
input [127:0]in,
output wire[127:0]out,
input clock
    );

    wire [7:0]G7_4,G6_7,G8_A,K0_3,K9_5,G8_7,GF_7,H5,Rcon_out_5,G3_2,KC_3,K6_9,KD_7,G0_B,K6_3,G0_9,G0_4,K0_B,GD_2,G7_2,KA_7,GA_5,inD_B,KF_7,K9_6,G2_8,K2_B,K9_2,KB_7,
    K3_7,GB_4,K3_A,K4_6,in1_B,GB_6,G5_5,K8_3,K9_3,K6_5,GA_B,T1,KE_8,KA_9,KB_B,K6_4,KD_9,HC,G7_6,G5_7,K0_5,Rcon_8,KF_B,K3_4,G3_3,T3,K1_3,Rcon_A,in2_B,GA_2,
    GD_7,K6_6,in0_B,KB_6,KC_6,K4_2,K2_8,G4_7,KC_2,G1_3,GA_4,G9_6,K5_4,G9_3,K7_4,GB_8,G1_6,KF_5,G1_7,K9_A,KD_6,K8_8,G2_5,H0,G4_4,G9_7,T4,G6_9,K9_7
    ,K7_2,K4_8,G6_6,K7_9,K8_7,KE_5,G1_B,K4_9,K3_9,GE_3,G1_9,K4_5,KC_7,G4_5,G3_9,K6_2,KB_5,K0_4,G0_3,G7_B,Rcon_2,KC_B,GE_8,K1_B,T6,KF_2,K5_2,G1_8,K8_9,K5_8,
    K1_2,K5_7,K6_7,GC_9,G6_5,inE_B,G7_9,KE_2,KA_5,K4_B,GA_6,inC_B,KD_3,KE_3,GA_7,G6_2,GD_8,GD_5,GE_9,KD_5,K0_2,KD_A,KC_4,K3_B,HB,K9_4,G9_9,K7_3,G0_6,K3_8,
    G4_3,KB_2,G9_4,GC_6,H8,G2_7,H2,GE_4,GE_6,K8_5,GF_3,GB_B,GE_5,G4_9,TF,in8_B,K4_7,G2_2,GC_2,G2_4,in5_B,K6_8,KA_6,KC_A,G7_7,K0_8,G9_2,K2_4,
    GC_4,GD_B,K2_6,K8_4,T7,K8_6,T0,HE,K6_A,G9_8,in7_B,KA_2,KE_B,KB_8,KC_8,T2,HD,KE_4,HF,Rcon_3,KD_4,KD_8,K7_7,K7_6,G6_8,G2_6,K5_3,KF_4,K9_B,G1_2,G4_B,G6_3,K8_A,K4_4,
    K2_9,KA_A,G8_8,G3_4,G8_6,G7_A,T5,K2_7,K2_2,in3_B,GA_3,KE_9,KE_7,inF_B,GC_B,G8_9,KA_4,KB_3,K1_4,G5_B,GB_5,Rcon_4,GA_9,GE_7,K3_5,H3,GA_A,KF_A,TB,GF_5,K5_9,KA_3,
    G7_8,K8_2,K3_6,GA_8,KA_B,K9_9,KE_6,G8_4,G5_8,G3_5,K2_5,K0_9,TA,K5_6,G7_3,GE_A,G5_2,T8,inA_B,K3_2,KE_A,K5_B,G0_7,K1_7,G2_B,in4_B,G3_B,G9_A,KC_5,GF_8,HA,KF_6,G5_9,
    Rcon_6,K1_A,G9_B,inB_B,KB_9,GE_B,G1_A,Rcon_5,K6_B,GD_4,G8_2,K1_9,GB_9,K1_5,K2_A,H7,K0_7,K9_8,G3_6,G9_5,T9,G5_4,G4_8,G6_A,G0_A,GF_A,G8_3,H1,Rcon_B,K5_A,G1_4,GD_9,
    G3_8,K7_A,K7_8,G0_5,GB_A,G3_7,GF_4,G4_A,H4,G5_3,G5_6,G6_4,KB_A,K4_3,GB_7,in6_B,GD_3,K1_6,K0_6,in9_B,KD_B,G0_2,KF_9,G7_5,K7_B,G5_A,TC,GD_6,
    TD,GD_A,K1_8,KF_3,KB_4,G0_8,G4_6,GF_6,GC_3,GB_2,GC_8,K8_B,K7_5,G2_3,H6,H9,GB_3,K2_3,G2_9,G8_B,GF_B,GF_2,GF_9,Rcon_7,GC_7,G4_2,KF_8,G2_A,G3_A,K5_5,TE,KD_2,GC_A,
    G1_5,K4_A,GE_2,KA_8,K0_A,G8_5,Rcon_9,G6_B,KC_9,K3_3,GC_5,K0_1,KC_1,GF_1,K1_1,KA_1,GC_1,K6_1,K8_1,K4_1,KD_1,G7_1,K9_1,G8_1,Rcon_1,G3_1,GD_1,K2_1,KB_1,G0_1,K3_1,KF_1,
    G1_1,GE_1,G2_1,G5_1,K5_1,G9_1,K7_1,GA_1,GB_1,G4_1,KE_1,G6_1;
    wire empty_9,empty_1,empty_A,empty_8,empty_7,empty_5,empty_3,empty_2,empty_4,empty_6,empty_B;
    queue B1(.clock(clock),.in(in),.K0(K0_1),.K1(K1_1),.K2(K2_1),.K3(K3_1),.K4(K4_1),.K5(K5_1),
        .K6(K6_1),.K7(K7_1),.K8(K8_1),.K9(K9_1),.KA(KA_1),.KB(KB_1),.KC(KC_1),.KD(KD_1),.KE(KE_1),.KF(KF_1),
        .G0(G0_1),.G1(G1_1),.G2(G2_1),.G3(G3_1),.G4(G4_1),.G5(G5_1),.G6(G6_1),.G7(G7_1),.G8(G8_1),.G9(G9_1)
        ,.GA(GA_1),.GB(GB_1),.GC(GC_1),.GD(GD_1),.GE(GE_1),.GF(GF_1),.empty(empty_1),.Rcon_out(Rcon_1));
            main_pipe_reg B2(.clock(clock),.in_b0(G0_B),.in_b1(G1_B),.in_b2(G2_B),.in_b3(G3_B),.in_b4(G4_B),.in_b5(G5_B),.in_b6(G6_B),.in_b7(G7_B),.in_b8(G8_B)
            ,.in_b9(G9_B),.in_bA(GA_B),.in_bB(GB_B),.in_bC(GC_B),.in_bD(GD_B),.in_bE(GE_B),.in_bF(GF_B),
            .in_bk0(K0_B),.in_bk1(K1_B),.in_bk2(K2_B),.in_bk3(K3_B),.in_bk4(K4_B),.in_bk5(K5_B),.in_bk6(K6_B),.in_bk7(K7_B),.in_bk8(K8_B),.in_bk9(K9_B),.in_bkA(KA_B),
            .in_bkB(KB_B),.in_bkC(KC_B),.in_bkD(KD_B),.in_bkE(KE_B),.in_bkF(KF_B),.empty_in_b(empty_B),
            .in_qn0(G0_1),.in_qn1(G1_1),.in_qn2(G2_1),.in_qn3(G3_1),.in_qn4(G4_1),.in_qn5(G5_1),.in_qn6(G6_1),.in_qn7(G7_1),.in_qn8(G8_1),.in_qn9(G9_1),.in_qnA(GA_1)
            ,.in_qnB(GB_1),.in_qnC(GC_1),.in_qnD(GD_1),.in_qnE(GE_1),.in_qnF(GF_1),
            .in_qnk0(K0_1),.in_qnk1(K1_1),.in_qnk2(K2_1),.in_qnk3(K3_1),.in_qnk4(K4_1),.in_qnk5(K5_1),.in_qnk6(K6_1),.in_qnk7(K7_1),.in_qnk8(K8_1),.in_qnk9(K9_1)
            ,.in_qnkA(KA_1),.in_qnkB(KB_1),.in_qnkC(KC_1),.in_qnkD(KD_1),.in_qnkE(KE_1),.in_qnkF(KF_1),
            .empty_in_qn(empty_1),.Rcon_in(Rcon_1),.out0(G0_2),.out1(G1_2),.out2(G2_2),.out3(G3_2),.out4(G4_2),.out5(G5_2),.out6(G6_2)
            ,.out7(G7_2),.out8(G8_2),.out9(G9_2),.outA(GA_2),.outB(GB_2),.outC(GC_2),.outD(GD_2),.outE(GE_2),.outF(GF_2),
            .outk0(K0_2),.outk1(K1_2),.outk2(K2_2),.outk3(K3_2),.outk4(K4_2),.outk5(K5_2),.outk6(K6_2),.outk7(K7_2),.outk8(K8_2),.outk9(K9_2),
            .outkA(KA_2),.outkB(KB_2),.outkC(KC_2),.outkD(KD_2),.outkE(KE_2),.outkF(KF_2),.empty(empty_2),.Rcon_out(Rcon_2));
            SboxK B3(.G0(G0_2),.G1(G1_2),.G2(G2_2),.G3(G3_2),.G4(G4_2),.G5(G5_2),.G6(G6_2),.G7(G7_2),.G8(G8_2),.G9(G9_2),.GA(GA_2),.GB(GB_2),.GC(GC_2),.GD(GD_2),.GE(GE_2),.GF(GF_2),
            .K0(K0_2),.K1(K1_2),.K2(K2_2),.K3(K3_2),.K4(K4_2),.K5(K5_2),.K6(K6_2),.K7(K7_2),.K8(K8_2),.K9(K9_2),.KA(KA_2),.KB(KB_2),.KC(KC_2),.KD(KD_2),.KE(KE_2),.KF(KF_2),
            .Rcon_in(Rcon_2),.empty_in(empty_2),
            .R0(G0_3),.R1(G1_3),.R2(G2_3),.R3(G3_3),.R4(G4_3),.R5(G5_3),.R6(G6_3),.R7(G7_3),.R8(G8_3),.R9(G9_3),.RA(GA_3),.RB(GB_3),.RC(GC_3),.RD(GD_3),.RE(GE_3),.RF(GF_3),
            .KA0(K0_3),.KA1(K1_3),.KA2(K2_3),.KA3(K3_3),.KA4(K4_3),.KA5(K5_3),.KA6(K6_3),.KA7(K7_3),.KA8(K8_3),.KA9(K9_3),.KAA(KA_3),.KAB(KB_3),.KAC(KC_3),.KAD(KD_3),.KAE(KE_3),.KAF(KF_2),
            .Rcon_out(Rcon_3),.empty(empty_3));
            pipe_reg B4(.empty_in(empty_3),.Rcon_in(Rcon_3),.clock(clock),
            .in0(G0_3),.in1(G1_3),.in2(G2_3),.in3(G3_3),.in4(G4_3),.in5(G5_3),.in6(G6_3),.in7(G7_3),.in8(G8_3),.in9(G9_3),.inA(GA_3),.inB(GB_3),.inC(GC_3),.inD(GD_3),.inE(GE_3),.inF(GF_3),
            .ink0(K0_3),.ink1(K1_3),.ink2(K2_3),.ink3(K3_3),.ink4(K4_3),.ink5(K5_3),.ink6(K6_3),.ink7(K7_3),.ink8(K8_3),.ink9(K9_3),.inkA(KA_3),.inkB(KB_3),.inkC(KC_3),.inkD(KD_3),.inkE(KE_3),.inkF(KF_3),
            .out0(G0_4),.out1(G1_4),.out2(G2_4),.out3(G3_4),.out4(G4_4),.out5(G5_4),.out6(G6_4),
            .out7(G7_4),.out8(G8_4),.out9(G9_4),.outA(GA_4),.outB(GB_4),.outC(GC_4),.outD(GD_4),.outE(GE_4),.outF(GF_4),
            .outk0(K0_4),.outk1(K1_4),.outk2(K2_4),.outk3(K3_4),.outk4(K4_4),.outk5(K5_4),.outk6(K6_4),
            .outk7(K7_4),.outk8(K8_4),.outk9(K9_4),.outkA(KA_4),.outkB(KB_4),.outkC(KC_4),.outkD(KD_4),.outkE(KE_4),.outkF(KF_4),
            .empty(empty_4),.Rcon_out(Rcon_4)
            );
            ShiftRow B5(.K0(K0_4),.K1(K1_4),.K2(K2_4),.K3(K3_4),.K4(K4_4),.K5(K5_4),.K6(K6_4),.K7(K7_4),.K8(K8_4),.K9(K9_4),.KA(KA_4),.KB(KB_4),.KC(KC_4),.KD(KD_4),.KE(KE_4),.KF(KF_4),
            .Rcon_in(Rcon_4),.empty_in(empty_4), .G0(G0_4),.G1(G1_4),.G2(G2_4),.G3(G3_4),.G4(G4_4),.G5(G5_4),.G6(G6_4),.G7(G7_4),.G8(G8_4),.G9(G9_4),.GA(GA_4),.GB(GB_4),.GC(GC_4),.GD(GD_4),.GE(GE_4),.GF(GF_4),
            .R0(G0_5),.R1(G1_5),.R2(G2_5),.R3(G3_5),.R4(G4_5),.R5(G5_5),.R6(G6_5),.R7(G7_5),.R8(G8_5),.R9(G9_5),.RA(GA_5),.RB(GB_5),.RC(GC_5),.RD(GD_5),.RE(GE_5),.RF(GF_5),
            .KA0(K0_5),.KA1(K1_5),.KA2(K2_5),.KA3(K3_5),.KA4(K4_5),.KA5(K5_5),.KA6(K6_5),.KA7(K7_5),.KA8(K8_5),.KA9(K9_5),.KAA(KA_5),.KAB(KB_5),.KAC(KC_5),.KAD(KD_5),.KAE(KE_5),.KAF(KF_5),
            .Rcon_out(Rcon_out_5),.empty(empty_5)
            );
            pipe_reg B6(.empty_in(empty_5),.Rcon_in(Rcon_5),.clock(clock),
            .in0(G0_5),.in1(G1_5),.in2(G2_5),.in3(G3_5),.in4(G4_5),.in5(G5_5),.in6(G6_5),.in7(G7_5),.in8(G8_5),.in9(G9_5),.inA(GA_5),.inB(GB_5),.inC(GC_5),.inD(GD_5),.inE(GE_5),.inF(GF_5),
            .ink0(K0_5),.ink1(K1_5),.ink2(K2_5),.ink3(K3_5),.ink4(K4_5),.ink5(K5_5),.ink6(K6_5),.ink7(K7_5),.ink8(K8_5),.ink9(K9_5),.inkA(KA_5),.inkB(KB_5),.inkC(KC_5),.inkD(KD_5),.inkE(KE_5),.inkF(KF_5),
            .out0(G0_6),.out1(G1_6),.out2(G2_6),.out3(G3_6),.out4(G4_6),.out5(G5_6),.out6(G6_6),
            .out7(G7_6),.out8(G8_6),.out9(G9_6),.outA(GA_6),.outB(GB_6),.outC(GC_6),.outD(GD_6),.outE(GE_6),.outF(GF_6),
            .outk0(K0_6),.outk1(K1_6),.outk2(K2_6),.outk3(K3_6),.outk4(K4_6),.outk5(K5_6),.outk6(K6_6),
            .outk7(K7_6),.outk8(K8_6),.outk9(K9_6),.outkA(KA_6),.outkB(KB_6),.outkC(KC_6),.outkD(KD_6),.outkE(KE_6),.outkF(KF_6),
            .empty(empty_6),.Rcon_out(Rcon_6));
            MixColumnsA B7(.G0(G0_6),.G1(G1_6),.G2(G2_6),.G3(G3_6),.G4(G4_6),.G5(G5_6),.G6(G6_6),
            .G7(G7_6),.G8(G8_6),.G9(G9_6),.GA(GA_6),.GB(GB_6),.GC(GC_6),.GD(GD_6),.GE(GE_6),.GF(GF_6),.Rcon_in(Rcon_6),.empty_in(empty_6),
            .K0(K0_6),.K1(K1_6),.K2(K2_6),.K3(K3_6),.K4(K4_6),.K5(K5_6),.K6(K6_6),.K7(K7_6),.K8(K8_6),.K9(K9_6),.KA(KA_6),.KB(KB_6),.KC(KC_6),.KD(KD_6),.KE(KE_6),.KF(KF_6),
            .H0(H0),.H1(H1),.H2(H2),.H3(H3),.H4(H4),.H5(H5),.H6(H6),.H7(H7),.H8(H8),.H9(H9),.HA(HA),.HB(HB),.HC(HC),.HD(HD),.HE(HE),.HF(HF),
            .T0(T0),.T1(T1),.T2(T2),.T3(T3),.T4(T4),.T5(T5),.T6(T6),.T7(T7),.T8(T8),.T9(T9),.TA(TA),.TB(TB),.TC(TC),.TD(TD),.TE(TE),.TF(TF),.Rcon_out(Rcon_7),
            .KA0(K0_7),.KA1(K1_7),.KA2(K2_7),.KA3(K3_7),.KA4(K4_7),.KA5(K5_7),.KA6(K6_7),.KA7(K7_7),.KA8(K8_7),.KA9(K9_7),.KAA(KA_7),.KAB(KB_7),.KAC(KC_7),.KAD(KD_7),.KAE(KE_7),.KAF(KF_7),
            .empty(empty_7));
            pipe_reg B8(.empty_in(empty_7),.Rcon_in(Rcon_7),.clock(clock),
            .in0(G0_7),.in1(G1_7),.in2(G2_7),.in3(G3_7),.in4(G4_7),.in5(G5_7),.in6(G6_7),.in7(G7_7),.in8(G8_7),.in9(G9_7),.inA(GA_7),.inB(GB_7),.inC(GC_7),.inD(GD_7),.inE(GE_7),.inF(GF_7),
            .ink0(K0_7),.ink1(K1_7),.ink2(K2_7),.ink3(K3_7),.ink4(K4_7),.ink5(K5_7),.ink6(K6_7),.ink7(K7_7),.ink8(K8_7),.ink9(K9_7),.inkA(KA_7),.inkB(KB_7),.inkC(KC_7),.inkD(KD_7),.inkE(KE_7),.inkF(KF_7),
            .out0(G0_8),.out1(G1_8),.out2(G2_8),.out3(G3_8),.out4(G4_8),.out5(G5_8),.out6(G6_8),
            .out7(G7_8),.out8(G8_8),.out9(G9_8),.outA(GA_8),.outB(GB_8),.outC(GC_8),.outD(GD_8),.outE(GE_8),.outF(GF_8),
            .outk0(K0_8),.outk1(K1_8),.outk2(K2_8),.outk3(K3_8),.outk4(K4_8),.outk5(K5_8),.outk6(K6_8),
            .outk7(K7_8),.outk8(K8_8),.outk9(K9_8),.outkA(KA_8),.outkB(KB_8),.outkC(KC_8),.outkD(KD_8),.outkE(KE_8),.outkF(KF_8),
            .empty(empty_8),.Rcon_out(Rcon_8));
            MixColumnsXOR B9(.G0(G0_8),.G1(G1_8),.G2(G2_8),.G3(G3_8),.G4(G4_8),.G5(G5_8),.G6(G6_8),.G7(G7_8),.G8(G8_8),.G9(G9_8),.GA(GA_8),.GB(GB_8),.GC(GC_8),.GD(GD_8),.GE(GE_8),.GF(GF_8),
            .H0(H0),.H1(H1),.H2(H2),.H3(H3),.H4(H4),.H5(H5),.H6(H6),.H7(H7),.H8(H8),.H9(H9),.HA(HA),.HB(HB),.HC(HC),.HD(HD),.HE(HE),.HF(HF),
            .K0(K0_8),.K1(K1_8),.K2(K2_8),.K3(K3_8),.K4(K4_8),.K5(K5_8),.K6(K6_8),.K7(K7_8),.K8(K8_8),.K9(K9_8),.KA(KA_8),.KB(KB_8),.KC(KC_8),.KD(KD_8),.KE(KE_8),.KF(KF_8),
            .T0(T0),.T1(T1),.T2(T2),.T3(T3),.T4(T4),.T5(T5),.T6(T6),.T7(T7),.T8(T8),.T9(T9),.TA(TA),.TB(TB),.TC(TC),.TD(TD),.TE(TE),.TF(TF),.Rcon_in(Rcon_8),
            .empty_in(empty_8),
            .KA0(K0_9),.KA1(K1_9),.KA2(K2_9),.KA3(K3_9),.KA4(K4_9),.KA5(K5_9),.KA6(K6_9),.KA7(K7_9),.KA8(K8_9),.KA9(K9_9),.KAA(KA_9),.KAB(KB_9),.KAC(KC_9),.KAD(KD_9),.KAE(KE_9),.KAF(KF_9),
            .R0(G0_9),.R1(G1_9),.R2(G2_9),.R3(G3_9),.R4(G4_9),.R5(G5_9),.R6(G6_9),.R7(G7_9),.R8(G8_9),.R9(G9_9),.RA(GA_9),.RB(GB_9),.RC(GC_9),.RD(GD_9),.RE(GE_9),.RF(GF_9),.Rcon_out(Rcon_9),
            .empty(empty_9));
            pipe_reg BA(.empty_in(empty_9),.Rcon_in(Rcon_9),.clock(clock),
            .in0(G0_9),.in1(G1_9),.in2(G2_9),.in3(G3_9),.in4(G4_9),.in5(G5_9),.in6(G6_9),.in7(G7_9),.in8(G8_9),.in9(G9_9),.inA(GA_9),.inB(GB_9),.inC(GC_9),.inD(GD_9),.inE(GE_9),.inF(GF_9),
            .ink0(K0_9),.ink1(K1_9),.ink2(K2_9),.ink3(K3_9),.ink4(K4_9),.ink5(K5_9),.ink6(K6_9),.ink7(K7_9),.ink8(K8_9),.ink9(K9_9),.inkA(KA_9),.inkB(KB_9),.inkC(KC_9),.inkD(KD_9),.inkE(KE_9),.inkF(KF_9),
            .out0(G0_A),.out1(G1_A),.out2(G2_A),.out3(G3_A),.out4(G4_A),.out5(G5_A),.out6(G6_A),
            .out7(G7_A),.out8(G8_A),.out9(G9_A),.outA(GA_A),.outB(GB_A),.outC(GC_A),.outD(GD_A),.outE(GE_A),.outF(GF_A),
            .outk0(K0_A),.outk1(K1_A),.outk2(K2_A),.outk3(K3_A),.outk4(K4_A),.outk5(K5_A),.outk6(K6_A),
            .outk7(K7_A),.outk8(K8_A),.outk9(K9_A),.outkA(KA_A),.outkB(KB_A),.outkC(KC_A),.outkD(KD_A),.outkE(KE_A),.outkF(KF_A),
            .empty(empty_A),.Rcon_out(Rcon_A));
            AddroundKey BB(.G0(G0_A),.G1(G1_A),.G2(G2_A),.G3(G3_A),.G4(G4_A),.G5(G5_A),.G6(G6_A),.G7(G7_A),.G8(G8_A),.G9(G9_A),.GA(GA_A),.GB(GB_A),.GC(GC_A),.GD(GD_A),.GE(GE_A),.GF(GF_A),
            .K0(K0_A),.K1(K1_A),.K2(K2_A),.K3(K3_A),.K4(K4_A),.K5(K5_A),.K6(K6_A),.K7(K7_A),.K8(K8_A),.K9(K9_A),.KA(KA_A),.KB(KB_A),.KC(KC_A),.KD(KD_A),.KE(KE_A),.KF(KF_A),.Rcon_in(Rcon_A),
            .R0(G0_B),.R1(G1_B),.R2(G2_B),.R3(G3_B),.R4(G4_B),.R5(G5_B),.R6(G6_B),.R7(G7_B),.R8(G8_B),.R9(G9_B),.RA(GA_B),.RB(GB_B),.RC(GC_B),.RD(GD_B),.RE(GE_B),.RF(GF_B),.Rcon_out(Rcon_B),
            .KA0(K0_B),.KA1(K1_B),.KA2(K2_B),.KA3(K3_B),.KA4(K4_B),.KA5(K5_B),.KA6(K6_B),.KA7(K7_B),.KA8(K8_B),.KA9(K9_B),.KAA(KA_B),.KAB(KB_B),.KAC(KC_B),.KAD(KD_B),.KAE(KE_B),.KAF(KF_B),
            .empty_in(empty_A),.empty(empty_B));
            pipe_reg_end BC(.Rcon_in(Rcon_B),.clock(clock),
            .in0(in0_B),.in1(in1_B),.in2(in2_B),.in3(in3_B),.in4(in4_B),.in5(in5_B),.in6(in6_B),.in7(in7_B),.in8(in8_B),.in9(in9_B),.inA(inA_B),.inB(inB_B),.inC(inC_B),.inD(inD_B),.inE(inE_B),.inF(inF_B),
            .out(out));

endmodule
