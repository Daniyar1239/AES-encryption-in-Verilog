`timescale 1ns / 1ps
module sbox(subin,subout);
    
input  [7:0] subin;
output reg [7:0] subout;
    

    
    
always @(*)
case (subin)
8'h00: subout=8'h63;
8'h01: subout=8'h7c;
8'h02: subout=8'h77;
8'h03: subout=8'h7b;
8'h04: subout=8'hf2;
8'h05: subout=8'h6b;
8'h06: subout=8'h6f;
8'h07: subout=8'hc5;
8'h08: subout=8'h30;
8'h09: subout=8'h01;
8'h0a: subout=8'h67;
8'h0b: subout=8'h2b;
8'h0c: subout=8'hfe;
8'h0d: subout=8'hd7;
8'h0e: subout=8'hab;
8'h0f: subout=8'h76;
8'h10: subout=8'hca;
8'h11: subout=8'h82;
8'h12: subout=8'hc9;
8'h13: subout=8'h7d;
8'h14: subout=8'hfa;
8'h15: subout=8'h59;
8'h16: subout=8'h47;
8'h17: subout=8'hf0;
8'h18: subout=8'had;
8'h19: subout=8'hd4;
8'h1a: subout=8'ha2;
8'h1b: subout=8'haf;
8'h1c: subout=8'h9c;
8'h1d: subout=8'ha4;
8'h1e: subout=8'h72;
8'h1f: subout=8'hc0;
8'h20: subout=8'hb7;
8'h21: subout=8'hfd;
8'h22: subout=8'h93;
8'h23: subout=8'h26;
8'h24: subout=8'h36;
8'h25: subout=8'h3f;
8'h26: subout=8'hf7;
8'h27: subout=8'hcc;
8'h28: subout=8'h34;
8'h29: subout=8'ha5;
8'h2a: subout=8'he5;
8'h2b: subout=8'hf1;
8'h2c: subout=8'h71;
8'h2d: subout=8'hd8;
8'h2e: subout=8'h31;
8'h2f: subout=8'h15;
8'h30: subout=8'h04;
8'h31: subout=8'hc7;
8'h32: subout=8'h23;
8'h33: subout=8'hc3;
8'h34: subout=8'h18;
8'h35: subout=8'h96;
8'h36: subout=8'h05;
8'h37: subout=8'h9a;
8'h38: subout=8'h07;
8'h39: subout=8'h12;
8'h3a: subout=8'h80;
8'h3b: subout=8'he2;
8'h3c: subout=8'heb;
8'h3d: subout=8'h27;
8'h3e: subout=8'hb2;
8'h3f: subout=8'h75;
8'h40: subout=8'h09;
8'h41: subout=8'h83;
8'h42: subout=8'h2c;
8'h43: subout=8'h1a;
8'h44: subout=8'h1b;
8'h45: subout=8'h6e;
8'h46: subout=8'h5a;
8'h47: subout=8'ha0;
8'h48: subout=8'h52;
8'h49: subout=8'h3b;
8'h4a: subout=8'hd6;
8'h4b: subout=8'hb3;
8'h4c: subout=8'h29;
8'h4d: subout=8'he3;
8'h4e: subout=8'h2f;
8'h4f: subout=8'h84;
8'h50: subout=8'h53;
8'h51: subout=8'hd1;
8'h52: subout=8'h00;
8'h53: subout=8'hed;
8'h54: subout=8'h20;
8'h55: subout=8'hfc;
8'h56: subout=8'hb1;
8'h57: subout=8'h5b;
8'h58: subout=8'h6a;
8'h59: subout=8'hcb;
8'h5a: subout=8'hbe;
8'h5b: subout=8'h39;
8'h5c: subout=8'h4a;
8'h5d: subout=8'h4c;
8'h5e: subout=8'h58;
8'h5f: subout=8'hcf;
8'h60: subout=8'hd0;
8'h61: subout=8'hef;
8'h62: subout=8'haa;
8'h63: subout=8'hfb;
8'h64: subout=8'h43;
8'h65: subout=8'h4d;
8'h66: subout=8'h33;
8'h67: subout=8'h85;
8'h68: subout=8'h45;
8'h69: subout=8'hf9;
8'h6a: subout=8'h02;
8'h6b: subout=8'h7f;
8'h6c: subout=8'h50;
8'h6d: subout=8'h3c;
8'h6e: subout=8'h9f;
8'h6f: subout=8'ha8;
8'h70: subout=8'h51;
8'h71: subout=8'ha3;
8'h72: subout=8'h40;
8'h73: subout=8'h8f;
8'h74: subout=8'h92;
8'h75: subout=8'h9d;
8'h76: subout=8'h38;
8'h77: subout=8'hf5;
8'h78: subout=8'hbc;
8'h79: subout=8'hb6;
8'h7a: subout=8'hda;
8'h7b: subout=8'h21;
8'h7c: subout=8'h10;
8'h7d: subout=8'hff;
8'h7e: subout=8'hf3;
8'h7f: subout=8'hd2;
8'h80: subout=8'hcd;
8'h81: subout=8'h0c;
8'h82: subout=8'h13;
8'h83: subout=8'hec;
8'h84: subout=8'h5f;
8'h85: subout=8'h97;
8'h86: subout=8'h44;
8'h87: subout=8'h17;
8'h88: subout=8'hc4;
8'h89: subout=8'ha7;
8'h8a: subout=8'h7e;
8'h8b: subout=8'h3d;
8'h8c: subout=8'h64;
8'h8d: subout=8'h5d;
8'h8e: subout=8'h19;
8'h8f: subout=8'h73;
8'h90: subout=8'h60;
8'h91: subout=8'h81;
8'h92: subout=8'h4f;
8'h93: subout=8'hdc;
8'h94: subout=8'h22;
8'h95: subout=8'h2a;
8'h96: subout=8'h90;
8'h97: subout=8'h88;
8'h98: subout=8'h46;
8'h99: subout=8'hee;
8'h9a: subout=8'hb8;
8'h9b: subout=8'h14;
8'h9c: subout=8'hde;
8'h9d: subout=8'h5e;
8'h9e: subout=8'h0b;
8'h9f: subout=8'hdb;
8'ha0: subout=8'he0;
8'ha1: subout=8'h32;
8'ha2: subout=8'h3a;
8'ha3: subout=8'h0a;
8'ha4: subout=8'h49;
8'ha5: subout=8'h06;
8'ha6: subout=8'h24;
8'ha7: subout=8'h5c;
8'ha8: subout=8'hc2;
8'ha9: subout=8'hd3;
8'haa: subout=8'hac;
8'hab: subout=8'h62;
8'hac: subout=8'h91;
8'had: subout=8'h95;
8'hae: subout=8'he4;
8'haf: subout=8'h79;
8'hb0: subout=8'he7;
8'hb1: subout=8'hc8;
8'hb2: subout=8'h37;
8'hb3: subout=8'h6d;
8'hb4: subout=8'h8d;
8'hb5: subout=8'hd5;
8'hb6: subout=8'h4e;
8'hb7: subout=8'ha9;
8'hb8: subout=8'h6c;
8'hb9: subout=8'h56;
8'hba: subout=8'hf4;
8'hbb: subout=8'hea;
8'hbc: subout=8'h65;
8'hbd: subout=8'h7a;
8'hbe: subout=8'hae;
8'hbf: subout=8'h08;
8'hc0: subout=8'hba;
8'hc1: subout=8'h78;
8'hc2: subout=8'h25;
8'hc3: subout=8'h2e;
8'hc4: subout=8'h1c;
8'hc5: subout=8'ha6;
8'hc6: subout=8'hb4;
8'hc7: subout=8'hc6;
8'hc8: subout=8'he8;
8'hc9: subout=8'hdd;
8'hca: subout=8'h74;
8'hcb: subout=8'h1f;
8'hcc: subout=8'h4b;
8'hcd: subout=8'hbd;
8'hce: subout=8'h8b;
8'hcf: subout=8'h8a;
8'hd0: subout=8'h70;
8'hd1: subout=8'h3e;
8'hd2: subout=8'hb5;
8'hd3: subout=8'h66;
8'hd4: subout=8'h48;
8'hd5: subout=8'h03;
8'hd6: subout=8'hf6;
8'hd7: subout=8'h0e;
8'hd8: subout=8'h61;
8'hd9: subout=8'h35;
8'hda: subout=8'h57;
8'hdb: subout=8'hb9;
8'hdc: subout=8'h86;
8'hdd: subout=8'hc1;
8'hde: subout=8'h1d;
8'hdf: subout=8'h9e;
8'he0: subout=8'he1;
8'he1: subout=8'hf8;
8'he2: subout=8'h98;
8'he3: subout=8'h11;
8'he4: subout=8'h69;
8'he5: subout=8'hd9;
8'he6: subout=8'h8e;
8'he7: subout=8'h94;
8'he8: subout=8'h9b;
8'he9: subout=8'h1e;
8'hea: subout=8'h87;
8'heb: subout=8'he9;
8'hec: subout=8'hce;
8'hed: subout=8'h55;
8'hee: subout=8'h28;
8'hef: subout=8'hdf;
8'hf0: subout=8'h8c;
8'hf1: subout=8'ha1;
8'hf2: subout=8'h89;
8'hf3: subout=8'h0d;
8'hf4: subout=8'hbf;
8'hf5: subout=8'he6;
8'hf6: subout=8'h42;
8'hf7: subout=8'h68;
8'hf8: subout=8'h41;
8'hf9: subout=8'h99;
8'hfa: subout=8'h2d;
8'hfb: subout=8'h0f;
8'hfc: subout=8'hb0;
8'hfd: subout=8'h54;
8'hfe: subout=8'hbb;
8'hff: subout=8'h16;
	endcase

endmodule