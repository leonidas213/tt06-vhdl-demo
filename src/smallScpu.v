/*
 * Generated by Digital. Don't modify this file!
 * Any changes will be lost if this file is regenerated.
 */

module Mux_8x1_NBits #(
    parameter Bits = 2
)
(
    input [2:0] sel,
    input [(Bits - 1):0] in_0,
    input [(Bits - 1):0] in_1,
    input [(Bits - 1):0] in_2,
    input [(Bits - 1):0] in_3,
    input [(Bits - 1):0] in_4,
    input [(Bits - 1):0] in_5,
    input [(Bits - 1):0] in_6,
    input [(Bits - 1):0] in_7,
    output reg [(Bits - 1):0] out
);
    always @ (*) begin
        case (sel)
            3'h0: out = in_0;
            3'h1: out = in_1;
            3'h2: out = in_2;
            3'h3: out = in_3;
            3'h4: out = in_4;
            3'h5: out = in_5;
            3'h6: out = in_6;
            3'h7: out = in_7;
            default:
                out = 'h0;
        endcase
    end
endmodule

module DIG_D_FF_1bit
#(
    parameter Default = 0
)
(
   input D,
   input C,
   output Q,
   output \~Q
);
    reg state;

    assign Q = state;
    assign \~Q = ~state;

    always @ (posedge C) begin
        state <= D;
    end

    initial begin
        state = Default;
    end
endmodule


module DIG_Register_BUS #(
    parameter Bits = 1
)
(
    input C,
    input en,
    input [(Bits - 1):0]D,
    output [(Bits - 1):0]Q
);

    reg [(Bits - 1):0] state = 'h0;

    assign Q = state;

    always @ (posedge C) begin
        if (en)
            state <= D;
   end
endmodule

module Mux_2x1_NBits #(
    parameter Bits = 2
)
(
    input [0:0] sel,
    input [(Bits - 1):0] in_0,
    input [(Bits - 1):0] in_1,
    output reg [(Bits - 1):0] out
);
    always @ (*) begin
        case (sel)
            1'h0: out = in_0;
            1'h1: out = in_1;
            default:
                out = 'h0;
        endcase
    end
endmodule

module DIG_ROM_256X16_bootrom (
    input [7:0] A,
    input sel,
    output reg [15:0] D
);
    reg [15:0] my_rom [0:22];

    always @ (*) begin
        if (~sel)
            D = 16'hz;
        else if (A > 8'h16)
            D = 16'h0;
        else
            D = my_rom[A];
    end

    initial begin
        my_rom[0] = 16'h3d02;
        my_rom[1] = 16'h0;
        my_rom[2] = 16'h4400;
        my_rom[3] = 16'h3f50;
        my_rom[4] = 16'h91ad;
        my_rom[5] = 16'h9c0;
        my_rom[6] = 16'h3f8c;
        my_rom[7] = 16'h4700;
        my_rom[8] = 16'h3f50;
        my_rom[9] = 16'h4700;
        my_rom[10] = 16'h3f50;
        my_rom[11] = 16'h4700;
        my_rom[12] = 16'h3f50;
        my_rom[13] = 16'h91ad;
        my_rom[14] = 16'h9c0;
        my_rom[15] = 16'h3f8c;
        my_rom[16] = 16'h4700;
        my_rom[17] = 16'h3f50;
        my_rom[18] = 16'h0;
        my_rom[19] = 16'h0;
        my_rom[20] = 16'h4700;
        my_rom[21] = 16'h3f50;
        my_rom[22] = 16'h3dec;
    end
endmodule

module DIG_Add
#(
    parameter Bits = 1
)
(
    input [(Bits-1):0] a,
    input [(Bits-1):0] b,
    input c_i,
    output [(Bits - 1):0] s,
    output c_o
);
   wire [Bits:0] temp;

   assign temp = a + b + c_i;
   assign s = temp [(Bits-1):0];
   assign c_o = temp[Bits];
endmodule



module CompUnsigned #(
    parameter Bits = 1
)
(
    input [(Bits -1):0] a,
    input [(Bits -1):0] b,
    output \> ,
    output \= ,
    output \<
);
    assign \> = a > b;
    assign \= = a == b;
    assign \< = a < b;
endmodule


module singExtend (
  input [15:0] inst, // instruction word
  output [15:0] \4S , // The four bits taken from Rs.
  output [15:0] \8SD , // The eight bits taken from Rs,Rd with sign extension.
  output [15:0] \4D  // The four bits taken from Rd.

);
  wire s0;
  assign \4D [3:0] = inst[7:4];
  assign \4D [15:4] = 12'b0;
  assign \4S [3:0] = inst[3:0];
  assign \4S [15:4] = 12'b0;
  assign s0 = inst[7];
  assign \8SD [6:0] = inst[6:0];
  assign \8SD [7] = s0;
  assign \8SD [8] = s0;
  assign \8SD [9] = s0;
  assign \8SD [10] = s0;
  assign \8SD [11] = s0;
  assign \8SD [12] = s0;
  assign \8SD [13] = s0;
  assign \8SD [14] = s0;
  assign \8SD [15] = s0;
endmodule

