`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2021 20:01:01
// Design Name: 
// Module Name: pipe_reg
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


module pipe_reg(
input empty_in, 
input [7:0]Rcon_in,
    input clock,
    input [7:0]in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,inA,inB,inC,inD,inE,inF,
    ink0,ink1,ink2,ink3,ink4,ink5,ink6,ink7,ink8,ink9,inkA,inkB,inkC,inkD,inkE,inkF,
    output reg [7:0]out0,out1,out2,out3,out4,out5,out6,
    out7,out8,out9,outA,outB,outC,outD,outE,outF,
    outk0,outk1,outk2,outk3,outk4,outk5,outk6,
    outk7,outk8,outk9,outkA,outkB,outkC,outkD,outkE,outkF,
    output reg empty, 
    output reg[7:0]Rcon_out);
    
    reg [7:0]in_pipe0,in_pipe1,in_pipe2,in_pipe3,in_pipe4,in_pipe5,in_pipe6,in_pipe7,in_pipe8,in_pipe9,
        in_pipeA,in_pipeB,in_pipeC,in_pipeD,in_pipeE,in_pipeF,
        in_pipek0,in_pipek1,in_pipek2,in_pipek3,in_pipek4,in_pipek5,in_pipek6,in_pipek7,in_pipek8,in_pipek9,
        in_pipekA,in_pipekB,in_pipekC,in_pipekD,in_pipekE,in_pipekF;
    reg empty_str;
    reg[7:0] Rcon_str;

    always @(posedge clock)
          begin
          in_pipe0<= in0;
          in_pipe1<= in1;
          in_pipe2<= in2;
          in_pipe3<= in3;
          in_pipe4<= in4;
          in_pipe5<= in5;
          in_pipe6<= in6;
          in_pipe7<= in7;
          in_pipe8<= in8;
          in_pipe9<= in9;
          in_pipeA<= inA;
          in_pipeB<= inB;
          in_pipeC<= inC;
          in_pipeD<= inD;
          in_pipeE<= inE;
          in_pipeF<= inF;
          in_pipek0<= ink0;
          in_pipek1<= ink1;
          in_pipek2<= ink2;
          in_pipek3<= ink3;
          in_pipek4<= ink4;
          in_pipek5<= ink5;
          in_pipek6<= ink6;
          in_pipek7<= ink7;
          in_pipek8<= ink8;
          in_pipek9<= ink9;
          in_pipekA<= inkA;
          in_pipekB<= inkB;
          in_pipekC<= inkC;
          in_pipekD<= inkD;
          in_pipekE<= inkE;
          in_pipekF<= inkF;
          empty_str<= empty_in;
          Rcon_str<= Rcon_in;
          end
    

    
    always @(posedge clock)
    begin
      out0<= in_pipe0;
      out1<= in_pipe1;
      out2<= in_pipe2;
      out3<= in_pipe3;
      out4<= in_pipe4;
      out5<= in_pipe5;
      out6<= in_pipe6;
      out7<= in_pipe7;
      out8<= in_pipe8;
      out9<= in_pipe9;
      outA<= in_pipeA;
      outB<= in_pipeB;
      outC<= in_pipeC;
      outD<= in_pipeD;
      outE<= in_pipeE;
      outF<= in_pipeF;
      outk0<= in_pipek0;
      outk1<= in_pipek1;
      outk2<= in_pipek2;
      outk3<= in_pipek3;
      outk4<= in_pipek4;
      outk5<= in_pipek5;
      outk6<= in_pipek6;
      outk7<= in_pipek7;
      outk8<= in_pipek8;
      outk9<= in_pipek9;
      outkA<= in_pipekA;
      outkB<= in_pipekB;
      outkC<= in_pipekC;
      outkD<= in_pipekD;
      outkE<= in_pipekE;
      outkF<= in_pipekF;
      empty<= empty_str;
      Rcon_out<=Rcon_str;
      end
    endmodule
