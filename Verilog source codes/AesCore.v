`timescale 1ns / 1ps
module AesCore(clk,i_data,keyIn,o_data,cipherkey);
input clk;
input [127:0] i_data;
input [127:0] keyIn;
output[127:0] o_data;
output [127:0] cipherkey;

    
    
wire [127:0] state0;
wire [127:0] rnd1,rnd2,rnd3,rnd4,rnd5,rnd6,rnd7,rnd8,rnd9;
    
wire [127:0] keyOut1,keyOut2,keyOut3,keyOut4,keyOut5,keyOut6,keyOut7,keyOut8,keyOut9;




assign state0 = i_data^keyIn;
	
//1-9 rounds
rounds9 r1(
.clk(clk),
.rcRound(4'd0),
.keyx(keyIn),
.keyOut(keyOut1),
.state1(state0),
.rndstate(rnd1)
);

rounds9 r2(
.clk(clk),
.rcRound(4'd1),
.keyx(keyOut1),
.keyOut(keyOut2),
.state1(rnd1),
.rndstate(rnd2)
);

rounds9 r3(
.clk(clk),
.rcRound(4'd2),
.keyx(keyOut2),
.keyOut(keyOut3),
.state1(rnd2),
.rndstate(rnd3)
);

rounds9 r4(
.clk(clk),
.rcRound(4'd3),
.keyx(keyOut3),
.keyOut(keyOut4),
.state1(rnd3),
.rndstate(rnd4)
);

rounds9 r5(
.clk(clk),
.rcRound(4'd4),
.keyx(keyOut4),
.keyOut(keyOut5),
.state1(rnd4),
.rndstate(rnd5)
);

rounds9 r6(
.clk(clk),
.rcRound(4'd5),
.keyx(keyOut5),
.keyOut(keyOut6),
.state1(rnd5),
.rndstate(rnd6)
);

rounds9 r7(
.clk(clk),
.rcRound(4'd6),
.keyx(keyOut6),
.keyOut(keyOut7),
.state1(rnd6),
.rndstate(rnd7)
);

rounds9 r8(
.clk(clk),
.rcRound(4'd7),
.keyx(keyOut7),
.keyOut(keyOut8),
.state1(rnd7),
.rndstate(rnd8)
);

rounds9 r9(
.clk(clk),
.rcRound(4'd8),
.keyx(keyOut8),
.keyOut(keyOut9),
.state1(rnd8),
.rndstate(rnd9)
);

//last round
last r10(
.clk(clk),
.rcRound(4'd9),
.key9(keyOut9),
.keyOut(cipherkey),
.r9(rnd9),
.stateout(o_data)
);


    
endmodule