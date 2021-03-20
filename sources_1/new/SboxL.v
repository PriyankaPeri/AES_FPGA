`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.03.2021 13:00:46
// Design Name: 
// Module Name: SboxL
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


module SboxL(in1, in2, X, O,
                clk);
        input [7:0] in1, in2;
        input clk;
        output reg [7:0] O, X;

    
        always@(posedge clk)
        case(in1)
        8'h00: O = 8'h63;
        8'h01: O = 8'h7C;
        8'h02: O = 8'h77;
        8'h03: O = 8'h7B;
        8'h04: O = 8'hF2;
        8'h05: O = 8'h6B;
        8'h06: O = 8'h6F;
        8'h07: O = 8'hC5;
        8'h08: O = 8'h30;
        8'h09: O = 8'h01;
        8'h0A: O = 8'h67;
        8'h0B: O = 8'h2B;
        8'h0C: O = 8'hFE;
        8'h0D: O = 8'hD7;
        8'h0E: O = 8'hAB;
        8'h0F: O = 8'h76;
        8'h10: O = 8'hCA;
        8'h11: O = 8'h82;
        8'h12: O = 8'hC9;
        8'h13: O = 8'h7D;
        8'h14: O = 8'hFA;
        8'h15: O = 8'h59;
        8'h16: O = 8'h47;
        8'h17: O = 8'hF0;
        8'h18: O = 8'hAD;
        8'h19: O = 8'hD4;
        8'h1A: O = 8'hA2;
        8'h1B: O = 8'hAF;
        8'h1C: O = 8'h9C;
        8'h1D: O = 8'hA4;
        8'h1E: O = 8'h72;
        8'h1F: O = 8'hC0;
        8'h20: O = 8'hB7;
        8'h21: O = 8'hFD;
        8'h22: O = 8'h93;
        8'h23: O = 8'h26;
        8'h24: O = 8'h36;
        8'h25: O = 8'h3F;
        8'h26: O = 8'hF7;
        8'h27: O = 8'hCC;
        8'h28: O = 8'h34;
        8'h29: O = 8'hA5;
        8'h2A: O = 8'hE5;
        8'h2B: O = 8'hF1;
        8'h2C: O = 8'h71;
        8'h2D: O = 8'hD8;
        8'h2E: O = 8'h31;
        8'h2F: O = 8'h15;
        8'h30: O = 8'h04;
        8'h31: O = 8'hC7;
        8'h32: O = 8'h23;
        8'h33: O = 8'hC3;
        8'h34: O = 8'h18;
        8'h35: O = 8'h96;
        8'h36: O = 8'h05;
        8'h37: O = 8'h9A;
        8'h38: O = 8'h07;
        8'h39: O = 8'h12;
        8'h3A: O = 8'h80;
        8'h3B: O = 8'hE2;
        8'h3C: O = 8'hEB;
        8'h3D: O = 8'h27;
        8'h3E: O = 8'hB2;
        8'h3F: O = 8'h75;
        8'h40: O = 8'h09;
        8'h41: O = 8'h83;
        8'h42: O = 8'h2C;
        8'h43: O = 8'h1A;
        8'h44: O = 8'h1B;
        8'h45: O = 8'h6E;
        8'h46: O = 8'h5A;
        8'h47: O = 8'hA0;
        8'h48: O = 8'h52;
        8'h49: O = 8'h3B;
        8'h4A: O = 8'hD6;
        8'h4B: O = 8'hB3;
        8'h4C: O = 8'h29;
        8'h4D: O = 8'hE3;
        8'h4E: O = 8'h2F;
        8'h4F: O = 8'h84;
        8'h50: O = 8'h53;
        8'h51: O = 8'hD1;
        8'h52: O = 8'h00;
        8'h53: O = 8'hED;
        8'h54: O = 8'h20;
        8'h55: O = 8'hFC;
        8'h56: O = 8'hB1;
        8'h57: O = 8'h5B;
        8'h58: O = 8'h6A;
        8'h59: O = 8'hCB;
        8'h5A: O = 8'hBE;
        8'h5B: O = 8'h39;
        8'h5C: O = 8'h4A;
        8'h5D: O = 8'h4C;
        8'h5E: O = 8'h58;
        8'h5F: O = 8'hCF;
        8'h60: O = 8'hD0;
        8'h61: O = 8'hEF;
        8'h62: O = 8'hAA;
        8'h63: O = 8'hFB;
        8'h64: O = 8'h43;
        8'h65: O = 8'h4D;
        8'h66: O = 8'h33;
        8'h67: O = 8'h85;
        8'h68: O = 8'h45;
        8'h69: O = 8'hF9;
        8'h6A: O = 8'h02;
        8'h6B: O = 8'h7F;
        8'h6C: O = 8'h50;
        8'h6D: O = 8'h3C;
        8'h6E: O = 8'h9F;
        8'h6F: O = 8'hA8;
        8'h70: O = 8'h51;
        8'h71: O = 8'hA3;
        8'h72: O = 8'h40;
        8'h73: O = 8'h8F;
        8'h74: O = 8'h92;
        8'h75: O = 8'h9D;
        8'h76: O = 8'h38;
        8'h77: O = 8'hF5;
        8'h78: O = 8'hBC;
        8'h79: O = 8'hB6;
        8'h7A: O = 8'hDA;
        8'h7B: O = 8'h21;
        8'h7C: O = 8'h10;
        8'h7D: O = 8'hFF;
        8'h7E: O = 8'hF3;
        8'h7F: O = 8'hD2;
        8'h80: O = 8'hCD;
        8'h81: O = 8'h0C;
        8'h82: O = 8'h13;
        8'h83: O = 8'hEC;
        8'h84: O = 8'h5F;
        8'h85: O = 8'h97;
        8'h86: O = 8'h44;
        8'h87: O = 8'h17;
        8'h88: O = 8'hC4;
        8'h89: O = 8'hA7;
        8'h8A: O = 8'h7E;
        8'h8B: O = 8'h3D;
        8'h8C: O = 8'h64;
        8'h8D: O = 8'h5D;
        8'h8E: O = 8'h19;
        8'h8F: O = 8'h73;
        8'h90: O = 8'h60;
        8'h91: O = 8'h81;
        8'h92: O = 8'h4F;
        8'h93: O = 8'hDC;
        8'h94: O = 8'h22;
        8'h95: O = 8'h2A;
        8'h96: O = 8'h90;
        8'h97: O = 8'h88;
        8'h98: O = 8'h46;
        8'h99: O = 8'hEE;
        8'h9A: O = 8'hB8;
        8'h9B: O = 8'h14;
        8'h9C: O = 8'hDE;
        8'h9D: O = 8'h5E;
        8'h9E: O = 8'h0B;
        8'h9F: O = 8'hDB;
        8'hA0: O = 8'hE0;
        8'hA1: O = 8'h32;
        8'hA2: O = 8'h3A;
        8'hA3: O = 8'h0A;
        8'hA4: O = 8'h49;
        8'hA5: O = 8'h06;
        8'hA6: O = 8'h24;
        8'hA7: O = 8'h5C;
        8'hA8: O = 8'hC2;
        8'hA9: O = 8'hD3;
        8'hAA: O = 8'hAC;
        8'hAB: O = 8'h62;
        8'hAC: O = 8'h91;
        8'hAD: O = 8'h95;
        8'hAE: O = 8'hE4;
        8'hAF: O = 8'h79;
        8'hB0: O = 8'hE7;
        8'hB1: O = 8'hC8;
        8'hB2: O = 8'h37;
        8'hB3: O = 8'h6D;
        8'hB4: O = 8'h8D;
        8'hB5: O = 8'hD5;
        8'hB6: O = 8'h4E;
        8'hB7: O = 8'hA9;
        8'hB8: O = 8'h6C;
        8'hB9: O = 8'h56;
        8'hBA: O = 8'hF4;
        8'hBB: O = 8'hEA;
        8'hBC: O = 8'h65;
        8'hBD: O = 8'h7A;
        8'hBE: O = 8'hAE;
        8'hBF: O = 8'h08;
        8'hC0: O = 8'hBA;
        8'hC1: O = 8'h78;
        8'hC2: O = 8'h25;
        8'hC3: O = 8'h2E;
        8'hC4: O = 8'h1C;
        8'hC5: O = 8'hA6;
        8'hC6: O = 8'hB4;
        8'hC7: O = 8'hC6;
        8'hC8: O = 8'hE8;
        8'hC9: O = 8'hDD;
        8'hCA: O = 8'h74;
        8'hCB: O = 8'h1F;
        8'hCC: O = 8'h4B;
        8'hCD: O = 8'hBD;
        8'hCE: O = 8'h8B;
        8'hCF: O = 8'h8A;
        8'hD0: O = 8'h70;
        8'hD1: O = 8'h3E;
        8'hD2: O = 8'hB5;
        8'hD3: O = 8'h66;
        8'hD4: O = 8'h48;
        8'hD5: O = 8'h03;
        8'hD6: O = 8'hF6;
        8'hD7: O = 8'h0E;
        8'hD8: O = 8'h61;
        8'hD9: O = 8'h35;
        8'hDA: O = 8'h57;
        8'hDB: O = 8'hB9;
        8'hDC: O = 8'h86;
        8'hDD: O = 8'hC1;
        8'hDE: O = 8'h1D;
        8'hDF: O = 8'h9E;
        8'hE0: O = 8'hE1;
        8'hE1: O = 8'hF8;
        8'hE2: O = 8'h98;
        8'hE3: O = 8'h11;
        8'hE4: O = 8'h69;
        8'hE5: O = 8'hD9;
        8'hE6: O = 8'h8E;
        8'hE7: O = 8'h94;
        8'hE8: O = 8'h9B;
        8'hE9: O = 8'h1E;
        8'hEA: O = 8'h87;
        8'hEB: O = 8'hE9;
        8'hEC: O = 8'hCE;
        8'hED: O = 8'h55;
        8'hEE: O = 8'h28;
        8'hEF: O = 8'hDF;
        8'hF0: O = 8'h8C;
        8'hF1: O = 8'hA1;
        8'hF2: O = 8'h89;
        8'hF3: O = 8'h0D;
        8'hF4: O = 8'hBF;
        8'hF5: O = 8'hE6;
        8'hF6: O = 8'h42;
        8'hF7: O = 8'h68;
        8'hF8: O = 8'h41;
        8'hF9: O = 8'h99;
        8'hFA: O = 8'h2D;
        8'hFB: O = 8'h0F;
        8'hFC: O = 8'hB0;
        8'hFD: O = 8'h54;
        8'hFE: O = 8'hBB;
        8'hFF: O = 8'h16;
        endcase
        case(in2)
        8'h00: X = 8'h63;
        8'h01: X = 8'h7C;
        8'h02: X = 8'h77;
        8'h03: X = 8'h7B;
        8'h04: X = 8'hF2;
        8'h05: X = 8'h6B;
        8'h06: X = 8'h6F;
        8'h07: X = 8'hC5;
        8'h08: X = 8'h30;
        8'h09: X = 8'h01;
        8'h0A: X = 8'h67;
        8'h0B: X = 8'h2B;
        8'h0C: X = 8'hFE;
        8'h0D: X = 8'hD7;
        8'h0E: X = 8'hAB;
        8'h0F: X = 8'h76;
        8'h10: X = 8'hCA;
        8'h11: X = 8'h82;
        8'h12: X = 8'hC9;
        8'h13: X = 8'h7D;
        8'h14: X = 8'hFA;
        8'h15: X = 8'h59;
        8'h16: X = 8'h47;
        8'h17: X = 8'hF0;
        8'h18: X = 8'hAD;
        8'h19: X = 8'hD4;
        8'h1A: X = 8'hA2;
        8'h1B: X = 8'hAF;
        8'h1C: X = 8'h9C;
        8'h1D: X = 8'hA4;
        8'h1E: X = 8'h72;
        8'h1F: X = 8'hC0;
        8'h20: X = 8'hB7;
        8'h21: X = 8'hFD;
        8'h22: X = 8'h93;
        8'h23: X = 8'h26;
        8'h24: X = 8'h36;
        8'h25: X = 8'h3F;
        8'h26: X = 8'hF7;
        8'h27: X = 8'hCC;
        8'h28: X = 8'h34;
        8'h29: X = 8'hA5;
        8'h2A: X = 8'hE5;
        8'h2B: X = 8'hF1;
        8'h2C: X = 8'h71;
        8'h2D: X = 8'hD8;
        8'h2E: X = 8'h31;
        8'h2F: X = 8'h15;
        8'h30: X = 8'h04;
        8'h31: X = 8'hC7;
        8'h32: X = 8'h23;
        8'h33: X = 8'hC3;
        8'h34: X = 8'h18;
        8'h35: X = 8'h96;
        8'h36: X = 8'h05;
        8'h37: X = 8'h9A;
        8'h38: X = 8'h07;
        8'h39: X = 8'h12;
        8'h3A: X = 8'h80;
        8'h3B: X = 8'hE2;
        8'h3C: X = 8'hEB;
        8'h3D: X = 8'h27;
        8'h3E: X = 8'hB2;
        8'h3F: X = 8'h75;
        8'h40: X = 8'h09;
        8'h41: X = 8'h83;
        8'h42: X = 8'h2C;
        8'h43: X = 8'h1A;
        8'h44: X = 8'h1B;
        8'h45: X = 8'h6E;
        8'h46: X = 8'h5A;
        8'h47: X = 8'hA0;
        8'h48: X = 8'h52;
        8'h49: X = 8'h3B;
        8'h4A: X = 8'hD6;
        8'h4B: X = 8'hB3;
        8'h4C: X = 8'h29;
        8'h4D: X = 8'hE3;
        8'h4E: X = 8'h2F;
        8'h4F: X = 8'h84;
        8'h50: X = 8'h53;
        8'h51: X = 8'hD1;
        8'h52: X = 8'h00;
        8'h53: X = 8'hED;
        8'h54: X = 8'h20;
        8'h55: X = 8'hFC;
        8'h56: X = 8'hB1;
        8'h57: X = 8'h5B;
        8'h58: X = 8'h6A;
        8'h59: X = 8'hCB;
        8'h5A: X = 8'hBE;
        8'h5B: X = 8'h39;
        8'h5C: X = 8'h4A;
        8'h5D: X = 8'h4C;
        8'h5E: X = 8'h58;
        8'h5F: X = 8'hCF;
        8'h60: X = 8'hD0;
        8'h61: X = 8'hEF;
        8'h62: X = 8'hAA;
        8'h63: X = 8'hFB;
        8'h64: X = 8'h43;
        8'h65: X = 8'h4D;
        8'h66: X = 8'h33;
        8'h67: X = 8'h85;
        8'h68: X = 8'h45;
        8'h69: X = 8'hF9;
        8'h6A: X = 8'h02;
        8'h6B: X = 8'h7F;
        8'h6C: X = 8'h50;
        8'h6D: X = 8'h3C;
        8'h6E: X = 8'h9F;
        8'h6F: X = 8'hA8;
        8'h70: X = 8'h51;
        8'h71: X = 8'hA3;
        8'h72: X = 8'h40;
        8'h73: X = 8'h8F;
        8'h74: X = 8'h92;
        8'h75: X = 8'h9D;
        8'h76: X = 8'h38;
        8'h77: X = 8'hF5;
        8'h78: X = 8'hBC;
        8'h79: X = 8'hB6;
        8'h7A: X = 8'hDA;
        8'h7B: X = 8'h21;
        8'h7C: X = 8'h10;
        8'h7D: X = 8'hFF;
        8'h7E: X = 8'hF3;
        8'h7F: X = 8'hD2;
        8'h80: X = 8'hCD;
        8'h81: X = 8'h0C;
        8'h82: X = 8'h13;
        8'h83: X = 8'hEC;
        8'h84: X = 8'h5F;
        8'h85: X = 8'h97;
        8'h86: X = 8'h44;
        8'h87: X = 8'h17;
        8'h88: X = 8'hC4;
        8'h89: X = 8'hA7;
        8'h8A: X = 8'h7E;
        8'h8B: X = 8'h3D;
        8'h8C: X = 8'h64;
        8'h8D: X = 8'h5D;
        8'h8E: X = 8'h19;
        8'h8F: X = 8'h73;
        8'h90: X = 8'h60;
        8'h91: X = 8'h81;
        8'h92: X = 8'h4F;
        8'h93: X = 8'hDC;
        8'h94: X = 8'h22;
        8'h95: X = 8'h2A;
        8'h96: X = 8'h90;
        8'h97: X = 8'h88;
        8'h98: X = 8'h46;
        8'h99: X = 8'hEE;
        8'h9A: X = 8'hB8;
        8'h9B: X = 8'h14;
        8'h9C: X = 8'hDE;
        8'h9D: X = 8'h5E;
        8'h9E: X = 8'h0B;
        8'h9F: X = 8'hDB;
        8'hA0: X = 8'hE0;
        8'hA1: X = 8'h32;
        8'hA2: X = 8'h3A;
        8'hA3: X = 8'h0A;
        8'hA4: X = 8'h49;
        8'hA5: X = 8'h06;
        8'hA6: X = 8'h24;
        8'hA7: X = 8'h5C;
        8'hA8: X = 8'hC2;
        8'hA9: X = 8'hD3;
        8'hAA: X = 8'hAC;
        8'hAB: X = 8'h62;
        8'hAC: X = 8'h91;
        8'hAD: X = 8'h95;
        8'hAE: X = 8'hE4;
        8'hAF: X = 8'h79;
        8'hB0: X = 8'hE7;
        8'hB1: X = 8'hC8;
        8'hB2: X = 8'h37;
        8'hB3: X = 8'h6D;
        8'hB4: X = 8'h8D;
        8'hB5: X = 8'hD5;
        8'hB6: X = 8'h4E;
        8'hB7: X = 8'hA9;
        8'hB8: X = 8'h6C;
        8'hB9: X = 8'h56;
        8'hBA: X = 8'hF4;
        8'hBB: X = 8'hEA;
        8'hBC: X = 8'h65;
        8'hBD: X = 8'h7A;
        8'hBE: X = 8'hAE;
        8'hBF: X = 8'h08;
        8'hC0: X = 8'hBA;
        8'hC1: X = 8'h78;
        8'hC2: X = 8'h25;
        8'hC3: X = 8'h2E;
        8'hC4: X = 8'h1C;
        8'hC5: X = 8'hA6;
        8'hC6: X = 8'hB4;
        8'hC7: X = 8'hC6;
        8'hC8: X = 8'hE8;
        8'hC9: X = 8'hDD;
        8'hCA: X = 8'h74;
        8'hCB: X = 8'h1F;
        8'hCC: X = 8'h4B;
        8'hCD: X = 8'hBD;
        8'hCE: X = 8'h8B;
        8'hCF: X = 8'h8A;
        8'hD0: X = 8'h70;
        8'hD1: X = 8'h3E;
        8'hD2: X = 8'hB5;
        8'hD3: X = 8'h66;
        8'hD4: X = 8'h48;
        8'hD5: X = 8'h03;
        8'hD6: X = 8'hF6;
        8'hD7: X = 8'h0E;
        8'hD8: X = 8'h61;
        8'hD9: X = 8'h35;
        8'hDA: X = 8'h57;
        8'hDB: X = 8'hB9;
        8'hDC: X = 8'h86;
        8'hDD: X = 8'hC1;
        8'hDE: X = 8'h1D;
        8'hDF: X = 8'h9E;
        8'hE0: X = 8'hE1;
        8'hE1: X = 8'hF8;
        8'hE2: X = 8'h98;
        8'hE3: X = 8'h11;
        8'hE4: X = 8'h69;
        8'hE5: X = 8'hD9;
        8'hE6: X = 8'h8E;
        8'hE7: X = 8'h94;
        8'hE8: X = 8'h9B;
        8'hE9: X = 8'h1E;
        8'hEA: X = 8'h87;
        8'hEB: X = 8'hE9;
        8'hEC: X = 8'hCE;
        8'hED: X = 8'h55;
        8'hEE: X = 8'h28;
        8'hEF: X = 8'hDF;
        8'hF0: X = 8'h8C;
        8'hF1: X = 8'hA1;
        8'hF2: X = 8'h89;
        8'hF3: X = 8'h0D;
        8'hF4: X = 8'hBF;
        8'hF5: X = 8'hE6;
        8'hF6: X = 8'h42;
        8'hF7: X = 8'h68;
        8'hF8: X = 8'h41;
        8'hF9: X = 8'h99;
        8'hFA: X = 8'h2D;
        8'hFB: X = 8'h0F;
        8'hFC: X = 8'hB0;
        8'hFD: X = 8'h54;
        8'hFE: X = 8'hBB;
        8'hFF: X = 8'h16;
        endcase
    endmodule