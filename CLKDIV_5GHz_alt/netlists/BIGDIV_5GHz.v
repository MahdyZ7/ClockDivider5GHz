/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : S-2021.06-SP5-5
// Date      : Wed Aug 28 20:38:18 2024
/////////////////////////////////////////////////////////////


module CLKDivider_Div9_1 ( reset, clk, div9, VDD, VSS );
  input reset, clk;
  output div9;
  inout VDD,  VSS;
  wire   mid2, mid3, mid4, mid1, N7, N9, N10, n6, n13, n14, n15, n16, n17;

  SC8T_DFFQX1_CSC28L mid3_reg ( .D(N9), .CLK(clk), .Q(mid3) );
  SC8T_DFFQX1_CSC28L mid4_reg ( .D(N10), .CLK(clk), .Q(mid4) );
  SC8T_DFFQX1_CSC28L mid1_reg ( .D(N7), .CLK(clk), .Q(mid1) );
  SC8T_DFFQX1_CSC28L mid2_reg ( .D(n6), .CLK(clk), .Q(mid2) );
  SC8T_INVX1_MR_CSC28L U3 ( .A(reset), .Z(n16) );
  SC8T_INVX1_MR_CSC28L U4 ( .A(mid3), .Z(n17) );
  SC8T_NR2X1_CSC24L U5 ( .A(n16), .B(n17), .Z(N10) );
  SC8T_INVX1_MR_CSC28L U6 ( .A(mid4), .Z(n15) );
  SC8T_OAI21X1_MR_CSC24L U7 ( .B1(mid2), .B2(mid1), .A(n15), .Z(n13) );
  SC8T_NR2X1_CSC24L U8 ( .A(n16), .B(n13), .Z(n6) );
  SC8T_AO21IAX1_MR_CSC28L U9 ( .B1(mid2), .B2(clk), .A(n13), .Z(div9) );
  SC8T_INVX1_MR_CSC28L U10 ( .A(mid2), .Z(n14) );
  SC8T_AOI211X1_CSC24L U11 ( .C1(n15), .C2(n14), .A(n16), .B(mid1), .Z(N9) );
  SC8T_AOI211X1_CSC24L U12 ( .C1(n17), .C2(mid4), .A(n16), .B(mid2), .Z(N7) );
endmodule


module CLKDivider_Div12_1 ( reset, clk, div12, VDD, VSS );
  input reset, clk;
  output div12;
  inout VDD,  VSS;
  wire   N6, N7, N8, n4, n10, n11, n12;
  wire   [2:0] count;

  SC8T_DFFQX1_CSC28L count_reg_0_ ( .D(N6), .CLK(clk), .Q(count[0]) );
  SC8T_DFFQX1_CSC28L count_reg_2_ ( .D(N8), .CLK(clk), .Q(count[2]) );
  SC8T_DFFQX1_CSC28L count_reg_1_ ( .D(N7), .CLK(clk), .Q(count[1]) );
  SC8T_DFFQX1_CSC28L div12_reg ( .D(n4), .CLK(clk), .Q(div12) );
  SC8T_INVX1_MR_CSC28L U3 ( .A(reset), .Z(n10) );
  SC8T_NR2IAX1_MR_CSC28L U4 ( .A(count[1]), .B(n10), .Z(N6) );
  SC8T_NR2IAX1_MR_CSC28L U5 ( .A(count[0]), .B(n10), .Z(N8) );
  SC8T_NR2X1_CSC24L U6 ( .A(count[2]), .B(n10), .Z(N7) );
  SC8T_NR2X1_CSC24L U7 ( .A(count[2]), .B(count[1]), .Z(n12) );
  SC8T_OAI21X1_MR_CSC24L U8 ( .B1(div12), .B2(n12), .A(reset), .Z(n11) );
  SC8T_AOI21X1_MR_CSC24L U9 ( .B1(div12), .B2(n12), .A(n11), .Z(n4) );
endmodule


