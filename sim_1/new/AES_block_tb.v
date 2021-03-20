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
wire [127:0]out;
AES_block dut(.in(in),.out(out),.clock(clock));
initial 
begin
clock=1;
in='h544F4E20776E69546F656E772020656F;
#2
in='h5473206768204B20616D754674796E75;
#2
in='h5473206768204B20616D754574796E75;
#2
in='h5473206768204B20616D754074796E75;
#2
in='h5473206768204B20616D754A74796E75;
#2
in='h5473206768204B20616D754B74796E75;
end
always 
#1  clock =  ! clock;

endmodule
