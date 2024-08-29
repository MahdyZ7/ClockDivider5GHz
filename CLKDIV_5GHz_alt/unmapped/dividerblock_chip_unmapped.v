/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : S-2021.06-SP5-5
// Date      : Wed Aug 28 20:06:22 2024
/////////////////////////////////////////////////////////////


module Div9 ( reset, clk, div9, VDD, VSS );
  input reset, clk;
  output div9;
  inout VDD,  VSS;
  wire   N0, N1, mid2, mid3, mid4, N2, mid1, N3, N4, N5, N6, N7, N8, N9, N10,
         N11, N12, N13, N14, N15, N16, N17, N18;

  \**SEQGEN**  mid3_reg ( .clear(1'b0), .preset(1'b0), .next_state(N9), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(mid3), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  mid4_reg ( .clear(1'b0), .preset(1'b0), .next_state(N10), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(mid4), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  mid2_reg ( .clear(1'b0), .preset(1'b0), .next_state(N8), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(mid2), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  mid1_reg ( .clear(1'b0), .preset(1'b0), .next_state(N7), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(mid1), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  SELECT_OP C19 ( .DATA1(1'b0), .DATA2(N4), .CONTROL1(N0), .CONTROL2(N1), .Z(
        N7) );
  GTECH_BUF B_0 ( .A(N3), .Z(N0) );
  GTECH_BUF B_1 ( .A(reset), .Z(N1) );
  SELECT_OP C20 ( .DATA1(1'b0), .DATA2(N5), .CONTROL1(N0), .CONTROL2(N1), .Z(
        N8) );
  SELECT_OP C21 ( .DATA1(1'b0), .DATA2(N6), .CONTROL1(N0), .CONTROL2(N1), .Z(
        N9) );
  SELECT_OP C22 ( .DATA1(1'b0), .DATA2(mid3), .CONTROL1(N0), .CONTROL2(N1), 
        .Z(N10) );
  GTECH_NOT I_0 ( .A(mid4), .Z(N2) );
  GTECH_NOT I_1 ( .A(reset), .Z(N3) );
  GTECH_AND2 C29 ( .A(N11), .B(N12), .Z(N4) );
  GTECH_NOT I_2 ( .A(mid2), .Z(N11) );
  GTECH_OR2 C31 ( .A(mid3), .B(N2), .Z(N12) );
  GTECH_AND2 C32 ( .A(N2), .B(N13), .Z(N5) );
  GTECH_OR2 C33 ( .A(mid1), .B(mid2), .Z(N13) );
  GTECH_AND2 C34 ( .A(N14), .B(N15), .Z(N6) );
  GTECH_NOT I_3 ( .A(mid1), .Z(N14) );
  GTECH_OR2 C36 ( .A(mid2), .B(mid4), .Z(N15) );
  GTECH_OR2 C37 ( .A(N17), .B(N18), .Z(div9) );
  GTECH_AND2 C38 ( .A(N2), .B(N16), .Z(N17) );
  GTECH_OR2 C40 ( .A(mid1), .B(mid2), .Z(N16) );
  GTECH_AND2 C41 ( .A(clk), .B(mid2), .Z(N18) );
endmodule


module Div12 ( reset, clk, div12, VDD, VSS );
  input reset, clk;
  output div12;
  inout VDD,  VSS;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11;
  wire   [2:0] count;

  \**SEQGEN**  div12_reg ( .clear(1'b0), .preset(1'b0), .next_state(N10), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(div12), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N9) );
  \**SEQGEN**  \count_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(N8), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(count[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \count_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(N7), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(count[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \count_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N6), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(count[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  SELECT_OP C25 ( .DATA1({1'b0, 1'b0, 1'b0}), .DATA2({count[0], N2, count[1]}), 
        .CONTROL1(N0), .CONTROL2(N1), .Z({N8, N7, N6}) );
  GTECH_BUF B_0 ( .A(N3), .Z(N0) );
  GTECH_BUF B_1 ( .A(reset), .Z(N1) );
  SELECT_OP C26 ( .DATA1(1'b1), .DATA2(N4), .CONTROL1(N0), .CONTROL2(N1), .Z(
        N9) );
  SELECT_OP C27 ( .DATA1(1'b0), .DATA2(N5), .CONTROL1(N0), .CONTROL2(N1), .Z(
        N10) );
  GTECH_NOT I_0 ( .A(count[2]), .Z(N2) );
  GTECH_NOT I_1 ( .A(reset), .Z(N3) );
  GTECH_AND2 C34 ( .A(N2), .B(N11), .Z(N4) );
  GTECH_NOT I_2 ( .A(count[1]), .Z(N11) );
  GTECH_NOT I_3 ( .A(div12), .Z(N5) );
endmodule


module Div80alt ( reset, clk, div80, div4, div8, VDD, VSS );
  input reset, clk;
  output div80, div4, div8;
  inout VDD,  VSS;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29;
  wire   [2:0] count5;
  wire   [2:0] count8;

  \**SEQGEN**  div4_reg ( .clear(1'b0), .preset(1'b0), .next_state(N13), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(div4), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  div80_reg ( .clear(1'b0), .preset(1'b0), .next_state(N20), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(div80), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N19) );
  \**SEQGEN**  \count5_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(N18), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(count5[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \count5_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(N17), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(count5[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \count5_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N16), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(count5[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  div8_reg ( .clear(1'b0), .preset(1'b0), .next_state(N21), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(div8), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \count8_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(N15), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(count8[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \count8_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(N14), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(count8[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \count8_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N13), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(count8[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  GTECH_NOT I_0 ( .A(count5[2]), .Z(N22) );
  GTECH_OR2 C39 ( .A(count8[1]), .B(count8[2]), .Z(N23) );
  GTECH_OR2 C40 ( .A(count8[0]), .B(N23), .Z(N24) );
  GTECH_NOT I_1 ( .A(N24), .Z(N25) );
  SELECT_OP C42 ( .DATA1({1'b0, 1'b0, 1'b0}), .DATA2({N9, N10, N5}), 
        .CONTROL1(N0), .CONTROL2(N1), .Z({N15, N14, N13}) );
  GTECH_BUF B_0 ( .A(N6), .Z(N0) );
  GTECH_BUF B_1 ( .A(reset), .Z(N1) );
  SELECT_OP C43 ( .DATA1({1'b0, 1'b0, 1'b0}), .DATA2({N7, count5[0], N8}), 
        .CONTROL1(N0), .CONTROL2(N1), .Z({N18, N17, N16}) );
  SELECT_OP C44 ( .DATA1(1'b1), .DATA2(N11), .CONTROL1(N0), .CONTROL2(N1), .Z(
        N19) );
  SELECT_OP C45 ( .DATA1(1'b0), .DATA2(N12), .CONTROL1(N0), .CONTROL2(N1), .Z(
        N20) );
  SELECT_OP C46 ( .DATA1(1'b0), .DATA2(N4), .CONTROL1(N0), .CONTROL2(N1), .Z(
        N21) );
  GTECH_NOT I_2 ( .A(count5[1]), .Z(N2) );
  GTECH_AND2 C50 ( .A(count8[1]), .B(N26), .Z(N3) );
  GTECH_NOT I_3 ( .A(count8[0]), .Z(N26) );
  GTECH_NOT I_4 ( .A(count8[2]), .Z(N4) );
  GTECH_NOT I_5 ( .A(N27), .Z(N5) );
  GTECH_XOR2 C54 ( .A(count8[1]), .B(count8[2]), .Z(N27) );
  GTECH_NOT I_6 ( .A(reset), .Z(N6) );
  GTECH_OR2 C58 ( .A(N2), .B(count5[0]), .Z(N7) );
  GTECH_AND2 C59 ( .A(count5[2]), .B(N2), .Z(N8) );
  GTECH_OR2 C60 ( .A(N3), .B(N28), .Z(N9) );
  GTECH_AND2 C61 ( .A(count8[2]), .B(count8[0]), .Z(N28) );
  GTECH_OR2 C62 ( .A(N3), .B(N29), .Z(N10) );
  GTECH_AND2 C63 ( .A(N4), .B(count8[0]), .Z(N29) );
  GTECH_AND2 C64 ( .A(N22), .B(N25), .Z(N11) );
  GTECH_NOT I_7 ( .A(div80), .Z(N12) );
endmodule


module dividerblock ( reset, clk, VDD, VSS, div4, div8, div9, div12, div80 );
  input reset, clk;
  output div4, div8, div9, div12, div80;
  inout VDD,  VSS;

  tri   VDD;
  tri   VSS;

  Div9 d9 ( .reset(reset), .clk(clk), .div9(div9), .VDD(VDD), .VSS(VSS) );
  Div12 d12 ( .reset(reset), .clk(clk), .div12(div12), .VDD(VDD), .VSS(VSS) );
  Div80alt d80 ( .reset(reset), .clk(clk), .div80(div80), .div4(div4), .div8(
        div8), .VDD(VDD), .VSS(VSS) );
endmodule

