`timescale 1ns / 1ps
module subBytes(state1,state2);

input [127:0] state1;
output [127:0] state2;

    
sbox x0( 
.subin(state1[127:120]),
.subout(state2[127:120])
);

sbox x1( 
.subin(state1[119:112]),
.subout(state2[119:112])
);

sbox x2( 
.subin(state1[111:104]),
.subout(state2[111:104])
);

sbox x3( 
.subin(state1[103:96]),
.subout(state2[103:96])
);

sbox x4( 
.subin(state1[95:88]),
.subout(state2[95:88])
);

sbox x5( 
.subin(state1[87:80]),
.subout(state2[87:80])
);

sbox x6( 
.subin(state1[79:72]),
.subout(state2[79:72])
);

sbox x7( 
.subin(state1[71:64]),
.subout(state2[71:64])
);
 
sbox x8( 
.subin(state1[63:56]),
.subout(state2[63:56])
);

sbox x9( 
.subin(state1[55:48]),
.subout(state2[55:48])
);

sbox x10(
.subin(state1[47:40]),
.subout(state2[47:40])
);

sbox x11(
.subin(state1[39:32]),
.subout(state2[39:32])
);
   
sbox x12(
.subin(state1[31:24]),
.subout(state2[31:24])
);

sbox x13(
.subin(state1[23:16]),
.subout(state2[23:16])
);

sbox x14(
.subin(state1[15:8]),
.subout(state2[15:8]))
;

sbox x15(
.subin(state1[7:0]),
.subout(state2[7:0])
);

endmodule