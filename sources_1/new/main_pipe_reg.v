`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2021 20:03:21
// Design Name: 
// Module Name: main_pipe_reg
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


module main_pipe_reg(
input clock,
    input [7:0]in_b0,in_b1,in_b2,in_b3,in_b4,in_b5,in_b6,in_b7,in_b8,in_b9,in_bA,in_bB,in_bC,in_bD,in_bE,in_bF,
    in_bk0,in_bk1,in_bk2,in_bk3,in_bk4,in_bk5,in_bk6,in_bk7,in_bk8,in_bk9,in_bkA,in_bkB,in_bkC,in_bkD,in_bkE,in_bkF,
    input empty_in_b,
    input [7:0]in_qn0,in_qn1,in_qn2,in_qn3,in_qn4,in_qn5,in_qn6,in_qn7,in_qn8,in_qn9,in_qnA,in_qnB,in_qnC,in_qnD,in_qnE,in_qnF,
    in_qnk0,in_qnk1,in_qnk2,in_qnk3,in_qnk4,in_qnk5,in_qnk6,in_qnk7,in_qnk8,in_qnk9,in_qnkA,in_qnkB,in_qnkC,in_qnkD,in_qnkE,in_qnkF,
    input empty_in_qn,
    input [7:0]Rcon_in,
    output reg [7:0]out0,out1,out2,out3,out4,out5,out6,out7,out8,out9,outA,outB,outC,outD,outE,outF,
    output reg [7:0]outk0,outk1,outk2,outk3,outk4,outk5,outk6,outk7,outk8,outk9,outkA,outkB,outkC,outkD,outkE,outkF,
    output reg empty,
    output reg [7:0]Rcon_out);
    
    reg [7:0]in_pipe0,in_pipe1,in_pipe2,in_pipe3,in_pipe4,in_pipe5,in_pipe6,in_pipe7,in_pipe8,in_pipe9,
    in_pipeA,in_pipeB,in_pipeC,in_pipeD,in_pipeE,in_pipeF,in_pipek0,in_pipek1,in_pipek2,in_pipek3,in_pipek4,in_pipek5,
    in_pipek6,in_pipek7,in_pipek8,in_pipek9,in_pipekA,in_pipekB,in_pipekC,in_pipekD,in_pipekE,in_pipekF;
    reg empty_pipe;
    reg [7:0]Rcon_str;
    
    always @(posedge clock)
        begin
         if(!empty_in_b && Rcon_in!='h36)
          begin
          in_pipe0<= in_b0;
          in_pipe1<= in_b1;
          in_pipe2<= in_b2;
          in_pipe3<= in_b3;
          in_pipe4<= in_b4;
          in_pipe5<= in_b5;
          in_pipe6<= in_b6;
          in_pipe7<= in_b7;
          in_pipe8<= in_b8;
          in_pipe9<= in_b9;
          in_pipeA<= in_bA;
          in_pipeB<= in_bB;
          in_pipeC<= in_bC;
          in_pipeD<= in_bD;
          in_pipeE<= in_bE;
          in_pipeF<= in_bF;         
          in_pipek0<= in_bk0;
          in_pipek1<= in_bk1;
          in_pipek2<= in_bk2;
          in_pipek3<= in_bk3;
          in_pipek4<= in_bk4;
          in_pipek5<= in_bk5;
          in_pipek6<= in_bk6;
          in_pipek7<= in_bk7;
          in_pipek8<= in_bk8;
          in_pipek9<= in_bk9;
          in_pipekA<= in_bkA;
          in_pipekB<= in_bkB;
          in_pipekC<= in_bkC;
          in_pipekD<= in_bkD;
          in_pipekE<= in_bkE;
          in_pipekF<= in_bkF;  
          empty_pipe<= empty_in_b;
          Rcon_str<= Rcon_in;
          end
         else
          begin
          in_pipe0<= in_qn0;
          in_pipe1<= in_qn1;
          in_pipe2<= in_qn2;
          in_pipe3<= in_qn3;
          in_pipe4<= in_qn4;
          in_pipe5<= in_qn5;
          in_pipe6<= in_qn6;
          in_pipe7<= in_qn7;
          in_pipe8<= in_qn8;
          in_pipe9<= in_qn9;
          in_pipeA<= in_qnA;
          in_pipeB<= in_qnB;
          in_pipeC<= in_qnC;
          in_pipeD<= in_qnD;
          in_pipeE<= in_qnE;
          in_pipeF<= in_qnF; 
          in_pipek0<= in_qnk0;
          in_pipek1<= in_qnk1;
          in_pipek2<= in_qnk2;
          in_pipek3<= in_qnk3;
          in_pipek4<= in_qnk4;
          in_pipek5<= in_qnk5;
          in_pipek6<= in_qnk6;
          in_pipek7<= in_qnk7;
          in_pipek8<= in_qnk8;
          in_pipek9<= in_qnk9;
          in_pipekA<= in_qnkA;
          in_pipekB<= in_qnkB;
          in_pipekC<= in_qnkC;
          in_pipekD<= in_qnkD;
          in_pipekE<= in_qnkE;
          in_pipekF<= in_qnkF;
          empty_pipe<= empty_in_qn;
          Rcon_str<= 8'h01;
          end
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
      empty<=empty_pipe;
      Rcon_out<=Rcon_str;
      end
endmodule

