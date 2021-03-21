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
output wire[7:0]Rcon_out,
input clock
    );

    wire [7:0]G7_4,G6_7,G0_9,K0_9,Rcon_6,G8_A,K0_5,K9_5,G8_7,GF_7,H5,Rcon_out_5,G3_2,KC_3,K6_9,KD_7,G0_A,K6_3,G0_4,G0_2,K0_A,GD_2,G7_2,KA_7,GA_2,inD_B,KF_7,G2_8,K2_B,K9_2,KB_7,
    K3_7,GB_4,K3_A,in1_B,GB_6,G5_5,K8_3,K9_3,KA_6,GA_B,T1,KE_8,KA_9,KB_B,K6_5,KD_9,HC,G7_6,G5_7,K0_3,Rcon_8,KF_B,K3_4,G3_3,T3,K1_3,in2_B,G2_2,
    GD_7,in0_B,K4_2,K2_8,G4_7,KC_2,G1_3,GA_4,G9_6,K5_4,G9_3,K7_4,GB_8,G1_6,KF_5,G1_7,K9_A,K8_8,G2_4,H0,G4_4,G9_7,T4,G6_9,K9_7
    ,K7_2,K4_8,G6_6,K7_9,K8_7,KE_5,G1_B,K4_9,K3_9,GE_3,G1_9,K4_5,KC_7,G4_5,G3_9,K6_2,KB_5,K0_2,G0_5,G7_B,Rcon_2,KC_B,GE_8,K1_B,T6,KF_2,K5_2,G1_8,K8_9,K5_8,
    K1_2,K5_7,K6_7,GC_9,GA_6,inE_B,G7_9,KE_2,KA_2,K4_B,GA_5,inC_B,KD_3,KE_3,GA_7,G6_2,GD_8,GD_5,GE_9,KD_5,KD_A,KC_4,K3_B,HB,K9_4,G9_9,K7_3,K3_8,
    G4_3,KB_2,G9_4,GC_6,H8,G0_7,H2,GE_4,GE_6,K8_5,GF_3,GB_B,GE_5,G4_9,TF,in8_B,K4_7,G2_6,GC_2,G2_7,in5_B,K6_8,KC_A,G7_7,K0_8,G9_2,K2_7,K3_6,K9_6,K4_6,K6_6,KB_6,KC_6,KD_6,KA_5,K8_6,K7_6,K2_6,KE_6,K5_6,KF_6,K0_6,K1_6,
    GC_4,GD_B,K2_5,K8_4,T7,T0,HE,K6_A,G9_8,in7_B,K2_2,KE_B,KB_8,KC_8,T2,HD,KE_4,HF,Rcon_3,KD_4,KD_8,K7_7,G6_8,G2_5,K5_3,KF_4,K9_B,G1_2,G4_B,G6_3,K8_A,K4_4,
    K2_9,KA_A,G8_8,G3_4,G8_6,G7_A,T5,K0_7,in3_B,GA_3,KE_9,KE_7,inF_B,GC_B,G8_9,KA_4,KB_3,K1_4,G5_B,GB_5,Rcon_4,GA_9,GE_7,K3_5,H3,GA_A,TB,GF_5,K5_9,KA_3,
    G7_8,K8_2,GA_8,KA_B,K9_9,G8_4,G5_8,G3_5,K2_4,K0_4,TA,G7_3,GE_A,G5_2,T8,inA_B,K3_2,KE_A,K5_B,G0_6,K1_7,G2_B,in4_B,G3_B,G9_A,KC_5,GF_8,HA,G5_9,
    Rcon_A,G9_B,inB_B,KB_9,GE_B,G1_A,Rcon_5,K6_B,GD_4,G8_2,K1_9,GB_9,K1_5,K2_A,H7,K9_8,G3_6,G9_5,T9,G5_4,G4_8,G6_A,G0_B,GF_A,G8_3,H1,Rcon_B,K5_A,G1_4,GD_9,
    G3_8,K7_A,K7_8,G0_3,GB_A,G3_7,GF_4,G4_A,H4,G5_3,G5_6,G6_5,KB_A,K4_3,GB_7,in6_B,GD_3,in9_B,KD_B,KF_9,G7_5,K7_B,G5_A,TC,GD_6,TE,TD,K6_4,G6_4,
    GD_A,K1_8,KF_3,KB_4,G0_8,G4_6,GF_6,GC_3,GB_2,GC_8,K8_B,K7_5,G2_3,H6,H9,GB_3,K2_3,G2_9,G8_B,GF_B,GF_2,GF_9,Rcon_7,GC_7,G4_2,KF_8,G2_A,G3_A,K5_5,KD_2,GC_A,
    G1_5,K4_A,GE_2,KA_8,K0_B,G8_5,Rcon_9,G6_B,KC_9,K3_3,GC_5,K0_1,KC_1,GF_1,K1_1,KA_1,GC_1,K6_1,K8_1,K4_1,KD_1,G7_1,K9_1,G8_1,Rcon_1,G3_1,GD_1,K2_1,KB_1,G0_1,K3_1,KF_1,
    G1_1,GE_1,G2_1,G5_1,K5_1,G9_1,K7_1,GA_1,GB_1,G4_1,KE_1,G6_1,K1_A,KF_A,in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,inA,inB,inC,inD,inE,inF;
    wire empty_9,empty_1,empty_A,empty_8,empty_5,empty_4,empty_6,empty_3,empty_7,empty_2;
    queue B1(.clock(clock),.in(in),.K0(K0_1),.K1(K1_1),.K2(K2_1),.K3(K3_1),.K4(K4_1),.K5(K5_1),
        .K6(K6_1),.K7(K7_1),.K8(K8_1),.K9(K9_1),.KA(KA_1),.KB(KB_1),.KC(KC_1),.KD(KD_1),.KE(KE_1),.KF(KF_1),
        .G0(G0_1),.G1(G1_1),.G2(G2_1),.G3(G3_1),.G4(G4_1),.G5(G5_1),.G6(G6_1),.G7(G7_1),.G8(G8_1),.G9(G9_1)
        ,.GA(GA_1),.GB(GB_1),.GC(GC_1),.GD(GD_1),.GE(GE_1),.GF(GF_1),.empty(empty_1));
    main_pipe_reg B2(.clock(clock),.in_b0(G0_7),.in_b1(G1_7),.in_b2(G2_7),.in_b3(G3_7),.in_b4(G4_7),.in_b5(G5_7),.in_b6(G6_7),.in_b7(G7_7),.in_b8(G8_7)
            ,.in_b9(G9_7),.in_bA(GA_7),.in_bB(GB_7),.in_bC(GC_7),.in_bD(GD_7),.in_bE(GE_7),.in_bF(GF_7),
            .in_bk0(K0_7),.in_bk1(K1_7),.in_bk2(K2_7),.in_bk3(K3_7),.in_bk4(K4_7),.in_bk5(K5_7),.in_bk6(K6_7),.in_bk7(K7_7),.in_bk8(K8_7),.in_bk9(K9_7),.in_bkA(KA_7),
            .in_bkB(KB_7),.in_bkC(KC_7),.in_bkD(KD_7),.in_bkE(KE_7),.in_bkF(KF_7),.empty_in_b(empty_7),
            .in_qn0(G0_1),.in_qn1(G1_1),.in_qn2(G2_1),.in_qn3(G3_1),.in_qn4(G4_1),.in_qn5(G5_1),.in_qn6(G6_1),.in_qn7(G7_1),.in_qn8(G8_1),.in_qn9(G9_1),.in_qnA(GA_1)
            ,.in_qnB(GB_1),.in_qnC(GC_1),.in_qnD(GD_1),.in_qnE(GE_1),.in_qnF(GF_1),
            .in_qnk0(K0_1),.in_qnk1(K1_1),.in_qnk2(K2_1),.in_qnk3(K3_1),.in_qnk4(K4_1),.in_qnk5(K5_1),.in_qnk6(K6_1),.in_qnk7(K7_1),.in_qnk8(K8_1),.in_qnk9(K9_1)
            ,.in_qnkA(KA_1),.in_qnkB(KB_1),.in_qnkC(KC_1),.in_qnkD(KD_1),.in_qnkE(KE_1),.in_qnkF(KF_1),
            .empty_in_qn(empty_1),.Rcon_in(Rcon_7),.out0(G0_2),.out1(G1_2),.out2(G2_2),.out3(G3_2),.out4(G4_2),.out5(G5_2),.out6(G6_2)
            ,.out7(G7_2),.out8(G8_2),.out9(G9_2),.outA(GA_2),.outB(GB_2),.outC(GC_2),.outD(GD_2),.outE(GE_2),.outF(GF_2),
            .outk0(K0_2),.outk1(K1_2),.outk2(K2_2),.outk3(K3_2),.outk4(K4_2),.outk5(K5_2),.outk6(K6_2),.outk7(K7_2),.outk8(K8_2),.outk9(K9_2),
            .outkA(KA_2),.outkB(KB_2),.outkC(KC_2),.outkD(KD_2),.outkE(KE_2),.outkF(KF_2),.empty(empty_2),.Rcon_out(Rcon_2));
    SboxK B3(.G0(G0_2),.G1(G1_2),.G2(G2_2),.G3(G3_2),.G4(G4_2),.G5(G5_2),.G6(G6_2),.G7(G7_2),.G8(G8_2),.G9(G9_2),.GA(GA_2),.GB(GB_2),.GC(GC_2),.GD(GD_2),.GE(GE_2),.GF(GF_2),
            .K0(K0_2),.K1(K1_2),.K2(K2_2),.K3(K3_2),.K4(K4_2),.K5(K5_2),.K6(K6_2),.K7(K7_2),.K8(K8_2),.K9(K9_2),.KA(KA_2),.KB(KB_2),.KC(KC_2),.KD(KD_2),.KE(KE_2),.KF(KF_2),
            .Rcon_in(Rcon_2),.empty_in(empty_2),.clock(clock),
            .R0(G0_3),.R1(G1_3),.R2(G2_3),.R3(G3_3),.R4(G4_3),.R5(G5_3),.R6(G6_3),.R7(G7_3),.R8(G8_3),.R9(G9_3),.RA(GA_3),.RB(GB_3),.RC(GC_3),.RD(GD_3),.RE(GE_3),.RF(GF_3),
            .KA0(K0_3),.KA1(K1_3),.KA2(K2_3),.KA3(K3_3),.KA4(K4_3),.KA5(K5_3),.KA6(K6_3),.KA7(K7_3),.KA8(K8_3),.KA9(K9_3),.KAA(KA_3),.KAB(KB_3),.KAC(KC_3),.KAD(KD_3),.KAE(KE_3),.KAF(KF_3),
            .Rcon_out(Rcon_3),.empty(empty_3));
    ShiftRow B4(.K0(K0_3),.K1(K1_3),.K2(K2_3),.K3(K3_3),.K4(K4_3),.K5(K5_3),.K6(K6_3),.K7(K7_3),.K8(K8_3),.K9(K9_3),.KA(KA_3),.KB(KB_3),.KC(KC_3),.KD(KD_3),.KE(KE_3),.KF(KF_3),
            .Rcon_in(Rcon_3),.empty_in(empty_3), .G0(G0_3),.G1(G1_3),.G2(G2_3),.G3(G3_3),.G4(G4_3),.G5(G5_3),.G6(G6_3),.G7(G7_3),.G8(G8_3),.G9(G9_3),.GA(GA_3),.GB(GB_3),.GC(GC_3),.GD(GD_3),.GE(GE_3),.GF(GF_3),
            .R0(G0_4),.R1(G1_4),.R2(G2_4),.R3(G3_4),.R4(G4_4),.R5(G5_4),.R6(G6_4),.R7(G7_4),.R8(G8_4),.R9(G9_4),.RA(GA_4),.RB(GB_4),.RC(GC_4),.RD(GD_4),.RE(GE_4),.RF(GF_4),
            .KA0(K0_4),.KA1(K1_4),.KA2(K2_4),.KA3(K3_4),.KA4(K4_4),.KA5(K5_4),.KA6(K6_4),.KA7(K7_4),.KA8(K8_4),.KA9(K9_4),.KAA(KA_4),.KAB(KB_4),.KAC(KC_4),.KAD(KD_4),.KAE(KE_4),.KAF(KF_4),
             .Rcon_out(Rcon_4),.empty(empty_4),.clock(clock)
            );
    MixColumnsA B5(.G0(G0_4),.G1(G1_4),.G2(G2_4),.G3(G3_4),.G4(G4_4),.G5(G5_4),.G6(G6_4),
            .G7(G7_4),.G8(G8_4),.G9(G9_4),.GA(GA_4),.GB(GB_4),.GC(GC_4),.GD(GD_4),.GE(GE_4),.GF(GF_4),.Rcon_in(Rcon_4),.empty_in(empty_4),
            .K0(K0_4),.K1(K1_4),.K2(K2_4),.K3(K3_4),.K4(K4_4),.K5(K5_4),.K6(K6_4),.K7(K7_4),.K8(K8_4),.K9(K9_4),.KA(KA_4),.KB(KB_4),.KC(KC_4),.KD(KD_4),.KE(KE_4),.KF(KF_4),
            .H0(H0),.H1(H1),.H2(H2),.H3(H3),.H4(H4),.H5(H5),.H6(H6),.H7(H7),.H8(H8),.H9(H9),.HA(HA),.HB(HB),.HC(HC),.HD(HD),.HE(HE),.HF(HF),
            .T0(T0),.T1(T1),.T2(T2),.T3(T3),.T4(T4),.T5(T5),.T6(T6),.T7(T7),.T8(T8),.T9(T9),.TA(TA),.TB(TB),.TC(TC),.TD(TD),.TE(TE),.TF(TF),.Rcon_out(Rcon_5),
            .KA0(K0_5),.KA1(K1_5),.KA2(K2_5),.KA3(K3_5),.KA4(K4_5),.KA5(K5_5),.KA6(K6_5),.KA7(K7_5),.KA8(K8_5),.KA9(K9_5),.KAA(KA_5),.KAB(KB_5),.KAC(KC_5),.KAD(KD_5),.KAE(KE_5),.KAF(KF_5)
             ,.R1(G1_5),.R2(G2_5),.R3(G3_5),.R4(G4_5),.R5(G5_5),.R6(G6_5),.R7(G7_5),.R8(G8_5),.R9(G9_5),.RA(GA_5),.RB(GB_5),.RC(GC_5),.RD(GD_5),.RE(GE_5),.RF(GF_5),.R0(G0_5),
            .empty(empty_5),.clock(clock));
    MixColumnsXOR B6(.G0(G0_5),.G1(G1_5),.G2(G2_5),.G3(G3_5),.G4(G4_5),.G5(G5_5),.G6(G6_5),.G7(G7_5),.G8(G8_5),.G9(G9_5),.GA(GA_5),.GB(GB_5),.GC(GC_5),.GD(GD_5),.GE(GE_5),.GF(GF_5),
            .H0(H0),.H1(H1),.H2(H2),.H3(H3),.H4(H4),.H5(H5),.H6(H6),.H7(H7),.H8(H8),.H9(H9),.HA(HA),.HB(HB),.HC(HC),.HD(HD),.HE(HE),.HF(HF),
            .K0(K0_5),.K1(K1_5),.K2(K2_5),.K3(K3_5),.K4(K4_5),.K5(K5_5),.K6(K6_5),.K7(K7_5),.K8(K8_5),.K9(K9_5),.KA(KA_5),.KB(KB_5),.KC(KC_5),.KD(KD_5),.KE(KE_5),.KF(KF_5),
            .T0(T0),.T1(T1),.T2(T2),.T3(T3),.T4(T4),.T5(T5),.T6(T6),.T7(T7),.T8(T8),.T9(T9),.TA(TA),.TB(TB),.TC(TC),.TD(TD),.TE(TE),.TF(TF),.Rcon_in(Rcon_5),
            .empty_in(empty_5),.KA0(K0_6),.KA1(K1_6),.KA2(K2_6),.KA3(K3_6),.KA4(K4_6),.KA5(K5_6),.KA6(K6_6),.KA7(K7_6),.KA8(K8_6),.KA9(K9_6),.KAA(KA_6),.KAB(KB_6),.KAC(KC_6),.KAD(KD_6),.KAE(KE_6),.KAF(KF_6),
            .R0(G0_6),.R1(G1_6),.R2(G2_6),.R3(G3_6),.R4(G4_6),.R5(G5_6),.R6(G6_6),.R7(G7_6),.R8(G8_6),.R9(G9_6),.RA(GA_6),.RB(GB_6),.RC(GC_6),.RD(GD_6),.RE(GE_6),.RF(GF_6),.Rcon_out(Rcon_6),
            .empty(empty_6),.clock(clock)
            );
    AddroundKey B7(.G0(G0_6),.G1(G1_6),.G2(G2_6),.G3(G3_6),.G4(G4_6),.G5(G5_6),.G6(G6_6),.G7(G7_6),.G8(G8_6),.G9(G9_6),.GA(GA_6),.GB(GB_6),.GC(GC_6),.GD(GD_6),.GE(GE_6),.GF(GF_6),.empty_in(empty_6),
            .K0(K0_6),.K1(K1_6),.K2(K2_6),.K3(K3_6),.K4(K4_6),.K5(K5_6),.K6(K6_6),.K7(K7_6),.K8(K8_6),.K9(K9_6),.KA(KA_6),.KB(KB_6),.KC(KC_6),.KD(KD_6),.KE(KE_6),.KF(KF_6),.Rcon_in(Rcon_6),
            .R0(G0_7),.R1(G1_7),.R2(G2_7),.R3(G3_7),.R4(G4_7),.R5(G5_7),.R6(G6_7),.R7(G7_7),.R8(G8_7),.R9(G9_7),.RA(GA_7),.RB(GB_7),.RC(GC_7),.RD(GD_7),.RE(GE_7),.RF(GF_7),.Rcon_out(Rcon_7),
            .KA0(K0_7),.KA1(K1_7),.KA2(K2_7),.KA3(K3_7),.KA4(K4_7),.KA5(K5_7),.KA6(K6_7),.KA7(K7_7),.KA8(K8_7),.KA9(K9_7),.KAA(KA_7),.KAB(KB_7),.KAC(KC_7),.KAD(KD_7),.KAE(KE_7),.KAF(KF_7),
            .empty(empty_7),.clock(clock));
    pipe_reg_end B8(.Rcon_in(Rcon_7),.clock(clock),
             .in0(G0_7),.in1(G1_7),.in2(G2_7),.in3(G3_7),.in4(G4_7),.in5(G5_7),.in6(G6_7),.in7(G7_7),.in8(G8_7),.in9(G9_7),.inA(GA_7),.inB(GB_7),.inC(GC_7),.inD(GD_7),.inE(GE_7),.inF(GF_7),
            .out(out),.Rcon_out(Rcon_out));

endmodule
