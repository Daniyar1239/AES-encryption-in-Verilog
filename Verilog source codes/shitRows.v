`timescale 1ns / 1ps
module shiftRow(state2,state3);

input [127:0] state2;
output [127:0] state3;

assign state3[127:120] = state2[127:120];  

assign state3[119:112] = state2[87:80];

assign state3[111:104] = state2[47:40];

assign state3[103:96] = state2[7:0];

assign state3[95:88] = state2[95:88];

assign state3[87:80] = state2[55:48];

assign state3[79:72] = state2[15:8];

assign state3[71:64] = state2[103:96];

assign state3[63:56] = state2[63:56];

assign state3[55:48] = state2[23:16];

assign state3[47:40] = state2[111:104];

assign state3[39:32] = state2[71:64];

assign state3[31:24] = state2[31:24];

assign state3[23:16] = state2[119:112];

assign state3[15:8] = state2[79:72];

assign state3[7:0] = state2[39:32]; 


endmodule