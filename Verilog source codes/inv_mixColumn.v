`timescale 1ns / 1ps
module inv_mixColumn (state3, state4);
input [127:0] state3;
output [127:0] state4;


assign state4[127:120] = fourteen(state3[127:120])^eleven(state3[119:112])^thirteen(state3[111:104])^nine(state3[103:96]);
assign state4[119:112] = nine(state3[127:120])^fourteen(state3[119:112])^eleven(state3[111:104])^thirteen(state3[103:96]);
assign state4[111:104] = thirteen(state3[127:120])^nine(state3[119:112])^fourteen(state3[111:104])^eleven(state3[103:96]);
assign state4[103:96] = eleven(state3[127:120])^thirteen(state3[119:112])^nine(state3[111:104])^fourteen(state3[103:96]);

assign state4[95:88] = fourteen(state3[95:88])^eleven(state3[87:80])^thirteen(state3[79:72])^nine(state3[71:64]);
assign state4[87:80] = nine(state3[95:88])^fourteen(state3[87:80])^eleven(state3[79:72])^thirteen(state3[71:64]);
assign state4[79:72] = thirteen(state3[95:88])^nine(state3[87:80])^fourteen(state3[79:72])^eleven(state3[71:64]);
assign state4[71:64] = eleven(state3[95:88])^thirteen(state3[87:80])^nine(state3[79:72])^fourteen(state3[71:64]);

assign state4[63:56] = fourteen(state3[63:56])^eleven(state3[55:48])^thirteen(state3[47:40])^nine(state3[39:32]);
assign state4[55:48] = nine(state3[63:56])^fourteen(state3[55:48])^eleven(state3[47:40])^thirteen(state3[39:32]);
assign state4[47:40] = thirteen(state3[63:56])^nine(state3[55:48])^fourteen(state3[47:40])^eleven(state3[39:32]);
assign state4[39:32] = eleven(state3[63:56])^thirteen(state3[55:48])^nine(state3[47:40])^fourteen(state3[39:32]);

assign state4[31:24] = fourteen(state3[31:24])^eleven(state3[23:16])^thirteen(state3[15:8])^nine(state3[7:0]);
assign state4[23:16] = nine(state3[31:24])^fourteen(state3[23:16])^eleven(state3[15:8])^thirteen(state3[7:0]);
assign state4[15:8] = thirteen(state3[31:24])^nine(state3[23:16])^fourteen(state3[15:8])^eleven(state3[7:0]);
assign state4[7:0] = eleven(state3[31:24])^thirteen(state3[23:16])^nine(state3[15:8])^fourteen(state3[7:0]);






function [7:0] bytwo;
input [7:0] j;
begin
if(j[7] ==1)
bytwo = {j[6:0],1'b0}^8'h1b;
else
bytwo = {j[6:0],1'b0};
end
endfunction

//For 9
function [7:0]nine;
input [7:0]j;
begin
assign nine = bytwo(bytwo(bytwo(j)))^j[7:0];
end
endfunction

//For 11
function [7:0]eleven;
input [7:0]j;
begin
assign eleven = bytwo(bytwo(bytwo(j))^j[7:0])^j[7:0];
end
endfunction

//For 13
function [7:0]thirteen;
input [7:0]j;
begin
assign thirteen = bytwo(bytwo(bytwo(j)^j[7:0]))^j[7:0];
end
endfunction

//For 14
function [7:0]fourteen;
input [7:0]j;
begin
assign fourteen = bytwo(bytwo(bytwo(j)^j[7:0])^j[7:0]);
end
endfunction

endmodule