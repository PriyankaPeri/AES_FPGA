`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2021 12:55:37
// Design Name: 
// Module Name: queue
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


module queue(
    input clock, 
    input [127:0]in,
    output reg[7:0] K0,K1,K2,K3,K4,K5,K6,K7,K8,K9,KA,KB,KC,KD,KE,KF,
    G0,G1,G2,G3,G4,G5,G6,G7,G8,G9,GA,GB,GC,GD,GE,GF,
    output reg empty
    );
    reg  [7:0]K0_,K1_,K2_,K3_,K4_,K5_,K6_,K7_,K8_,K9_,KA_,KB_,KC_
    ,KD_,KE_,KF_,G0_,G1_,G2_,G3_,G4_,G5_,G6_,G7_,G8_,G9_,GA_,
    GB_,GC_,GD_,GE_,GF_;
    reg empty_,k_next;
    always@(posedge clock)
    begin
        if(in=='h00000000000000000000000000000000)
        begin
            k_next<=1;
            empty_<=1;
        end
        else
        begin
            if(k_next)
            begin
                K0_<=in[7:0];
                K1_<=in[15:8];
                K2_<=in[23:16];
                K3_<=in[31:24];
                K4_<=in[39:32];
                K5_<=in[47:40];
                K6_<=in[55:48];
                K7_<=in[63:56];
                K8_<=in[71:64];
                K9_<=in[79:72];
                KA_<=in[87:80];
                KB_<=in[95:88];
                KC_<=in[103:96];
                KD_<=in[111:104];
                KE_<=in[119:112];
                KF_<=in[127:120];
                k_next<=0;            
                empty_<=1;
            end
            else
            begin
                G0_<=in[7:0];
                G1_<=in[15:8];
                G2_<=in[23:16];
                G3_<=in[31:24];
                G4_<=in[39:32];
                G5_<=in[47:40];
                G6_<=in[55:48];
                G7_<=in[63:56];
                G8_<=in[71:64];
                G9_<=in[79:72];
                GA_<=in[87:80];
                GB_<=in[95:88];
                GC_<=in[103:96];
                GD_<=in[111:104];
                GE_<=in[119:112];
                GF_<=in[127:120];
                empty_<=0;
             end
        end
     end
        always@(posedge clock)
        begin
        G0<=G0_;
        G1<=G1_;
        G2<=G2_;
        G3<=G3_;
        G4<=G4_;
        G5<=G5_;
        G6<=G6_;
        G7<=G7_;
        G8<=G8_;
        G9<=G9_;
        GA<=GA_;
        GB<=GB_;
        GC<=GC_;
        GD<=GD_;
        GE<=GE_;
        GF<=GF_;
        K0<=K0_;
        K1<=K1_;
        K2<=K2_;
        K3<=K3_;
        K4<=K4_;
        K5<=K5_;
        K6<=K6_;
        K7<=K7_;
        K8<=K8_;
        K9<=K9_;
        KA<=KA_;
        KB<=KB_;
        KC<=KC_;
        KD<=KD_;
        KE<=KE_;
        KF<=KF_;
        empty<=empty_;
        end
endmodule
