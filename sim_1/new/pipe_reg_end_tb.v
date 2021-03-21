`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.03.2021 01:40:56
// Design Name: 
// Module Name: pipe_reg_end_tb
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


module pipe_reg_end_tb();
    reg [7:0]Rcon_in;
    reg clock;
    reg [7:0]in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,inA,inB,inC,inD,inE,inF;
    wire [127:0]out;
    pipe_reg_end dut(.in0(in0),.in1(in1),.in2(in2),.in3(in3),.in4(in4),.in5(in5),
    .in6(in6),.in7(in7),.in8(in8),.in9(in9),.inA(inA),.inB(inB),.inC(inC),.inD(inD),
    .inE(inE),.inF(inF),.out(out),.Rcon_in(Rcon_in),.clock(clock));
    initial begin
    clock=1;
    in0='h00;
    in1='h01;
    in2='h02;
    in3='h03;
    in4='h04;
    in5='h05;
    in6='h06;
    in7='h07;
    in8='h08;
    in9='h09;
    inA='h0A;
    inB='h0B;
    inC='h0C;
    inD='h0D;
    inE='h0E;
    inF='h0F;
    Rcon_in='h01;
    #2
    in0='h10;
    in1='h11;
    in2='h12;
    in3='h13;
    in4='h14;
    in5='h15;
    in6='h16;
    in7='h17;
    in8='h18;
    in9='h19;
    inA='h1A;
    inB='h1B;
    inC='h1C;
    inD='h1D;
    inE='h1E;
    inF='h1F;
    Rcon_in='h36;
    #2
    in0='h20;
    in1='h21;
    in2='h22;
    in3='h23;
    in4='h24;
    in5='h25;
    in6='h26;
    in7='h27;
    in8='h28;
    in9='h29;
    inA='h2A;
    inB='h2B;
    inC='h2C;
    inD='h2D;
    inE='h2E;
    inF='h2F;
    Rcon_in='h36;
    #2
    in0='h30;
    in1='h31;
    in2='h32;
    in3='h33;
    in4='h34;
    in5='h35;
    in6='h36;
    in7='h37;
    in8='h38;
    in9='h39;
    inA='h3A;
    inB='h3B;
    inC='h3C;
    inD='h3D;
    inE='h3E;
    inF='h3F;
    Rcon_in='h04;
    end
    always
    #1 clock=!clock;

    
endmodule
