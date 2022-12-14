`timescale 1ns / 1ps
module InvAesCore(clk,cipherText,cipherkey,retData,origkey);
input clk;
input [127:0] cipherText;
input [127:0] cipherkey;
output [127:0] retData;
output [127:0] origkey;

    
wire [127:0] statel;
wire [127:0] rr10,rr9,rr8,rr7,rr6,rr5,rr4,rr3,rr2;
wire [127:0] keyout1,keyout2,keyout3,keyout4,keyout5,keyout6,keyout7,keyout8,keyout9;




	
assign statel = cipherText^cipherkey;

//invlast round
inv_last d10(
.clk(clk),
.rcRound(4'd9),
.keyy(cipherkey),
.keyOut(keyout9),
.state10(statel),
.x(rr10)
);

inv_rounds9 d9(
.clk(clk),
.rcRound(4'd8),
.ko(keyout9),
.keyOut(keyout8),
.invRnd9state(rr10),
.invRndState(rr9)
);
	
inv_rounds9 d8(
.clk(clk),
.rcRound(4'd7),
.ko(keyout8),
.keyOut(keyout7),
.invRnd9state(rr9),
.invRndState(rr8)
);


inv_rounds9 d7(
.clk(clk),
.rcRound(4'd6),
.ko(keyout7),
.keyOut(keyout6),
.invRnd9state(rr8),
.invRndState(rr7)
);

inv_rounds9 d6(
.clk(clk),
.rcRound(4'd5),
.ko(keyout6),
.keyOut(keyout5),
.invRnd9state(rr7),
.invRndState(rr6)
);

inv_rounds9 d5(
.clk(clk),
.rcRound(4'd4),
.ko(keyout5),
.keyOut(keyout4),
.invRnd9state(rr6),
.invRndState(rr5)
);

inv_rounds9 d4(
.clk(clk),
.rcRound(4'd3),
.ko(keyout4),
.keyOut(keyout3),
.invRnd9state(rr5),
.invRndState(rr4)
);


inv_rounds9 d3(
.clk(clk),
.rcRound(4'd2),
.ko(keyout3),
.keyOut(keyout2),
.invRnd9state(rr4),
.invRndState(rr3)
);

inv_rounds9 d2(
.clk(clk),
.rcRound(4'd1),
.ko(keyout2),
.keyOut(keyout1),
.invRnd9state(rr3),
.invRndState(rr2)
);


inv_rounds9 d1(
.clk(clk),
.rcRound(4'd0),
.ko(keyout1),
.keyOut(origkey),
.invRnd9state(rr2),
.invRndState(retData)
);

    
endmodule