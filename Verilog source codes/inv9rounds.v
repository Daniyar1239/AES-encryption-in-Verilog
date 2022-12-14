`timescale 1ns / 1ps
module inv_rounds9(clk,rcRound,ko,invRnd9state,keyOut,invRndState);
input clk;
input [3:0] rcRound;
input [127:0] ko;
input [127:0] invRnd9state;
output [127:0] keyOut;
output [127:0] invRndState;


wire [127:0] invm,invsh,invsb;

//1-9 rounds
keyExp s0(rcRound,ko,keyOut);
inv_mixColumn s1(invRnd9state, invm);
inv_shiftRow s2(invm,invsh);
inv_subBytes s3(invsh,invsb);

assign invRndState = invsb^keyOut;

endmodule