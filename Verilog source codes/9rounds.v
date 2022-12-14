`timescale 1ns / 1ps
module rounds9(clk,rcRound,state1,keyx,keyOut,rndstate);
input clk;
input [3:0] rcRound;
input [127:0] state1;
input [127:0] keyx;
output [127:0] keyOut;
output [127:0] rndstate;

wire [127:0] state2,state3,state4;

//1-9 rounds
keyExp s0(rcRound, keyx, keyOut);
subBytes s1(state1,state2);
shiftRow s2(state2,state3);
mixColumn s3(state3, state4);

assign rndstate= keyOut^state4;

endmodule