module controllogic (
  input A,
  input B,
  input C,
  input D,
  input E,
  input F,
  input G,
  output muxb0,
  output muxb1,
  output muxb2,
  output src2D,
  output aluop0,
  output aluop1,
  output aluop2,
  output aluop3,
  output aluop4,
  output WE,
  output sf,
  output alu2D,
  output iem0,
  output iem1,
  output br0,
  output br1,
  output br2,
  output muxA,
  output ld,
  output st,
  output abs,
  output ioW,
  output ioR,
  output stPC,
  output Reti,
  output rand
);
  wire s0;
  wire s1;
  wire s2;
  wire s3;
  wire s4;
  wire s5;
  wire s6;
  assign s5 = ~ A;
  assign s0 = ~ B;
  assign s1 = ~ C;
  assign s2 = ~ D;
  assign s3 = ~ E;
  assign s6 = ~ F;
  assign s4 = ~ G;
  assign muxb0 = ((A & s0 & s1 & s2 & s3 & F & s4) | (A & s0 & s1 & s2 & E & F & G) | (s5 & s1 & D & E & F & s4) | (s5 & B & C & s3 & s6 & s4) | (s5 & s0 & s1 & D & F & s4) | (s5 & s0 & s1 & D & E & s4) | (s5 & s0 & C & s2 & s3 & s4) | (s5 & B & s1 & s2 & s3 & G) | (s5 & C & D & s6 & G) | (s5 & C & s2 & E & G) | (s5 & B & C & E & G) | (s5 & B & C & s2 & E));
  assign muxb1 = ((A & s0 & s1 & s2 & E & F & s4) | (s5 & C & s2 & s3 & s6 & G) | (s5 & B & s1 & s2 & s3 & s4) | (A & s0 & s1 & s2 & s3 & G) | (A & s0 & s1 & s2 & s3 & s6) | (s5 & s1 & D & F & G) | (s5 & C & D & s6 & s4) | (s5 & B & C & s6 & G) | (s5 & B & C & F & s4) | (s5 & C & s2 & E & s4) | (s5 & s0 & s1 & D & G) | (s5 & B & D & E) | (s5 & B & C & E));
  assign muxb2 = ((s5 & B & C & D & E & F & G) | (s5 & C & s2 & s3 & s6 & s4) | (s5 & B & s2 & s3 & F & G) | (s5 & B & s1 & s3 & F & G) | (s5 & s0 & s1 & D & F & s4) | (s5 & s0 & C & D & s6 & G) | (A & s0 & s1 & s2 & F & G) | (s5 & s0 & C & s2 & s3 & s4) | (s5 & s0 & C & s2 & E & G) | (s5 & B & s1 & s2 & s3 & G) | (A & s0 & s1 & s2 & s3 & s4) | (s5 & s1 & D & E & s4));
  assign src2D = ((s5 & s0 & s1 & s2 & s3 & s6 & G) | (s5 & B & s1 & D & s3 & F & G) | (s5 & B & s1 & D & E & s6 & G) | (s5 & B & C & s2 & s3 & s6 & G) | (A & s0 & s1 & s2 & s3 & s6 & s4) | (s5 & B & D & E & F & s4) | (s5 & B & C & D & E & F));
  assign aluop0 = ((s5 & s0 & s1 & D & E & F & s4) | (s5 & s0 & C & s2 & s3 & s6 & G) | (s5 & s0 & C & s2 & s3 & F & s4) | (s5 & s0 & C & D & E & F & G) | (s5 & s1 & s2 & s3 & F & G) | (s5 & s0 & s1 & E & s6 & G) | (s5 & B & s1 & s2 & F));
  assign aluop1 = ((s5 & s0 & C & D & s3 & F & G) | (A & s0 & s1 & s2 & E & s6 & G) | (A & s0 & s1 & s2 & E & F & s4) | (s5 & B & s1 & D & s3 & s4) | (s5 & s0 & C & D & E & s6) | (s5 & B & s1 & D & s3 & s6) | (s5 & B & s1 & s2 & E));
  assign aluop2 = ((s5 & B & s1 & D & s3 & F & s4) | (A & s0 & s1 & s2 & E & s6 & G) | (A & s0 & s1 & s2 & E & F & s4) | (s5 & s0 & s2 & E & F & G) | (s5 & s0 & D & s3 & s6 & s4) | (s5 & s0 & C & s3 & F & G) | (s5 & s0 & C & s2 & E & F) | (s5 & s0 & C & D & s6) | (s5 & s0 & C & D & s3));
  assign aluop3 = ((s5 & s0 & D & E & F & G) | (s5 & s0 & C & D & F & s4) | (s5 & s0 & s2 & E & s6) | (s5 & B & s1 & s3 & s6) | (s5 & s0 & C & s2 & s3) | (s5 & B & s1 & s2 & s3) | (s0 & s1 & s2 & E & s6 & G) | (s0 & s1 & s2 & E & F & s4));
  assign aluop4 = ((s5 & B & C & s2 & s3 & s6 & G) | (s5 & B & C & s2 & s3 & F & s4) | (A & s0 & s1 & s2 & s3 & s6 & s4) | (s5 & s1 & D & E & s6 & s4) | (s5 & s0 & s1 & E & F & s4) | (s5 & s0 & s1 & s2 & F & s4) | (s5 & s0 & C & D & s3 & G) | (s5 & B & s1 & s2 & E & G) | (s5 & B & s1 & D & s3 & G) | (s5 & s0 & s3 & F & G) | (s5 & s0 & D & s6 & s4) | (s5 & s0 & D & E & s6) | (s5 & s0 & C & E & s6) | (s0 & s1 & s2 & s3 & F & G));
  assign WE = ((s5 & D & s3 & F & s4) | (s5 & s1 & E & s6 & s4) | (s5 & s1 & E & F & G) | (s5 & C & s2 & s3 & s4) | (s5 & s1 & D & s3 & s6) | (s5 & C & s2 & s3 & F) | (s5 & s0 & D & s6) | (s5 & s1 & s2 & E) | (s5 & s0 & D & s3) | (s5 & s0 & s1 & D) | (s5 & s0 & C & s2) | (s0 & s1 & s2 & G) | (s0 & s1 & s2 & F));
  assign sf = ((s5 & s1 & D & s3 & s6 & s4) | (s5 & s0 & s2 & F & s4) | (s5 & s0 & D & F & G) | (s5 & s0 & s1 & F & G) | (s5 & s0 & C & s6) | (s5 & B & s1 & s2) | (s5 & s0 & E) | (s0 & s1 & s2 & E & s6 & G) | (s0 & s1 & s2 & E & F & s4));
  assign alu2D = ((s5 & C & s2 & s3 & F & G) | (s5 & s1 & D & s3 & s4) | (s5 & s1 & D & s3 & s6) | (s5 & s0 & E & s6) | (s5 & s0 & s2 & F) | (s5 & s0 & s1 & F) | (s5 & s1 & s2 & E) | (s5 & s0 & C & s3) | (s0 & s1 & s2 & E & s6 & G) | (s0 & s1 & s2 & E & F & s4));
  assign iem0 = ((s5 & s0 & C & s2 & s3 & s6 & G) | (A & s0 & s1 & s2 & s3 & s6 & G) | (A & s0 & s1 & s2 & E & F & s4) | (s5 & C & D & E & s6 & s4) | (s5 & s0 & C & D & s6 & s4) | (s5 & B & C & D & F & s4) | (s5 & s0 & C & s2 & E & s4) | (s5 & B & s1 & s2 & s3 & s4) | (s5 & s1 & D & E & G) | (s5 & s0 & s1 & D & G));
  assign iem1 = ((s5 & B & s1 & D & E & s6 & G) | (s5 & B & C & D & E & F & s4));
  assign br0 = ((s5 & B & C & s2 & E & F & G) | (s5 & B & C & D & s6 & G) | (s5 & B & C & D & s3 & s6));
  assign br1 = ((s5 & B & C & s2 & E & s6 & G) | (s5 & B & C & s2 & E & F & s4) | (s5 & B & C & D & s3 & s6));
  assign br2 = ((s5 & B & C & D & s3 & s6 & G) | (s5 & B & C & s2 & E & s4) | (s5 & B & C & s2 & E & F));
  assign muxA = ((s5 & B & s1 & D & E & s6 & s4) | (s5 & B & C & s2 & s3 & F & s4) | (A & s0 & s1 & s2 & s3 & G) | (A & s0 & s1 & s2 & s3 & F));
  assign ld = ((s5 & B & s1 & D & E & s6 & s4) | (s5 & B & s1 & D & E & F & G) | (s5 & B & C & s2 & s3 & s4));
  assign st = ((s5 & B & s1 & D & s3 & F & G) | (s5 & B & s1 & D & E & s6 & G) | (s5 & B & s1 & D & E & F & s4) | (s5 & B & C & s2 & s3 & s6 & G));
  assign abs = ((s5 & B & C & D & E & s6 & s4) | (A & s0 & s1 & s2 & E & s6 & s4) | (s5 & B & C & D & s3 & F));
  assign ioW = ((A & s0 & s1 & s2 & s3 & s6 & s4) | (s5 & B & C & D & E & F));
  assign ioR = ((A & s0 & s1 & s2 & s3 & G) | (A & s0 & s1 & s2 & s3 & F));
  assign stPC = (s5 & B & C & D & s3 & F & s4);
  assign Reti = (A & s0 & s1 & s2 & E & s6 & s4);
  assign rand = (A & s0 & s1 & s2 & E & F & G);
