
module unit_cell_R_WIDTH8_N5_P_WIDTH3_0 ( srst, clk, incre_en, X, R_from_plus1, 
        R_from_minus1, P_from_plus1, P_from_minus1, Z_from_minus1, 
        T_from_minus1, R_to_plus1minus1, P_to_plus1minus1, Z_to_plus1, 
        T_to_plus1 );
  input [7:0] X;
  input [7:0] R_from_plus1;
  input [7:0] R_from_minus1;
  input [2:0] P_from_plus1;
  input [2:0] P_from_minus1;
  output [7:0] R_to_plus1minus1;
  output [2:0] P_to_plus1minus1;
  input srst, clk, incre_en, Z_from_minus1, T_from_minus1;
  output Z_to_plus1, T_to_plus1;
  wire   bit_cnt, N49, N50, N51, N56, T, n12, n13, n14, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n7, n8, n15, n72, n73, n74,
         n76, n77, n78, n79, n80, n81, n82, n84, n85, n86, n87, n88, n90, n91,
         n92, n93, n94, n95, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n114;

  DFF_X1 P_reg_0_ ( .D(N49), .CK(clk), .Q(P_to_plus1minus1[0]), .QN(n14) );
  DFF_X1 P_reg_1_ ( .D(N50), .CK(clk), .Q(P_to_plus1minus1[1]), .QN(n13) );
  DFF_X1 P_reg_2_ ( .D(N51), .CK(clk), .Q(P_to_plus1minus1[2]), .QN(n12) );
  NAND4_X1 U70 ( .A1(n103), .A2(n102), .A3(n47), .A4(n48), .ZN(n46) );
  XOR2_X1 U71 ( .A(n49), .B(P_to_plus1minus1[2]), .Z(n44) );
  NAND3_X1 U72 ( .A1(n103), .A2(n47), .A3(n101), .ZN(n56) );
  XOR2_X1 U73 ( .A(n14), .B(P_to_plus1minus1[1]), .Z(n55) );
  NAND3_X1 U74 ( .A1(n57), .A2(n47), .A3(bit_cnt), .ZN(n60) );
  DFF_X1 bit_cnt_reg ( .D(N56), .CK(clk), .Q(bit_cnt) );
  DFF_X1 R_reg_7_ ( .D(n71), .CK(clk), .Q(R_to_plus1minus1[7]) );
  DFF_X1 R_reg_6_ ( .D(n64), .CK(clk), .Q(R_to_plus1minus1[6]), .QN(n97) );
  DFF_X1 R_reg_5_ ( .D(n65), .CK(clk), .Q(R_to_plus1minus1[5]) );
  DFF_X1 R_reg_4_ ( .D(n66), .CK(clk), .Q(R_to_plus1minus1[4]) );
  DFF_X1 R_reg_3_ ( .D(n67), .CK(clk), .Q(R_to_plus1minus1[3]), .QN(n109) );
  DFF_X1 R_reg_2_ ( .D(n68), .CK(clk), .Q(R_to_plus1minus1[2]), .QN(n94) );
  DFF_X1 R_reg_1_ ( .D(n69), .CK(clk), .Q(R_to_plus1minus1[1]), .QN(n93) );
  DFF_X1 R_reg_0_ ( .D(n70), .CK(clk), .Q(R_to_plus1minus1[0]) );
  INV_X1 U6 ( .A(X[4]), .ZN(n90) );
  INV_X1 U8 ( .A(X[5]), .ZN(n91) );
  INV_X1 U10 ( .A(X[7]), .ZN(n92) );
  NAND2_X1 U17 ( .A1(X[1]), .A2(n93), .ZN(n7) );
  NAND2_X1 U18 ( .A1(n81), .A2(X[0]), .ZN(n8) );
  INV_X1 U29 ( .A(n51), .ZN(n103) );
  NOR2_X1 U30 ( .A1(n42), .A2(n43), .ZN(n22) );
  AND2_X1 U31 ( .A1(n43), .A2(n42), .ZN(n24) );
  NAND2_X1 U32 ( .A1(n104), .A2(n43), .ZN(n39) );
  NAND2_X1 U33 ( .A1(n61), .A2(Z_to_plus1), .ZN(n51) );
  NOR2_X1 U35 ( .A1(n47), .A2(n51), .ZN(n58) );
  OAI21_X1 U36 ( .B1(n48), .B2(n51), .A(n52), .ZN(n50) );
  INV_X1 U37 ( .A(n72), .ZN(n98) );
  OAI21_X1 U38 ( .B1(n41), .B2(n107), .A(N56), .ZN(n40) );
  NAND2_X1 U39 ( .A1(n61), .A2(n41), .ZN(n45) );
  AND2_X1 U40 ( .A1(N56), .A2(incre_en), .ZN(n61) );
  NAND2_X1 U41 ( .A1(n41), .A2(n105), .ZN(n42) );
  INV_X1 U42 ( .A(incre_en), .ZN(n107) );
  OAI21_X1 U43 ( .B1(srst), .B2(n39), .A(n40), .ZN(n21) );
  AOI22_X1 U45 ( .A1(P_from_plus1[0]), .A2(n23), .B1(P_from_minus1[0]), .B2(
        n24), .ZN(n62) );
  OAI21_X1 U46 ( .B1(n39), .B2(n13), .A(n59), .ZN(n48) );
  AOI22_X1 U47 ( .A1(P_from_plus1[1]), .A2(n23), .B1(P_from_minus1[1]), .B2(
        n24), .ZN(n59) );
  AOI21_X1 U48 ( .B1(n57), .B2(bit_cnt), .A(n58), .ZN(n52) );
  OAI221_X1 U49 ( .B1(n102), .B2(n100), .C1(n44), .C2(n45), .A(n46), .ZN(N51)
         );
  INV_X1 U50 ( .A(n50), .ZN(n100) );
  OAI221_X1 U51 ( .B1(n55), .B2(n45), .C1(n101), .C2(n52), .A(n56), .ZN(N50)
         );
  INV_X1 U52 ( .A(n48), .ZN(n101) );
  INV_X1 U53 ( .A(X[1]), .ZN(n88) );
  OAI211_X1 U54 ( .C1(P_to_plus1minus1[0]), .C2(n45), .A(n60), .B(n99), .ZN(
        N49) );
  INV_X1 U55 ( .A(n58), .ZN(n99) );
  OAI21_X1 U56 ( .B1(n29), .B2(n19), .A(n30), .ZN(n67) );
  NAND2_X1 U57 ( .A1(R_to_plus1minus1[3]), .A2(n21), .ZN(n30) );
  OAI21_X1 U58 ( .B1(n35), .B2(n19), .A(n36), .ZN(n70) );
  AOI222_X1 U59 ( .A1(X[0]), .A2(n22), .B1(R_from_plus1[0]), .B2(n23), .C1(
        R_from_minus1[0]), .C2(n24), .ZN(n35) );
  NAND2_X1 U60 ( .A1(R_to_plus1minus1[0]), .A2(n21), .ZN(n36) );
  OAI21_X1 U61 ( .B1(n33), .B2(n19), .A(n34), .ZN(n69) );
  AOI222_X1 U62 ( .A1(X[1]), .A2(n22), .B1(R_from_plus1[1]), .B2(n23), .C1(
        R_from_minus1[1]), .C2(n24), .ZN(n33) );
  NAND2_X1 U63 ( .A1(R_to_plus1minus1[1]), .A2(n21), .ZN(n34) );
  OAI21_X1 U64 ( .B1(n31), .B2(n19), .A(n32), .ZN(n68) );
  AOI222_X1 U65 ( .A1(X[2]), .A2(n22), .B1(R_from_plus1[2]), .B2(n23), .C1(
        R_from_minus1[2]), .C2(n24), .ZN(n31) );
  NAND2_X1 U66 ( .A1(R_to_plus1minus1[2]), .A2(n21), .ZN(n32) );
  OAI21_X1 U67 ( .B1(n27), .B2(n19), .A(n28), .ZN(n66) );
  AOI222_X1 U68 ( .A1(X[4]), .A2(n22), .B1(R_from_plus1[4]), .B2(n23), .C1(
        R_from_minus1[4]), .C2(n24), .ZN(n27) );
  NAND2_X1 U69 ( .A1(R_to_plus1minus1[4]), .A2(n21), .ZN(n28) );
  OAI21_X1 U75 ( .B1(n25), .B2(n19), .A(n26), .ZN(n65) );
  AOI222_X1 U76 ( .A1(X[5]), .A2(n22), .B1(R_from_plus1[5]), .B2(n23), .C1(
        R_from_minus1[5]), .C2(n24), .ZN(n25) );
  NAND2_X1 U77 ( .A1(R_to_plus1minus1[5]), .A2(n21), .ZN(n26) );
  OAI21_X1 U78 ( .B1(n18), .B2(n19), .A(n20), .ZN(n64) );
  AOI222_X1 U79 ( .A1(X[6]), .A2(n22), .B1(R_from_plus1[6]), .B2(n23), .C1(
        R_from_minus1[6]), .C2(n24), .ZN(n18) );
  NAND2_X1 U80 ( .A1(R_to_plus1minus1[6]), .A2(n21), .ZN(n20) );
  OAI21_X1 U81 ( .B1(n37), .B2(n19), .A(n38), .ZN(n71) );
  AOI222_X1 U82 ( .A1(X[7]), .A2(n22), .B1(R_from_plus1[7]), .B2(n23), .C1(
        R_from_minus1[7]), .C2(n24), .ZN(n37) );
  NAND2_X1 U83 ( .A1(R_to_plus1minus1[7]), .A2(n21), .ZN(n38) );
  INV_X1 U84 ( .A(n53), .ZN(n102) );
  OAI21_X1 U85 ( .B1(n12), .B2(n39), .A(n54), .ZN(n53) );
  AOI22_X1 U86 ( .A1(P_from_plus1[2]), .A2(n23), .B1(P_from_minus1[2]), .B2(
        n24), .ZN(n54) );
  INV_X1 U87 ( .A(n78), .ZN(n95) );
  NAND2_X1 U88 ( .A1(n40), .A2(n106), .ZN(n19) );
  INV_X1 U89 ( .A(srst), .ZN(n106) );
  NOR2_X1 U90 ( .A1(bit_cnt), .A2(srst), .ZN(N56) );
  NOR2_X1 U91 ( .A1(n107), .A2(srst), .ZN(n57) );
  INV_X1 U92 ( .A(n41), .ZN(Z_to_plus1) );
  NOR2_X1 U93 ( .A1(n63), .A2(Z_from_minus1), .ZN(n41) );
  NOR4_X1 U94 ( .A1(bit_cnt), .A2(P_to_plus1minus1[1]), .A3(
        P_to_plus1minus1[0]), .A4(n12), .ZN(n63) );
  NAND2_X1 U95 ( .A1(P_to_plus1minus1[0]), .A2(P_to_plus1minus1[1]), .ZN(n49)
         );
  AOI222_X1 U97 ( .A1(X[3]), .A2(n22), .B1(R_from_plus1[3]), .B2(n23), .C1(
        R_from_minus1[3]), .C2(n24), .ZN(n29) );
  NAND2_X1 U100 ( .A1(R_to_plus1minus1[7]), .A2(n92), .ZN(n73) );
  OAI21_X1 U101 ( .B1(X[6]), .B2(n97), .A(n73), .ZN(n72) );
  NAND3_X1 U102 ( .A1(n73), .A2(n97), .A3(X[6]), .ZN(n74) );
  OAI21_X1 U103 ( .B1(R_to_plus1minus1[7]), .B2(n92), .A(n74), .ZN(n77) );
  OAI21_X1 U107 ( .B1(n94), .B2(X[2]), .A(n79), .ZN(n78) );
  AOI21_X1 U108 ( .B1(R_to_plus1minus1[1]), .B2(n88), .A(R_to_plus1minus1[0]), 
        .ZN(n81) );
  NAND2_X1 U109 ( .A1(n87), .A2(n86), .ZN(T) );
  INV_X1 U3 ( .A(n108), .ZN(n84) );
  OAI21_X1 U4 ( .B1(n85), .B2(n112), .A(n111), .ZN(n108) );
  NAND3_X1 U5 ( .A1(X[2]), .A2(n94), .A3(n79), .ZN(n80) );
  NAND2_X1 U7 ( .A1(R_to_plus1minus1[3]), .A2(n114), .ZN(n79) );
  OAI21_X1 U9 ( .B1(n39), .B2(n14), .A(n62), .ZN(n47) );
  NOR2_X1 U11 ( .A1(n43), .A2(n104), .ZN(n23) );
  INV_X1 U12 ( .A(n42), .ZN(n104) );
  AOI21_X1 U13 ( .B1(T), .B2(n105), .A(Z_to_plus1), .ZN(n43) );
  OAI211_X1 U14 ( .C1(n95), .C2(n85), .A(n84), .B(n98), .ZN(n86) );
  NAND3_X1 U15 ( .A1(n105), .A2(n86), .A3(n87), .ZN(T_to_plus1) );
  AOI21_X1 U16 ( .B1(n76), .B2(n98), .A(n77), .ZN(n87) );
  INV_X1 U19 ( .A(T_from_minus1), .ZN(n105) );
  OAI21_X1 U20 ( .B1(n91), .B2(R_to_plus1minus1[5]), .A(n110), .ZN(n76) );
  OR3_X1 U21 ( .A1(n82), .A2(R_to_plus1minus1[4]), .A3(n90), .ZN(n110) );
  NAND2_X1 U22 ( .A1(n80), .A2(n15), .ZN(n85) );
  AOI21_X1 U23 ( .B1(R_to_plus1minus1[4]), .B2(n90), .A(n82), .ZN(n111) );
  AND2_X1 U24 ( .A1(n91), .A2(R_to_plus1minus1[5]), .ZN(n82) );
  NAND2_X1 U25 ( .A1(n8), .A2(n7), .ZN(n112) );
  NAND2_X1 U26 ( .A1(X[3]), .A2(n109), .ZN(n15) );
  INV_X1 U27 ( .A(X[3]), .ZN(n114) );
