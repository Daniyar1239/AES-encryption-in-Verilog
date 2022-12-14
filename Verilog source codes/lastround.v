`timescale 1ns / 1ps
module last(clk,rcRound,r9,key9,keyOut,stateout);
input clk;
input [3:0] rcRound;
input [127:0] r9;
input [127:0] key9;
output [127:0] keyOut;
output [127:0] stateout;




wire [127:0] state2,state3;

//10th round(no mixcolumns)
keyExp v0(rcRound, key9, keyOut);
subBytes v1(r9,state2);
shiftRow v2(state2,state3);

assign stateout = state3^keyOut;

endmodule