module CLKDivider_Div80alt_1 ( reset, clk, div80, div4, div8, VDD, VSS );
  input reset, clk;
  output div80, div4, div8;
  inout VDD,  VSS;
  wire   count8_2_, count8_1_, N13, N16, N17, N18, N21, n9, n11, n13, n27, n28,
         n29, n30, n31, n32, n33, n34;
  wire   [2:0] count5;

  SC8T_DFFQX1_CSC28L count8_reg_1_ ( .D(n13), .CLK(clk), .Q(count8_1_) );
  SC8T_DFFQX1_CSC28L div8_reg ( .D(N21), .CLK(clk), .Q(div8) );
  SC8T_DFFQX1_CSC28L count5_reg_0_ ( .D(N16), .CLK(clk), .Q(count5[0]) );
  SC8T_DFFQX1_CSC28L count5_reg_2_ ( .D(N18), .CLK(clk), .Q(count5[2]) );
  SC8T_DFFQX1_CSC28L count5_reg_1_ ( .D(N17), .CLK(clk), .Q(count5[1]) );
  SC8T_DFFQX1_CSC28L div80_reg ( .D(n9), .CLK(clk), .Q(div80) );
  SC8T_DFFQX1_CSC28L count8_reg_2_ ( .D(n11), .CLK(clk), .Q(count8_2_) );
  SC8T_DFFQX1_CSC28L count8_reg_0_ ( .D(N13), .CLK(clk), .Q(div4) );
  SC8T_INVX1_MR_CSC28L U3 ( .A(reset), .Z(n32) );
  SC8T_NR3IAX1_MR_CSC28L U4 ( .A(count5[2]), .B(count5[1]), .C(n32), .Z(N16)
         );
  SC8T_ND2X1_CSC28L U5 ( .A(reset), .B(count5[0]), .Z(n27) );
  SC8T_OAI21X1_MR_CSC24L U6 ( .B1(count5[1]), .B2(n32), .A(n27), .Z(N18) );
  SC8T_INVX1_MR_CSC28L U7 ( .A(n27), .Z(N17) );
  SC8T_NR4X1_CSC24L U8 ( .A(count8_2_), .B(count8_1_), .C(count5[2]), .D(div4), 
        .Z(n29) );
  SC8T_OAI21X1_MR_CSC24L U9 ( .B1(div80), .B2(n29), .A(reset), .Z(n28) );
  SC8T_AOI21X1_MR_CSC24L U10 ( .B1(div80), .B2(n29), .A(n28), .Z(n9) );
  SC8T_NR2X1_CSC24L U11 ( .A(count8_2_), .B(n32), .Z(N21) );
  SC8T_INVX1_MR_CSC28L U12 ( .A(N21), .Z(n30) );
  SC8T_INVX1_MR_CSC28L U13 ( .A(count8_2_), .Z(n33) );
  SC8T_ND2X1_CSC28L U14 ( .A(reset), .B(count8_1_), .Z(n31) );
  SC8T_OAI22X1_CSC24L U15 ( .A1(count8_1_), .A2(n30), .B1(n33), .B2(n31), .Z(
        N13) );
  SC8T_INVX1_MR_CSC28L U16 ( .A(div4), .Z(n34) );
  SC8T_AOI22X1_CSC24L U17 ( .A1(div4), .A2(n30), .B1(n31), .B2(n34), .Z(n13)
         );
  SC8T_OAI32X1_MR_CSC24L U18 ( .B1(n34), .B2(n33), .B3(n32), .A1(div4), .A2(
        n31), .Z(n11) );
endmodule


module dividerblock ( reset, clk, VDD, VSS, div4, div8, div9, div12, div80 );
  input reset, clk;
  output div4, div8, div9, div12, div80;
  inout VDD,  VSS;

  tri   VDD;
  tri   VSS;

  CLKDivider_Div9_1 d9 ( .reset(reset), .clk(clk), .div9(div9), .VDD(VDD), 
        .VSS(VSS) );
  CLKDivider_Div12_1 d12 ( .reset(reset), .clk(clk), .div12(div12), .VDD(VDD), 
        .VSS(VSS) );
  CLKDivider_Div80alt_1 d80 ( .reset(reset), .clk(clk), .div80(div80), .div4(
        div4), .div8(div8), .VDD(VDD), .VSS(VSS) );
endmodule