endmodule


module unit_cell_R_WIDTH8_N5_P_WIDTH3_4 ( srst, clk, incre_en, X, R_from_plus1, 
        R_from_minus1, P_from_plus1, P_from_minus1, Z_from_minus1, 
        T_from_minus1, R_to_plus1minus1, P_to_plus1minus1, Z_to_plus1, 
        T_to_plus1 );
  input [7:0] X;
  input [7:0] R_from_plus1;
  input [7:0] R_from_minus1;
  input [2:0] P_from_plus1;
  input [2:0] P_from_minus1;
  output [7:0] R_to_plus1minus1;
  output [2:0] P_to_plus1minus1;
  input srst, clk, incre_en, Z_from_minus1, T_from_minus1;
  output Z_to_plus1, T_to_plus1;
  wire   bit_cnt, N49, N50, N51, N56, T, n1, n2, n3, n4, n6, n7, n8, n9, n10,
         n11, n15, n16, n17, n72, n73, n74, n75, n76, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155;

  NAND4_X1 U70 ( .A1(n89), .A2(n92), .A3(n121), .A4(n120), .ZN(n122) );
  XOR2_X1 U71 ( .A(n119), .B(P_to_plus1minus1[2]), .Z(n124) );
  NAND3_X1 U72 ( .A1(n89), .A2(n121), .A3(n91), .ZN(n112) );
  XOR2_X1 U73 ( .A(n151), .B(P_to_plus1minus1[1]), .Z(n113) );
  NAND3_X1 U74 ( .A1(n111), .A2(n121), .A3(bit_cnt), .ZN(n108) );
  DFF_X1 bit_cnt_reg ( .D(N56), .CK(clk), .Q(bit_cnt) );
  DFF_X1 R_reg_7_ ( .D(n97), .CK(clk), .Q(R_to_plus1minus1[7]) );
  DFF_X1 R_reg_6_ ( .D(n104), .CK(clk), .Q(R_to_plus1minus1[6]), .QN(n87) );
  DFF_X1 R_reg_5_ ( .D(n103), .CK(clk), .Q(R_to_plus1minus1[5]) );
  DFF_X1 R_reg_4_ ( .D(n102), .CK(clk), .Q(R_to_plus1minus1[4]) );
  DFF_X1 R_reg_2_ ( .D(n100), .CK(clk), .Q(R_to_plus1minus1[2]), .QN(n85) );
  DFF_X1 R_reg_1_ ( .D(n99), .CK(clk), .Q(R_to_plus1minus1[1]), .QN(n84) );
  DFF_X1 R_reg_0_ ( .D(n98), .CK(clk), .Q(R_to_plus1minus1[0]) );
  DFF_X1 R_reg_3_ ( .D(n101), .CK(clk), .Q(R_to_plus1minus1[3]), .QN(n3) );
  DFF_X1 P_reg_1_ ( .D(N50), .CK(clk), .Q(P_to_plus1minus1[1]), .QN(n152) );
  DFF_X1 P_reg_0_ ( .D(N49), .CK(clk), .Q(P_to_plus1minus1[0]), .QN(n151) );
  DFF_X1 P_reg_2_ ( .D(N51), .CK(clk), .Q(P_to_plus1minus1[2]), .QN(n153) );
  AND2_X1 U4 ( .A1(n3), .A2(X[3]), .ZN(n1) );
  INV_X1 U5 ( .A(X[3]), .ZN(n80) );
  NAND2_X1 U6 ( .A1(n127), .A2(n94), .ZN(n126) );
  AOI21_X1 U7 ( .B1(n111), .B2(bit_cnt), .A(n110), .ZN(n116) );
  NOR2_X2 U8 ( .A1(n1), .A2(n4), .ZN(n2) );
  INV_X1 U9 ( .A(n2), .ZN(n76) );
  OR2_X1 U14 ( .A1(n121), .A2(n117), .ZN(n6) );
  NAND2_X1 U15 ( .A1(n93), .A2(n125), .ZN(n129) );
  INV_X1 U16 ( .A(n117), .ZN(n89) );
  NOR2_X1 U17 ( .A1(n126), .A2(n125), .ZN(n146) );
  AND2_X1 U18 ( .A1(n125), .A2(n126), .ZN(n144) );
  NAND2_X1 U20 ( .A1(n107), .A2(Z_to_plus1), .ZN(n117) );
  NOR2_X1 U21 ( .A1(n121), .A2(n117), .ZN(n110) );
  OAI21_X1 U22 ( .B1(n120), .B2(n117), .A(n116), .ZN(n118) );
  INV_X1 U23 ( .A(n7), .ZN(n88) );
  OAI21_X1 U24 ( .B1(n127), .B2(n96), .A(N56), .ZN(n128) );
  NAND2_X1 U25 ( .A1(n107), .A2(n127), .ZN(n123) );
  AND2_X1 U26 ( .A1(N56), .A2(incre_en), .ZN(n107) );
  INV_X1 U27 ( .A(incre_en), .ZN(n96) );
  OAI21_X1 U28 ( .B1(srst), .B2(n129), .A(n128), .ZN(n147) );
  AOI22_X1 U29 ( .A1(P_from_plus1[0]), .A2(n145), .B1(P_from_minus1[0]), .B2(
        n144), .ZN(n106) );
  OAI21_X1 U30 ( .B1(n129), .B2(n152), .A(n109), .ZN(n120) );
  AOI22_X1 U31 ( .A1(P_from_plus1[1]), .A2(n145), .B1(P_from_minus1[1]), .B2(
        n144), .ZN(n109) );
  OAI221_X1 U32 ( .B1(n92), .B2(n90), .C1(n124), .C2(n123), .A(n122), .ZN(N51)
         );
  INV_X1 U33 ( .A(n118), .ZN(n90) );
  OAI221_X1 U34 ( .B1(n113), .B2(n123), .C1(n91), .C2(n116), .A(n112), .ZN(N50) );
  INV_X1 U35 ( .A(n120), .ZN(n91) );
  INV_X1 U36 ( .A(X[1]), .ZN(n79) );
  OAI211_X1 U37 ( .C1(P_to_plus1minus1[0]), .C2(n123), .A(n108), .B(n6), .ZN(
        N49) );
  OAI21_X1 U38 ( .B1(n139), .B2(n149), .A(n138), .ZN(n101) );
  NAND2_X1 U39 ( .A1(R_to_plus1minus1[3]), .A2(n147), .ZN(n138) );
  OAI21_X1 U40 ( .B1(n133), .B2(n149), .A(n132), .ZN(n98) );
  AOI222_X1 U41 ( .A1(X[0]), .A2(n146), .B1(R_from_plus1[0]), .B2(n145), .C1(
        R_from_minus1[0]), .C2(n144), .ZN(n133) );
  NAND2_X1 U42 ( .A1(R_to_plus1minus1[0]), .A2(n147), .ZN(n132) );
  OAI21_X1 U43 ( .B1(n135), .B2(n149), .A(n134), .ZN(n99) );
  AOI222_X1 U44 ( .A1(X[1]), .A2(n146), .B1(R_from_plus1[1]), .B2(n145), .C1(
        R_from_minus1[1]), .C2(n144), .ZN(n135) );
  NAND2_X1 U45 ( .A1(R_to_plus1minus1[1]), .A2(n147), .ZN(n134) );
  OAI21_X1 U46 ( .B1(n137), .B2(n149), .A(n136), .ZN(n100) );
  AOI222_X1 U47 ( .A1(X[2]), .A2(n146), .B1(R_from_plus1[2]), .B2(n145), .C1(
        R_from_minus1[2]), .C2(n144), .ZN(n137) );
  NAND2_X1 U48 ( .A1(R_to_plus1minus1[2]), .A2(n147), .ZN(n136) );
  OAI21_X1 U49 ( .B1(n141), .B2(n149), .A(n140), .ZN(n102) );
  AOI222_X1 U50 ( .A1(X[4]), .A2(n146), .B1(R_from_plus1[4]), .B2(n145), .C1(
        R_from_minus1[4]), .C2(n144), .ZN(n141) );
  NAND2_X1 U52 ( .A1(R_to_plus1minus1[4]), .A2(n147), .ZN(n140) );
  OAI21_X1 U53 ( .B1(n143), .B2(n149), .A(n142), .ZN(n103) );
  AOI222_X1 U54 ( .A1(X[5]), .A2(n146), .B1(R_from_plus1[5]), .B2(n145), .C1(
        R_from_minus1[5]), .C2(n144), .ZN(n143) );
  NAND2_X1 U55 ( .A1(R_to_plus1minus1[5]), .A2(n147), .ZN(n142) );
  OAI21_X1 U56 ( .B1(n150), .B2(n149), .A(n148), .ZN(n104) );
  AOI222_X1 U57 ( .A1(X[6]), .A2(n146), .B1(R_from_plus1[6]), .B2(n145), .C1(
        R_from_minus1[6]), .C2(n144), .ZN(n150) );
  NAND2_X1 U58 ( .A1(R_to_plus1minus1[6]), .A2(n147), .ZN(n148) );
  OAI21_X1 U59 ( .B1(n131), .B2(n149), .A(n130), .ZN(n97) );
  AOI222_X1 U60 ( .A1(X[7]), .A2(n146), .B1(R_from_plus1[7]), .B2(n145), .C1(
        R_from_minus1[7]), .C2(n144), .ZN(n131) );
  NAND2_X1 U61 ( .A1(R_to_plus1minus1[7]), .A2(n147), .ZN(n130) );
  INV_X1 U62 ( .A(X[7]), .ZN(n83) );
  INV_X1 U63 ( .A(X[4]), .ZN(n81) );
  INV_X1 U64 ( .A(X[5]), .ZN(n82) );
  INV_X1 U65 ( .A(n115), .ZN(n92) );
  OAI21_X1 U66 ( .B1(n153), .B2(n129), .A(n114), .ZN(n115) );
  AOI22_X1 U67 ( .A1(P_from_plus1[2]), .A2(n145), .B1(P_from_minus1[2]), .B2(
        n144), .ZN(n114) );
  INV_X1 U68 ( .A(n16), .ZN(n86) );
  NAND2_X1 U69 ( .A1(n128), .A2(n95), .ZN(n149) );
  INV_X1 U75 ( .A(srst), .ZN(n95) );
  NOR2_X1 U76 ( .A1(bit_cnt), .A2(srst), .ZN(N56) );
  NOR2_X1 U77 ( .A1(n96), .A2(srst), .ZN(n111) );
  INV_X1 U78 ( .A(n127), .ZN(Z_to_plus1) );
  NOR2_X1 U79 ( .A1(n105), .A2(Z_from_minus1), .ZN(n127) );
  NOR4_X1 U80 ( .A1(bit_cnt), .A2(P_to_plus1minus1[1]), .A3(
        P_to_plus1minus1[0]), .A4(n153), .ZN(n105) );
  NAND2_X1 U81 ( .A1(P_to_plus1minus1[0]), .A2(P_to_plus1minus1[1]), .ZN(n119)
         );
  AOI222_X1 U82 ( .A1(X[3]), .A2(n146), .B1(R_from_plus1[3]), .B2(n145), .C1(
        R_from_minus1[3]), .C2(n144), .ZN(n139) );
  INV_X1 U83 ( .A(T_from_minus1), .ZN(n94) );
  NAND2_X1 U84 ( .A1(R_to_plus1minus1[7]), .A2(n83), .ZN(n8) );
  OAI21_X1 U85 ( .B1(X[6]), .B2(n87), .A(n8), .ZN(n7) );
  NAND3_X1 U86 ( .A1(n8), .A2(n87), .A3(X[6]), .ZN(n9) );
  OAI21_X1 U87 ( .B1(R_to_plus1minus1[7]), .B2(n83), .A(n9), .ZN(n15) );
  AND2_X1 U88 ( .A1(R_to_plus1minus1[5]), .A2(n82), .ZN(n73) );
  OR3_X1 U89 ( .A1(n73), .A2(R_to_plus1minus1[4]), .A3(n81), .ZN(n10) );
  OAI21_X1 U90 ( .B1(R_to_plus1minus1[5]), .B2(n82), .A(n10), .ZN(n11) );
  OAI21_X1 U93 ( .B1(n85), .B2(X[2]), .A(n17), .ZN(n16) );
  AOI21_X1 U94 ( .B1(R_to_plus1minus1[1]), .B2(n79), .A(R_to_plus1minus1[0]), 
        .ZN(n72) );
  AOI22_X1 U95 ( .A1(X[1]), .A2(n84), .B1(n72), .B2(X[0]), .ZN(n74) );
  AOI221_X1 U96 ( .B1(n74), .B2(n2), .C1(R_to_plus1minus1[4]), .C2(n81), .A(
        n73), .ZN(n75) );
  OAI21_X1 U3 ( .B1(n129), .B2(n151), .A(n106), .ZN(n121) );
  NOR2_X2 U10 ( .A1(n125), .A2(n93), .ZN(n145) );
  INV_X1 U11 ( .A(n126), .ZN(n93) );
  AOI21_X1 U12 ( .B1(T), .B2(n94), .A(Z_to_plus1), .ZN(n125) );
  OR2_X1 U13 ( .A1(T_from_minus1), .A2(T), .ZN(T_to_plus1) );
  NAND2_X1 U19 ( .A1(n154), .A2(n155), .ZN(T) );
  AOI21_X1 U51 ( .B1(n88), .B2(n11), .A(n15), .ZN(n154) );
  OAI211_X1 U91 ( .C1(n86), .C2(n76), .A(n75), .B(n88), .ZN(n155) );
  AND3_X1 U92 ( .A1(n85), .A2(X[2]), .A3(n17), .ZN(n4) );
  NAND2_X1 U97 ( .A1(n80), .A2(R_to_plus1minus1[3]), .ZN(n17) );
