`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2021 17:34:46
// Design Name: 
// Module Name: AES_block_tb
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


module AES_block_tb();
reg [127:0]in;
reg clock;
wire[7:0]Rcon_out;
wire [127:0]out;
AES_block dut(.in(in),.out(out),.clock(clock),.Rcon_out(Rcon_out));
initial 
begin
clock=1;
in='h00000000000000000000000000000000;
#2
in='h41424344654667484142434465466748;
#2
in='h202122232425262728292A2B2C2D2E2F;
#2
in='h303132333435363738393A3B3C3D3E3F;
#2
in='h404142434445464748494A4B4C4D4E4F;
#2
in='h505152535455565758595A5B5C5D5E5F;
#2
in='h606162636465666768696A6B6C6D6E6F;
#2
in='h00000000000000000000000000000000;
#2
in='h606162636465666768696A6B6C6D6E6F;
#2
in='h404142434445464748494A4B4C4D4E4F;
#2
in='h41424344654667484142434465466748;
end
initial 
begin
		 $monitor("t=%3d Rcon=%h out=%h \n",$time,Rcon_out,out );
end
always 
#1  clock =  ! clock;


endmodule
