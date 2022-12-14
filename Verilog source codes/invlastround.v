`timescale 1ns / 1ps
module inv_last(clk,rcRound,state10,keyy,keyOut,x);
input clk;
input [3:0] rcRound;
input [127:0] state10;
input [127:0] keyy;
output [127:0] keyOut;
output [127:0] x;


wire [127:0] state4,state;


//10th round(no mixcolumns)
keyExp v0(rcRound, keyy,keyOut);
inv_shiftRow v1(state10, state4);
inv_subBytes v2(state4, state);

assign x = state^keyOut;



endmodule