endmodule


module unit_cell_R_WIDTH8_N5_P_WIDTH3_3 ( srst, clk, incre_en, X, R_from_plus1, 
        R_from_minus1, P_from_plus1, P_from_minus1, Z_from_minus1, 
        T_from_minus1, R_to_plus1minus1, P_to_plus1minus1, Z_to_plus1, 
        T_to_plus1 );
  input [7:0] X;
  input [7:0] R_from_plus1;
  input [7:0] R_from_minus1;
  input [2:0] P_from_plus1;
  input [2:0] P_from_minus1;
  output [7:0] R_to_plus1minus1;
  output [2:0] P_to_plus1minus1;
  input srst, clk, incre_en, Z_from_minus1, T_from_minus1;
  output Z_to_plus1, T_to_plus1;
  wire   bit_cnt, N49, N50, N51, N56, T, n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n15, n16, n17, n72, n73, n74, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154;

  NAND4_X1 U70 ( .A1(n88), .A2(n91), .A3(n1), .A4(n119), .ZN(n121) );
  XOR2_X1 U71 ( .A(n118), .B(P_to_plus1minus1[2]), .Z(n123) );
  NAND3_X1 U72 ( .A1(n88), .A2(n1), .A3(n90), .ZN(n111) );
  XOR2_X1 U73 ( .A(n150), .B(P_to_plus1minus1[1]), .Z(n112) );
  NAND3_X1 U74 ( .A1(n110), .A2(n1), .A3(bit_cnt), .ZN(n107) );
  DFF_X1 bit_cnt_reg ( .D(N56), .CK(clk), .Q(bit_cnt) );
  DFF_X1 R_reg_0_ ( .D(n97), .CK(clk), .Q(R_to_plus1minus1[0]) );
  DFF_X1 R_reg_7_ ( .D(n96), .CK(clk), .Q(R_to_plus1minus1[7]) );
  DFF_X1 R_reg_6_ ( .D(n103), .CK(clk), .Q(R_to_plus1minus1[6]), .QN(n86) );
  DFF_X1 R_reg_5_ ( .D(n102), .CK(clk), .Q(R_to_plus1minus1[5]) );
  DFF_X1 R_reg_4_ ( .D(n101), .CK(clk), .Q(R_to_plus1minus1[4]) );
  DFF_X1 R_reg_3_ ( .D(n100), .CK(clk), .Q(R_to_plus1minus1[3]) );
  DFF_X1 R_reg_2_ ( .D(n99), .CK(clk), .Q(R_to_plus1minus1[2]), .QN(n83) );
  DFF_X1 R_reg_1_ ( .D(n98), .CK(clk), .Q(R_to_plus1minus1[1]), .QN(n82) );
  DFF_X1 P_reg_1_ ( .D(N50), .CK(clk), .Q(P_to_plus1minus1[1]), .QN(n151) );
  DFF_X1 P_reg_0_ ( .D(N49), .CK(clk), .Q(P_to_plus1minus1[0]), .QN(n150) );
  DFF_X1 P_reg_2_ ( .D(N51), .CK(clk), .Q(P_to_plus1minus1[2]), .QN(n152) );
  AOI21_X2 U3 ( .B1(n93), .B2(T), .A(Z_to_plus1), .ZN(n124) );
  OR2_X2 U4 ( .A1(T_from_minus1), .A2(T), .ZN(T_to_plus1) );
  NAND2_X1 U5 ( .A1(n126), .A2(n93), .ZN(n125) );
  AOI21_X1 U6 ( .B1(n110), .B2(bit_cnt), .A(n109), .ZN(n115) );
  CLKBUF_X1 U7 ( .A(n120), .Z(n1) );
  OAI21_X1 U8 ( .B1(n128), .B2(n150), .A(n105), .ZN(n120) );
  AND2_X2 U9 ( .A1(n124), .A2(n125), .ZN(n143) );
  OR2_X1 U10 ( .A1(n1), .A2(n116), .ZN(n2) );
  CLKBUF_X1 U11 ( .A(n144), .Z(n3) );
  NOR2_X1 U12 ( .A1(n124), .A2(n92), .ZN(n144) );
  INV_X1 U13 ( .A(n116), .ZN(n88) );
  INV_X1 U14 ( .A(n125), .ZN(n92) );
  NAND2_X1 U15 ( .A1(n106), .A2(Z_to_plus1), .ZN(n116) );
  NOR2_X1 U16 ( .A1(n120), .A2(n116), .ZN(n109) );
  OAI21_X1 U17 ( .B1(n119), .B2(n116), .A(n115), .ZN(n117) );
  INV_X1 U18 ( .A(n4), .ZN(n87) );
  OAI21_X1 U19 ( .B1(n126), .B2(n95), .A(N56), .ZN(n127) );
  NAND2_X1 U20 ( .A1(n106), .A2(n126), .ZN(n122) );
  AND2_X1 U21 ( .A1(N56), .A2(incre_en), .ZN(n106) );
  INV_X1 U22 ( .A(incre_en), .ZN(n95) );
  OAI21_X1 U23 ( .B1(srst), .B2(n128), .A(n127), .ZN(n146) );
  INV_X1 U24 ( .A(n74), .ZN(n85) );
  AOI22_X1 U25 ( .A1(P_from_plus1[0]), .A2(n144), .B1(P_from_minus1[0]), .B2(
        n143), .ZN(n105) );
  OAI21_X1 U26 ( .B1(n128), .B2(n151), .A(n108), .ZN(n119) );
  AOI22_X1 U27 ( .A1(P_from_plus1[1]), .A2(n144), .B1(P_from_minus1[1]), .B2(
        n143), .ZN(n108) );
  OAI221_X1 U28 ( .B1(n91), .B2(n89), .C1(n123), .C2(n122), .A(n121), .ZN(N51)
         );
  INV_X1 U29 ( .A(n117), .ZN(n89) );
  OAI221_X1 U30 ( .B1(n112), .B2(n122), .C1(n90), .C2(n115), .A(n111), .ZN(N50) );
  INV_X1 U31 ( .A(n119), .ZN(n90) );
  INV_X1 U32 ( .A(X[1]), .ZN(n77) );
  OAI211_X1 U33 ( .C1(P_to_plus1minus1[0]), .C2(n122), .A(n107), .B(n2), .ZN(
        N49) );
  OAI21_X1 U34 ( .B1(n138), .B2(n148), .A(n137), .ZN(n100) );
  NAND2_X1 U35 ( .A1(R_to_plus1minus1[3]), .A2(n146), .ZN(n137) );
  OAI21_X1 U36 ( .B1(n132), .B2(n148), .A(n131), .ZN(n97) );
  AOI222_X1 U37 ( .A1(X[0]), .A2(n145), .B1(R_from_plus1[0]), .B2(n144), .C1(
        R_from_minus1[0]), .C2(n143), .ZN(n132) );
  NAND2_X1 U38 ( .A1(R_to_plus1minus1[0]), .A2(n146), .ZN(n131) );
  OAI21_X1 U39 ( .B1(n134), .B2(n148), .A(n133), .ZN(n98) );
  AOI222_X1 U40 ( .A1(X[1]), .A2(n145), .B1(R_from_plus1[1]), .B2(n3), .C1(
        R_from_minus1[1]), .C2(n143), .ZN(n134) );
  NAND2_X1 U41 ( .A1(R_to_plus1minus1[1]), .A2(n146), .ZN(n133) );
  OAI21_X1 U42 ( .B1(n136), .B2(n148), .A(n135), .ZN(n99) );
  AOI222_X1 U43 ( .A1(X[2]), .A2(n145), .B1(R_from_plus1[2]), .B2(n3), .C1(
        R_from_minus1[2]), .C2(n143), .ZN(n136) );
  NAND2_X1 U44 ( .A1(R_to_plus1minus1[2]), .A2(n146), .ZN(n135) );
  OAI21_X1 U45 ( .B1(n140), .B2(n148), .A(n139), .ZN(n101) );
  AOI222_X1 U46 ( .A1(X[4]), .A2(n145), .B1(R_from_plus1[4]), .B2(n3), .C1(
        R_from_minus1[4]), .C2(n143), .ZN(n140) );
  NAND2_X1 U47 ( .A1(R_to_plus1minus1[4]), .A2(n146), .ZN(n139) );
  OAI21_X1 U48 ( .B1(n142), .B2(n148), .A(n141), .ZN(n102) );
  AOI222_X1 U49 ( .A1(X[5]), .A2(n145), .B1(R_from_plus1[5]), .B2(n3), .C1(
        R_from_minus1[5]), .C2(n143), .ZN(n142) );
  NAND2_X1 U50 ( .A1(R_to_plus1minus1[5]), .A2(n146), .ZN(n141) );
  OAI21_X1 U51 ( .B1(n149), .B2(n148), .A(n147), .ZN(n103) );
  AOI222_X1 U52 ( .A1(X[6]), .A2(n145), .B1(R_from_plus1[6]), .B2(n3), .C1(
        R_from_minus1[6]), .C2(n143), .ZN(n149) );
  NAND2_X1 U53 ( .A1(R_to_plus1minus1[6]), .A2(n146), .ZN(n147) );
  OAI21_X1 U54 ( .B1(n130), .B2(n148), .A(n129), .ZN(n96) );
  AOI222_X1 U55 ( .A1(X[7]), .A2(n145), .B1(R_from_plus1[7]), .B2(n3), .C1(
        R_from_minus1[7]), .C2(n143), .ZN(n130) );
  NAND2_X1 U56 ( .A1(R_to_plus1minus1[7]), .A2(n146), .ZN(n129) );
  INV_X1 U57 ( .A(X[7]), .ZN(n81) );
  INV_X1 U58 ( .A(X[4]), .ZN(n79) );
  INV_X1 U59 ( .A(X[5]), .ZN(n80) );
  INV_X1 U60 ( .A(n114), .ZN(n91) );
  OAI21_X1 U61 ( .B1(n152), .B2(n128), .A(n113), .ZN(n114) );
  AOI22_X1 U62 ( .A1(P_from_plus1[2]), .A2(n144), .B1(P_from_minus1[2]), .B2(
        n143), .ZN(n113) );
  INV_X1 U63 ( .A(n10), .ZN(n84) );
  NAND2_X1 U64 ( .A1(n127), .A2(n94), .ZN(n148) );
  INV_X1 U65 ( .A(srst), .ZN(n94) );
  NOR2_X1 U66 ( .A1(bit_cnt), .A2(srst), .ZN(N56) );
  NOR2_X1 U67 ( .A1(n95), .A2(srst), .ZN(n110) );
  NOR2_X1 U68 ( .A1(n104), .A2(Z_from_minus1), .ZN(n126) );
  NOR4_X1 U69 ( .A1(bit_cnt), .A2(P_to_plus1minus1[1]), .A3(
        P_to_plus1minus1[0]), .A4(n152), .ZN(n104) );
  INV_X1 U75 ( .A(n126), .ZN(Z_to_plus1) );
  NAND2_X1 U76 ( .A1(P_to_plus1minus1[0]), .A2(P_to_plus1minus1[1]), .ZN(n118)
         );
  AOI222_X1 U77 ( .A1(X[3]), .A2(n145), .B1(R_from_plus1[3]), .B2(n3), .C1(
        R_from_minus1[3]), .C2(n143), .ZN(n138) );
  INV_X1 U78 ( .A(X[3]), .ZN(n78) );
  NOR2_X1 U79 ( .A1(n125), .A2(n124), .ZN(n145) );
  NAND2_X1 U80 ( .A1(n92), .A2(n124), .ZN(n128) );
  INV_X1 U81 ( .A(T_from_minus1), .ZN(n93) );
  NAND2_X1 U82 ( .A1(R_to_plus1minus1[7]), .A2(n81), .ZN(n5) );
  OAI21_X1 U83 ( .B1(X[6]), .B2(n86), .A(n5), .ZN(n4) );
  NAND3_X1 U84 ( .A1(n5), .A2(n86), .A3(X[6]), .ZN(n6) );
  OAI21_X1 U85 ( .B1(R_to_plus1minus1[7]), .B2(n81), .A(n6), .ZN(n9) );
  AND2_X1 U86 ( .A1(R_to_plus1minus1[5]), .A2(n80), .ZN(n17) );
  OR3_X1 U87 ( .A1(n17), .A2(R_to_plus1minus1[4]), .A3(n79), .ZN(n7) );
  OAI21_X1 U88 ( .B1(R_to_plus1minus1[5]), .B2(n80), .A(n7), .ZN(n8) );
  NAND2_X1 U90 ( .A1(R_to_plus1minus1[3]), .A2(n78), .ZN(n11) );
  OAI21_X1 U91 ( .B1(n83), .B2(X[2]), .A(n11), .ZN(n10) );
  NAND3_X1 U92 ( .A1(n11), .A2(n83), .A3(X[2]), .ZN(n15) );
  OAI21_X1 U93 ( .B1(R_to_plus1minus1[3]), .B2(n78), .A(n15), .ZN(n74) );
  AOI21_X1 U94 ( .B1(R_to_plus1minus1[1]), .B2(n77), .A(R_to_plus1minus1[0]), 
        .ZN(n16) );
  AOI22_X1 U95 ( .A1(X[1]), .A2(n82), .B1(n16), .B2(X[0]), .ZN(n72) );
  AOI221_X1 U96 ( .B1(n72), .B2(n85), .C1(R_to_plus1minus1[4]), .C2(n79), .A(
        n17), .ZN(n73) );
  NAND2_X1 U89 ( .A1(n154), .A2(n153), .ZN(T) );
  AOI21_X1 U97 ( .B1(n87), .B2(n8), .A(n9), .ZN(n153) );
  OAI211_X1 U98 ( .C1(n84), .C2(n74), .A(n73), .B(n87), .ZN(n154) );
