`timescale 1ns / 1ps
module mixColumn (state3, state4);
input [127:0] state3;
output [127:0] state4;



assign state4 [127:120] = state3 [103:96]^state3 [111:104]^mix(state3 [119:112])^state3 [119:112]^mix(state3 [127:120]);
assign state4 [119:112] = state3 [103:96]^mix(state3 [111:104])^state3 [111:104]^mix(state3 [119:112])^state3 [127:120];
assign state4 [111:104] = mix(state3 [103:96])^state3 [103:96]^mix(state3 [111:104])^state3 [119:112]^state3 [127:120];
assign state4 [103:96] = mix(state3 [103:96])^state3 [111:104]^state3 [119:112]^mix(state3 [127:120])^state3 [127:120];

assign state4 [95:88] = state3 [71:64]^state3 [79:72]^mix(state3 [87:80])^state3 [87:80]^mix(state3 [95:88]);
assign state4 [87:80] = state3 [71:64]^mix(state3 [79:72])^state3 [79:72]^mix(state3 [87:80])^state3 [95:88];
assign state4 [79:72] = mix(state3 [71:64])^state3 [71:64]^mix(state3 [79:72])^state3 [87:80]^state3 [95:88];
assign state4 [71:64] = mix(state3 [71:64])^state3 [79:72]^state3 [87:80]^mix(state3 [95:88])^state3 [95:88];

assign state4 [63:56] = state3 [39:32]^state3 [47:40]^mix(state3 [55:48])^state3 [55:48]^mix(state3 [63:56]);
assign state4 [55:48] = state3 [39:32]^mix(state3 [47:40])^state3 [47:40]^mix(state3[55:48])^state3[63:56];
assign state4 [47:40] = mix(state3 [39:32])^state3 [39:32]^mix(state3 [47:40])^state3 [55:48]^state3 [63:56];
assign state4 [39:32] = mix(state3 [39:32])^state3 [47:40]^state3[55:48]^mix(state3 [63:56])^state3 [63:56];


assign state4 [31:24] = state3[7:0]^state3[15:8]^mix(state3 [23:16])^state3 [23:16]^mix(state3 [31:24]);
assign state4 [23:16] = state3 [7:0]^mix(state3 [15:8])^state3 [15:8]^mix(state3 [23:16])^state3 [31:24];
assign state4 [15:8] = mix(state3 [7:0])^state3 [7:0]^mix(state3 [15:8])^state3 [23:16]^state3 [31:24];
assign state4 [7:0] = mix(state3 [7:0])^state3 [15:8]^state3 [23:16]^mix(state3 [31:24])^state3 [31:24];





function [7:0] mix;
input [7:0] i;
begin
if(i[7] ==0)
mix = {i[6:0],1'b0};
else
mix = {i[6:0],1'b0}^8'h1b;
end
endfunction

endmodule