endmodule

module Demux4
#(
    parameter Default = 0 
)
(
    output out_0,
    output out_1,
    output out_2,
    output out_3,
    output out_4,
    output out_5,
    output out_6,
    output out_7,
    output out_8,
    output out_9,
    output out_10,
    output out_11,
    output out_12,
    output out_13,
    output out_14,
    output out_15,
    input [3:0] sel,
    input in
);
    assign out_0 = (sel == 4'h0)? in : Default;
    assign out_1 = (sel == 4'h1)? in : Default;
    assign out_2 = (sel == 4'h2)? in : Default;
    assign out_3 = (sel == 4'h3)? in : Default;
    assign out_4 = (sel == 4'h4)? in : Default;
    assign out_5 = (sel == 4'h5)? in : Default;
    assign out_6 = (sel == 4'h6)? in : Default;
    assign out_7 = (sel == 4'h7)? in : Default;
    assign out_8 = (sel == 4'h8)? in : Default;
    assign out_9 = (sel == 4'h9)? in : Default;
    assign out_10 = (sel == 4'ha)? in : Default;
    assign out_11 = (sel == 4'hb)? in : Default;
    assign out_12 = (sel == 4'hc)? in : Default;
    assign out_13 = (sel == 4'hd)? in : Default;
    assign out_14 = (sel == 4'he)? in : Default;
    assign out_15 = (sel == 4'hf)? in : Default;
endmodule


module Mux_16x1_NBits #(
    parameter Bits = 2
)
(
    input [3:0] sel,
    input [(Bits - 1):0] in_0,
    input [(Bits - 1):0] in_1,
    input [(Bits - 1):0] in_2,
    input [(Bits - 1):0] in_3,
    input [(Bits - 1):0] in_4,
    input [(Bits - 1):0] in_5,
    input [(Bits - 1):0] in_6,
    input [(Bits - 1):0] in_7,
    input [(Bits - 1):0] in_8,
    input [(Bits - 1):0] in_9,
    input [(Bits - 1):0] in_10,
    input [(Bits - 1):0] in_11,
    input [(Bits - 1):0] in_12,
    input [(Bits - 1):0] in_13,
    input [(Bits - 1):0] in_14,
    input [(Bits - 1):0] in_15,
    output reg [(Bits - 1):0] out
);
    always @ (*) begin
        case (sel)
            4'h0: out = in_0;
            4'h1: out = in_1;
            4'h2: out = in_2;
            4'h3: out = in_3;
            4'h4: out = in_4;
            4'h5: out = in_5;
            4'h6: out = in_6;
            4'h7: out = in_7;
            4'h8: out = in_8;
            4'h9: out = in_9;
            4'ha: out = in_10;
            4'hb: out = in_11;
            4'hc: out = in_12;
            4'hd: out = in_13;
            4'he: out = in_14;
            4'hf: out = in_15;
            default:
                out = 'h0;
        endcase
    end
endmodule


module RegisterBlock (
  input [15:0] DataIn,
  input WE,
  input clk,
  input [3:0] src,
  input [3:0] Dest,
  output [15:0] RDest,
  output [15:0] Rsrc
);
  wire s0;
  wire [15:0] s1;
  wire s2;
  wire [15:0] s3;
  wire s4;
  wire [15:0] s5;
  wire s6;
  wire [15:0] s7;
  wire s8;
  wire [15:0] s9;
  wire s10;
  wire [15:0] s11;
  wire s12;
  wire [15:0] s13;
  wire s14;
  wire [15:0] s15;
  wire s16;
  wire [15:0] s17;
  wire s18;
  wire [15:0] s19;
  wire s20;
  wire [15:0] s21;
  wire s22;
  wire [15:0] s23;
  wire s24;
  wire [15:0] s25;
  wire s26;
  wire [15:0] s27;
  wire s28;
  wire [15:0] s29;
  wire s30;
  wire [15:0] s31;
  Demux4 #(
    .Default(0)
  )
  Demux4_i0 (
    .sel( Dest ),
    .in( WE ),
    .out_0( s0 ),
    .out_1( s2 ),
    .out_2( s4 ),
    .out_3( s6 ),
    .out_4( s8 ),
    .out_5( s10 ),
    .out_6( s12 ),
    .out_7( s14 ),
    .out_8( s16 ),
    .out_9( s18 ),
    .out_10( s20 ),
    .out_11( s22 ),
    .out_12( s24 ),
    .out_13( s26 ),
    .out_14( s28 ),
    .out_15( s30 )
  );
  // R0
  DIG_Register_BUS #(
    .Bits(16)
  )
  DIG_Register_BUS_i1 (
    .D( DataIn ),
    .C( clk ),
    .en( s0 ),
    .Q( s1 )
  );
  // R1
  DIG_Register_BUS #(
    .Bits(16)
  )
  DIG_Register_BUS_i2 (
    .D( DataIn ),
    .C( clk ),
    .en( s2 ),
    .Q( s3 )
  );
  // R2
  DIG_Register_BUS #(
    .Bits(16)
  )
  DIG_Register_BUS_i3 (
    .D( DataIn ),
    .C( clk ),
    .en( s4 ),
    .Q( s5 )
  );
  // R3
  DIG_Register_BUS #(
    .Bits(16)
  )
  DIG_Register_BUS_i4 (
    .D( DataIn ),
    .C( clk ),
    .en( s6 ),
    .Q( s7 )
  );
  // R4
  DIG_Register_BUS #(
    .Bits(16)
  )
  DIG_Register_BUS_i5 (
    .D( DataIn ),
    .C( clk ),
    .en( s8 ),
    .Q( s9 )
  );
  // R5
  DIG_Register_BUS #(
    .Bits(16)
  )
  DIG_Register_BUS_i6 (
    .D( DataIn ),
    .C( clk ),
    .en( s10 ),
    .Q( s11 )
  );
  // R6
  DIG_Register_BUS #(
    .Bits(16)
  )
  DIG_Register_BUS_i7 (
    .D( DataIn ),
    .C( clk ),
    .en( s12 ),
    .Q( s13 )
  );
  // R7
  DIG_Register_BUS #(
    .Bits(16)
  )
  DIG_Register_BUS_i8 (
    .D( DataIn ),
    .C( clk ),
    .en( s14 ),
    .Q( s15 )
  );
  // R8
  DIG_Register_BUS #(
    .Bits(16)
  )
  DIG_Register_BUS_i9 (
    .D( DataIn ),
    .C( clk ),
    .en( s16 ),
    .Q( s17 )
  );
  // R9
  DIG_Register_BUS #(
    .Bits(16)
  )
  DIG_Register_BUS_i10 (
    .D( DataIn ),
    .C( clk ),
    .en( s18 ),
    .Q( s19 )
  );
  // R10
  DIG_Register_BUS #(
    .Bits(16)
  )
  DIG_Register_BUS_i11 (
    .D( DataIn ),
    .C( clk ),
    .en( s20 ),
    .Q( s21 )
  );
  // R11
  DIG_Register_BUS #(
    .Bits(16)
  )
  DIG_Register_BUS_i12 (
    .D( DataIn ),
    .C( clk ),
    .en( s22 ),
    .Q( s23 )
  );
  // R12
  DIG_Register_BUS #(
    .Bits(16)
  )
  DIG_Register_BUS_i13 (
    .D( DataIn ),
    .C( clk ),
    .en( s24 ),
    .Q( s25 )
  );
  // BP
  DIG_Register_BUS #(
    .Bits(16)
  )
  DIG_Register_BUS_i14 (
    .D( DataIn ),
    .C( clk ),
    .en( s26 ),
    .Q( s27 )
  );
  // SP
  DIG_Register_BUS #(
    .Bits(16)
  )
  DIG_Register_BUS_i15 (
    .D( DataIn ),
    .C( clk ),
    .en( s28 ),
    .Q( s29 )
  );
  // RA
  DIG_Register_BUS #(
    .Bits(16)
  )
  DIG_Register_BUS_i16 (
    .D( DataIn ),
    .C( clk ),
    .en( s30 ),
    .Q( s31 )
  );
  Mux_16x1_NBits #(
    .Bits(16)
  )
  Mux_16x1_NBits_i17 (
    .sel( Dest ),
    .in_0( s1 ),
    .in_1( s3 ),
    .in_2( s5 ),
    .in_3( s7 ),
    .in_4( s9 ),
    .in_5( s11 ),
    .in_6( s13 ),
    .in_7( s15 ),
    .in_8( s17 ),
    .in_9( s19 ),
    .in_10( s21 ),
    .in_11( s23 ),
    .in_12( s25 ),
    .in_13( s27 ),
    .in_14( s29 ),
    .in_15( s31 ),
    .out( RDest )
  );
  Mux_16x1_NBits #(
    .Bits(16)
  )
  Mux_16x1_NBits_i18 (
    .sel( src ),
    .in_0( s1 ),
    .in_1( s3 ),
    .in_2( s5 ),
    .in_3( s7 ),
    .in_4( s9 ),
    .in_5( s11 ),
    .in_6( s13 ),
    .in_7( s15 ),
    .in_8( s17 ),
    .in_9( s19 ),
    .in_10( s21 ),
    .in_11( s23 ),
    .in_12( s25 ),
    .in_13( s27 ),
    .in_14( s29 ),
    .in_15( s31 ),
    .out( Rsrc )
  );