endmodule


module unit_cell_R_WIDTH8_N5_P_WIDTH3_2 ( srst, clk, incre_en, X, R_from_plus1, 
        R_from_minus1, P_from_plus1, P_from_minus1, Z_from_minus1, 
        T_from_minus1, R_to_plus1minus1, P_to_plus1minus1, Z_to_plus1, 
        T_to_plus1 );
  input [7:0] X;
  input [7:0] R_from_plus1;
  input [7:0] R_from_minus1;
  input [2:0] P_from_plus1;
  input [2:0] P_from_minus1;
  output [7:0] R_to_plus1minus1;
  output [2:0] P_to_plus1minus1;
  input srst, clk, incre_en, Z_from_minus1, T_from_minus1;
  output Z_to_plus1, T_to_plus1;
  wire   bit_cnt, N49, N50, N51, N56, T, n1, n3, n6, n8, n9, n10, n11, n15,
         n16, n17, n72, n73, n74, n75, n76, n77, n78, n79, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162;

  AOI21_X2 U51 ( .B1(n100), .B2(T), .A(Z_to_plus1), .ZN(n131) );
  NAND4_X1 U70 ( .A1(n93), .A2(n97), .A3(n6), .A4(n126), .ZN(n128) );
  XOR2_X1 U71 ( .A(n125), .B(P_to_plus1minus1[2]), .Z(n130) );
  NAND3_X1 U72 ( .A1(n93), .A2(n6), .A3(n96), .ZN(n118) );
  XOR2_X1 U73 ( .A(n157), .B(P_to_plus1minus1[1]), .Z(n119) );
  NAND3_X1 U74 ( .A1(n117), .A2(n6), .A3(bit_cnt), .ZN(n114) );
  DFF_X1 bit_cnt_reg ( .D(N56), .CK(clk), .Q(bit_cnt) );
  DFF_X1 R_reg_7_ ( .D(n103), .CK(clk), .Q(R_to_plus1minus1[7]) );
  DFF_X1 R_reg_6_ ( .D(n110), .CK(clk), .Q(R_to_plus1minus1[6]), .QN(n91) );
  DFF_X1 R_reg_5_ ( .D(n109), .CK(clk), .Q(R_to_plus1minus1[5]) );
  DFF_X1 R_reg_4_ ( .D(n108), .CK(clk), .Q(R_to_plus1minus1[4]) );
  DFF_X1 R_reg_3_ ( .D(n107), .CK(clk), .Q(R_to_plus1minus1[3]) );
  DFF_X1 R_reg_2_ ( .D(n106), .CK(clk), .Q(R_to_plus1minus1[2]), .QN(n88) );
  DFF_X1 R_reg_1_ ( .D(n105), .CK(clk), .Q(R_to_plus1minus1[1]), .QN(n87) );
  DFF_X1 R_reg_0_ ( .D(n104), .CK(clk), .Q(R_to_plus1minus1[0]) );
  DFF_X1 P_reg_0_ ( .D(N49), .CK(clk), .Q(P_to_plus1minus1[0]), .QN(n157) );
  DFF_X1 P_reg_1_ ( .D(N50), .CK(clk), .Q(P_to_plus1minus1[1]), .QN(n158) );
  DFF_X1 P_reg_2_ ( .D(N51), .CK(clk), .Q(P_to_plus1minus1[2]), .QN(n159) );
  OR2_X2 U4 ( .A1(T_from_minus1), .A2(T), .ZN(T_to_plus1) );
  NOR2_X1 U7 ( .A1(n3), .A2(n116), .ZN(n1) );
  AND2_X1 U9 ( .A1(n117), .A2(bit_cnt), .ZN(n3) );
  NOR2_X1 U10 ( .A1(n3), .A2(n116), .ZN(n122) );
  CLKBUF_X1 U13 ( .A(n127), .Z(n6) );
  INV_X1 U15 ( .A(n123), .ZN(n93) );
  AND2_X2 U16 ( .A1(n131), .A2(n132), .ZN(n150) );
  INV_X1 U17 ( .A(n132), .ZN(n98) );
  NAND2_X1 U18 ( .A1(n113), .A2(Z_to_plus1), .ZN(n123) );
  OAI21_X1 U19 ( .B1(n126), .B2(n123), .A(n1), .ZN(n124) );
  INV_X1 U20 ( .A(n9), .ZN(n92) );
  OAI21_X1 U21 ( .B1(n133), .B2(n102), .A(N56), .ZN(n134) );
  NAND2_X1 U22 ( .A1(n113), .A2(n133), .ZN(n129) );
  AND2_X1 U23 ( .A1(N56), .A2(incre_en), .ZN(n113) );
  INV_X1 U24 ( .A(n133), .ZN(Z_to_plus1) );
  INV_X1 U25 ( .A(incre_en), .ZN(n102) );
  OAI21_X1 U26 ( .B1(srst), .B2(n135), .A(n134), .ZN(n153) );
  INV_X1 U27 ( .A(n79), .ZN(n90) );
  OAI21_X1 U28 ( .B1(n135), .B2(n158), .A(n115), .ZN(n126) );
  OAI221_X1 U29 ( .B1(n97), .B2(n95), .C1(n130), .C2(n129), .A(n128), .ZN(N51)
         );
  INV_X1 U30 ( .A(n124), .ZN(n95) );
  OAI221_X1 U31 ( .B1(n119), .B2(n129), .C1(n96), .C2(n122), .A(n118), .ZN(N50) );
  INV_X1 U32 ( .A(n126), .ZN(n96) );
  INV_X1 U33 ( .A(n72), .ZN(n89) );
  INV_X1 U34 ( .A(X[1]), .ZN(n82) );
  OAI211_X1 U35 ( .C1(P_to_plus1minus1[0]), .C2(n129), .A(n114), .B(n94), .ZN(
        N49) );
  INV_X1 U36 ( .A(n116), .ZN(n94) );
  OAI21_X1 U37 ( .B1(n139), .B2(n155), .A(n138), .ZN(n104) );
  NAND2_X1 U38 ( .A1(R_to_plus1minus1[0]), .A2(n153), .ZN(n138) );
  OAI21_X1 U39 ( .B1(n141), .B2(n155), .A(n140), .ZN(n105) );
  NAND2_X1 U40 ( .A1(R_to_plus1minus1[1]), .A2(n153), .ZN(n140) );
  OAI21_X1 U41 ( .B1(n143), .B2(n155), .A(n142), .ZN(n106) );
  NAND2_X1 U42 ( .A1(R_to_plus1minus1[2]), .A2(n153), .ZN(n142) );
  OAI21_X1 U43 ( .B1(n145), .B2(n155), .A(n144), .ZN(n107) );
  NAND2_X1 U44 ( .A1(R_to_plus1minus1[3]), .A2(n153), .ZN(n144) );
  OAI21_X1 U45 ( .B1(n147), .B2(n155), .A(n146), .ZN(n108) );
  NAND2_X1 U46 ( .A1(R_to_plus1minus1[4]), .A2(n153), .ZN(n146) );
  OAI21_X1 U47 ( .B1(n149), .B2(n155), .A(n148), .ZN(n109) );
  NAND2_X1 U48 ( .A1(R_to_plus1minus1[5]), .A2(n153), .ZN(n148) );
  OAI21_X1 U49 ( .B1(n156), .B2(n155), .A(n154), .ZN(n110) );
  NAND2_X1 U50 ( .A1(R_to_plus1minus1[6]), .A2(n153), .ZN(n154) );
  OAI21_X1 U52 ( .B1(n137), .B2(n155), .A(n136), .ZN(n103) );
  NAND2_X1 U53 ( .A1(R_to_plus1minus1[7]), .A2(n153), .ZN(n136) );
  INV_X1 U54 ( .A(X[7]), .ZN(n86) );
  INV_X1 U55 ( .A(X[4]), .ZN(n84) );
  INV_X1 U56 ( .A(X[5]), .ZN(n85) );
  INV_X1 U57 ( .A(n121), .ZN(n97) );
  OAI21_X1 U58 ( .B1(n159), .B2(n135), .A(n120), .ZN(n121) );
  NAND2_X1 U59 ( .A1(n134), .A2(n101), .ZN(n155) );
  INV_X1 U60 ( .A(srst), .ZN(n101) );
  NOR2_X1 U61 ( .A1(bit_cnt), .A2(srst), .ZN(N56) );
  NOR2_X1 U62 ( .A1(n102), .A2(srst), .ZN(n117) );
  NOR2_X1 U63 ( .A1(n111), .A2(Z_from_minus1), .ZN(n133) );
  NOR4_X1 U64 ( .A1(bit_cnt), .A2(P_to_plus1minus1[1]), .A3(
        P_to_plus1minus1[0]), .A4(n159), .ZN(n111) );
  NAND2_X1 U65 ( .A1(P_to_plus1minus1[0]), .A2(P_to_plus1minus1[1]), .ZN(n125)
         );
  INV_X1 U66 ( .A(X[3]), .ZN(n83) );
  BUF_X1 U67 ( .A(n151), .Z(n8) );
  NOR2_X1 U68 ( .A1(n131), .A2(n98), .ZN(n151) );
  NAND2_X1 U69 ( .A1(n133), .A2(n100), .ZN(n132) );
  NOR2_X1 U75 ( .A1(n132), .A2(n131), .ZN(n152) );
  NAND2_X1 U76 ( .A1(n98), .A2(n131), .ZN(n135) );
  AOI222_X1 U77 ( .A1(X[6]), .A2(n152), .B1(R_from_plus1[6]), .B2(n8), .C1(
        R_from_minus1[6]), .C2(n150), .ZN(n156) );
  AOI222_X1 U78 ( .A1(X[5]), .A2(n152), .B1(R_from_plus1[5]), .B2(n8), .C1(
        R_from_minus1[5]), .C2(n150), .ZN(n149) );
  AOI222_X1 U79 ( .A1(X[4]), .A2(n152), .B1(R_from_plus1[4]), .B2(n8), .C1(
        R_from_minus1[4]), .C2(n150), .ZN(n147) );
  AOI222_X1 U80 ( .A1(X[2]), .A2(n152), .B1(R_from_plus1[2]), .B2(n8), .C1(
        R_from_minus1[2]), .C2(n150), .ZN(n143) );
  AOI222_X1 U81 ( .A1(X[1]), .A2(n152), .B1(R_from_plus1[1]), .B2(n8), .C1(
        R_from_minus1[1]), .C2(n150), .ZN(n141) );
  AOI222_X1 U82 ( .A1(X[0]), .A2(n152), .B1(R_from_plus1[0]), .B2(n8), .C1(
        R_from_minus1[0]), .C2(n150), .ZN(n139) );
  AOI222_X1 U83 ( .A1(X[7]), .A2(n152), .B1(R_from_plus1[7]), .B2(n8), .C1(
        R_from_minus1[7]), .C2(n150), .ZN(n137) );
  AOI222_X1 U84 ( .A1(X[3]), .A2(n152), .B1(R_from_plus1[3]), .B2(n8), .C1(
        R_from_minus1[3]), .C2(n150), .ZN(n145) );
  AOI22_X1 U85 ( .A1(P_from_plus1[2]), .A2(n8), .B1(P_from_minus1[2]), .B2(
        n150), .ZN(n120) );
  AOI22_X1 U86 ( .A1(P_from_plus1[1]), .A2(n8), .B1(P_from_minus1[1]), .B2(
        n150), .ZN(n115) );
  INV_X1 U87 ( .A(T_from_minus1), .ZN(n100) );
  NAND2_X1 U88 ( .A1(R_to_plus1minus1[7]), .A2(n86), .ZN(n10) );
  OAI21_X1 U89 ( .B1(X[6]), .B2(n91), .A(n10), .ZN(n9) );
  NAND3_X1 U90 ( .A1(n10), .A2(n91), .A3(X[6]), .ZN(n11) );
  OAI21_X1 U91 ( .B1(R_to_plus1minus1[7]), .B2(n86), .A(n11), .ZN(n17) );
  AND2_X1 U92 ( .A1(R_to_plus1minus1[5]), .A2(n85), .ZN(n76) );
  OR3_X1 U93 ( .A1(n76), .A2(R_to_plus1minus1[4]), .A3(n84), .ZN(n15) );
  OAI21_X1 U94 ( .B1(R_to_plus1minus1[5]), .B2(n85), .A(n15), .ZN(n16) );
  NAND2_X1 U96 ( .A1(R_to_plus1minus1[3]), .A2(n83), .ZN(n73) );
  OAI21_X1 U97 ( .B1(n88), .B2(X[2]), .A(n73), .ZN(n72) );
  NAND3_X1 U98 ( .A1(n73), .A2(n88), .A3(X[2]), .ZN(n74) );
  OAI21_X1 U99 ( .B1(R_to_plus1minus1[3]), .B2(n83), .A(n74), .ZN(n79) );
  AOI21_X1 U100 ( .B1(R_to_plus1minus1[1]), .B2(n82), .A(R_to_plus1minus1[0]), 
        .ZN(n75) );
  AOI22_X1 U101 ( .A1(X[1]), .A2(n87), .B1(n75), .B2(X[0]), .ZN(n77) );
  AOI221_X1 U102 ( .B1(n77), .B2(n90), .C1(R_to_plus1minus1[4]), .C2(n84), .A(
        n76), .ZN(n78) );
  NOR2_X1 U3 ( .A1(n127), .A2(n123), .ZN(n116) );
  OAI21_X1 U5 ( .B1(n157), .B2(n135), .A(n160), .ZN(n127) );
  AOI22_X1 U6 ( .A1(P_from_minus1[0]), .A2(n150), .B1(P_from_plus1[0]), .B2(
        n151), .ZN(n160) );
  NAND2_X1 U8 ( .A1(n162), .A2(n161), .ZN(T) );
  AOI21_X1 U11 ( .B1(n92), .B2(n16), .A(n17), .ZN(n161) );
  OAI211_X1 U12 ( .C1(n89), .C2(n79), .A(n78), .B(n92), .ZN(n162) );
