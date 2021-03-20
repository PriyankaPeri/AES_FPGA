`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2021 18:38:46
// Design Name: 
// Module Name: queue_tb
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


module queue_tb();
reg clock;
reg [127:0]in;
wire [7:0]K0,K1,K2,K3,K4,K5,K6,K7,K8,K9,KA,KB,KC,KD,KE,KF,
   G0,G1,G2,G3,G4,G5,G6,G7,G8,G9,GA,GB,GC,GD,GE,GF,Rcon_out;
wire empty;
queue dut(.in(in),.clock(clock),.G0(G0),.G1(G1),.G2(G2),.G3(G3),.G4(G4),.G5(G5),.G6(G6),.G7(G7),
.G8(G8),.G9(G9),.GA(GA),.GB(GB),.GC(GC),.GD(GD),.GE(GE),.GF(GF),.KC(KC),.KD(KD),.KE(KE),.KF(KF),
.K1(K1),.K0(K0),.K2(K2),.K3(K3),.K4(K4),.K5(K5),.K6(K6),.K7(K7),.K8(K8),.K9(K9),.KA(KA),.KB(KB),.Rcon_out(Rcon_out),.empty(empty));
initial 
begin
clock=1;
in='h00000000000000000000000000000000;
#2
in='H101112131415161718191A1B1C1D1E1F;
#2
in='h202122232425262728292A2B2C2D2E2F;
#2
in='h303132333435363738393A3B3C3D3E3F;
#2
in='h404142434445464748494A4B4C4D4E4F;
#2
in='h505152535455565758595A5B5C5D5E5F;
end
always 
#1  clock =  ! clock;

endmodule
