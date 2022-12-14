module inv_shiftRow(x,y);

input [127:0] x;

output [127:0] y;

assign x[127:120] = y[127:120];  

assign x[119:112] = y[23:16];

assign x[111:104] = y[47:40];

assign x[103:96] = y[71:64];

assign x[95:88] = y[95:88];

assign x[87:80] = y[119:112];

assign x[79:72] = y[15:8];

assign x[71:64] = y[39:32];

assign x[63:56] = y[63:56];

assign x[55:48] = y[87:80];

assign x[47:40] = y[111:104];

assign x[39:32] = y[7:0];

assign x[31:24] = y[55:48];

assign x[23:16] = y[119:112];

assign x[15:8] = y[79:72];

assign x[7:0] = y[103:96]; 


endmodule