endmodule


module unit_cell_R_WIDTH8_N5_P_WIDTH3_1 ( srst, clk, incre_en, X, R_from_plus1, 
        R_from_minus1, P_from_plus1, P_from_minus1, Z_from_minus1, 
        T_from_minus1, R_to_plus1minus1, P_to_plus1minus1, Z_to_plus1, 
        T_to_plus1 );
  input [7:0] X;
  input [7:0] R_from_plus1;
  input [7:0] R_from_minus1;
  input [2:0] P_from_plus1;
  input [2:0] P_from_minus1;
  output [7:0] R_to_plus1minus1;
  output [2:0] P_to_plus1minus1;
  input srst, clk, incre_en, Z_from_minus1, T_from_minus1;
  output Z_to_plus1, T_to_plus1;
  wire   Z_to_plus10, bit_cnt, N49, N50, N51, N56, T, n4, n7, n8, n9, n10, n11,
         n15, n16, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167;

  NAND4_X1 U70 ( .A1(n100), .A2(n104), .A3(n11), .A4(n131), .ZN(n133) );
  XOR2_X1 U71 ( .A(n130), .B(P_to_plus1minus1[2]), .Z(n135) );
  NAND3_X1 U72 ( .A1(n100), .A2(n11), .A3(n103), .ZN(n123) );
  XOR2_X1 U73 ( .A(n162), .B(P_to_plus1minus1[1]), .Z(n124) );
  NAND3_X1 U74 ( .A1(n122), .A2(n11), .A3(bit_cnt), .ZN(n119) );
  DFF_X1 bit_cnt_reg ( .D(N56), .CK(clk), .Q(bit_cnt) );
  DFF_X1 R_reg_7_ ( .D(n108), .CK(clk), .Q(R_to_plus1minus1[7]) );
  DFF_X1 R_reg_6_ ( .D(n115), .CK(clk), .Q(R_to_plus1minus1[6]), .QN(n98) );
  DFF_X1 R_reg_5_ ( .D(n114), .CK(clk), .Q(R_to_plus1minus1[5]) );
  DFF_X1 R_reg_4_ ( .D(n113), .CK(clk), .Q(R_to_plus1minus1[4]) );
  DFF_X1 R_reg_3_ ( .D(n112), .CK(clk), .Q(R_to_plus1minus1[3]) );
  DFF_X1 R_reg_2_ ( .D(n111), .CK(clk), .Q(R_to_plus1minus1[2]), .QN(n95) );
  DFF_X1 R_reg_1_ ( .D(n110), .CK(clk), .Q(R_to_plus1minus1[1]), .QN(n94) );
  DFF_X1 R_reg_0_ ( .D(n109), .CK(clk), .Q(R_to_plus1minus1[0]) );
  DFF_X1 P_reg_0_ ( .D(N49), .CK(clk), .Q(P_to_plus1minus1[0]), .QN(n162) );
  DFF_X1 P_reg_1_ ( .D(N50), .CK(clk), .Q(P_to_plus1minus1[1]), .QN(n163) );
  DFF_X1 P_reg_2_ ( .D(N51), .CK(clk), .Q(P_to_plus1minus1[2]), .QN(n164) );
  OR2_X2 U3 ( .A1(n140), .A2(n162), .ZN(n8) );
  NOR2_X1 U5 ( .A1(n136), .A2(n16), .ZN(n156) );
  AOI21_X2 U8 ( .B1(n72), .B2(T), .A(Z_to_plus10), .ZN(n136) );
  AND2_X2 U13 ( .A1(n138), .A2(n105), .ZN(n7) );
  INV_X1 U15 ( .A(n16), .ZN(n4) );
  NAND2_X1 U17 ( .A1(n8), .A2(n117), .ZN(n132) );
  NOR2_X1 U18 ( .A1(n132), .A2(n128), .ZN(n121) );
  AOI22_X1 U19 ( .A1(P_from_plus1[0]), .A2(n156), .B1(P_from_minus1[0]), .B2(
        n155), .ZN(n9) );
  CLKBUF_X1 U20 ( .A(n121), .Z(n10) );
  OAI21_X1 U21 ( .B1(n140), .B2(n162), .A(n9), .ZN(n11) );
  INV_X1 U22 ( .A(n128), .ZN(n100) );
  NAND2_X1 U23 ( .A1(n118), .A2(Z_to_plus10), .ZN(n128) );
  INV_X1 U24 ( .A(n73), .ZN(n99) );
  INV_X1 U25 ( .A(n131), .ZN(n103) );
  OAI21_X1 U26 ( .B1(n138), .B2(n107), .A(N56), .ZN(n139) );
  NAND2_X1 U27 ( .A1(n118), .A2(n138), .ZN(n134) );
  AND2_X1 U28 ( .A1(N56), .A2(incre_en), .ZN(n118) );
  INV_X1 U29 ( .A(incre_en), .ZN(n107) );
  INV_X1 U30 ( .A(n138), .ZN(Z_to_plus10) );
  OAI21_X1 U31 ( .B1(srst), .B2(n140), .A(n139), .ZN(n158) );
  INV_X1 U32 ( .A(n86), .ZN(n97) );
  OAI21_X1 U33 ( .B1(n140), .B2(n163), .A(n120), .ZN(n131) );
  INV_X1 U34 ( .A(n79), .ZN(n96) );
  OAI211_X1 U35 ( .C1(P_to_plus1minus1[0]), .C2(n134), .A(n119), .B(n101), 
        .ZN(N49) );
  OAI21_X1 U36 ( .B1(n144), .B2(n160), .A(n143), .ZN(n109) );
  NAND2_X1 U37 ( .A1(R_to_plus1minus1[0]), .A2(n158), .ZN(n143) );
  OAI21_X1 U38 ( .B1(n146), .B2(n160), .A(n145), .ZN(n110) );
  NAND2_X1 U39 ( .A1(R_to_plus1minus1[1]), .A2(n158), .ZN(n145) );
  OAI21_X1 U40 ( .B1(n148), .B2(n160), .A(n147), .ZN(n111) );
  NAND2_X1 U41 ( .A1(R_to_plus1minus1[2]), .A2(n158), .ZN(n147) );
  OAI21_X1 U42 ( .B1(n150), .B2(n160), .A(n149), .ZN(n112) );
  NAND2_X1 U43 ( .A1(R_to_plus1minus1[3]), .A2(n158), .ZN(n149) );
  OAI21_X1 U44 ( .B1(n152), .B2(n160), .A(n151), .ZN(n113) );
  NAND2_X1 U45 ( .A1(R_to_plus1minus1[4]), .A2(n158), .ZN(n151) );
  OAI21_X1 U46 ( .B1(n154), .B2(n160), .A(n153), .ZN(n114) );
  NAND2_X1 U47 ( .A1(R_to_plus1minus1[5]), .A2(n158), .ZN(n153) );
  OAI21_X1 U48 ( .B1(n161), .B2(n160), .A(n159), .ZN(n115) );
  NAND2_X1 U49 ( .A1(R_to_plus1minus1[6]), .A2(n158), .ZN(n159) );
  OAI21_X1 U50 ( .B1(n142), .B2(n160), .A(n141), .ZN(n108) );
  NAND2_X1 U51 ( .A1(R_to_plus1minus1[7]), .A2(n158), .ZN(n141) );
  INV_X1 U52 ( .A(X[7]), .ZN(n93) );
  INV_X1 U53 ( .A(X[4]), .ZN(n91) );
  INV_X1 U54 ( .A(X[5]), .ZN(n92) );
  INV_X1 U55 ( .A(X[1]), .ZN(n89) );
  INV_X1 U56 ( .A(n126), .ZN(n104) );
  OAI21_X1 U57 ( .B1(n164), .B2(n140), .A(n125), .ZN(n126) );
  NAND2_X1 U58 ( .A1(n139), .A2(n106), .ZN(n160) );
  INV_X1 U59 ( .A(srst), .ZN(n106) );
  NOR2_X1 U60 ( .A1(bit_cnt), .A2(srst), .ZN(N56) );
  NOR2_X1 U61 ( .A1(n107), .A2(srst), .ZN(n122) );
  NOR4_X1 U63 ( .A1(bit_cnt), .A2(P_to_plus1minus1[1]), .A3(
        P_to_plus1minus1[0]), .A4(n164), .ZN(n116) );
  NAND2_X1 U64 ( .A1(P_to_plus1minus1[0]), .A2(P_to_plus1minus1[1]), .ZN(n130)
         );
  AOI222_X1 U65 ( .A1(X[3]), .A2(n157), .B1(R_from_plus1[3]), .B2(n156), .C1(
        R_from_minus1[3]), .C2(n155), .ZN(n150) );
  INV_X1 U66 ( .A(X[3]), .ZN(n90) );
  AOI21_X1 U67 ( .B1(n122), .B2(bit_cnt), .A(n10), .ZN(n15) );
  CLKBUF_X1 U68 ( .A(n7), .Z(n16) );
  INV_X1 U75 ( .A(T_from_minus1), .ZN(n72) );
  AOI21_X1 U78 ( .B1(n122), .B2(bit_cnt), .A(n121), .ZN(n127) );
  AOI222_X1 U79 ( .A1(X[6]), .A2(n157), .B1(R_from_plus1[6]), .B2(n156), .C1(
        R_from_minus1[6]), .C2(n155), .ZN(n161) );
  AOI222_X1 U80 ( .A1(X[5]), .A2(n157), .B1(R_from_plus1[5]), .B2(n156), .C1(
        R_from_minus1[5]), .C2(n155), .ZN(n154) );
  AOI222_X1 U81 ( .A1(X[4]), .A2(n157), .B1(R_from_plus1[4]), .B2(n156), .C1(
        R_from_minus1[4]), .C2(n155), .ZN(n152) );
  AOI222_X1 U82 ( .A1(X[2]), .A2(n157), .B1(R_from_plus1[2]), .B2(n156), .C1(
        R_from_minus1[2]), .C2(n155), .ZN(n148) );
  AOI222_X1 U83 ( .A1(X[1]), .A2(n157), .B1(R_from_plus1[1]), .B2(n156), .C1(
        R_from_minus1[1]), .C2(n155), .ZN(n146) );
  AOI222_X1 U84 ( .A1(X[0]), .A2(n157), .B1(R_from_plus1[0]), .B2(n156), .C1(
        R_from_minus1[0]), .C2(n155), .ZN(n144) );
  AOI222_X1 U85 ( .A1(X[7]), .A2(n157), .B1(R_from_plus1[7]), .B2(n156), .C1(
        R_from_minus1[7]), .C2(n155), .ZN(n142) );
  AOI22_X1 U86 ( .A1(P_from_plus1[2]), .A2(n156), .B1(P_from_minus1[2]), .B2(
        n155), .ZN(n125) );
  AOI22_X1 U87 ( .A1(P_from_plus1[1]), .A2(n156), .B1(P_from_minus1[1]), .B2(
        n155), .ZN(n120) );
  INV_X1 U88 ( .A(n129), .ZN(n102) );
  OAI221_X1 U89 ( .B1(n102), .B2(n104), .C1(n135), .C2(n134), .A(n133), .ZN(
        N51) );
  OAI221_X1 U90 ( .B1(n124), .B2(n134), .C1(n103), .C2(n15), .A(n123), .ZN(N50) );
  INV_X1 U91 ( .A(n10), .ZN(n101) );
  OAI21_X1 U92 ( .B1(n131), .B2(n128), .A(n127), .ZN(n129) );
  NOR2_X1 U93 ( .A1(n4), .A2(n136), .ZN(n157) );
  NAND2_X1 U94 ( .A1(R_to_plus1minus1[7]), .A2(n93), .ZN(n74) );
  OAI21_X1 U95 ( .B1(X[6]), .B2(n98), .A(n74), .ZN(n73) );
  NAND3_X1 U96 ( .A1(n74), .A2(n98), .A3(X[6]), .ZN(n75) );
  OAI21_X1 U97 ( .B1(R_to_plus1minus1[7]), .B2(n93), .A(n75), .ZN(n78) );
  AND2_X1 U98 ( .A1(R_to_plus1minus1[5]), .A2(n92), .ZN(n83) );
  OR3_X1 U99 ( .A1(n83), .A2(R_to_plus1minus1[4]), .A3(n91), .ZN(n76) );
  OAI21_X1 U100 ( .B1(R_to_plus1minus1[5]), .B2(n92), .A(n76), .ZN(n77) );
  NAND2_X1 U102 ( .A1(R_to_plus1minus1[3]), .A2(n90), .ZN(n80) );
  OAI21_X1 U103 ( .B1(n95), .B2(X[2]), .A(n80), .ZN(n79) );
  NAND3_X1 U104 ( .A1(n80), .A2(n95), .A3(X[2]), .ZN(n81) );
  OAI21_X1 U105 ( .B1(R_to_plus1minus1[3]), .B2(n90), .A(n81), .ZN(n86) );
  AOI21_X1 U106 ( .B1(R_to_plus1minus1[1]), .B2(n89), .A(R_to_plus1minus1[0]), 
        .ZN(n82) );
  AOI22_X1 U107 ( .A1(X[1]), .A2(n94), .B1(n82), .B2(X[0]), .ZN(n84) );
  AOI221_X1 U108 ( .B1(n84), .B2(n97), .C1(R_to_plus1minus1[4]), .C2(n91), .A(
        n83), .ZN(n85) );
  NAND2_X1 U7 ( .A1(n7), .A2(n136), .ZN(n140) );
  AND2_X1 U10 ( .A1(n137), .A2(n136), .ZN(n155) );
  INV_X1 U4 ( .A(T_from_minus1), .ZN(n105) );
  AOI21_X1 U6 ( .B1(P_from_plus1[0]), .B2(n156), .A(n165), .ZN(n117) );
  AND3_X1 U9 ( .A1(n136), .A2(n137), .A3(P_from_minus1[0]), .ZN(n165) );
  NAND2_X1 U11 ( .A1(n138), .A2(n105), .ZN(n137) );
  NOR2_X1 U12 ( .A1(n116), .A2(Z_from_minus1), .ZN(n138) );
  NAND2_X1 U14 ( .A1(n167), .A2(n166), .ZN(T) );
  AOI21_X1 U16 ( .B1(n99), .B2(n77), .A(n78), .ZN(n166) );
  OAI211_X1 U62 ( .C1(n96), .C2(n86), .A(n85), .B(n99), .ZN(n167) );
