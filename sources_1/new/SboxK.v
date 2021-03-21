`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2021 15:14:02
// Design Name: 
// Module Name: SboxK
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


module SboxK(
        input [7:0] G0,G1,G2,G3,G4,G5,G6,G7,G8,G9,GA,GB,GC,GD,GE,GF,
        input [7:0] K0,K1,K2,K3,K4,K5,K6,K7,K8,K9,KA,KB,KC,KD,KE,KF,
        input [7:0] Rcon_in,
        input empty_in,
        input clock, 
        output reg [7:0] R0,R1,R2,R3,R4,R5,R6,R7,R8,R9,RA,RB,RC,RD,RE,RF,
        output reg [7:0] KA0,KA1,KA2,KA3,KA4,KA5,KA6,KA7,KA8,KA9,KAA,KAB,KAC,KAD,KAE,KAF,
        output reg [7:0] Rcon_out,
        output reg empty);
        
        reg [7:0] sbox[255:0];
        reg [7:0] R0_,R1_,R2_,R3_,R4_,R5_,R6_,R7_,R8_,R9_,RA_,RB_,RC_,RD_,RE_,RF_,
        KA0_,KA1_,KA2_,KA3_,KA4_,KA5_,KA6_,KA7_,KA8_,KA9_,KAA_,KAB_,KAC_,KAD_,KAE_,KAF_,
        Rcon_out_,empty_;
        always@(posedge clock)
        begin
sbox[8'h00] = 8'h63;
        sbox[8'h01] = 8'h7C;
        sbox[8'h02] = 8'h77;
        sbox[8'h03] = 8'h7B;
        sbox[8'h04] = 8'hF2;
        sbox[8'h05] = 8'h6B;
        sbox[8'h06] = 8'h6F;
        sbox[8'h07] = 8'hC5;
        sbox[8'h08] = 8'h30;
        sbox[8'h09] = 8'h01;
        sbox[8'h0A] = 8'h67;
        sbox[8'h0B] = 8'h2B;
        sbox[8'h0C] = 8'hFE;
        sbox[8'h0D] = 8'hD7;
        sbox[8'h0E] = 8'hAB;
        sbox[8'h0F] = 8'h76;
        sbox[8'h10] = 8'hCA;
        sbox[8'h11] = 8'h82;
        sbox[8'h12] = 8'hC9;
        sbox[8'h13] = 8'h7D;
        sbox[8'h14] = 8'hFA;
        sbox[8'h15] = 8'h59;
        sbox[8'h16] = 8'h47;
        sbox[8'h17] = 8'hF0;
        sbox[8'h18] = 8'hAD;
        sbox[8'h19] = 8'hD4;
        sbox[8'h1A] = 8'hA2;
        sbox[8'h1B] = 8'hAF;
        sbox[8'h1C] = 8'h9C;
        sbox[8'h1D] = 8'hA4;
        sbox[8'h1E] = 8'h72;
        sbox[8'h1F] = 8'hC0;
        sbox[8'h20] = 8'hB7;
        sbox[8'h21] = 8'hFD;
        sbox[8'h22] = 8'h93;
        sbox[8'h23] = 8'h26;
        sbox[8'h24] = 8'h36;
        sbox[8'h25] = 8'h3F;
        sbox[8'h26] = 8'hF7;
        sbox[8'h27] = 8'hCC;
        sbox[8'h28] = 8'h34;
        sbox[8'h29] = 8'hA5;
        sbox[8'h2A] = 8'hE5;
        sbox[8'h2B] = 8'hF1;
        sbox[8'h2C] = 8'h71;
        sbox[8'h2D] = 8'hD8;
        sbox[8'h2E] = 8'h31;
        sbox[8'h2F] = 8'h15;
        sbox[8'h30] = 8'h04;
        sbox[8'h31] = 8'hC7;
        sbox[8'h32] = 8'h23;
        sbox[8'h33] = 8'hC3;
        sbox[8'h34] = 8'h18;
        sbox[8'h35] = 8'h96;
        sbox[8'h36] = 8'h05;
        sbox[8'h37] = 8'h9A;
        sbox[8'h38] = 8'h07;
        sbox[8'h39] = 8'h12;
        sbox[8'h3A] = 8'h80;
        sbox[8'h3B] = 8'hE2;
        sbox[8'h3C] = 8'hEB;
        sbox[8'h3D] = 8'h27;
        sbox[8'h3E] = 8'hB2;
        sbox[8'h3F] = 8'h75;
        sbox[8'h40] = 8'h09;
        sbox[8'h41] = 8'h83;
        sbox[8'h42] = 8'h2C;
        sbox[8'h43] = 8'h1A;
        sbox[8'h44] = 8'h1B;
        sbox[8'h45] = 8'h6E;
        sbox[8'h46] = 8'h5A;
        sbox[8'h47] = 8'hA0;
        sbox[8'h48] = 8'h52;
        sbox[8'h49] = 8'h3B;
        sbox[8'h4A] = 8'hD6;
        sbox[8'h4B] = 8'hB3;
        sbox[8'h4C] = 8'h29;
        sbox[8'h4D] = 8'hE3;
        sbox[8'h4E] = 8'h2F;
        sbox[8'h4F] = 8'h84;
        sbox[8'h50] = 8'h53;
        sbox[8'h51] = 8'hD1;
        sbox[8'h52] = 8'h00;
        sbox[8'h53] = 8'hED;
        sbox[8'h54] = 8'h20;
        sbox[8'h55] = 8'hFC;
        sbox[8'h56] = 8'hB1;
        sbox[8'h57] = 8'h5B;
        sbox[8'h58] = 8'h6A;
        sbox[8'h59] = 8'hCB;
        sbox[8'h5A] = 8'hBE;
        sbox[8'h5B] = 8'h39;
        sbox[8'h5C] = 8'h4A;
        sbox[8'h5D] = 8'h4C;
        sbox[8'h5E] = 8'h58;
        sbox[8'h5F] = 8'hCF;
        sbox[8'h60] = 8'hD0;
        sbox[8'h61] = 8'hEF;
        sbox[8'h62] = 8'hAA;
        sbox[8'h63] = 8'hFB;
        sbox[8'h64] = 8'h43;
        sbox[8'h65] = 8'h4D;
        sbox[8'h66] = 8'h33;
        sbox[8'h67] = 8'h85;
        sbox[8'h68] = 8'h45;
        sbox[8'h69] = 8'hF9;
        sbox[8'h6A] = 8'h02;
        sbox[8'h6B] = 8'h7F;
        sbox[8'h6C] = 8'h50;
        sbox[8'h6D] = 8'h3C;
        sbox[8'h6E] = 8'h9F;
        sbox[8'h6F] = 8'hA8;
        sbox[8'h70] = 8'h51;
        sbox[8'h71] = 8'hA3;
        sbox[8'h72] = 8'h40;
        sbox[8'h73] = 8'h8F;
        sbox[8'h74] = 8'h92;
        sbox[8'h75] = 8'h9D;
        sbox[8'h76] = 8'h38;
        sbox[8'h77] = 8'hF5;
        sbox[8'h78] = 8'hBC;
        sbox[8'h79] = 8'hB6;
        sbox[8'h7A] = 8'hDA;
        sbox[8'h7B] = 8'h21;
        sbox[8'h7C] = 8'h10;
        sbox[8'h7D] = 8'hFF;
        sbox[8'h7E] = 8'hF3;
        sbox[8'h7F] = 8'hD2;
        sbox[8'h80] = 8'hCD;
        sbox[8'h81] = 8'h0C;
        sbox[8'h82] = 8'h13;
        sbox[8'h83] = 8'hEC;
        sbox[8'h84] = 8'h5F;
        sbox[8'h85] = 8'h97;
        sbox[8'h86] = 8'h44;
        sbox[8'h87] = 8'h17;
        sbox[8'h88] = 8'hC4;
        sbox[8'h89] = 8'hA7;
        sbox[8'h8A] = 8'h7E;
        sbox[8'h8B] = 8'h3D;
        sbox[8'h8C] = 8'h64;
        sbox[8'h8D] = 8'h5D;
        sbox[8'h8E] = 8'h19;
        sbox[8'h8F] = 8'h73;
        sbox[8'h90] = 8'h60;
        sbox[8'h91] = 8'h81;
        sbox[8'h92] = 8'h4F;
        sbox[8'h93] = 8'hDC;
        sbox[8'h94] = 8'h22;
        sbox[8'h95] = 8'h2A;
        sbox[8'h96] = 8'h90;
        sbox[8'h97] = 8'h88;
        sbox[8'h98] = 8'h46;
        sbox[8'h99] = 8'hEE;
        sbox[8'h9A] = 8'hB8;
        sbox[8'h9B] = 8'h14;
        sbox[8'h9C] = 8'hDE;
        sbox[8'h9D] = 8'h5E;
        sbox[8'h9E] = 8'h0B;
        sbox[8'h9F] = 8'hDB;
        sbox[8'hA0] = 8'hE0;
        sbox[8'hA1] = 8'h32;
        sbox[8'hA2] = 8'h3A;
        sbox[8'hA3] = 8'h0A;
        sbox[8'hA4] = 8'h49;
        sbox[8'hA5] = 8'h06;
        sbox[8'hA6] = 8'h24;
        sbox[8'hA7] = 8'h5C;
        sbox[8'hA8] = 8'hC2;
        sbox[8'hA9] = 8'hD3;
        sbox[8'hAA] = 8'hAC;
        sbox[8'hAB] = 8'h62;
        sbox[8'hAC] = 8'h91;
        sbox[8'hAD] = 8'h95;
        sbox[8'hAE] = 8'hE4;
        sbox[8'hAF] = 8'h79;
        sbox[8'hB0] = 8'hE7;
        sbox[8'hB1] = 8'hC8;
        sbox[8'hB2] = 8'h37;
        sbox[8'hB3] = 8'h6D;
        sbox[8'hB4] = 8'h8D;
        sbox[8'hB5] = 8'hD5;
        sbox[8'hB6] = 8'h4E;
        sbox[8'hB7] = 8'hA9;
        sbox[8'hB8] = 8'h6C;
        sbox[8'hB9] = 8'h56;
        sbox[8'hBA] = 8'hF4;
        sbox[8'hBB] = 8'hEA;
        sbox[8'hBC] = 8'h65;
        sbox[8'hBD] = 8'h7A;
        sbox[8'hBE] = 8'hAE;
        sbox[8'hBF] = 8'h08;
        sbox[8'hC0] = 8'hBA;
        sbox[8'hC1] = 8'h78;
        sbox[8'hC2] = 8'h25;
        sbox[8'hC3] = 8'h2E;
        sbox[8'hC4] = 8'h1C;
        sbox[8'hC5] = 8'hA6;
        sbox[8'hC6] = 8'hB4;
        sbox[8'hC7] = 8'hC6;
        sbox[8'hC8] = 8'hE8;
        sbox[8'hC9] = 8'hDD;
        sbox[8'hCA] = 8'h74;
        sbox[8'hCB] = 8'h1F;
        sbox[8'hCC] = 8'h4B;
        sbox[8'hCD] = 8'hBD;
        sbox[8'hCE] = 8'h8B;
        sbox[8'hCF] = 8'h8A;
        sbox[8'hD0] = 8'h70;
        sbox[8'hD1] = 8'h3E;
        sbox[8'hD2] = 8'hB5;
        sbox[8'hD3] = 8'h66;
        sbox[8'hD4] = 8'h48;
        sbox[8'hD5] = 8'h03;
        sbox[8'hD6] = 8'hF6;
        sbox[8'hD7] = 8'h0E;
        sbox[8'hD8] = 8'h61;
        sbox[8'hD9] = 8'h35;
        sbox[8'hDA] = 8'h57;
        sbox[8'hDB] = 8'hB9;
        sbox[8'hDC] = 8'h86;
        sbox[8'hDD] = 8'hC1;
        sbox[8'hDE] = 8'h1D;
        sbox[8'hDF] = 8'h9E;
        sbox[8'hE0] = 8'hE1;
        sbox[8'hE1] = 8'hF8;
        sbox[8'hE2] = 8'h98;
        sbox[8'hE3] = 8'h11;
        sbox[8'hE4] = 8'h69;
        sbox[8'hE5] = 8'hD9;
        sbox[8'hE6] = 8'h8E;
        sbox[8'hE7] = 8'h94;
        sbox[8'hE8] = 8'h9B;
        sbox[8'hE9] = 8'h1E;
        sbox[8'hEA] = 8'h87;
        sbox[8'hEB] = 8'hE9;
        sbox[8'hEC] = 8'hCE;
        sbox[8'hED] = 8'h55;
        sbox[8'hEE] = 8'h28;
        sbox[8'hEF] = 8'hDF;
        sbox[8'hF0] = 8'h8C;
        sbox[8'hF1] = 8'hA1;
        sbox[8'hF2] = 8'h89;
        sbox[8'hF3] = 8'h0D;
        sbox[8'hF4] = 8'hBF;
        sbox[8'hF5] = 8'hE6;
        sbox[8'hF6] = 8'h42;
        sbox[8'hF7] = 8'h68;
        sbox[8'hF8] = 8'h41;
        sbox[8'hF9] = 8'h99;
        sbox[8'hFA] = 8'h2D;
        sbox[8'hFB] = 8'h0F;
        sbox[8'hFC] = 8'hB0;
        sbox[8'hFD] = 8'h54;
        sbox[8'hFE] = 8'hBB;
        sbox[8'hFF] = 8'h16;
        R0_ <= sbox[G0];
        R1_ <= sbox[G1];
        R2_ <= sbox[G2];
        R3_ <= sbox[G3];
        R4_ <= sbox[G4];
        R5_ <= sbox[G5];
        R6_ <= sbox[G6];
        R7_ <= sbox[G7];
        R8_ <= sbox[G8];
        R9_ <= sbox[G9];
        RA_ <= sbox[GA];
        RB_ <= sbox[GB];
        RC_ <= sbox[GC];
        RD_ <= sbox[GD];
        RE_ <= sbox[GE];
        RF_ <= sbox[GF];
        KAC_<= sbox[KC];
        KAD_<= sbox[KD];
        KAE_<= sbox[KE];
        KAF_<= sbox[KF];
        KA0_<= K0;
        KA1_<= K1;
        KA2_<= K2;
        KA3_<= K3; 
        KA4_<= K4;
        KA5_<= K5;
        KA6_<= K6;
        KA7_<= K7; 
        KA8_<= K8;
        KA9_<= K9;
        KAA_<= KA;
        KAB_<= KB;
        Rcon_out_<=Rcon_in;
        empty_<= empty_in;
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