endmodule

module Mux_4x1
(
    input [1:0] sel,
    input in_0,
    input in_1,
    input in_2,
    input in_3,
    output reg out
);
    always @ (*) begin
        case (sel)
            2'h0: out = in_0;
            2'h1: out = in_1;
            2'h2: out = in_2;
            2'h3: out = in_3;
            default:
                out = 'h0;
        endcase
    end
endmodule


// Register for storing large constants.
// There is a 1-bit command describing this register. 
// In this way, 15 bits can be stored (the 16th bit 
// activates the writing of this register and therefore 
// is always one). The 16th bit will be set according 
// to the 'immediate extend mode' (iem).
module ImReg (
  input en, // enables storage
  input [1:0] iem, // immediate extend mode (0: sign extend; 1: extend with 0, 2:extend with S0, 3:extend with D0)
  input C,
  input [15:0] inst, // the current instruction
  output [15:0] imm // The constant of register contents and bit 8.

);
  wire [14:0] s0;
  wire [14:0] s1;
  wire s2;
  wire s3;
  wire s4;
  wire s5;
  assign s2 = inst[0];
  assign s3 = inst[4];
  assign s0 = inst[14:0];
  // imm
  DIG_Register_BUS #(
    .Bits(15)
  )
  DIG_Register_BUS_i0 (
    .D( s0 ),
    .C( C ),
    .en( en ),
    .Q( s1 )
  );
  assign s5 = s1[14];
  Mux_4x1 Mux_4x1_i1 (
    .sel( iem ),
    .in_0( s5 ),
    .in_1( 1'b0 ),
    .in_2( s2 ),
    .in_3( s3 ),
    .out( s4 )
  );
  assign imm[14:0] = s1;
  assign imm[15] = s4;
endmodule

// Arithmetic shift right. An unsigned division by two. 
// The lower bit is output as the carry bit, while the 
// uppermost bit remains unchanged in order to 
// obtain the sign.
module ASR (
  input [15:0] Di, // data input
  output C, // carry output
  output [15:0] Do // data output

);
  wire s0;
  assign C = Di[0];
  assign s0 = Di[15];
  assign Do[13:0] = Di[14:1];
  assign Do[14] = s0;
  assign Do[15] = s0;
endmodule

// Swaps the high-byte and the low-byte.
module SWAP (
  input [15:0] Di, // data input
  output [15:0] Do // data output

);
  assign Do[7:0] = Di[15:8];
  assign Do[15:8] = Di[7:0];
endmodule

// Swaps the 4-bit nibble in the high- and the low-byte.
module SWAPN (
  input [15:0] Di, // Data input
  output [15:0] Do // Data output

);
  assign Do[3:0] = Di[7:4];
  assign Do[7:4] = Di[3:0];
  assign Do[11:8] = Di[15:12];
  assign Do[15:12] = Di[11:8];
endmodule

module DIG_Neg #(
    parameter Bits = 1
)
(
      input signed [(Bits-1):0] in,
      output signed [(Bits-1):0] out
);
    assign out = -in;
endmodule


module DIG_Mul_unsigned #(
    parameter Bits = 1
)
(
    
      input [(Bits-1):0] a,
      input [(Bits-1):0] b,
      output [(Bits*2-1):0] mul
    
);
    assign mul = a * b;
endmodule

module DIG_RAMDualPort
#(
    parameter Bits = 8,
    parameter AddrBits = 4
)
(
  input [(AddrBits-1):0] A,
  input [(Bits-1):0] Din,
  input str,
  input C,
  input ld,
  output [(Bits-1):0] D
);
  reg [(Bits-1):0] memory[0:((1 << AddrBits) - 1)];

  assign D = ld? memory[A] : 'hz;

  always @ (posedge C) begin
    if (str)
      memory[A] <= Din;
  end
endmodule


module DIG_Register
(
    input C,
    input en,
    input D,
    output Q
);

    reg  state = 'h0;

    assign Q = state;

    always @ (posedge C) begin
        if (en)
            state <= D;
   end
endmodule

module DIG_Sub #(
    parameter Bits = 2
)
(
    input [(Bits-1):0] a,
    input [(Bits-1):0] b,
    input c_i,
    output [(Bits-1):0] s,
    output c_o
);
    wire [Bits:0] temp;

    assign temp = a - b - c_i;
    assign s = temp[(Bits-1):0];
    assign c_o = temp[Bits];