endmodule


module median_filter ( srst, clk, X, Y );
  input [7:0] X;
  output [7:0] Y;
  input srst, clk;
  wire   R_out_5__7_, R_out_5__6_, R_out_5__5_, R_out_5__4_, R_out_5__3_,
         R_out_5__2_, R_out_5__1_, R_out_5__0_, R_out_4__7_, R_out_4__6_,
         R_out_4__5_, R_out_4__4_, R_out_4__3_, R_out_4__2_, R_out_4__1_,
         R_out_4__0_, R_out_2__7_, R_out_2__6_, R_out_2__5_, R_out_2__4_,
         R_out_2__3_, R_out_2__2_, R_out_2__1_, R_out_2__0_, R_out_1__7_,
         R_out_1__6_, R_out_1__5_, R_out_1__4_, R_out_1__3_, R_out_1__2_,
         R_out_1__1_, R_out_1__0_, P_out_5__2_, P_out_5__1_, P_out_5__0_,
         P_out_4__2_, P_out_4__1_, P_out_4__0_, P_out_3__2_, P_out_3__1_,
         P_out_3__0_, P_out_2__2_, P_out_2__1_, P_out_2__0_, P_out_1__2_,
         P_out_1__1_, P_out_1__0_, n28, n29, n30, n31, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n52;
  wire   [4:1] Z_out;
  wire   [4:1] T_out;
  wire   [3:0] cnt;
  wire   [4:0] incre_en;

  DFF_X1 cnt_reg_0_ ( .D(n47), .CK(clk), .Q(cnt[0]), .QN(n31) );
  DFF_X1 cnt_reg_1_ ( .D(n46), .CK(clk), .Q(cnt[1]), .QN(n30) );
  DFF_X1 cnt_reg_2_ ( .D(n45), .CK(clk), .Q(cnt[2]), .QN(n29) );
  NAND3_X1 U25 ( .A1(n35), .A2(n29), .A3(n36), .ZN(n34) );
  NAND3_X1 U26 ( .A1(cnt[0]), .A2(n30), .A3(n36), .ZN(n38) );
  unit_cell_R_WIDTH8_N5_P_WIDTH3_0 unit_cell_gen_1__unit_cell ( .srst(srst), 
        .clk(clk), .incre_en(incre_en[0]), .X(X), .R_from_plus1({R_out_2__7_, 
        R_out_2__6_, R_out_2__5_, R_out_2__4_, R_out_2__3_, R_out_2__2_, 
        R_out_2__1_, R_out_2__0_}), .R_from_minus1({R_out_1__7_, R_out_1__6_, 
        R_out_1__5_, R_out_1__4_, R_out_1__3_, R_out_1__2_, R_out_1__1_, 
        R_out_1__0_}), .P_from_plus1({P_out_2__2_, P_out_2__1_, P_out_2__0_}), 
        .P_from_minus1({P_out_1__2_, P_out_1__1_, P_out_1__0_}), 
        .Z_from_minus1(1'b0), .T_from_minus1(1'b0), .R_to_plus1minus1({
        R_out_1__7_, R_out_1__6_, R_out_1__5_, R_out_1__4_, R_out_1__3_, 
        R_out_1__2_, R_out_1__1_, R_out_1__0_}), .P_to_plus1minus1({
        P_out_1__2_, P_out_1__1_, P_out_1__0_}), .Z_to_plus1(Z_out[1]), 
        .T_to_plus1(T_out[1]) );
  unit_cell_R_WIDTH8_N5_P_WIDTH3_4 unit_cell_gen_2__unit_cell ( .srst(srst), 
        .clk(clk), .incre_en(incre_en[1]), .X(X), .R_from_plus1(Y), 
        .R_from_minus1({R_out_1__7_, R_out_1__6_, R_out_1__5_, R_out_1__4_, 
        R_out_1__3_, R_out_1__2_, R_out_1__1_, R_out_1__0_}), .P_from_plus1({
        P_out_3__2_, P_out_3__1_, P_out_3__0_}), .P_from_minus1({P_out_1__2_, 
        P_out_1__1_, P_out_1__0_}), .Z_from_minus1(Z_out[1]), .T_from_minus1(
        T_out[1]), .R_to_plus1minus1({R_out_2__7_, R_out_2__6_, R_out_2__5_, 
        R_out_2__4_, R_out_2__3_, R_out_2__2_, R_out_2__1_, R_out_2__0_}), 
        .P_to_plus1minus1({P_out_2__2_, P_out_2__1_, P_out_2__0_}), 
        .Z_to_plus1(Z_out[2]), .T_to_plus1(T_out[2]) );
  unit_cell_R_WIDTH8_N5_P_WIDTH3_3 unit_cell_gen_3__unit_cell ( .srst(srst), 
        .clk(clk), .incre_en(incre_en[2]), .X(X), .R_from_plus1({R_out_4__7_, 
        R_out_4__6_, R_out_4__5_, R_out_4__4_, R_out_4__3_, R_out_4__2_, 
        R_out_4__1_, R_out_4__0_}), .R_from_minus1({R_out_2__7_, R_out_2__6_, 
        R_out_2__5_, R_out_2__4_, R_out_2__3_, R_out_2__2_, R_out_2__1_, 
        R_out_2__0_}), .P_from_plus1({P_out_4__2_, P_out_4__1_, P_out_4__0_}), 
        .P_from_minus1({P_out_2__2_, P_out_2__1_, P_out_2__0_}), 
        .Z_from_minus1(Z_out[2]), .T_from_minus1(T_out[2]), .R_to_plus1minus1(
        Y), .P_to_plus1minus1({P_out_3__2_, P_out_3__1_, P_out_3__0_}), 
        .Z_to_plus1(Z_out[3]), .T_to_plus1(T_out[3]) );
  unit_cell_R_WIDTH8_N5_P_WIDTH3_2 unit_cell_gen_4__unit_cell ( .srst(srst), 
        .clk(clk), .incre_en(incre_en[3]), .X(X), .R_from_plus1({R_out_5__7_, 
        R_out_5__6_, R_out_5__5_, R_out_5__4_, R_out_5__3_, R_out_5__2_, 
        R_out_5__1_, R_out_5__0_}), .R_from_minus1(Y), .P_from_plus1({
        P_out_5__2_, P_out_5__1_, P_out_5__0_}), .P_from_minus1({P_out_3__2_, 
        P_out_3__1_, P_out_3__0_}), .Z_from_minus1(Z_out[3]), .T_from_minus1(
        T_out[3]), .R_to_plus1minus1({R_out_4__7_, R_out_4__6_, R_out_4__5_, 
        R_out_4__4_, R_out_4__3_, R_out_4__2_, R_out_4__1_, R_out_4__0_}), 
        .P_to_plus1minus1({P_out_4__2_, P_out_4__1_, P_out_4__0_}), 
        .Z_to_plus1(Z_out[4]), .T_to_plus1(T_out[4]) );
  unit_cell_R_WIDTH8_N5_P_WIDTH3_1 unit_cell_gen_5__unit_cell ( .srst(srst), 
        .clk(clk), .incre_en(incre_en[4]), .X(X), .R_from_plus1({1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .R_from_minus1({R_out_4__7_, 
        R_out_4__6_, R_out_4__5_, R_out_4__4_, R_out_4__3_, R_out_4__2_, 
        R_out_4__1_, R_out_4__0_}), .P_from_plus1({1'b0, 1'b0, 1'b0}), 
        .P_from_minus1({P_out_4__2_, P_out_4__1_, P_out_4__0_}), 
        .Z_from_minus1(Z_out[4]), .T_from_minus1(T_out[4]), .R_to_plus1minus1(
        {R_out_5__7_, R_out_5__6_, R_out_5__5_, R_out_5__4_, R_out_5__3_, 
        R_out_5__2_, R_out_5__1_, R_out_5__0_}), .P_to_plus1minus1({
        P_out_5__2_, P_out_5__1_, P_out_5__0_}) );
  DFF_X1 cnt_reg_3_ ( .D(n49), .CK(clk), .Q(cnt[3]), .QN(n28) );
  NOR2_X1 U27 ( .A1(srst), .A2(n48), .ZN(n49) );
  INV_X1 U28 ( .A(incre_en[3]), .ZN(n48) );
  INV_X1 U29 ( .A(n36), .ZN(n52) );
  AND2_X1 U30 ( .A1(n41), .A2(n42), .ZN(n40) );
  AOI21_X1 U31 ( .B1(cnt[2]), .B2(cnt[3]), .A(srst), .ZN(n36) );
  OAI21_X1 U32 ( .B1(cnt[0]), .B2(n52), .A(n39), .ZN(n37) );
  OAI22_X1 U33 ( .A1(n31), .A2(n39), .B1(cnt[0]), .B2(n52), .ZN(n47) );
  OAI21_X1 U34 ( .B1(n50), .B2(n30), .A(n38), .ZN(n46) );
  INV_X1 U35 ( .A(n37), .ZN(n50) );
  OAI21_X1 U36 ( .B1(n33), .B2(n29), .A(n34), .ZN(n45) );
  AOI21_X1 U37 ( .B1(n36), .B2(n30), .A(n37), .ZN(n33) );
  XNOR2_X1 U40 ( .A(cnt[0]), .B(n30), .ZN(n44) );
  NOR2_X1 U41 ( .A1(n31), .A2(n30), .ZN(n35) );
  OAI21_X1 U42 ( .B1(n41), .B2(n42), .A(n28), .ZN(incre_en[3]) );
  AOI21_X1 U43 ( .B1(n44), .B2(cnt[2]), .A(n35), .ZN(n41) );
  XNOR2_X1 U44 ( .A(cnt[2]), .B(n44), .ZN(n42) );
  OAI21_X1 U45 ( .B1(n43), .B2(n29), .A(n28), .ZN(incre_en[2]) );
  NOR2_X1 U46 ( .A1(cnt[0]), .A2(cnt[1]), .ZN(n43) );
  NOR2_X1 U47 ( .A1(n40), .A2(n28), .ZN(incre_en[4]) );
  OR3_X1 U48 ( .A1(cnt[2]), .A2(cnt[3]), .A3(n35), .ZN(incre_en[1]) );
  NAND2_X1 U49 ( .A1(n40), .A2(n28), .ZN(incre_en[0]) );
  OR2_X1 U38 ( .A1(srst), .A2(n36), .ZN(n39) );
endmodule

