module inv_subBytes(a,b);

input [127:0] a;
output [127:0] b;

    
inv_sbox x0( 
.subout(a[127:120]),
.subin(b[127:120])
);

inv_sbox x1( 
.subout(a[119:112]),
.subin(b[119:112])
);

inv_sbox x2( 
.subout(a[111:104]),
.subin(b[111:104])
);

inv_sbox x3( 
.subout(a[103:96]),
.subin(b[103:96])
);

inv_sbox x4( 
.subout(a[95:88]),
.subin(b[95:88])
);

inv_sbox x5( 
.subout(a[87:80]),
.subin(b[87:80])
);

inv_sbox x6( 
.subout(a[79:72]),
.subin(b[79:72])
);

inv_sbox x7( 
.subout(a[71:64]),
.subin(b[71:64])
);
  
inv_sbox x8( 
.subout(a[63:56]),
.subin(b[63:56])
);

inv_sbox x9( 
.subout(a[55:48]),
.subin(b[55:48])
);

inv_sbox x10(
.subout(a[47:40]),
.subin(b[47:40])
);

inv_sbox x11(
.subout(a[39:32]),
.subin(b[39:32])
);
 
inv_sbox x12(
.subout(a[31:24]),
.subin(b[31:24])
);

inv_sbox x13(
.subout(a[23:16]),
.subin(b[23:16])
);

inv_sbox x14(
.subout(a[15:8]),
.subin(b[15:8]))
;

inv_sbox x15(
.subout(a[7:0]),
.subin(b[7:0])
);

endmodule