endmodule


module Mux_16x1
(
    input [3:0] sel,
    input in_0,
    input in_1,
    input in_2,
    input in_3,
    input in_4,
    input in_5,
    input in_6,
    input in_7,
    input in_8,
    input in_9,
    input in_10,
    input in_11,
    input in_12,
    input in_13,
    input in_14,
    input in_15,
    output reg out
);
    always @ (*) begin
        case (sel)
            4'h0: out = in_0;
            4'h1: out = in_1;
            4'h2: out = in_2;
            4'h3: out = in_3;
            4'h4: out = in_4;
            4'h5: out = in_5;
            4'h6: out = in_6;
            4'h7: out = in_7;
            4'h8: out = in_8;
            4'h9: out = in_9;
            4'ha: out = in_10;
            4'hb: out = in_11;
            4'hc: out = in_12;
            4'hd: out = in_13;
            4'he: out = in_14;
            4'hf: out = in_15;
            default:
                out = 'h0;
        endcase
    end
endmodule


// Moves the data word to the left to higher bits, so it multiplies 
// by two. The current carry bit is pushed in at the bottom, and 
// the most significant bit is output as a carry bit.
module LSL (
  input [15:0] Di, // data input
  input Ci, // carry input
  output [15:0] Do, // data output
  output Co // carry output

);
  assign Do[0] = Ci;
  assign Do[15:1] = Di[14:0];
  assign Co = Di[15];
endmodule

// Shift right. So a division by two.
// The carry bit is inserted at the top. And the least 
// significant bit is output as a new carry bit.
module LSR (
  input [15:0] Di, // data input
  input Ci, // carry input
  output [15:0] Do, // data output
  output Co // carry output

);
  assign Do[14:0] = Di[15:1];
  assign Do[15] = Ci;
  assign Co = Di[0];
endmodule

module CompSigned #(
    parameter Bits = 1
)
(
    input [(Bits -1):0] a,
    input [(Bits -1):0] b,
    output \> ,
    output \= ,
    output \<
);
    assign \> = $signed(a) > $signed(b);
    assign \= = $signed(a) == $signed(b);
    assign \< = $signed(a) < $signed(b);
endmodule


module DIG_D_FF_AS_1bit
#(
    parameter Default = 0
)
(
   input Set,
   input D,
   input C,
   input Clr,
   output Q,
   output \~Q
);
    reg state;

    assign Q = state;
    assign \~Q  = ~state;

    always @ (posedge C or posedge Clr or posedge Set)
    begin
        if (Set)
            state <= 1'b1;
        else if (Clr)
            state <= 'h0;
        else
            state <= D;
    end

    initial begin
        state = Default;
    end
endmodule
module DIG_JK_FF
#(
    parameter Default = 1'b0
)
(
   input J,
   input C,
   input K,
   output Q,
   output \~Q
);
    reg state;

    assign Q = state;
    assign \~Q = ~state;

    always @ (posedge C) begin
        if (~J & K)
            state <= 1'b0;
         else if (J & ~K)
            state <= 1'b1;
         else if (J & K)
            state <= ~state;
    end

    initial begin
        state = Default;
    end
endmodule


