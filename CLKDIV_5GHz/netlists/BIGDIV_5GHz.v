/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : S-2021.06-SP5-5
// Date      : Wed Aug 28 16:48:36 2024
/////////////////////////////////////////////////////////////


module CLKDivider_Div9alt_1 ( reset, clk, div9, VDD, VSS );
  input reset, clk;
  output div9;
  inout VDD,  VSS;
  wire   midC, midD, midA, midB, t1, N11, N13, t2, n10, n12, n14, n16, n34,
         n35, n36, n37, n38, n39, n40, n41, n42;

  SC8T_DFFNQX1_CSC28L t2_reg ( .D(n10), .CLK(clk), .Q(t2) );
  SC8T_DFFQX1_CSC28L midA_reg ( .D(n16), .CLK(clk), .Q(midA) );
  SC8T_DFFQX1_CSC28L midC_reg ( .D(n14), .CLK(clk), .Q(midC) );
  SC8T_DFFQX1_CSC28L midD_reg ( .D(N13), .CLK(clk), .Q(midD) );
  SC8T_DFFQX1_CSC28L midB_reg ( .D(N11), .CLK(clk), .Q(midB) );
  SC8T_DFFQX1_CSC28L t1_reg ( .D(n12), .CLK(clk), .Q(t1) );
  SC8T_INVX1_MR_CSC28L U3 ( .A(midD), .Z(n42) );
  SC8T_INVX1_MR_CSC28L U4 ( .A(midC), .Z(n36) );
  SC8T_NR2X1_CSC24L U5 ( .A(n42), .B(n36), .Z(n35) );
  SC8T_OAI21X1_MR_CSC24L U6 ( .B1(t2), .B2(n35), .A(reset), .Z(n34) );
  SC8T_AOI21X1_MR_CSC24L U7 ( .B1(t2), .B2(n35), .A(n34), .Z(n10) );
  SC8T_ND2X1_CSC28L U8 ( .A(reset), .B(midA), .Z(n40) );
  SC8T_AOI21X1_MR_CSC24L U9 ( .B1(midB), .B2(n36), .A(n40), .Z(n14) );
  SC8T_NR2X1_CSC24L U10 ( .A(midD), .B(midC), .Z(n38) );
  SC8T_OAI21X1_MR_CSC24L U11 ( .B1(t1), .B2(n38), .A(reset), .Z(n37) );
  SC8T_AOI21X1_MR_CSC24L U12 ( .B1(t1), .B2(n38), .A(n37), .Z(n12) );
  SC8T_INVX1_MR_CSC28L U13 ( .A(reset), .Z(n41) );
  SC8T_NR2X1_CSC24L U14 ( .A(midC), .B(n41), .Z(N13) );
  SC8T_OA22IA1A2X1_MR_CSC28L U15 ( .A1(t1), .A2(t2), .B1(t2), .B2(t1), .Z(div9) );
  SC8T_INVX1_MR_CSC28L U16 ( .A(midB), .Z(n39) );
  SC8T_OAI32X1_MR_CSC24L U17 ( .B1(n39), .B2(n42), .B3(n41), .A1(midB), .A2(
        n40), .Z(n16) );
  SC8T_OAI32X1_MR_CSC24L U18 ( .B1(n42), .B2(midA), .B3(n41), .A1(midD), .A2(
        n40), .Z(N11) );
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

  SC8T_DFFQX1_CSC28L div80_reg ( .D(n9), .CLK(clk), .Q(div80) );
  SC8T_DFFQX1_CSC28L div8_reg ( .D(N21), .CLK(clk), .Q(div8) );
  SC8T_DFFQX1_CSC28L count5_reg_0_ ( .D(N16), .CLK(clk), .Q(count5[0]) );
  SC8T_DFFQX1_CSC28L count5_reg_2_ ( .D(N18), .CLK(clk), .Q(count5[2]) );
  SC8T_DFFQX1_CSC28L count5_reg_1_ ( .D(N17), .CLK(clk), .Q(count5[1]) );
  SC8T_DFFQX1_CSC28L count8_reg_2_ ( .D(n11), .CLK(clk), .Q(count8_2_) );
  SC8T_DFFQX1_CSC28L count8_reg_1_ ( .D(n13), .CLK(clk), .Q(count8_1_) );
  SC8T_DFFQX1_CSC28L count8_reg_0_ ( .D(N13), .CLK(clk), .Q(div4) );
  SC8T_INVX1_MR_CSC28L U3 ( .A(reset), .Z(n32) );
  SC8T_NR3IAX1_MR_CSC28L U4 ( .A(count5[2]), .B(count5[1]), .C(n32), .Z(N16)
         );
  SC8T_ND2X1_CSC28L U5 ( .A(reset), .B(count5[0]), .Z(n27) );
  SC8T_OAI21X1_MR_CSC24L U6 ( .B1(count5[1]), .B2(n32), .A(n27), .Z(N18) );
  SC8T_NR2X1_CSC24L U7 ( .A(count8_2_), .B(n32), .Z(N21) );
  SC8T_INVX1_MR_CSC28L U8 ( .A(n27), .Z(N17) );
  SC8T_NR4X1_CSC24L U9 ( .A(count8_2_), .B(count8_1_), .C(count5[2]), .D(div4), 
        .Z(n29) );
  SC8T_OAI21X1_MR_CSC24L U10 ( .B1(div80), .B2(n29), .A(reset), .Z(n28) );
  SC8T_AOI21X1_MR_CSC24L U11 ( .B1(div80), .B2(n29), .A(n28), .Z(n9) );
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

  CLKDivider_Div9alt_1 d9 ( .reset(reset), .clk(clk), .div9(div9), .VDD(VDD), 
        .VSS(VSS) );
  CLKDivider_Div12_1 d12 ( .reset(reset), .clk(clk), .div12(div12), .VDD(VDD), 
        .VSS(VSS) );
  CLKDivider_Div80alt_1 d80 ( .reset(reset), .clk(clk), .div80(div80), .div4(
        div4), .div8(div8), .VDD(VDD), .VSS(VSS) );
endmodule

