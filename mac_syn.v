/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03-SP4
// Date      : Fri Feb  2 17:50:34 2024
/////////////////////////////////////////////////////////////


module mac ( din_a, din_b, dout, clk, rst_b, start, done );
  input [7:0] din_a;
  input [7:0] din_b;
  output [15:0] dout;
  input clk, rst_b, start;
  output done;
  wire   n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355,
         n356, n357, n358, n359, n360, N56, N57, N58, N59, N60, N61, N62, N63,
         N64, N65, N66, N67, N68, N69, N70, N71, next_state_1, N106, N108,
         N109, N110, N111, N112, n95, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n1060, n107, n1080, n1090, n1100, n1110, n1120, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, dp_cluster_0_mult_50_A1_6,
         dp_cluster_0_mult_50_A1_7, dp_cluster_0_mult_50_A1_8,
         dp_cluster_0_mult_50_A1_9, dp_cluster_0_mult_50_A1_10,
         dp_cluster_0_mult_50_A1_11, dp_cluster_0_mult_50_A1_12,
         dp_cluster_0_mult_50_SUMB_1_1, dp_cluster_0_mult_50_SUMB_1_2,
         dp_cluster_0_mult_50_SUMB_1_3, dp_cluster_0_mult_50_SUMB_1_4,
         dp_cluster_0_mult_50_SUMB_1_5, dp_cluster_0_mult_50_SUMB_1_6,
         dp_cluster_0_mult_50_SUMB_2_1, dp_cluster_0_mult_50_SUMB_2_2,
         dp_cluster_0_mult_50_SUMB_2_3, dp_cluster_0_mult_50_SUMB_2_4,
         dp_cluster_0_mult_50_SUMB_2_5, dp_cluster_0_mult_50_SUMB_2_6,
         dp_cluster_0_mult_50_SUMB_3_1, dp_cluster_0_mult_50_SUMB_3_2,
         dp_cluster_0_mult_50_SUMB_3_3, dp_cluster_0_mult_50_SUMB_3_4,
         dp_cluster_0_mult_50_SUMB_3_5, dp_cluster_0_mult_50_SUMB_3_6,
         dp_cluster_0_mult_50_SUMB_4_1, dp_cluster_0_mult_50_SUMB_4_2,
         dp_cluster_0_mult_50_SUMB_4_3, dp_cluster_0_mult_50_SUMB_4_4,
         dp_cluster_0_mult_50_SUMB_4_5, dp_cluster_0_mult_50_SUMB_4_6,
         dp_cluster_0_mult_50_SUMB_5_1, dp_cluster_0_mult_50_SUMB_5_2,
         dp_cluster_0_mult_50_SUMB_5_3, dp_cluster_0_mult_50_SUMB_5_4,
         dp_cluster_0_mult_50_SUMB_5_5, dp_cluster_0_mult_50_SUMB_5_6,
         dp_cluster_0_mult_50_SUMB_6_1, dp_cluster_0_mult_50_SUMB_6_2,
         dp_cluster_0_mult_50_SUMB_6_3, dp_cluster_0_mult_50_SUMB_6_4,
         dp_cluster_0_mult_50_SUMB_6_5, dp_cluster_0_mult_50_SUMB_6_6,
         dp_cluster_0_mult_50_SUMB_7_0, dp_cluster_0_mult_50_SUMB_7_1,
         dp_cluster_0_mult_50_SUMB_7_2, dp_cluster_0_mult_50_SUMB_7_3,
         dp_cluster_0_mult_50_SUMB_7_4, dp_cluster_0_mult_50_SUMB_7_5,
         dp_cluster_0_mult_50_SUMB_7_6, dp_cluster_0_mult_50_CARRYB_2_0,
         dp_cluster_0_mult_50_CARRYB_2_1, dp_cluster_0_mult_50_CARRYB_2_2,
         dp_cluster_0_mult_50_CARRYB_2_3, dp_cluster_0_mult_50_CARRYB_2_4,
         dp_cluster_0_mult_50_CARRYB_2_5, dp_cluster_0_mult_50_CARRYB_2_6,
         dp_cluster_0_mult_50_CARRYB_3_0, dp_cluster_0_mult_50_CARRYB_3_1,
         dp_cluster_0_mult_50_CARRYB_3_2, dp_cluster_0_mult_50_CARRYB_3_3,
         dp_cluster_0_mult_50_CARRYB_3_4, dp_cluster_0_mult_50_CARRYB_3_5,
         dp_cluster_0_mult_50_CARRYB_3_6, dp_cluster_0_mult_50_CARRYB_4_0,
         dp_cluster_0_mult_50_CARRYB_4_1, dp_cluster_0_mult_50_CARRYB_4_2,
         dp_cluster_0_mult_50_CARRYB_4_3, dp_cluster_0_mult_50_CARRYB_4_4,
         dp_cluster_0_mult_50_CARRYB_4_5, dp_cluster_0_mult_50_CARRYB_4_6,
         dp_cluster_0_mult_50_CARRYB_5_0, dp_cluster_0_mult_50_CARRYB_5_1,
         dp_cluster_0_mult_50_CARRYB_5_2, dp_cluster_0_mult_50_CARRYB_5_3,
         dp_cluster_0_mult_50_CARRYB_5_4, dp_cluster_0_mult_50_CARRYB_5_5,
         dp_cluster_0_mult_50_CARRYB_5_6, dp_cluster_0_mult_50_CARRYB_6_0,
         dp_cluster_0_mult_50_CARRYB_6_1, dp_cluster_0_mult_50_CARRYB_6_2,
         dp_cluster_0_mult_50_CARRYB_6_3, dp_cluster_0_mult_50_CARRYB_6_4,
         dp_cluster_0_mult_50_CARRYB_6_5, dp_cluster_0_mult_50_CARRYB_6_6,
         dp_cluster_0_mult_50_CARRYB_7_0, dp_cluster_0_mult_50_CARRYB_7_1,
         dp_cluster_0_mult_50_CARRYB_7_2, dp_cluster_0_mult_50_CARRYB_7_3,
         dp_cluster_0_mult_50_CARRYB_7_4, dp_cluster_0_mult_50_CARRYB_7_5,
         dp_cluster_0_mult_50_CARRYB_7_6, dp_cluster_0_mult_50_ab_0_1,
         dp_cluster_0_mult_50_ab_0_2, dp_cluster_0_mult_50_ab_0_3,
         dp_cluster_0_mult_50_ab_0_4, dp_cluster_0_mult_50_ab_0_5,
         dp_cluster_0_mult_50_ab_0_6, dp_cluster_0_mult_50_ab_0_7,
         dp_cluster_0_mult_50_ab_1_0, dp_cluster_0_mult_50_ab_1_1,
         dp_cluster_0_mult_50_ab_1_2, dp_cluster_0_mult_50_ab_1_3,
         dp_cluster_0_mult_50_ab_1_4, dp_cluster_0_mult_50_ab_1_5,
         dp_cluster_0_mult_50_ab_1_6, dp_cluster_0_mult_50_ab_1_7,
         dp_cluster_0_mult_50_ab_2_0, dp_cluster_0_mult_50_ab_2_1,
         dp_cluster_0_mult_50_ab_2_2, dp_cluster_0_mult_50_ab_2_3,
         dp_cluster_0_mult_50_ab_2_4, dp_cluster_0_mult_50_ab_2_5,
         dp_cluster_0_mult_50_ab_2_6, dp_cluster_0_mult_50_ab_2_7,
         dp_cluster_0_mult_50_ab_3_0, dp_cluster_0_mult_50_ab_3_1,
         dp_cluster_0_mult_50_ab_3_2, dp_cluster_0_mult_50_ab_3_3,
         dp_cluster_0_mult_50_ab_3_4, dp_cluster_0_mult_50_ab_3_5,
         dp_cluster_0_mult_50_ab_3_6, dp_cluster_0_mult_50_ab_3_7,
         dp_cluster_0_mult_50_ab_4_0, dp_cluster_0_mult_50_ab_4_1,
         dp_cluster_0_mult_50_ab_4_2, dp_cluster_0_mult_50_ab_4_3,
         dp_cluster_0_mult_50_ab_4_4, dp_cluster_0_mult_50_ab_4_5,
         dp_cluster_0_mult_50_ab_4_6, dp_cluster_0_mult_50_ab_4_7,
         dp_cluster_0_mult_50_ab_5_0, dp_cluster_0_mult_50_ab_5_1,
         dp_cluster_0_mult_50_ab_5_2, dp_cluster_0_mult_50_ab_5_3,
         dp_cluster_0_mult_50_ab_5_4, dp_cluster_0_mult_50_ab_5_5,
         dp_cluster_0_mult_50_ab_5_6, dp_cluster_0_mult_50_ab_5_7,
         dp_cluster_0_mult_50_ab_6_0, dp_cluster_0_mult_50_ab_6_1,
         dp_cluster_0_mult_50_ab_6_2, dp_cluster_0_mult_50_ab_6_3,
         dp_cluster_0_mult_50_ab_6_4, dp_cluster_0_mult_50_ab_6_5,
         dp_cluster_0_mult_50_ab_6_6, dp_cluster_0_mult_50_ab_6_7,
         dp_cluster_0_mult_50_ab_7_0, dp_cluster_0_mult_50_ab_7_1,
         dp_cluster_0_mult_50_ab_7_2, dp_cluster_0_mult_50_ab_7_3,
         dp_cluster_0_mult_50_ab_7_4, dp_cluster_0_mult_50_ab_7_5,
         dp_cluster_0_mult_50_ab_7_6, dp_cluster_0_mult_50_ab_7_7, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n226, n227, n228, n229, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344;
  wire   [1:0] current_state;
  wire   [7:0] a_reg;
  wire   [7:0] b_reg;
  wire   [5:0] process_value;
  wire   [13:0] dp_cluster_0_add_0;
  wire   [15:2] dp_cluster_0_add_70_carry;
  wire   [5:2] add_130_carry;

  DFFSR process_value_reg_0 ( .D(n287), .CLK(clk), .R(rst_b), .S(1'b1), .Q(
        process_value[0]) );
  DFFSR process_value_reg_5 ( .D(n288), .CLK(clk), .R(rst_b), .S(1'b1), .Q(
        process_value[5]) );
  DFFSR process_value_reg_4 ( .D(n292), .CLK(clk), .R(rst_b), .S(1'b1), .Q(
        process_value[4]) );
  DFFSR current_state_reg_1 ( .D(next_state_1), .CLK(clk), .R(rst_b), .S(1'b1), 
        .Q(current_state[1]) );
  DFFSR current_state_reg_0 ( .D(n194), .CLK(clk), .R(rst_b), .S(1'b1), .Q(
        current_state[0]) );
  DFFSR a_reg_reg_0 ( .D(n278), .CLK(clk), .R(rst_b), .S(1'b1), .Q(a_reg[0])
         );
  DFFSR b_reg_reg_0 ( .D(n286), .CLK(clk), .R(rst_b), .S(1'b1), .Q(b_reg[0])
         );
  DFFSR a_reg_reg_1 ( .D(n277), .CLK(clk), .R(rst_b), .S(1'b1), .Q(a_reg[1])
         );
  DFFSR b_reg_reg_1 ( .D(n285), .CLK(clk), .R(rst_b), .S(1'b1), .Q(b_reg[1])
         );
  DFFSR a_reg_reg_2 ( .D(n276), .CLK(clk), .R(rst_b), .S(1'b1), .Q(a_reg[2])
         );
  DFFSR b_reg_reg_2 ( .D(n284), .CLK(clk), .R(rst_b), .S(1'b1), .Q(b_reg[2])
         );
  DFFSR a_reg_reg_3 ( .D(n275), .CLK(clk), .R(rst_b), .S(1'b1), .Q(a_reg[3])
         );
  DFFSR b_reg_reg_3 ( .D(n283), .CLK(clk), .R(rst_b), .S(1'b1), .Q(b_reg[3])
         );
  DFFSR a_reg_reg_4 ( .D(n274), .CLK(clk), .R(rst_b), .S(1'b1), .Q(a_reg[4])
         );
  DFFSR b_reg_reg_4 ( .D(n282), .CLK(clk), .R(rst_b), .S(1'b1), .Q(b_reg[4])
         );
  DFFSR a_reg_reg_5 ( .D(n273), .CLK(clk), .R(rst_b), .S(1'b1), .Q(a_reg[5])
         );
  DFFSR b_reg_reg_5 ( .D(n281), .CLK(clk), .R(rst_b), .S(1'b1), .Q(b_reg[5])
         );
  DFFSR a_reg_reg_6 ( .D(n272), .CLK(clk), .R(rst_b), .S(1'b1), .Q(a_reg[6])
         );
  DFFSR b_reg_reg_6 ( .D(n280), .CLK(clk), .R(rst_b), .S(1'b1), .Q(b_reg[6])
         );
  DFFSR a_reg_reg_7 ( .D(n271), .CLK(clk), .R(rst_b), .S(1'b1), .Q(a_reg[7])
         );
  DFFSR b_reg_reg_7 ( .D(n279), .CLK(clk), .R(rst_b), .S(1'b1), .Q(b_reg[7])
         );
  DFFSR sum_reg_reg_0 ( .D(n299), .CLK(clk), .R(rst_b), .S(1'b1), .Q(n360) );
  DFFSR sum_reg_reg_1 ( .D(n300), .CLK(clk), .R(rst_b), .S(1'b1), .Q(n359) );
  DFFSR sum_reg_reg_2 ( .D(n301), .CLK(clk), .R(rst_b), .S(1'b1), .Q(n358) );
  DFFSR sum_reg_reg_3 ( .D(n302), .CLK(clk), .R(n269), .S(1'b1), .Q(n357) );
  DFFSR sum_reg_reg_4 ( .D(n303), .CLK(clk), .R(n269), .S(1'b1), .Q(n356) );
  DFFSR sum_reg_reg_5 ( .D(n304), .CLK(clk), .R(n269), .S(1'b1), .Q(n355) );
  DFFSR sum_reg_reg_6 ( .D(n305), .CLK(clk), .R(n269), .S(1'b1), .Q(n354) );
  DFFSR sum_reg_reg_7 ( .D(n306), .CLK(clk), .R(n269), .S(1'b1), .Q(n353) );
  DFFSR sum_reg_reg_8 ( .D(n307), .CLK(clk), .R(n269), .S(1'b1), .Q(n352) );
  DFFSR sum_reg_reg_9 ( .D(n308), .CLK(clk), .R(n269), .S(1'b1), .Q(n351) );
  DFFSR sum_reg_reg_10 ( .D(n309), .CLK(clk), .R(n269), .S(1'b1), .Q(n350) );
  DFFSR sum_reg_reg_11 ( .D(n310), .CLK(clk), .R(n269), .S(1'b1), .Q(n349) );
  DFFSR sum_reg_reg_12 ( .D(n311), .CLK(clk), .R(n269), .S(1'b1), .Q(n348) );
  DFFSR sum_reg_reg_13 ( .D(n312), .CLK(clk), .R(n269), .S(1'b1), .Q(n347) );
  DFFSR sum_reg_reg_14 ( .D(n313), .CLK(clk), .R(n269), .S(1'b1), .Q(n346) );
  DFFSR sum_reg_reg_15 ( .D(n314), .CLK(clk), .R(rst_b), .S(1'b1), .Q(n345) );
  DFFSR done_reg_reg ( .D(n140), .CLK(clk), .R(rst_b), .S(1'b1), .Q(done) );
  DFFSR process_value_reg_3 ( .D(n291), .CLK(clk), .R(rst_b), .S(1'b1), .Q(
        process_value[3]) );
  DFFSR process_value_reg_2 ( .D(n290), .CLK(clk), .R(rst_b), .S(1'b1), .Q(
        process_value[2]) );
  DFFSR process_value_reg_1 ( .D(n289), .CLK(clk), .R(rst_b), .S(1'b1), .Q(
        process_value[1]) );
  AOI22X1 U92 ( .A(N71), .B(n266), .C(dout[15]), .D(n268), .Y(n95) );
  AOI22X1 U93 ( .A(N70), .B(n266), .C(dout[14]), .D(n268), .Y(n98) );
  AOI22X1 U94 ( .A(N69), .B(n266), .C(dout[13]), .D(n268), .Y(n99) );
  AOI22X1 U95 ( .A(N68), .B(n266), .C(dout[12]), .D(n268), .Y(n100) );
  AOI22X1 U96 ( .A(N67), .B(n266), .C(dout[11]), .D(n268), .Y(n101) );
  AOI22X1 U97 ( .A(N66), .B(n266), .C(dout[10]), .D(n268), .Y(n102) );
  AOI22X1 U98 ( .A(N65), .B(n266), .C(dout[9]), .D(n268), .Y(n103) );
  AOI22X1 U99 ( .A(N64), .B(n266), .C(dout[8]), .D(n268), .Y(n104) );
  AOI22X1 U100 ( .A(N63), .B(n266), .C(dout[7]), .D(n267), .Y(n105) );
  AOI22X1 U101 ( .A(N62), .B(n266), .C(dout[6]), .D(n267), .Y(n1060) );
  AOI22X1 U102 ( .A(N61), .B(n266), .C(dout[5]), .D(n267), .Y(n107) );
  AOI22X1 U103 ( .A(N60), .B(n266), .C(dout[4]), .D(n267), .Y(n1080) );
  AOI22X1 U104 ( .A(N59), .B(n266), .C(dout[3]), .D(n267), .Y(n1090) );
  AOI22X1 U105 ( .A(N58), .B(n266), .C(dout[2]), .D(n267), .Y(n1100) );
  AOI22X1 U106 ( .A(N57), .B(n266), .C(dout[1]), .D(n267), .Y(n1110) );
  AOI22X1 U107 ( .A(N56), .B(n266), .C(dout[0]), .D(n267), .Y(n1120) );
  AOI22X1 U110 ( .A(din_b[7]), .B(n265), .C(n203), .D(n315), .Y(n114) );
  AOI22X1 U111 ( .A(din_a[7]), .B(n265), .C(n211), .D(n315), .Y(n116) );
  AOI22X1 U112 ( .A(din_b[6]), .B(n265), .C(n204), .D(n315), .Y(n117) );
  AOI22X1 U113 ( .A(din_a[6]), .B(n265), .C(n196), .D(n315), .Y(n118) );
  AOI22X1 U114 ( .A(din_b[5]), .B(n265), .C(n205), .D(n315), .Y(n119) );
  AOI22X1 U115 ( .A(din_a[5]), .B(n265), .C(n197), .D(n315), .Y(n120) );
  AOI22X1 U116 ( .A(din_b[4]), .B(n265), .C(n206), .D(n315), .Y(n121) );
  AOI22X1 U117 ( .A(din_a[4]), .B(n264), .C(n198), .D(n315), .Y(n122) );
  AOI22X1 U118 ( .A(din_b[3]), .B(n264), .C(n207), .D(n315), .Y(n123) );
  AOI22X1 U119 ( .A(din_a[3]), .B(n264), .C(n199), .D(n315), .Y(n124) );
  AOI22X1 U120 ( .A(din_b[2]), .B(n264), .C(n208), .D(n315), .Y(n125) );
  AOI22X1 U121 ( .A(din_a[2]), .B(n264), .C(n200), .D(n315), .Y(n126) );
  AOI22X1 U122 ( .A(din_b[1]), .B(n264), .C(n209), .D(n315), .Y(n127) );
  AOI22X1 U123 ( .A(din_a[1]), .B(n264), .C(n201), .D(n315), .Y(n128) );
  AOI22X1 U124 ( .A(din_b[0]), .B(n264), .C(n210), .D(n315), .Y(n129) );
  AOI22X1 U125 ( .A(din_a[0]), .B(n264), .C(n202), .D(n315), .Y(n130) );
  AOI22X1 U126 ( .A(N111), .B(n293), .C(n226), .D(n132), .Y(n131) );
  AOI22X1 U127 ( .A(N110), .B(n293), .C(n229), .D(n132), .Y(n133) );
  AOI22X1 U128 ( .A(N109), .B(n293), .C(n221), .D(n132), .Y(n134) );
  AOI22X1 U129 ( .A(N108), .B(n293), .C(n227), .D(n132), .Y(n135) );
  AOI22X1 U130 ( .A(N112), .B(n293), .C(n245), .D(n132), .Y(n136) );
  AOI22X1 U131 ( .A(n297), .B(n293), .C(n246), .D(n132), .Y(n137) );
  OAI21X1 U132 ( .A(n194), .B(n294), .C(n192), .Y(n132) );
  NAND3X1 U133 ( .A(n194), .B(n294), .C(n192), .Y(n139) );
  NAND3X1 U134 ( .A(n190), .B(n296), .C(n194), .Y(n138) );
  OAI21X1 U136 ( .A(n115), .B(n255), .C(n193), .Y(next_state_1) );
  FAX1 dp_cluster_0_add_70_U1_1 ( .A(dout[1]), .B(dp_cluster_0_add_0[6]), .C(
        n256), .YC(dp_cluster_0_add_70_carry[2]), .YS(N57) );
  FAX1 dp_cluster_0_add_70_U1_2 ( .A(dout[2]), .B(dp_cluster_0_add_0[5]), .C(
        dp_cluster_0_add_70_carry[2]), .YC(dp_cluster_0_add_70_carry[3]), .YS(
        N58) );
  FAX1 dp_cluster_0_add_70_U1_3 ( .A(dout[3]), .B(dp_cluster_0_add_0[4]), .C(
        dp_cluster_0_add_70_carry[3]), .YC(dp_cluster_0_add_70_carry[4]), .YS(
        N59) );
  FAX1 dp_cluster_0_add_70_U1_4 ( .A(dout[4]), .B(dp_cluster_0_add_0[3]), .C(
        dp_cluster_0_add_70_carry[4]), .YC(dp_cluster_0_add_70_carry[5]), .YS(
        N60) );
  FAX1 dp_cluster_0_add_70_U1_5 ( .A(dout[5]), .B(dp_cluster_0_add_0[2]), .C(
        dp_cluster_0_add_70_carry[5]), .YC(dp_cluster_0_add_70_carry[6]), .YS(
        N61) );
  FAX1 dp_cluster_0_add_70_U1_6 ( .A(dout[6]), .B(dp_cluster_0_add_0[1]), .C(
        dp_cluster_0_add_70_carry[6]), .YC(dp_cluster_0_add_70_carry[7]), .YS(
        N62) );
  FAX1 dp_cluster_0_add_70_U1_7 ( .A(dout[7]), .B(
        dp_cluster_0_mult_50_SUMB_7_0), .C(dp_cluster_0_add_70_carry[7]), .YC(
        dp_cluster_0_add_70_carry[8]), .YS(N63) );
  FAX1 dp_cluster_0_add_70_U1_8 ( .A(dout[8]), .B(dp_cluster_0_mult_50_A1_6), 
        .C(dp_cluster_0_add_70_carry[8]), .YC(dp_cluster_0_add_70_carry[9]), 
        .YS(N64) );
  FAX1 dp_cluster_0_add_70_U1_9 ( .A(dout[9]), .B(dp_cluster_0_add_0[0]), .C(
        dp_cluster_0_add_70_carry[9]), .YC(dp_cluster_0_add_70_carry[10]), 
        .YS(N65) );
  FAX1 dp_cluster_0_add_70_U1_10 ( .A(dout[10]), .B(dp_cluster_0_add_0[12]), 
        .C(dp_cluster_0_add_70_carry[10]), .YC(dp_cluster_0_add_70_carry[11]), 
        .YS(N66) );
  FAX1 dp_cluster_0_add_70_U1_11 ( .A(dout[11]), .B(dp_cluster_0_add_0[11]), 
        .C(dp_cluster_0_add_70_carry[11]), .YC(dp_cluster_0_add_70_carry[12]), 
        .YS(N67) );
  FAX1 dp_cluster_0_add_70_U1_12 ( .A(dout[12]), .B(dp_cluster_0_add_0[10]), 
        .C(dp_cluster_0_add_70_carry[12]), .YC(dp_cluster_0_add_70_carry[13]), 
        .YS(N68) );
  FAX1 dp_cluster_0_add_70_U1_13 ( .A(dout[13]), .B(dp_cluster_0_add_0[9]), 
        .C(dp_cluster_0_add_70_carry[13]), .YC(dp_cluster_0_add_70_carry[14]), 
        .YS(N69) );
  FAX1 dp_cluster_0_add_70_U1_14 ( .A(dout[14]), .B(dp_cluster_0_add_0[8]), 
        .C(dp_cluster_0_add_70_carry[14]), .YC(dp_cluster_0_add_70_carry[15]), 
        .YS(N70) );
  FAX1 dp_cluster_0_add_70_U1_15 ( .A(dout[15]), .B(dp_cluster_0_add_0[7]), 
        .C(dp_cluster_0_add_70_carry[15]), .YC(), .YS(N71) );
  FAX1 dp_cluster_0_mult_50_S3_2_6 ( .A(dp_cluster_0_mult_50_ab_2_6), .B(n263), 
        .C(dp_cluster_0_mult_50_ab_1_7), .YC(dp_cluster_0_mult_50_CARRYB_2_6), 
        .YS(dp_cluster_0_mult_50_SUMB_2_6) );
  FAX1 dp_cluster_0_mult_50_S2_2_5 ( .A(dp_cluster_0_mult_50_ab_2_5), .B(n262), 
        .C(dp_cluster_0_mult_50_SUMB_1_6), .YC(dp_cluster_0_mult_50_CARRYB_2_5), .YS(dp_cluster_0_mult_50_SUMB_2_5) );
  FAX1 dp_cluster_0_mult_50_S2_2_4 ( .A(dp_cluster_0_mult_50_ab_2_4), .B(n261), 
        .C(dp_cluster_0_mult_50_SUMB_1_5), .YC(dp_cluster_0_mult_50_CARRYB_2_4), .YS(dp_cluster_0_mult_50_SUMB_2_4) );
  FAX1 dp_cluster_0_mult_50_S2_2_3 ( .A(dp_cluster_0_mult_50_ab_2_3), .B(n260), 
        .C(dp_cluster_0_mult_50_SUMB_1_4), .YC(dp_cluster_0_mult_50_CARRYB_2_3), .YS(dp_cluster_0_mult_50_SUMB_2_3) );
  FAX1 dp_cluster_0_mult_50_S2_2_2 ( .A(dp_cluster_0_mult_50_ab_2_2), .B(n259), 
        .C(dp_cluster_0_mult_50_SUMB_1_3), .YC(dp_cluster_0_mult_50_CARRYB_2_2), .YS(dp_cluster_0_mult_50_SUMB_2_2) );
  FAX1 dp_cluster_0_mult_50_S2_2_1 ( .A(dp_cluster_0_mult_50_ab_2_1), .B(n258), 
        .C(dp_cluster_0_mult_50_SUMB_1_2), .YC(dp_cluster_0_mult_50_CARRYB_2_1), .YS(dp_cluster_0_mult_50_SUMB_2_1) );
  FAX1 dp_cluster_0_mult_50_S1_2_0 ( .A(dp_cluster_0_mult_50_ab_2_0), .B(n257), 
        .C(dp_cluster_0_mult_50_SUMB_1_1), .YC(dp_cluster_0_mult_50_CARRYB_2_0), .YS(dp_cluster_0_add_0[5]) );
  FAX1 dp_cluster_0_mult_50_S3_3_6 ( .A(dp_cluster_0_mult_50_ab_3_6), .B(
        dp_cluster_0_mult_50_CARRYB_2_6), .C(dp_cluster_0_mult_50_ab_2_7), 
        .YC(dp_cluster_0_mult_50_CARRYB_3_6), .YS(
        dp_cluster_0_mult_50_SUMB_3_6) );
  FAX1 dp_cluster_0_mult_50_S2_3_5 ( .A(dp_cluster_0_mult_50_ab_3_5), .B(
        dp_cluster_0_mult_50_CARRYB_2_5), .C(dp_cluster_0_mult_50_SUMB_2_6), 
        .YC(dp_cluster_0_mult_50_CARRYB_3_5), .YS(
        dp_cluster_0_mult_50_SUMB_3_5) );
  FAX1 dp_cluster_0_mult_50_S2_3_4 ( .A(dp_cluster_0_mult_50_ab_3_4), .B(
        dp_cluster_0_mult_50_CARRYB_2_4), .C(dp_cluster_0_mult_50_SUMB_2_5), 
        .YC(dp_cluster_0_mult_50_CARRYB_3_4), .YS(
        dp_cluster_0_mult_50_SUMB_3_4) );
  FAX1 dp_cluster_0_mult_50_S2_3_3 ( .A(dp_cluster_0_mult_50_ab_3_3), .B(
        dp_cluster_0_mult_50_CARRYB_2_3), .C(dp_cluster_0_mult_50_SUMB_2_4), 
        .YC(dp_cluster_0_mult_50_CARRYB_3_3), .YS(
        dp_cluster_0_mult_50_SUMB_3_3) );
  FAX1 dp_cluster_0_mult_50_S2_3_2 ( .A(dp_cluster_0_mult_50_ab_3_2), .B(
        dp_cluster_0_mult_50_CARRYB_2_2), .C(dp_cluster_0_mult_50_SUMB_2_3), 
        .YC(dp_cluster_0_mult_50_CARRYB_3_2), .YS(
        dp_cluster_0_mult_50_SUMB_3_2) );
  FAX1 dp_cluster_0_mult_50_S2_3_1 ( .A(dp_cluster_0_mult_50_ab_3_1), .B(
        dp_cluster_0_mult_50_CARRYB_2_1), .C(dp_cluster_0_mult_50_SUMB_2_2), 
        .YC(dp_cluster_0_mult_50_CARRYB_3_1), .YS(
        dp_cluster_0_mult_50_SUMB_3_1) );
  FAX1 dp_cluster_0_mult_50_S1_3_0 ( .A(dp_cluster_0_mult_50_ab_3_0), .B(
        dp_cluster_0_mult_50_CARRYB_2_0), .C(dp_cluster_0_mult_50_SUMB_2_1), 
        .YC(dp_cluster_0_mult_50_CARRYB_3_0), .YS(dp_cluster_0_add_0[4]) );
  FAX1 dp_cluster_0_mult_50_S3_4_6 ( .A(dp_cluster_0_mult_50_ab_4_6), .B(
        dp_cluster_0_mult_50_CARRYB_3_6), .C(dp_cluster_0_mult_50_ab_3_7), 
        .YC(dp_cluster_0_mult_50_CARRYB_4_6), .YS(
        dp_cluster_0_mult_50_SUMB_4_6) );
  FAX1 dp_cluster_0_mult_50_S2_4_5 ( .A(dp_cluster_0_mult_50_ab_4_5), .B(
        dp_cluster_0_mult_50_CARRYB_3_5), .C(dp_cluster_0_mult_50_SUMB_3_6), 
        .YC(dp_cluster_0_mult_50_CARRYB_4_5), .YS(
        dp_cluster_0_mult_50_SUMB_4_5) );
  FAX1 dp_cluster_0_mult_50_S2_4_4 ( .A(dp_cluster_0_mult_50_ab_4_4), .B(
        dp_cluster_0_mult_50_CARRYB_3_4), .C(dp_cluster_0_mult_50_SUMB_3_5), 
        .YC(dp_cluster_0_mult_50_CARRYB_4_4), .YS(
        dp_cluster_0_mult_50_SUMB_4_4) );
  FAX1 dp_cluster_0_mult_50_S2_4_3 ( .A(dp_cluster_0_mult_50_ab_4_3), .B(
        dp_cluster_0_mult_50_CARRYB_3_3), .C(dp_cluster_0_mult_50_SUMB_3_4), 
        .YC(dp_cluster_0_mult_50_CARRYB_4_3), .YS(
        dp_cluster_0_mult_50_SUMB_4_3) );
  FAX1 dp_cluster_0_mult_50_S2_4_2 ( .A(dp_cluster_0_mult_50_ab_4_2), .B(
        dp_cluster_0_mult_50_CARRYB_3_2), .C(dp_cluster_0_mult_50_SUMB_3_3), 
        .YC(dp_cluster_0_mult_50_CARRYB_4_2), .YS(
        dp_cluster_0_mult_50_SUMB_4_2) );
  FAX1 dp_cluster_0_mult_50_S2_4_1 ( .A(dp_cluster_0_mult_50_ab_4_1), .B(
        dp_cluster_0_mult_50_CARRYB_3_1), .C(dp_cluster_0_mult_50_SUMB_3_2), 
        .YC(dp_cluster_0_mult_50_CARRYB_4_1), .YS(
        dp_cluster_0_mult_50_SUMB_4_1) );
  FAX1 dp_cluster_0_mult_50_S1_4_0 ( .A(dp_cluster_0_mult_50_ab_4_0), .B(
        dp_cluster_0_mult_50_CARRYB_3_0), .C(dp_cluster_0_mult_50_SUMB_3_1), 
        .YC(dp_cluster_0_mult_50_CARRYB_4_0), .YS(dp_cluster_0_add_0[3]) );
  FAX1 dp_cluster_0_mult_50_S3_5_6 ( .A(dp_cluster_0_mult_50_ab_5_6), .B(
        dp_cluster_0_mult_50_CARRYB_4_6), .C(dp_cluster_0_mult_50_ab_4_7), 
        .YC(dp_cluster_0_mult_50_CARRYB_5_6), .YS(
        dp_cluster_0_mult_50_SUMB_5_6) );
  FAX1 dp_cluster_0_mult_50_S2_5_5 ( .A(dp_cluster_0_mult_50_ab_5_5), .B(
        dp_cluster_0_mult_50_CARRYB_4_5), .C(dp_cluster_0_mult_50_SUMB_4_6), 
        .YC(dp_cluster_0_mult_50_CARRYB_5_5), .YS(
        dp_cluster_0_mult_50_SUMB_5_5) );
  FAX1 dp_cluster_0_mult_50_S2_5_4 ( .A(dp_cluster_0_mult_50_ab_5_4), .B(
        dp_cluster_0_mult_50_CARRYB_4_4), .C(dp_cluster_0_mult_50_SUMB_4_5), 
        .YC(dp_cluster_0_mult_50_CARRYB_5_4), .YS(
        dp_cluster_0_mult_50_SUMB_5_4) );
  FAX1 dp_cluster_0_mult_50_S2_5_3 ( .A(dp_cluster_0_mult_50_ab_5_3), .B(
        dp_cluster_0_mult_50_CARRYB_4_3), .C(dp_cluster_0_mult_50_SUMB_4_4), 
        .YC(dp_cluster_0_mult_50_CARRYB_5_3), .YS(
        dp_cluster_0_mult_50_SUMB_5_3) );
  FAX1 dp_cluster_0_mult_50_S2_5_2 ( .A(dp_cluster_0_mult_50_ab_5_2), .B(
        dp_cluster_0_mult_50_CARRYB_4_2), .C(dp_cluster_0_mult_50_SUMB_4_3), 
        .YC(dp_cluster_0_mult_50_CARRYB_5_2), .YS(
        dp_cluster_0_mult_50_SUMB_5_2) );
  FAX1 dp_cluster_0_mult_50_S2_5_1 ( .A(dp_cluster_0_mult_50_ab_5_1), .B(
        dp_cluster_0_mult_50_CARRYB_4_1), .C(dp_cluster_0_mult_50_SUMB_4_2), 
        .YC(dp_cluster_0_mult_50_CARRYB_5_1), .YS(
        dp_cluster_0_mult_50_SUMB_5_1) );
  FAX1 dp_cluster_0_mult_50_S1_5_0 ( .A(dp_cluster_0_mult_50_ab_5_0), .B(
        dp_cluster_0_mult_50_CARRYB_4_0), .C(dp_cluster_0_mult_50_SUMB_4_1), 
        .YC(dp_cluster_0_mult_50_CARRYB_5_0), .YS(dp_cluster_0_add_0[2]) );
  FAX1 dp_cluster_0_mult_50_S3_6_6 ( .A(dp_cluster_0_mult_50_ab_6_6), .B(
        dp_cluster_0_mult_50_CARRYB_5_6), .C(dp_cluster_0_mult_50_ab_5_7), 
        .YC(dp_cluster_0_mult_50_CARRYB_6_6), .YS(
        dp_cluster_0_mult_50_SUMB_6_6) );
  FAX1 dp_cluster_0_mult_50_S2_6_5 ( .A(dp_cluster_0_mult_50_ab_6_5), .B(
        dp_cluster_0_mult_50_CARRYB_5_5), .C(dp_cluster_0_mult_50_SUMB_5_6), 
        .YC(dp_cluster_0_mult_50_CARRYB_6_5), .YS(
        dp_cluster_0_mult_50_SUMB_6_5) );
  FAX1 dp_cluster_0_mult_50_S2_6_4 ( .A(dp_cluster_0_mult_50_ab_6_4), .B(
        dp_cluster_0_mult_50_CARRYB_5_4), .C(dp_cluster_0_mult_50_SUMB_5_5), 
        .YC(dp_cluster_0_mult_50_CARRYB_6_4), .YS(
        dp_cluster_0_mult_50_SUMB_6_4) );
  FAX1 dp_cluster_0_mult_50_S2_6_3 ( .A(dp_cluster_0_mult_50_ab_6_3), .B(
        dp_cluster_0_mult_50_CARRYB_5_3), .C(dp_cluster_0_mult_50_SUMB_5_4), 
        .YC(dp_cluster_0_mult_50_CARRYB_6_3), .YS(
        dp_cluster_0_mult_50_SUMB_6_3) );
  FAX1 dp_cluster_0_mult_50_S2_6_2 ( .A(dp_cluster_0_mult_50_ab_6_2), .B(
        dp_cluster_0_mult_50_CARRYB_5_2), .C(dp_cluster_0_mult_50_SUMB_5_3), 
        .YC(dp_cluster_0_mult_50_CARRYB_6_2), .YS(
        dp_cluster_0_mult_50_SUMB_6_2) );
  FAX1 dp_cluster_0_mult_50_S2_6_1 ( .A(dp_cluster_0_mult_50_ab_6_1), .B(
        dp_cluster_0_mult_50_CARRYB_5_1), .C(dp_cluster_0_mult_50_SUMB_5_2), 
        .YC(dp_cluster_0_mult_50_CARRYB_6_1), .YS(
        dp_cluster_0_mult_50_SUMB_6_1) );
  FAX1 dp_cluster_0_mult_50_S1_6_0 ( .A(dp_cluster_0_mult_50_ab_6_0), .B(
        dp_cluster_0_mult_50_CARRYB_5_0), .C(dp_cluster_0_mult_50_SUMB_5_1), 
        .YC(dp_cluster_0_mult_50_CARRYB_6_0), .YS(dp_cluster_0_add_0[1]) );
  FAX1 dp_cluster_0_mult_50_S5_6 ( .A(dp_cluster_0_mult_50_ab_7_6), .B(
        dp_cluster_0_mult_50_CARRYB_6_6), .C(dp_cluster_0_mult_50_ab_6_7), 
        .YC(dp_cluster_0_mult_50_CARRYB_7_6), .YS(
        dp_cluster_0_mult_50_SUMB_7_6) );
  FAX1 dp_cluster_0_mult_50_S4_5 ( .A(dp_cluster_0_mult_50_ab_7_5), .B(
        dp_cluster_0_mult_50_CARRYB_6_5), .C(dp_cluster_0_mult_50_SUMB_6_6), 
        .YC(dp_cluster_0_mult_50_CARRYB_7_5), .YS(
        dp_cluster_0_mult_50_SUMB_7_5) );
  FAX1 dp_cluster_0_mult_50_S4_4 ( .A(dp_cluster_0_mult_50_ab_7_4), .B(
        dp_cluster_0_mult_50_CARRYB_6_4), .C(dp_cluster_0_mult_50_SUMB_6_5), 
        .YC(dp_cluster_0_mult_50_CARRYB_7_4), .YS(
        dp_cluster_0_mult_50_SUMB_7_4) );
  FAX1 dp_cluster_0_mult_50_S4_3 ( .A(dp_cluster_0_mult_50_ab_7_3), .B(
        dp_cluster_0_mult_50_CARRYB_6_3), .C(dp_cluster_0_mult_50_SUMB_6_4), 
        .YC(dp_cluster_0_mult_50_CARRYB_7_3), .YS(
        dp_cluster_0_mult_50_SUMB_7_3) );
  FAX1 dp_cluster_0_mult_50_S4_2 ( .A(dp_cluster_0_mult_50_ab_7_2), .B(
        dp_cluster_0_mult_50_CARRYB_6_2), .C(dp_cluster_0_mult_50_SUMB_6_3), 
        .YC(dp_cluster_0_mult_50_CARRYB_7_2), .YS(
        dp_cluster_0_mult_50_SUMB_7_2) );
  FAX1 dp_cluster_0_mult_50_S4_1 ( .A(dp_cluster_0_mult_50_ab_7_1), .B(
        dp_cluster_0_mult_50_CARRYB_6_1), .C(dp_cluster_0_mult_50_SUMB_6_2), 
        .YC(dp_cluster_0_mult_50_CARRYB_7_1), .YS(
        dp_cluster_0_mult_50_SUMB_7_1) );
  FAX1 dp_cluster_0_mult_50_S4_0 ( .A(dp_cluster_0_mult_50_ab_7_0), .B(
        dp_cluster_0_mult_50_CARRYB_6_0), .C(dp_cluster_0_mult_50_SUMB_6_1), 
        .YC(dp_cluster_0_mult_50_CARRYB_7_0), .YS(
        dp_cluster_0_mult_50_SUMB_7_0) );
  HAX1 add_130_U1_1_1 ( .A(n227), .B(n246), .YC(add_130_carry[2]), .YS(N108)
         );
  HAX1 add_130_U1_1_2 ( .A(n221), .B(add_130_carry[2]), .YC(add_130_carry[3]), 
        .YS(N109) );
  HAX1 add_130_U1_1_3 ( .A(n229), .B(add_130_carry[3]), .YC(add_130_carry[4]), 
        .YS(N110) );
  HAX1 add_130_U1_1_4 ( .A(n226), .B(add_130_carry[4]), .YC(add_130_carry[5]), 
        .YS(N111) );
  AND2X1 U144 ( .A(n201), .B(n203), .Y(dp_cluster_0_mult_50_ab_1_7) );
  AND2X1 U145 ( .A(n200), .B(n204), .Y(dp_cluster_0_mult_50_ab_2_6) );
  AND2X1 U146 ( .A(n200), .B(n205), .Y(dp_cluster_0_mult_50_ab_2_5) );
  AND2X1 U147 ( .A(n200), .B(n203), .Y(dp_cluster_0_mult_50_ab_2_7) );
  AND2X1 U148 ( .A(n199), .B(n204), .Y(dp_cluster_0_mult_50_ab_3_6) );
  AND2X1 U149 ( .A(n197), .B(n205), .Y(dp_cluster_0_mult_50_ab_5_5) );
  AND2X1 U150 ( .A(n198), .B(n205), .Y(dp_cluster_0_mult_50_ab_4_5) );
  AND2X1 U151 ( .A(n199), .B(n205), .Y(dp_cluster_0_mult_50_ab_3_5) );
  AND2X1 U152 ( .A(n199), .B(n206), .Y(dp_cluster_0_mult_50_ab_3_4) );
  AND2X1 U153 ( .A(n200), .B(n206), .Y(dp_cluster_0_mult_50_ab_2_4) );
  AND2X1 U154 ( .A(n199), .B(n203), .Y(dp_cluster_0_mult_50_ab_3_7) );
  AND2X1 U155 ( .A(n198), .B(n204), .Y(dp_cluster_0_mult_50_ab_4_6) );
  AND2X1 U156 ( .A(n196), .B(n205), .Y(dp_cluster_0_mult_50_ab_6_5) );
  AND2X1 U157 ( .A(n196), .B(n206), .Y(dp_cluster_0_mult_50_ab_6_4) );
  AND2X1 U158 ( .A(n197), .B(n206), .Y(dp_cluster_0_mult_50_ab_5_4) );
  AND2X1 U159 ( .A(n198), .B(n206), .Y(dp_cluster_0_mult_50_ab_4_4) );
  AND2X1 U160 ( .A(n198), .B(n207), .Y(dp_cluster_0_mult_50_ab_4_3) );
  AND2X1 U161 ( .A(n199), .B(n207), .Y(dp_cluster_0_mult_50_ab_3_3) );
  AND2X1 U162 ( .A(n200), .B(n207), .Y(dp_cluster_0_mult_50_ab_2_3) );
  AND2X1 U163 ( .A(n198), .B(n203), .Y(dp_cluster_0_mult_50_ab_4_7) );
  AND2X1 U164 ( .A(n197), .B(n204), .Y(dp_cluster_0_mult_50_ab_5_6) );
  AND2X1 U165 ( .A(n205), .B(n211), .Y(dp_cluster_0_mult_50_ab_7_5) );
  AND2X1 U166 ( .A(n206), .B(n211), .Y(dp_cluster_0_mult_50_ab_7_4) );
  AND2X1 U167 ( .A(n207), .B(n211), .Y(dp_cluster_0_mult_50_ab_7_3) );
  AND2X1 U168 ( .A(n196), .B(n207), .Y(dp_cluster_0_mult_50_ab_6_3) );
  AND2X1 U169 ( .A(n197), .B(n207), .Y(dp_cluster_0_mult_50_ab_5_3) );
  AND2X1 U170 ( .A(n197), .B(n208), .Y(dp_cluster_0_mult_50_ab_5_2) );
  AND2X1 U171 ( .A(n198), .B(n208), .Y(dp_cluster_0_mult_50_ab_4_2) );
  AND2X1 U172 ( .A(n199), .B(n208), .Y(dp_cluster_0_mult_50_ab_3_2) );
  AND2X1 U173 ( .A(n200), .B(n208), .Y(dp_cluster_0_mult_50_ab_2_2) );
  AND2X1 U174 ( .A(n197), .B(n203), .Y(dp_cluster_0_mult_50_ab_5_7) );
  AND2X1 U175 ( .A(n196), .B(n204), .Y(dp_cluster_0_mult_50_ab_6_6) );
  AND2X1 U176 ( .A(n208), .B(n211), .Y(dp_cluster_0_mult_50_ab_7_2) );
  AND2X1 U177 ( .A(n196), .B(n208), .Y(dp_cluster_0_mult_50_ab_6_2) );
  AND2X1 U178 ( .A(n196), .B(n209), .Y(dp_cluster_0_mult_50_ab_6_1) );
  AND2X1 U179 ( .A(n197), .B(n209), .Y(dp_cluster_0_mult_50_ab_5_1) );
  AND2X1 U180 ( .A(n198), .B(n209), .Y(dp_cluster_0_mult_50_ab_4_1) );
  AND2X1 U181 ( .A(n199), .B(n209), .Y(dp_cluster_0_mult_50_ab_3_1) );
  AND2X1 U182 ( .A(n200), .B(n209), .Y(dp_cluster_0_mult_50_ab_2_1) );
  AND2X1 U183 ( .A(n203), .B(n211), .Y(dp_cluster_0_mult_50_ab_7_7) );
  AND2X1 U184 ( .A(n196), .B(n203), .Y(dp_cluster_0_mult_50_ab_6_7) );
  AND2X1 U185 ( .A(n204), .B(n211), .Y(dp_cluster_0_mult_50_ab_7_6) );
  AND2X1 U186 ( .A(n209), .B(n211), .Y(dp_cluster_0_mult_50_ab_7_1) );
  AND2X1 U187 ( .A(n210), .B(n211), .Y(dp_cluster_0_mult_50_ab_7_0) );
  AND2X1 U188 ( .A(n196), .B(n210), .Y(dp_cluster_0_mult_50_ab_6_0) );
  AND2X1 U189 ( .A(n197), .B(n210), .Y(dp_cluster_0_mult_50_ab_5_0) );
  AND2X1 U190 ( .A(n198), .B(n210), .Y(dp_cluster_0_mult_50_ab_4_0) );
  AND2X1 U191 ( .A(n199), .B(n210), .Y(dp_cluster_0_mult_50_ab_3_0) );
  AND2X1 U192 ( .A(n200), .B(n210), .Y(dp_cluster_0_mult_50_ab_2_0) );
  AND2X1 U193 ( .A(n334), .B(n188), .Y(n335) );
  AND2X1 U194 ( .A(n342), .B(n214), .Y(n343) );
  AND2X1 U195 ( .A(n329), .B(n216), .Y(n328) );
  AND2X1 U196 ( .A(n191), .B(n315), .Y(n113) );
  OR2X1 U197 ( .A(n315), .B(n191), .Y(n115) );
  BUFX2 U198 ( .A(n137), .Y(n145) );
  BUFX2 U199 ( .A(n136), .Y(n146) );
  BUFX2 U200 ( .A(n135), .Y(n147) );
  BUFX2 U201 ( .A(n134), .Y(n148) );
  BUFX2 U202 ( .A(n133), .Y(n149) );
  BUFX2 U203 ( .A(n131), .Y(n150) );
  BUFX2 U204 ( .A(n130), .Y(n151) );
  BUFX2 U205 ( .A(n129), .Y(n152) );
  BUFX2 U206 ( .A(n128), .Y(n153) );
  BUFX2 U207 ( .A(n127), .Y(n154) );
  BUFX2 U208 ( .A(n126), .Y(n155) );
  BUFX2 U209 ( .A(n125), .Y(n156) );
  BUFX2 U210 ( .A(n124), .Y(n157) );
  BUFX2 U211 ( .A(n123), .Y(n158) );
  BUFX2 U212 ( .A(n122), .Y(n159) );
  BUFX2 U213 ( .A(n121), .Y(n160) );
  BUFX2 U214 ( .A(n120), .Y(n161) );
  BUFX2 U215 ( .A(n119), .Y(n162) );
  BUFX2 U216 ( .A(n118), .Y(n163) );
  BUFX2 U217 ( .A(n117), .Y(n164) );
  BUFX2 U218 ( .A(n116), .Y(n165) );
  BUFX2 U219 ( .A(n114), .Y(n166) );
  BUFX2 U220 ( .A(n1120), .Y(n167) );
  BUFX2 U221 ( .A(n1110), .Y(n168) );
  BUFX2 U222 ( .A(n1100), .Y(n169) );
  BUFX2 U223 ( .A(n1090), .Y(n170) );
  BUFX2 U224 ( .A(n1080), .Y(n171) );
  BUFX2 U225 ( .A(n107), .Y(n172) );
  BUFX2 U226 ( .A(n1060), .Y(n173) );
  BUFX2 U227 ( .A(n105), .Y(n174) );
  BUFX2 U228 ( .A(n104), .Y(n175) );
  BUFX2 U229 ( .A(n103), .Y(n176) );
  BUFX2 U230 ( .A(n102), .Y(n177) );
  BUFX2 U231 ( .A(n101), .Y(n178) );
  BUFX2 U232 ( .A(n100), .Y(n179) );
  BUFX2 U233 ( .A(n99), .Y(n180) );
  BUFX2 U234 ( .A(n98), .Y(n181) );
  BUFX2 U235 ( .A(n95), .Y(n182) );
  BUFX2 U236 ( .A(N106), .Y(n183) );
  BUFX2 U237 ( .A(n139), .Y(n184) );
  OR2X1 U238 ( .A(n141), .B(n195), .Y(n194) );
  OR2X1 U239 ( .A(n142), .B(n113), .Y(n195) );
  AND2X1 U240 ( .A(dp_cluster_0_add_0[13]), .B(dout[0]), .Y(n256) );
  AND2X1 U241 ( .A(n202), .B(n210), .Y(dp_cluster_0_add_0[13]) );
  AND2X1 U242 ( .A(dp_cluster_0_mult_50_ab_1_0), .B(
        dp_cluster_0_mult_50_ab_0_1), .Y(n257) );
  AND2X1 U243 ( .A(n202), .B(n209), .Y(dp_cluster_0_mult_50_ab_0_1) );
  AND2X1 U244 ( .A(n201), .B(n210), .Y(dp_cluster_0_mult_50_ab_1_0) );
  AND2X1 U245 ( .A(dp_cluster_0_mult_50_ab_0_2), .B(
        dp_cluster_0_mult_50_ab_1_1), .Y(n258) );
  AND2X1 U246 ( .A(n201), .B(n209), .Y(dp_cluster_0_mult_50_ab_1_1) );
  AND2X1 U247 ( .A(n202), .B(n208), .Y(dp_cluster_0_mult_50_ab_0_2) );
  AND2X1 U248 ( .A(dp_cluster_0_mult_50_ab_0_3), .B(
        dp_cluster_0_mult_50_ab_1_2), .Y(n259) );
  AND2X1 U249 ( .A(n201), .B(n208), .Y(dp_cluster_0_mult_50_ab_1_2) );
  AND2X1 U250 ( .A(n202), .B(n207), .Y(dp_cluster_0_mult_50_ab_0_3) );
  AND2X1 U251 ( .A(dp_cluster_0_mult_50_ab_0_4), .B(
        dp_cluster_0_mult_50_ab_1_3), .Y(n260) );
  AND2X1 U252 ( .A(n201), .B(n207), .Y(dp_cluster_0_mult_50_ab_1_3) );
  AND2X1 U253 ( .A(n202), .B(n206), .Y(dp_cluster_0_mult_50_ab_0_4) );
  AND2X1 U254 ( .A(dp_cluster_0_mult_50_ab_0_5), .B(
        dp_cluster_0_mult_50_ab_1_4), .Y(n261) );
  AND2X1 U255 ( .A(n201), .B(n206), .Y(dp_cluster_0_mult_50_ab_1_4) );
  AND2X1 U256 ( .A(n202), .B(n205), .Y(dp_cluster_0_mult_50_ab_0_5) );
  AND2X1 U257 ( .A(dp_cluster_0_mult_50_ab_0_6), .B(
        dp_cluster_0_mult_50_ab_1_5), .Y(n262) );
  AND2X1 U258 ( .A(n201), .B(n205), .Y(dp_cluster_0_mult_50_ab_1_5) );
  AND2X1 U259 ( .A(n202), .B(n204), .Y(dp_cluster_0_mult_50_ab_0_6) );
  AND2X1 U260 ( .A(dp_cluster_0_mult_50_ab_0_7), .B(
        dp_cluster_0_mult_50_ab_1_6), .Y(n263) );
  AND2X1 U261 ( .A(n201), .B(n204), .Y(dp_cluster_0_mult_50_ab_1_6) );
  AND2X1 U262 ( .A(n202), .B(n203), .Y(dp_cluster_0_mult_50_ab_0_7) );
  AND2X1 U263 ( .A(n265), .B(n255), .Y(n141) );
  AND2X1 U264 ( .A(start), .B(n315), .Y(n142) );
  BUFX2 U265 ( .A(n321), .Y(n185) );
  OR2X1 U266 ( .A(n322), .B(n319), .Y(n323) );
  INVX1 U267 ( .A(n323), .Y(n186) );
  OR2X1 U268 ( .A(n266), .B(n189), .Y(n97) );
  INVX1 U269 ( .A(n97), .Y(n187) );
  AND2X1 U270 ( .A(n253), .B(dp_cluster_0_mult_50_A1_12), .Y(n333) );
  INVX1 U271 ( .A(n333), .Y(n188) );
  BUFX2 U272 ( .A(current_state[0]), .Y(n189) );
  AND2X1 U273 ( .A(n194), .B(next_state_1), .Y(n140) );
  INVX1 U274 ( .A(n140), .Y(n190) );
  BUFX2 U275 ( .A(current_state[1]), .Y(n191) );
  BUFX2 U276 ( .A(n138), .Y(n192) );
  INVX1 U277 ( .A(n113), .Y(n193) );
  BUFX2 U278 ( .A(a_reg[6]), .Y(n196) );
  BUFX2 U279 ( .A(a_reg[5]), .Y(n197) );
  BUFX2 U280 ( .A(a_reg[4]), .Y(n198) );
  BUFX2 U281 ( .A(a_reg[3]), .Y(n199) );
  BUFX2 U282 ( .A(a_reg[2]), .Y(n200) );
  BUFX2 U283 ( .A(a_reg[1]), .Y(n201) );
  BUFX2 U284 ( .A(a_reg[0]), .Y(n202) );
  BUFX2 U285 ( .A(b_reg[7]), .Y(n203) );
  BUFX2 U286 ( .A(b_reg[6]), .Y(n204) );
  BUFX2 U287 ( .A(b_reg[5]), .Y(n205) );
  BUFX2 U288 ( .A(b_reg[4]), .Y(n206) );
  BUFX2 U289 ( .A(b_reg[3]), .Y(n207) );
  BUFX2 U290 ( .A(b_reg[2]), .Y(n208) );
  BUFX2 U291 ( .A(b_reg[1]), .Y(n209) );
  BUFX2 U292 ( .A(b_reg[0]), .Y(n210) );
  BUFX2 U293 ( .A(a_reg[7]), .Y(n211) );
  AND2X1 U294 ( .A(n336), .B(n222), .Y(n339) );
  INVX1 U295 ( .A(n339), .Y(n212) );
  AND2X1 U296 ( .A(n326), .B(n223), .Y(n324) );
  INVX1 U297 ( .A(n324), .Y(n213) );
  AND2X1 U298 ( .A(n251), .B(dp_cluster_0_mult_50_A1_10), .Y(n341) );
  INVX1 U299 ( .A(n341), .Y(n214) );
  INVX1 U300 ( .A(n343), .Y(n215) );
  AND2X1 U301 ( .A(n249), .B(dp_cluster_0_mult_50_A1_8), .Y(n330) );
  INVX1 U302 ( .A(n330), .Y(n216) );
  BUFX2 U303 ( .A(n332), .Y(n217) );
  INVX1 U304 ( .A(n335), .Y(n218) );
  INVX1 U305 ( .A(n328), .Y(n219) );
  BUFX2 U306 ( .A(n340), .Y(n220) );
  BUFX2 U307 ( .A(process_value[2]), .Y(n221) );
  AND2X1 U308 ( .A(n252), .B(dp_cluster_0_mult_50_A1_11), .Y(n338) );
  INVX1 U309 ( .A(n338), .Y(n222) );
  AND2X1 U310 ( .A(n250), .B(dp_cluster_0_mult_50_A1_9), .Y(n327) );
  INVX1 U311 ( .A(n327), .Y(n223) );
  AND2X1 U312 ( .A(dp_cluster_0_mult_50_A1_7), .B(n247), .Y(n344) );
  INVX1 U313 ( .A(n344), .Y(n224) );
  BUFX2 U314 ( .A(n360), .Y(dout[0]) );
  BUFX2 U315 ( .A(process_value[4]), .Y(n226) );
  BUFX2 U316 ( .A(process_value[1]), .Y(n227) );
  INVX1 U317 ( .A(n115), .Y(n228) );
  BUFX2 U318 ( .A(process_value[3]), .Y(n229) );
  BUFX2 U319 ( .A(n358), .Y(dout[2]) );
  BUFX2 U320 ( .A(n352), .Y(dout[8]) );
  BUFX2 U321 ( .A(n351), .Y(dout[9]) );
  BUFX2 U322 ( .A(n345), .Y(dout[15]) );
  BUFX2 U323 ( .A(n357), .Y(dout[3]) );
  BUFX2 U324 ( .A(n356), .Y(dout[4]) );
  BUFX2 U325 ( .A(n355), .Y(dout[5]) );
  BUFX2 U326 ( .A(n346), .Y(dout[14]) );
  BUFX2 U327 ( .A(n347), .Y(dout[13]) );
  BUFX2 U328 ( .A(n348), .Y(dout[12]) );
  BUFX2 U329 ( .A(n349), .Y(dout[11]) );
  BUFX2 U330 ( .A(n350), .Y(dout[10]) );
  BUFX2 U331 ( .A(n354), .Y(dout[6]) );
  BUFX2 U332 ( .A(n359), .Y(dout[1]) );
  BUFX2 U333 ( .A(n353), .Y(dout[7]) );
  BUFX2 U334 ( .A(process_value[5]), .Y(n245) );
  INVX1 U335 ( .A(n245), .Y(n298) );
  BUFX2 U336 ( .A(process_value[0]), .Y(n246) );
  INVX1 U337 ( .A(n342), .Y(n317) );
  INVX1 U338 ( .A(n329), .Y(n316) );
  INVX1 U339 ( .A(n334), .Y(n318) );
  OR2X1 U340 ( .A(n252), .B(dp_cluster_0_mult_50_A1_11), .Y(n336) );
  OR2X1 U341 ( .A(n250), .B(dp_cluster_0_mult_50_A1_9), .Y(n326) );
  OR2X1 U342 ( .A(n253), .B(dp_cluster_0_mult_50_A1_12), .Y(n334) );
  OR2X1 U343 ( .A(n249), .B(dp_cluster_0_mult_50_A1_8), .Y(n329) );
  OR2X1 U344 ( .A(n251), .B(dp_cluster_0_mult_50_A1_10), .Y(n342) );
  INVX1 U345 ( .A(next_state_1), .Y(n294) );
  INVX1 U346 ( .A(n254), .Y(n266) );
  INVX1 U347 ( .A(n270), .Y(n269) );
  AND2X1 U348 ( .A(dp_cluster_0_mult_50_SUMB_7_1), .B(
        dp_cluster_0_mult_50_CARRYB_7_0), .Y(n247) );
  AND2X1 U349 ( .A(dp_cluster_0_mult_50_ab_7_7), .B(
        dp_cluster_0_mult_50_CARRYB_7_6), .Y(n248) );
  AND2X1 U350 ( .A(dp_cluster_0_mult_50_SUMB_7_2), .B(
        dp_cluster_0_mult_50_CARRYB_7_1), .Y(n249) );
  AND2X1 U351 ( .A(dp_cluster_0_mult_50_SUMB_7_3), .B(
        dp_cluster_0_mult_50_CARRYB_7_2), .Y(n250) );
  AND2X1 U352 ( .A(dp_cluster_0_mult_50_SUMB_7_4), .B(
        dp_cluster_0_mult_50_CARRYB_7_3), .Y(n251) );
  AND2X1 U353 ( .A(dp_cluster_0_mult_50_SUMB_7_5), .B(
        dp_cluster_0_mult_50_CARRYB_7_4), .Y(n252) );
  AND2X1 U354 ( .A(dp_cluster_0_mult_50_SUMB_7_6), .B(
        dp_cluster_0_mult_50_CARRYB_7_5), .Y(n253) );
  BUFX2 U355 ( .A(n228), .Y(n264) );
  BUFX2 U356 ( .A(n228), .Y(n265) );
  BUFX2 U357 ( .A(n187), .Y(n268) );
  BUFX2 U358 ( .A(n187), .Y(n267) );
  INVX1 U359 ( .A(n184), .Y(n293) );
  AND2X1 U360 ( .A(n115), .B(n193), .Y(n254) );
  INVX1 U361 ( .A(rst_b), .Y(n270) );
  INVX1 U362 ( .A(n182), .Y(n314) );
  INVX1 U363 ( .A(n181), .Y(n313) );
  INVX1 U364 ( .A(n176), .Y(n308) );
  INVX1 U365 ( .A(n180), .Y(n312) );
  INVX1 U366 ( .A(n179), .Y(n311) );
  INVX1 U367 ( .A(n178), .Y(n310) );
  INVX1 U368 ( .A(n177), .Y(n309) );
  INVX1 U369 ( .A(n175), .Y(n307) );
  INVX1 U370 ( .A(n174), .Y(n306) );
  INVX1 U371 ( .A(n183), .Y(n296) );
  INVX1 U372 ( .A(n320), .Y(n295) );
  INVX1 U373 ( .A(n166), .Y(n279) );
  INVX1 U374 ( .A(n165), .Y(n271) );
  INVX1 U375 ( .A(n164), .Y(n280) );
  INVX1 U376 ( .A(n163), .Y(n272) );
  INVX1 U377 ( .A(n162), .Y(n281) );
  INVX1 U378 ( .A(n161), .Y(n273) );
  INVX1 U379 ( .A(n160), .Y(n282) );
  INVX1 U380 ( .A(n189), .Y(n315) );
  INVX1 U381 ( .A(n229), .Y(n319) );
  INVX1 U382 ( .A(n168), .Y(n300) );
  INVX1 U383 ( .A(n173), .Y(n305) );
  INVX1 U384 ( .A(n172), .Y(n304) );
  INVX1 U385 ( .A(n171), .Y(n303) );
  INVX1 U386 ( .A(n170), .Y(n302) );
  INVX1 U387 ( .A(n169), .Y(n301) );
  INVX1 U388 ( .A(n147), .Y(n289) );
  INVX1 U389 ( .A(n159), .Y(n274) );
  INVX1 U390 ( .A(n158), .Y(n283) );
  INVX1 U391 ( .A(n157), .Y(n275) );
  INVX1 U392 ( .A(n156), .Y(n284) );
  INVX1 U393 ( .A(n155), .Y(n276) );
  INVX1 U394 ( .A(n154), .Y(n285) );
  INVX1 U395 ( .A(n153), .Y(n277) );
  INVX1 U396 ( .A(n152), .Y(n286) );
  INVX1 U397 ( .A(n151), .Y(n278) );
  INVX1 U398 ( .A(n148), .Y(n290) );
  INVX1 U399 ( .A(n149), .Y(n291) );
  INVX1 U400 ( .A(n150), .Y(n292) );
  INVX1 U401 ( .A(n167), .Y(n299) );
  INVX1 U402 ( .A(n146), .Y(n288) );
  INVX1 U403 ( .A(n145), .Y(n287) );
  INVX1 U404 ( .A(n246), .Y(n297) );
  AND2X1 U405 ( .A(n298), .B(n185), .Y(n255) );
  XOR2X1 U406 ( .A(dp_cluster_0_add_0[13]), .B(dout[0]), .Y(N56) );
  XOR2X1 U407 ( .A(dp_cluster_0_mult_50_SUMB_7_1), .B(
        dp_cluster_0_mult_50_CARRYB_7_0), .Y(dp_cluster_0_mult_50_A1_6) );
  XOR2X1 U408 ( .A(dp_cluster_0_mult_50_SUMB_7_2), .B(
        dp_cluster_0_mult_50_CARRYB_7_1), .Y(dp_cluster_0_mult_50_A1_7) );
  XOR2X1 U409 ( .A(dp_cluster_0_mult_50_SUMB_7_3), .B(
        dp_cluster_0_mult_50_CARRYB_7_2), .Y(dp_cluster_0_mult_50_A1_8) );
  XOR2X1 U410 ( .A(dp_cluster_0_mult_50_SUMB_7_4), .B(
        dp_cluster_0_mult_50_CARRYB_7_3), .Y(dp_cluster_0_mult_50_A1_9) );
  XOR2X1 U411 ( .A(dp_cluster_0_mult_50_SUMB_7_5), .B(
        dp_cluster_0_mult_50_CARRYB_7_4), .Y(dp_cluster_0_mult_50_A1_10) );
  XOR2X1 U412 ( .A(dp_cluster_0_mult_50_SUMB_7_6), .B(
        dp_cluster_0_mult_50_CARRYB_7_5), .Y(dp_cluster_0_mult_50_A1_11) );
  XOR2X1 U413 ( .A(dp_cluster_0_mult_50_ab_7_7), .B(
        dp_cluster_0_mult_50_CARRYB_7_6), .Y(dp_cluster_0_mult_50_A1_12) );
  XOR2X1 U414 ( .A(dp_cluster_0_mult_50_ab_1_0), .B(
        dp_cluster_0_mult_50_ab_0_1), .Y(dp_cluster_0_add_0[6]) );
  XOR2X1 U415 ( .A(dp_cluster_0_mult_50_ab_1_1), .B(
        dp_cluster_0_mult_50_ab_0_2), .Y(dp_cluster_0_mult_50_SUMB_1_1) );
  XOR2X1 U416 ( .A(dp_cluster_0_mult_50_ab_1_2), .B(
        dp_cluster_0_mult_50_ab_0_3), .Y(dp_cluster_0_mult_50_SUMB_1_2) );
  XOR2X1 U417 ( .A(dp_cluster_0_mult_50_ab_1_3), .B(
        dp_cluster_0_mult_50_ab_0_4), .Y(dp_cluster_0_mult_50_SUMB_1_3) );
  XOR2X1 U418 ( .A(dp_cluster_0_mult_50_ab_1_4), .B(
        dp_cluster_0_mult_50_ab_0_5), .Y(dp_cluster_0_mult_50_SUMB_1_4) );
  XOR2X1 U419 ( .A(dp_cluster_0_mult_50_ab_1_5), .B(
        dp_cluster_0_mult_50_ab_0_6), .Y(dp_cluster_0_mult_50_SUMB_1_5) );
  XOR2X1 U420 ( .A(dp_cluster_0_mult_50_ab_1_6), .B(
        dp_cluster_0_mult_50_ab_0_7), .Y(dp_cluster_0_mult_50_SUMB_1_6) );
  XOR2X1 U421 ( .A(dp_cluster_0_mult_50_A1_7), .B(n247), .Y(
        dp_cluster_0_add_0[0]) );
  XOR2X1 U422 ( .A(n248), .B(n331), .Y(dp_cluster_0_add_0[7]) );
  NOR3X1 U423 ( .A(n246), .B(n221), .C(n227), .Y(n320) );
  NAND3X1 U424 ( .A(n229), .B(n295), .C(n226), .Y(n321) );
  NOR3X1 U425 ( .A(n246), .B(n221), .C(n227), .Y(n322) );
  AOI21X1 U426 ( .A(n186), .B(n226), .C(n245), .Y(N106) );
  XOR2X1 U427 ( .A(add_130_carry[5]), .B(n245), .Y(N112) );
  XNOR2X1 U428 ( .A(n213), .B(n325), .Y(dp_cluster_0_add_0[11]) );
  XOR2X1 U429 ( .A(n219), .B(n224), .Y(dp_cluster_0_add_0[12]) );
  OAI21X1 U430 ( .A(n318), .B(n217), .C(n188), .Y(n331) );
  XOR2X1 U431 ( .A(n218), .B(n217), .Y(dp_cluster_0_add_0[8]) );
  AOI21X1 U432 ( .A(n336), .B(n337), .C(n338), .Y(n332) );
  XNOR2X1 U433 ( .A(n212), .B(n337), .Y(dp_cluster_0_add_0[9]) );
  OAI21X1 U434 ( .A(n317), .B(n220), .C(n214), .Y(n337) );
  XOR2X1 U435 ( .A(n215), .B(n220), .Y(dp_cluster_0_add_0[10]) );
  AOI21X1 U436 ( .A(n325), .B(n326), .C(n327), .Y(n340) );
  OAI21X1 U437 ( .A(n224), .B(n316), .C(n216), .Y(n325) );
endmodule