module tt_um_smallScpu (
  input clk,
  input [7:0] ui_in,
  input rst_n,
  input ena,
  input [7:0] uio_in,
  output [7:0] uo_out,
  output [7:0] uio_out,
  output [7:0] uio_oe
);
  wire muxA;
  wire [15:0] s0;
  wire [15:0] s1;
  wire [15:0] s2;
  wire [2:0] muxB;
  wire [15:0] s3;
  wire [15:0] s4;
  wire [15:0] s5;
  wire [15:0] s6;
  wire [15:0] s7;
  wire [15:0] OpcodeDebug;
  wire [3:0] s8;
  wire [3:0] s9;
  wire [7:0] OPcode;
  wire [7:0] s10;
  wire st;
  wire ld;
  wire [15:0] s11;
  wire [2:0] WDmux;
  wire [15:0] s12;
  wire [15:0] Din;
  wire [15:0] s13;
  wire [15:0] RandomNUM;
  wire [15:0] s14;
  wire [1:0] s15;
  wire s16;
  wire s17;
  wire s18;
  wire s19;
  wire s20;
  wire [2:0] br;
  wire s21;
  wire sf;
  wire s22;
  wire s23;
  wire intr;
  wire interEn;
  wire [15:0] FlagOut;
  wire InterLock;
  wire imm;
  wire s24;
  wire s25;
  wire s26;
  wire Reti;
  wire s27;
  wire s28;
  wire inter;
  wire [7:0] s29;
  wire WE;
  wire [1:0] iem;
  wire [7:0] s30;
  wire s31;
  wire [7:0] s32;
  wire [7:0] s33;
  wire [7:0] s34;
  wire [7:0] s35;
  wire abs;
  wire [7:0] s36;
  wire [7:0] s37;
  wire s38;
  wire [7:0] s39;
  wire s40;
  wire ioW;
  wire s41;
  wire [7:0] s42;
  wire s43;
  wire s44;
  wire s45;
  wire s46;
  wire s47;
  wire s48;
  wire s49;
  wire s50;
  wire [7:0] s51;
  wire [7:0] s52;
  wire s53;
  wire [7:0] s54;
  wire s55;
  wire s56;
  wire [3:0] sel;
  wire [15:0] s57;
  wire [15:0] s58;
  wire [15:0] s59;
  wire [15:0] s60;
  wire [15:0] s61;
  wire [15:0] s62;
  wire [15:0] s63;
  wire [15:0] s64;
  wire [15:0] s65;
  wire [15:0] s66;
  wire [15:0] s67;
  wire [15:0] s68;
  wire [15:0] s69;
  wire s70;
  wire s71;
  wire s72;
  wire s73;
  wire s74;
  wire s75;
  wire [4:0] aluOp;
  wire [31:0] s76;
  wire s77;
  wire s78;
  wire s79;
  wire s80;
  wire s81;
  wire [15:0] s82;
  wire [15:0] s83;
  wire s84;
  wire s85;
  wire s86;
  wire s87;
  wire s88;
  wire s89;
  wire s90;
  wire s91;
  wire s92;
  wire s93;
  wire s94;
  wire s95;
  wire s96;
  wire s97;
  wire s98;
  wire s99;
  wire s100;
  wire s101;
  wire s102;
  wire s103;
  wire s104;
  wire s105;
  wire s106;
  wire s107;
  wire s108;
  wire s109;
  wire s110;
  wire s111;
  wire s112;
  wire s113;
  wire s114;
  wire s115;
  wire s116;
  wire s117;
  wire s118;
  wire s119;
  wire stPC;
  wire RandomNUMSel;
  wire ioR;
  wire [6:0] s120;
  wire [6:0] s121;
  wire s122;
  wire s123;
  wire s124;
  wire s125;
  wire s126;
  wire s127;
  wire s128;
  wire s129;
  wire s130;
  wire s131;
  wire src2D;
  wire s132;
  wire s133;
  wire s134;
  wire s135;
  wire s136;
  wire alu2D;
  wire s137;
  wire s138;
  wire s139;
  wire s140;
  wire s141;
  wire [7:0] uio_oe_temp;
  assign uio_oe_temp = 8'b0;
  assign s26 = ~ clk;
  assign s28 = ~ clk;
  assign s31 = ~ clk;
  assign s38 = ~ clk;
  assign s53 = ~ clk;
  assign s43 = ui_in[0];
  assign s44 = ui_in[1];
  assign s45 = ui_in[2];
  assign s46 = ui_in[3];
  assign s47 = ui_in[4];
  assign s48 = ui_in[5];
  assign s49 = ui_in[6];
  assign s50 = ui_in[7];
  assign Din[0] = s43;
  assign Din[1] = s44;
  assign Din[2] = s45;
  assign Din[3] = s46;
  assign Din[4] = s47;
  assign Din[5] = s48;
  assign Din[6] = s49;
  assign Din[7] = s50;
  assign Din[8] = 1'b0;
  assign Din[9] = 1'b0;
  assign Din[10] = 1'b0;
  assign Din[11] = 1'b0;
  assign Din[12] = 1'b0;
  assign Din[13] = 1'b0;
  assign Din[14] = 1'b0;
  assign Din[15] = 1'b0;
  assign s51[0] = s43;
  assign s51[1] = s44;
  assign s51[2] = s45;
  assign s51[3] = s46;
  assign s51[4] = s47;
  assign s51[5] = s48;
  assign s51[6] = s49;
  assign s51[7] = s50;
  Mux_8x1_NBits #(
    .Bits(16)
  )
  Mux_8x1_NBits_i0 (
    .sel( WDmux ),
    .in_0( s12 ),
    .in_1( s11 ),
    .in_2( Din ),
    .in_3( s13 ),
    .in_4( 16'b0 ),
    .in_5( RandomNUM ),
    .in_6( 16'b0 ),
    .in_7( 16'b0 ),
    .out( s14 )
  );
  // *
  DIG_D_FF_1bit #(
    .Default(0)
  )
  DIG_D_FF_1bit_i1 (
    .D( s25 ),
    .C( s26 ),
    .Q( InterLock )
  );
  // *
  DIG_D_FF_1bit #(
    .Default(0)
  )
  DIG_D_FF_1bit_i2 (
    .D( s27 ),
    .C( s28 ),
    .Q( s24 )
  );
  // PC
  DIG_Register_BUS #(
    .Bits(8)
  )
  DIG_Register_BUS_i3 (
    .D( s30 ),
    .C( s31 ),
    .en( 1'b1 ),
    .Q( s29 )
  );
  DIG_Register_BUS #(
    .Bits(8)
  )
  DIG_Register_BUS_i4 (
    .D( s36 ),
    .C( s38 ),
    .en( intr ),
    .Q( s39 )
  );
  DIG_Register_BUS #(
    .Bits(8)
  )
  DIG_Register_BUS_i5 (
    .D( s52 ),
    .C( s53 ),
    .en( inter ),
    .Q( s54 )
  );
  Mux_2x1_NBits #(
    .Bits(8)
  )
  Mux_2x1_NBits_i6 (
    .sel( InterLock ),
    .in_0( s51 ),
    .in_1( s54 ),
    .out( s52 )
  );
  // bootrom
  DIG_ROM_256X16_bootrom DIG_ROM_256X16_bootrom_i7 (
    .A( s29 ),
    .sel( 1'b1 ),
    .D( OpcodeDebug )
  );
  // Add One
  DIG_Add #(
    .Bits(8)
  )
  DIG_Add_i8 (
    .a( s29 ),
    .b( 8'b1 ),
    .c_i( 1'b0 ),
    .s( s32 )
  );
  CompUnsigned #(
    .Bits(8)
  )
  CompUnsigned_i9 (
    .a( s52 ),
    .b( s54 ),
    .\> ( s55 ),
    .\< ( s56 )
  );
  singExtend singExtend_i10 (
    .inst( OpcodeDebug ),
    .\4S ( s4 ),
    .\8SD ( s5 ),
    .\4D ( s6 )
  );
  assign inter = (s55 | s56);
  assign s13[7:0] = s32;
  assign s13[15:8] = 8'b0;
  assign s8 = OpcodeDebug[3:0];
  assign s9 = OpcodeDebug[7:4];
  assign OPcode = OpcodeDebug[15:8];
  assign s120 = OPcode[6:0];
  assign imm = OPcode[7];
  Mux_2x1_NBits #(
    .Bits(7)
  )
  Mux_2x1_NBits_i11 (
    .sel( imm ),
    .in_0( s120 ),
    .in_1( 7'b0 ),
    .out( s121 )
  );
  assign s128 = s121[0];
  assign s127 = s121[1];
  assign s126 = s121[2];
  assign s125 = s121[3];
  assign s124 = s121[4];
  assign s123 = s121[5];
  assign s122 = s121[6];
  controllogic controllogic_i12 (
    .A( s122 ),
    .B( s123 ),
    .C( s124 ),
    .D( s125 ),
    .E( s126 ),
    .F( s127 ),
    .G( s128 ),
    .muxb0( s129 ),
    .muxb1( s130 ),
    .muxb2( s131 ),
    .src2D( src2D ),
    .aluop0( s132 ),
    .aluop1( s133 ),
    .aluop2( s134 ),
    .aluop3( s135 ),
    .aluop4( s136 ),
    .WE( WE ),
    .sf( sf ),
    .alu2D( alu2D ),
    .iem0( s137 ),
    .iem1( s138 ),
    .br0( s139 ),
    .br1( s140 ),
    .br2( s141 ),
    .muxA( muxA ),
    .ld( ld ),
    .st( st ),
    .abs( abs ),
    .ioW( ioW ),
    .ioR( ioR ),
    .stPC( stPC ),
    .Reti( Reti ),
    .rand( RandomNUMSel )
  );
  assign s27 = ((s24 & ~ Reti) | inter);
  RegisterBlock RegisterBlock_i13 (
    .DataIn( s14 ),
    .WE( WE ),
    .clk( clk ),
    .src( s8 ),
    .Dest( s9 ),
    .RDest( s0 ),
    .Rsrc( s1 )
  );
  assign WDmux[0] = (stPC | ld | RandomNUMSel);
  assign WDmux[1] = (ioR | stPC);
  assign WDmux[2] = (RandomNUMSel | RandomNUMSel);
  assign muxB[0] = s131;
  assign muxB[1] = s130;
  assign muxB[2] = s129;
  assign aluOp[0] = s136;
  assign aluOp[1] = s135;
  assign aluOp[2] = s134;
  assign aluOp[3] = s133;
  assign aluOp[4] = s132;
  assign br[0] = s141;
  assign br[1] = s140;
  assign br[2] = s139;
  assign iem[0] = s138;
  assign iem[1] = s137;
  Mux_2x1_NBits #(
    .Bits(16)
  )
  Mux_2x1_NBits_i14 (
    .sel( muxA ),
    .in_0( s0 ),
    .in_1( s1 ),
    .out( s2 )
  );
  ImReg ImReg_i15 (
    .en( imm ),
    .iem( iem ),
    .C( clk ),
    .inst( OpcodeDebug ),
    .imm( s3 )
  );
  assign s15 = br[1:0];
  assign s42 = s1[7:0];
  assign sel = aluOp[3:0];
  Mux_8x1_NBits #(
    .Bits(16)
  )
  Mux_8x1_NBits_i16 (
    .sel( muxB ),
    .in_0( s1 ),
    .in_1( 16'b0 ),
    .in_2( s3 ),
    .in_3( 16'b0 ),
    .in_4( 16'b0 ),
    .in_5( s4 ),
    .in_6( s5 ),
    .in_7( s6 ),
    .out( s7 )
  );
  ASR ASR_i17 (
    .Di( s2 ),
    .C( s75 ),
    .Do( s66 )
  );
  SWAP SWAP_i18 (
    .Di( s2 ),
    .Do( s67 )
  );
  SWAPN SWAPN_i19 (
    .Di( s2 ),
    .Do( s68 )
  );
  assign s62 = ~ s2;
  DIG_Neg #(
    .Bits(16)
  )
  DIG_Neg_i20 (
    .in( s2 ),
    .out( s63 )
  );
  assign s59 = (s2 & s7);
  assign s60 = (s2 | s7);
  assign s61 = (s2 ^ s7);
  DIG_Mul_unsigned #(
    .Bits(16)
  )
  DIG_Mul_unsigned_i21 (
    .a( s2 ),
    .b( s7 ),
    .mul( s76 )
  );
  assign s69 = s76[15:0];
  // mem
  DIG_RAMDualPort #(
    .Bits(16),
    .AddrBits(8)
  )
  DIG_RAMDualPort_i22 (
    .A( s10 ),
    .Din( s1 ),
    .str( st ),
    .C( clk ),
    .ld( ld ),
    .D( s11 )
  );
  Mux_4x1 Mux_4x1_i23 (
    .sel( s15 ),
    .in_0( 1'b0 ),
    .in_1( s16 ),
    .in_2( s17 ),
    .in_3( s18 ),
    .out( s19 )
  );
  assign s20 = (s19 ^ br[2]);
  // Carry
  DIG_Register DIG_Register_i24 (
    .D( s21 ),
    .C( clk ),
    .en( sf ),
    .Q( s16 )
  );
  // Zero
  DIG_Register DIG_Register_i25 (
    .D( s22 ),
    .C( clk ),
    .en( sf ),
    .Q( s17 )
  );
  // Neg
  DIG_Register DIG_Register_i26 (
    .D( s23 ),
    .C( clk ),
    .en( sf ),
    .Q( s18 )
  );
  // inter1
  DIG_Register DIG_Register_i27 (
    .D( intr ),
    .C( clk ),
    .en( sf ),
    .Q( interEn )
  );
  assign intr = (~ InterLock & ~ imm & s24 & ~ interEn);
  assign s25 = ((InterLock & ~ Reti) | intr);
  // Add ALU
  DIG_Add #(
    .Bits(8)
  )
  DIG_Add_i28 (
    .a( s32 ),
    .b( s33 ),
    .c_i( 1'b0 ),
    .s( s34 )
  );
  Mux_2x1_NBits #(
    .Bits(8)
  )
  Mux_2x1_NBits_i29 (
    .sel( s20 ),
    .in_0( s32 ),
    .in_1( s34 ),
    .out( s35 )
  );
  Mux_2x1_NBits #(
    .Bits(8)
  )
  Mux_2x1_NBits_i30 (
    .sel( abs ),
    .in_0( s35 ),
    .in_1( s33 ),
    .out( s36 )
  );
  Mux_2x1_NBits #(
    .Bits(8)
  )
  Mux_2x1_NBits_i31 (
    .sel( Reti ),
    .in_0( s37 ),
    .in_1( s39 ),
    .out( s30 )
  );
  assign s41 = (s40 & ioW);
  DIG_Register_BUS #(
    .Bits(8)
  )
  DIG_Register_BUS_i32 (
    .D( s42 ),
    .C( clk ),
    .en( s41 ),
    .Q( uo_out )
  );
  Mux_16x1_NBits #(
    .Bits(16)
  )
  Mux_16x1_NBits_i33 (
    .sel( sel ),
    .in_0( s7 ),
    .in_1( s57 ),
    .in_2( s58 ),
    .in_3( s59 ),
    .in_4( s60 ),
    .in_5( s61 ),
    .in_6( s62 ),
    .in_7( s63 ),
    .in_8( s64 ),
    .in_9( s65 ),
    .in_10( s66 ),
    .in_11( s67 ),
    .in_12( s68 ),
    .in_13( s69 ),
    .in_14( 16'b0 ),
    .in_15( 16'b0 ),
    .out( s12 )
  );
  DIG_Add #(
    .Bits(16)
  )
  DIG_Add_i34 (
    .a( s2 ),
    .b( s7 ),
    .c_i( s70 ),
    .s( s57 ),
    .c_o( s71 )
  );
  DIG_Sub #(
    .Bits(16)
  )
  DIG_Sub_i35 (
    .a( s2 ),
    .b( s7 ),
    .c_i( s70 ),
    .s( s58 ),
    .c_o( s72 )
  );
  Mux_16x1 Mux_16x1_i36 (
    .sel( sel ),
    .in_0( 1'b0 ),
    .in_1( s71 ),
    .in_2( s72 ),
    .in_3( 1'b0 ),
    .in_4( 1'b0 ),
    .in_5( 1'b0 ),
    .in_6( 1'b0 ),
    .in_7( 1'b0 ),
    .in_8( s73 ),
    .in_9( s74 ),
    .in_10( s75 ),
    .in_11( 1'b0 ),
    .in_12( 1'b0 ),
    .in_13( 1'b0 ),
    .in_14( 1'b0 ),
    .in_15( 1'b0 ),
    .out( s21 )
  );
  assign s70 = (aluOp[4] & s16);
  LSL LSL_i37 (
    .Di( s2 ),
    .Ci( s70 ),
    .Do( s64 ),
    .Co( s73 )
  );
  LSR LSR_i38 (
    .Di( s2 ),
    .Ci( s70 ),
    .Do( s65 ),
    .Co( s74 )
  );
  // seed
  DIG_Register_BUS #(
    .Bits(16)
  )
  DIG_Register_BUS_i39 (
    .D( s1 ),
    .C( clk ),
    .en( s81 ),
    .Q( s82 )
  );
  assign s81 = (s84 & ioW);
  assign FlagOut[0] = s16;
  assign FlagOut[1] = s17;
  assign FlagOut[2] = s18;
  assign FlagOut[3] = interEn;
  assign FlagOut[15:4] = 12'b0;
  Mux_2x1_NBits #(
    .Bits(8)
  )
  Mux_2x1_NBits_i40 (
    .sel( intr ),
    .in_0( s36 ),
    .in_1( 8'b10 ),
    .out( s37 )
  );
  CompUnsigned #(
    .Bits(16)
  )
  CompUnsigned_i41 (
    .a( s12 ),
    .b( 16'b101 ),
    .\= ( s40 )
  );
  CompSigned #(
    .Bits(16)
  )
  CompSigned_i42 (
    .a( s12 ),
    .b( 16'b0 ),
    .\= ( s22 )
  );
  Mux_2x1_NBits #(
    .Bits(16)
  )
  Mux_2x1_NBits_i43 (
    .sel( s81 ),
    .in_0( 16'b0 ),
    .in_1( s82 ),
    .out( s83 )
  );
  CompUnsigned #(
    .Bits(16)
  )
  CompUnsigned_i44 (
    .a( s12 ),
    .b( 16'b1000 ),
    .\= ( s84 )
  );
  assign s78 = (clk & s81);
  assign s10 = s12[7:0];
  assign s23 = s12[15];
  assign s33 = s12[7:0];
  assign s87 = s83[0];
  assign s90 = s83[1];
  assign s92 = s83[2];
  assign s94 = s83[3];
  assign s96 = s83[4];
  assign s98 = s83[5];
  assign s100 = s83[6];
  assign s102 = s83[7];
  assign s104 = s83[8];
  assign s106 = s83[9];
  assign s108 = s83[10];
  assign s110 = s83[11];
  assign s112 = s83[12];
  assign s114 = s83[13];
  assign s116 = s83[14];
  assign s118 = s83[15];
  DIG_D_FF_AS_1bit #(
    .Default(0)
  )
  DIG_D_FF_AS_1bit_i45 (
    .Set( 1'b0 ),
    .D( s77 ),
    .C( s78 ),
    .Clr( s79 ),
    .Q( s80 ),
    .\~Q ( s77 )
  );
  assign s86 = (s81 & ~ s85);
  DIG_D_FF_AS_1bit #(
    .Default(0)
  )
  DIG_D_FF_AS_1bit_i46 (
    .Set( s87 ),
    .D( s88 ),
    .C( clk ),
    .Clr( s86 ),
    .Q( s89 )
  );
  DIG_D_FF_AS_1bit #(
    .Default(0)
  )
  DIG_D_FF_AS_1bit_i47 (
    .Set( s90 ),
    .D( s89 ),
    .C( clk ),
    .Clr( s86 ),
    .Q( s91 )
  );
  DIG_D_FF_AS_1bit #(
    .Default(0)
  )
  DIG_D_FF_AS_1bit_i48 (
    .Set( s92 ),
    .D( s91 ),
    .C( clk ),
    .Clr( s86 ),
    .Q( s93 )
  );
  DIG_D_FF_AS_1bit #(
    .Default(0)
  )
  DIG_D_FF_AS_1bit_i49 (
    .Set( s94 ),
    .D( s93 ),
    .C( clk ),
    .Clr( s86 ),
    .Q( s95 )
  );
  DIG_D_FF_AS_1bit #(
    .Default(0)
  )
  DIG_D_FF_AS_1bit_i50 (
    .Set( s96 ),
    .D( s95 ),
    .C( clk ),
    .Clr( s86 ),
    .Q( s97 )
  );
  DIG_D_FF_AS_1bit #(
    .Default(0)
  )
  DIG_D_FF_AS_1bit_i51 (
    .Set( s98 ),
    .D( s97 ),
    .C( clk ),
    .Clr( s86 ),
    .Q( s99 )
  );
  DIG_D_FF_AS_1bit #(
    .Default(0)
  )
  DIG_D_FF_AS_1bit_i52 (
    .Set( s100 ),
    .D( s99 ),
    .C( clk ),
    .Clr( s86 ),
    .Q( s101 )
  );
  DIG_D_FF_AS_1bit #(
    .Default(0)
  )
  DIG_D_FF_AS_1bit_i53 (
    .Set( s102 ),
    .D( s101 ),
    .C( clk ),
    .Clr( s86 ),
    .Q( s103 )
  );
  DIG_D_FF_AS_1bit #(
    .Default(0)
  )
  DIG_D_FF_AS_1bit_i54 (
    .Set( s104 ),
    .D( s103 ),
    .C( clk ),
    .Clr( s86 ),
    .Q( s105 )
  );
  DIG_D_FF_AS_1bit #(
    .Default(0)
  )
  DIG_D_FF_AS_1bit_i55 (
    .Set( s106 ),
    .D( s105 ),
    .C( clk ),
    .Clr( s86 ),
    .Q( s107 )
  );
  DIG_D_FF_AS_1bit #(
    .Default(0)
  )
  DIG_D_FF_AS_1bit_i56 (
    .Set( s108 ),
    .D( s107 ),
    .C( clk ),
    .Clr( s86 ),
    .Q( s109 )
  );
  DIG_D_FF_AS_1bit #(
    .Default(0)
  )
  DIG_D_FF_AS_1bit_i57 (
    .Set( s110 ),
    .D( s109 ),
    .C( clk ),
    .Clr( s86 ),
    .Q( s111 )
  );
  DIG_D_FF_AS_1bit #(
    .Default(0)
  )
  DIG_D_FF_AS_1bit_i58 (
    .Set( s112 ),
    .D( s111 ),
    .C( clk ),
    .Clr( s86 ),
    .Q( s113 )
  );
  DIG_D_FF_AS_1bit #(
    .Default(0)
  )
  DIG_D_FF_AS_1bit_i59 (
    .Set( s114 ),
    .D( s113 ),
    .C( clk ),
    .Clr( s86 ),
    .Q( s115 )
  );
  DIG_D_FF_AS_1bit #(
    .Default(0)
  )
  DIG_D_FF_AS_1bit_i60 (
    .Set( s116 ),
    .D( s115 ),
    .C( clk ),
    .Clr( s86 ),
    .Q( s117 )
  );
  DIG_D_FF_AS_1bit #(
    .Default(0)
  )
  DIG_D_FF_AS_1bit_i61 (
    .Set( s118 ),
    .D( s117 ),
    .C( clk ),
    .Clr( s86 ),
    .Q( s119 )
  );
  assign s88 = (s99 ^ (s109 ^ (s113 ^ s117)));
  assign RandomNUM[0] = s89;
  assign RandomNUM[1] = s91;
  assign RandomNUM[2] = s93;
  assign RandomNUM[3] = s95;
  assign RandomNUM[4] = s97;
  assign RandomNUM[5] = s99;
  assign RandomNUM[6] = s101;
  assign RandomNUM[7] = s103;
  assign RandomNUM[8] = s105;
  assign RandomNUM[9] = s107;
  assign RandomNUM[10] = s109;
  assign RandomNUM[11] = s111;
  assign RandomNUM[12] = s113;
  assign RandomNUM[13] = s115;
  assign RandomNUM[14] = s117;
  assign RandomNUM[15] = s119;
  assign s85 = (s80 | s79);
  DIG_JK_FF #(
    .Default(0)
  )
  DIG_JK_FF_i62 (
    .J( s85 ),
    .C( clk ),
    .K( s85 ),
    .Q( s79 )
  );
  assign uio_out = uio_oe_temp;
  assign uio_oe = uio_oe_temp;
endmodule