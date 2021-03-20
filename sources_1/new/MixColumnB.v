`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2021 23:09:16
// Design Name: 
// Module Name: MixColumnB
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


module MixColumnB(input [7:0] G0,G1,G2,G3,G4,G5,G6,
    G7,G8,G9,GA,GB,GC,GD,GE,GF,Rcon_in,
    output [7:0] H0,H1,H2,H3,H4,H5,H6,H7,H8,H9,HA,HB,HC,HD,HE,HF,
    output [7:0] T0,T1,T2,T3,T4,T5,T6,T7,T8,T9,TA,TB,TC,TD,TE,TF,Rcon_out);
    
        parameter k=8'b00011011;
        assign H0=G0[7]==1?{G0<<1}^k:{G0<<1};
        assign H1=G1[7]==1?{G1<<1}^k:{G1<<1};
        assign H2=G2[7]==1?{G2<<1}^k:{G2<<1};
        assign H3=G3[7]==1?{G3<<1}^k:{G3<<1};
        assign H4=G4[7]==1?{G4<<1}^k:{G4<<1};
        assign H5=G5[7]==1?{G5<<1}^k:{G5<<1};
        assign H6=G6[7]==1?{G6<<1}^k:{G6<<1};
        assign H7=G7[7]==1?{G7<<1}^k:{G7<<1};
        assign H8=G8[7]==1?{G8<<1}^k:{G8<<1};
        assign H9=G9[7]==1?{G9<<1}^k:{G9<<1};
        assign HA=GA[7]==1?{GA<<1}^k:{GA<<1};
        assign HB=GB[7]==1?{GB<<1}^k:{GB<<1};
        assign HC=GC[7]==1?{GC<<1}^k:{GC<<1};
        assign HD=GD[7]==1?{GD<<1}^k:{GD<<1};
        assign HE=GE[7]==1?{GE<<1}^k:{GE<<1};
        assign HF=GF[7]==1?{GF<<1}^k:{GF<<1};
        assign T0=G0[7]==1?{G0<<1}^k^G0:{G0<<1}^G0;
        assign T1=G1[7]==1?{G1<<1}^k^G1:{G1<<1}^G1;
        assign T2=G2[7]==1?{G2<<1}^k^G2:{G2<<1}^G2;
        assign T3=G3[7]==1?{G3<<1}^k^G3:{G3<<1}^G3;
        assign T4=G4[7]==1?{G4<<1}^k^G4:{G4<<1}^G4;
        assign T5=G5[7]==1?{G5<<1}^k^G5:{G5<<1}^G5;
        assign T6=G6[7]==1?{G6<<1}^k^G6:{G6<<1}^G6;
        assign T7=G7[7]==1?{G7<<1}^k^G7:{G7<<1}^G7;
        assign T8=G8[7]==1?{G8<<1}^k^G8:{G8<<1}^G8;
        assign T9=G9[7]==1?{G9<<1}^k^G9:{G9<<1}^G9;
        assign TA=GA[7]==1?{GA<<1}^k^GA:{GA<<1}^GA;
        assign TB=GB[7]==1?{GB<<1}^k^GB:{GB<<1}^GB;
        assign TC=GC[7]==1?{GC<<1}^k^GC:{GC<<1}^GC;
        assign TD=GD[7]==1?{GD<<1}^k^GD:{GD<<1}^GD;
        assign TE=GE[7]==1?{GE<<1}^k^GE:{GE<<1}^GE;
        assign TF=GF[7]==1?{GF<<1}^k^GF:{GF<<1}^GF;
    assign Rcon_out=Rcon_in[7]==1?{Rcon_in^8'b10011011}:{Rcon_in<<1};
endmodule

