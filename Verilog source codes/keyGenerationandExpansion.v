`timescale 1ns / 1ps
module keyExp(rcRound, keyIn, keyOut);
input [3:0] rcRound;
input [127:0] keyIn;
output [127:0] keyOut;



wire [31:0] w0,w1,w2,w3,g;

assign w0=keyIn[127:96];
assign w1=keyIn[95:64];
assign w2=keyIn[63:32];
assign w3=keyIn[31:0];


//Subbytes operation
sbox s4(
.subin(w3[31:24]),  //circular byte lefr shift
.subout(g[7:0])
);

sbox s3(
.subin(w3[7:0]),
.subout(g[15:8])
);

sbox s2(
.subin(w3[15:8]),
.subout(g[23:16])
);

sbox s1(
.subin(w3[23:16]),
.subout(g[31:24])
);

//XOR operations to obtain the key for the next rounds
assign keyOut[127:96]= w0 ^ g ^ rcon(rcRound);
assign keyOut[95:64] = w0 ^ g ^ rcon(rcRound)^ w1;
assign keyOut[63:32] = w0 ^ g ^ rcon(rcRound)^ w1 ^ w2;
assign keyOut[31:0]  = w0 ^ g ^ rcon(rcRound)^ w1 ^ w2 ^ w3;



//Finding rhe rcon array according to the round
function [31:0]	rcon;
input	 [3:0]	rcRound;
      case(rcRound)	
         4'h0: rcon=32'h01_00_00_00;
         4'h1: rcon=32'h02_00_00_00;
         4'h2: rcon=32'h04_00_00_00;
         4'h3: rcon=32'h08_00_00_00;
         4'h4: rcon=32'h10_00_00_00;
         4'h5: rcon=32'h20_00_00_00;
         4'h6: rcon=32'h40_00_00_00;
         4'h7: rcon=32'h80_00_00_00;
         4'h8: rcon=32'h1b_00_00_00;
         4'h9: rcon=32'h36_00_00_00;
         default: rcon=32'h00_00_00_00;
       endcase

endfunction


endmodule
