`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2021 01:34:52
// Design Name: 
// Module Name: pipe_reg_end
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


module pipe_reg_end(
    input [7:0]Rcon_in,
    input clock,
    input [7:0]in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,inA,inB,inC,inD,inE,inF,
    output reg [127:0]out);
    
    reg [127:0]in_pipe;

    always @(posedge clock)
          begin
          if(Rcon_in=='h36)
          begin
          in_pipe[7:0]<= in0;
          in_pipe[15:8]<= in1;
          in_pipe[23:16]<= in2;
          in_pipe[31:24]<= in3;
          in_pipe[39:32]<= in4;
          in_pipe[47:40]<= in5;
          in_pipe[55:48]<= in6;
          in_pipe[63:56]<= in7;
          in_pipe[71:64]<= in8;
          in_pipe[79:72]<= in9;
          in_pipe[87:80]<= inA;
          in_pipe[95:88]<= inB;
          in_pipe[103:96]<= inC;
          in_pipe[111:104]<= inD;
          in_pipe[119:112]<= inE;
          in_pipe[127:120]<= inF;
          end
          end
    
    always @(posedge clock)
    begin
      out<=in_pipe;
      end
endmodule
