/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Thu Dec 30 19:24:07 2021
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 557832696 */

module HomeAutomationSystem(clk, Rst, SFD, SRD, SW, SFA, ST, fdoor, rdoor, 
      winbuzz, alarmbuzz, cooler, heater, display);
   input clk;
   input Rst;
   input SFD;
   input SRD;
   input SW;
   input SFA;
   input [7:0]ST;
   output fdoor;
   output rdoor;
   output winbuzz;
   output alarmbuzz;
   output cooler;
   output heater;
   output [2:0]display;

   wire n_0_0;
   wire n_0_1;
   wire n_0_2;
   wire n_0_0_1;
   wire n_0_0_0;
   wire n_0_4;
   wire n_0_0_2;
   wire n_0_0_3;
   wire n_0_5;
   wire n_0_0_4;
   wire n_0_0_5;
   wire n_0_0_6;
   wire n_0_0_7;
   wire n_0_0_8;
   wire n_0_6;
   wire n_0_0_9;
   wire n_0_0_10;
   wire n_0_0_11;
   wire n_0_0_12;
   wire n_0_0_13;
   wire n_0_7;
   wire n_0_9;
   wire n_0_0_14;
   wire n_0_10;
   wire n_0_11;
   wire n_0_0_15;
   wire n_0_12;
   wire n_0_0_16;
   wire n_0_0_17;
   wire n_0_0_18;
   wire n_0_0_19;
   wire n_0_0_20;
   wire n_0_0_21;
   wire n_0_0_22;
   wire n_0_3;
   wire n_0_13;
   wire n_0_0_23;
   wire n_0_0_24;
   wire n_0_0_25;
   wire n_0_0_26;
   wire n_0_14;
   wire n_0_0_27;
   wire n_0_0_28;
   wire n_0_0_29;
   wire n_0_0_30;
   wire n_0_8;
   wire n_0_0_31;
   wire n_0_0_32;
   wire n_0_0_33;
   wire n_0_0_34;
   wire n_0_0_35;
   wire n_0_0_36;
   wire n_0_0_37;
   wire n_0_0_38;
   wire n_0_0_39;
   wire n_0_0_40;
   wire n_0_0_41;
   wire n_0_0_42;
   wire n_0_0_43;
   wire n_0_0_44;
   wire n_0_0_45;
   wire n_0_0_46;
   wire n_0_0_47;
   wire n_0_0_48;
   wire n_0_0_49;
   wire n_0_0_50;
   wire n_0_0_51;
   wire n_0_0_52;
   wire n_0_0_53;
   wire n_0_0_54;
   wire n_0_0_55;
   wire n_0_0_56;
   wire n_0_0_57;
   wire n_0_0_58;
   wire n_0_0_59;

   DFF_X1 \display_reg[2]  (.D(n_0_14), .CK(clk), .Q(display[2]), .QN());
   DFF_X1 \display_reg[1]  (.D(n_0_13), .CK(clk), .Q(display[1]), .QN());
   DFF_X1 \display_reg[0]  (.D(n_0_12), .CK(clk), .Q(display[0]), .QN());
   DFF_X1 heater_reg (.D(n_0_11), .CK(clk), .Q(heater), .QN());
   DFF_X1 cooler_reg (.D(n_0_10), .CK(clk), .Q(cooler), .QN());
   DFF_X1 alarmbuzz_reg (.D(n_0_9), .CK(clk), .Q(alarmbuzz), .QN());
   DFF_X1 winbuzz_reg (.D(n_0_8), .CK(clk), .Q(winbuzz), .QN());
   DFF_X1 rdoor_reg (.D(n_0_7), .CK(clk), .Q(rdoor), .QN());
   DFF_X1 fdoor_reg (.D(n_0_3), .CK(clk), .Q(fdoor), .QN());
   DFF_X1 \nextCheck_reg[2]  (.D(n_0_6), .CK(clk), .Q(n_0_0), .QN());
   DFF_X1 \nextCheck_reg[1]  (.D(n_0_5), .CK(clk), .Q(n_0_1), .QN());
   DFF_X1 \nextCheck_reg[0]  (.D(n_0_4), .CK(clk), .Q(n_0_2), .QN());
   HA_X1 i_0_0_0 (.A(n_0_1), .B(n_0_2), .CO(n_0_0_0), .S(n_0_0_1));
   NOR2_X1 i_0_0_1 (.A1(n_0_0_36), .A2(n_0_0_2), .ZN(n_0_4));
   AOI22_X1 i_0_0_2 (.A1(n_0_0_45), .A2(n_0_0_21), .B1(n_0_0_3), .B2(n_0_0_57), 
      .ZN(n_0_0_2));
   OR4_X1 i_0_0_3 (.A1(n_0_0), .A2(n_0_0_55), .A3(SRD), .A4(n_0_1), .ZN(n_0_0_3));
   OAI21_X1 i_0_0_4 (.A(n_0_0_4), .B1(n_0_0_37), .B2(Rst), .ZN(n_0_5));
   OAI21_X1 i_0_0_5 (.A(n_0_0_41), .B1(n_0_0_17), .B2(n_0_0_5), .ZN(n_0_0_4));
   AOI22_X1 i_0_0_6 (.A1(n_0_0_6), .A2(n_0_0_7), .B1(n_0_0_38), .B2(n_0_0_43), 
      .ZN(n_0_0_5));
   AOI22_X1 i_0_0_7 (.A1(SRD), .A2(n_0_0_40), .B1(n_0_0_39), .B2(n_0_0_30), 
      .ZN(n_0_0_6));
   NAND3_X1 i_0_0_8 (.A1(n_0_0_1), .A2(n_0_0_13), .A3(n_0_0_8), .ZN(n_0_0_7));
   AOI21_X1 i_0_0_9 (.A(n_0_0_25), .B1(n_0_0_29), .B2(n_0_0_34), .ZN(n_0_0_8));
   AOI211_X1 i_0_0_10 (.A(n_0_0_36), .B(n_0_0_17), .C1(n_0_0_10), .C2(n_0_0_9), 
      .ZN(n_0_6));
   NOR3_X1 i_0_0_11 (.A1(n_0_0_33), .A2(n_0_0_25), .A3(n_0_0_24), .ZN(n_0_0_9));
   NAND4_X1 i_0_0_12 (.A1(n_0_0_22), .A2(n_0_0_13), .A3(n_0_0_12), .A4(n_0_0_11), 
      .ZN(n_0_0_10));
   NAND3_X1 i_0_0_13 (.A1(n_0_1), .A2(SRD), .A3(n_0_0_40), .ZN(n_0_0_11));
   XNOR2_X1 i_0_0_14 (.A(n_0_0_59), .B(n_0_0_0), .ZN(n_0_0_12));
   AOI221_X1 i_0_0_15 (.A(n_0_0_20), .B1(n_0_0_38), .B2(n_0_0_49), .C1(n_0_1), 
      .C2(n_0_0_29), .ZN(n_0_0_13));
   NOR3_X1 i_0_0_16 (.A1(n_0_0_26), .A2(n_0_0_39), .A3(Rst), .ZN(n_0_7));
   NOR3_X1 i_0_0_17 (.A1(n_0_0_14), .A2(n_0_0_55), .A3(Rst), .ZN(n_0_9));
   AOI22_X1 i_0_0_18 (.A1(n_0_0_44), .A2(n_0_0_38), .B1(n_0_0_30), .B2(n_0_1), 
      .ZN(n_0_0_14));
   AND2_X1 i_0_0_19 (.A1(n_0_0_46), .A2(n_0_0_15), .ZN(n_0_10));
   AND2_X1 i_0_0_20 (.A1(n_0_0_49), .A2(n_0_0_15), .ZN(n_0_11));
   NOR4_X1 i_0_0_21 (.A1(n_0_0_32), .A2(n_0_0_30), .A3(n_0_0_29), .A4(n_0_0_33), 
      .ZN(n_0_0_15));
   OAI22_X1 i_0_0_22 (.A1(n_0_0_16), .A2(n_0_0_17), .B1(n_0_0_37), .B2(Rst), 
      .ZN(n_0_12));
   OAI21_X1 i_0_0_23 (.A(n_0_0_41), .B1(n_0_0_24), .B2(n_0_0_18), .ZN(n_0_0_16));
   NOR2_X1 i_0_0_24 (.A1(n_0_0_26), .A2(n_0_1), .ZN(n_0_0_17));
   AOI22_X1 i_0_0_25 (.A1(n_0_0_22), .A2(n_0_0_19), .B1(n_0_0_59), .B2(n_0_0_33), 
      .ZN(n_0_0_18));
   AOI211_X1 i_0_0_26 (.A(n_0_0_25), .B(n_0_0_20), .C1(n_0_0_49), .C2(n_0_0_38), 
      .ZN(n_0_0_19));
   AND3_X1 i_0_0_27 (.A1(n_0_0_45), .A2(n_0_0_21), .A3(n_0_2), .ZN(n_0_0_20));
   NOR2_X1 i_0_0_28 (.A1(n_0_0_59), .A2(n_0_1), .ZN(n_0_0_21));
   AOI22_X1 i_0_0_29 (.A1(n_0_0_46), .A2(n_0_0_38), .B1(n_0_0_30), .B2(n_0_0_39), 
      .ZN(n_0_0_22));
   NOR4_X1 i_0_0_30 (.A1(n_0_0), .A2(n_0_0_54), .A3(Rst), .A4(n_0_1), .ZN(n_0_3));
   AOI21_X1 i_0_0_31 (.A(n_0_0_36), .B1(n_0_0_26), .B2(n_0_0_23), .ZN(n_0_13));
   NOR2_X1 i_0_0_32 (.A1(n_0_0_25), .A2(n_0_0_24), .ZN(n_0_0_23));
   AND2_X1 i_0_0_33 (.A1(SFA), .A2(n_0_0_38), .ZN(n_0_0_24));
   NOR4_X1 i_0_0_34 (.A1(n_0_0_58), .A2(n_0_0_57), .A3(n_0_0_55), .A4(n_0_0), 
      .ZN(n_0_0_25));
   NAND2_X1 i_0_0_35 (.A1(SRD), .A2(n_0_0_40), .ZN(n_0_0_26));
   AOI21_X1 i_0_0_36 (.A(n_0_0_32), .B1(n_0_0_31), .B2(n_0_0_27), .ZN(n_0_14));
   NAND2_X1 i_0_0_37 (.A1(n_0_0_45), .A2(n_0_0_28), .ZN(n_0_0_27));
   NOR2_X1 i_0_0_38 (.A1(n_0_0_30), .A2(n_0_0_29), .ZN(n_0_0_28));
   NOR2_X1 i_0_0_39 (.A1(n_0_0_59), .A2(n_0_2), .ZN(n_0_0_29));
   NOR2_X1 i_0_0_40 (.A1(n_0_0_57), .A2(n_0_0), .ZN(n_0_0_30));
   NOR2_X1 i_0_0_41 (.A1(n_0_0_32), .A2(n_0_0_31), .ZN(n_0_8));
   NAND2_X1 i_0_0_42 (.A1(n_0_0_57), .A2(SW), .ZN(n_0_0_31));
   NAND4_X1 i_0_0_43 (.A1(n_0_0_41), .A2(n_0_0_37), .A3(n_0_0_35), .A4(n_0_0_58), 
      .ZN(n_0_0_32));
   NOR3_X1 i_0_0_44 (.A1(n_0_0_56), .A2(n_0_2), .A3(n_0_1), .ZN(n_0_0_33));
   NOR2_X1 i_0_0_45 (.A1(n_0_0_56), .A2(n_0_1), .ZN(n_0_0_34));
   OAI21_X1 i_0_0_46 (.A(n_0_0_40), .B1(SRD), .B2(SFA), .ZN(n_0_0_35));
   NAND2_X1 i_0_0_47 (.A1(n_0_0_41), .A2(n_0_0_37), .ZN(n_0_0_36));
   NAND2_X1 i_0_0_48 (.A1(n_0_0_40), .A2(n_0_0_39), .ZN(n_0_0_37));
   NOR3_X1 i_0_0_49 (.A1(n_0_0), .A2(n_0_1), .A3(n_0_2), .ZN(n_0_0_38));
   NOR2_X1 i_0_0_50 (.A1(n_0_0_54), .A2(n_0_1), .ZN(n_0_0_39));
   NOR2_X1 i_0_0_51 (.A1(n_0_0), .A2(n_0_2), .ZN(n_0_0_40));
   NOR2_X1 i_0_0_52 (.A1(Rst), .A2(n_0_0_42), .ZN(n_0_0_41));
   NOR4_X1 i_0_0_53 (.A1(n_0_0_43), .A2(n_0_0_49), .A3(SFD), .A4(SRD), .ZN(
      n_0_0_42));
   OR3_X1 i_0_0_54 (.A1(SW), .A2(SFA), .A3(n_0_0_46), .ZN(n_0_0_43));
   NOR2_X1 i_0_0_55 (.A1(SRD), .A2(SFD), .ZN(n_0_0_44));
   OR2_X1 i_0_0_56 (.A1(n_0_0_49), .A2(n_0_0_46), .ZN(n_0_0_45));
   AOI21_X1 i_0_0_57 (.A(n_0_0_53), .B1(n_0_0_47), .B2(n_0_0_48), .ZN(n_0_0_46));
   NOR4_X1 i_0_0_58 (.A1(ST[7]), .A2(ST[5]), .A3(ST[4]), .A4(ST[3]), .ZN(
      n_0_0_47));
   NAND3_X1 i_0_0_59 (.A1(ST[2]), .A2(ST[1]), .A3(ST[0]), .ZN(n_0_0_48));
   NOR3_X1 i_0_0_60 (.A1(ST[7]), .A2(ST[6]), .A3(n_0_0_50), .ZN(n_0_0_49));
   NOR2_X1 i_0_0_61 (.A1(n_0_0_52), .A2(n_0_0_51), .ZN(n_0_0_50));
   NAND2_X1 i_0_0_62 (.A1(ST[5]), .A2(ST[4]), .ZN(n_0_0_51));
   NOR3_X1 i_0_0_63 (.A1(ST[3]), .A2(ST[2]), .A3(ST[1]), .ZN(n_0_0_52));
   NOR2_X1 i_0_0_64 (.A1(ST[7]), .A2(ST[6]), .ZN(n_0_0_53));
   INV_X1 i_0_0_65 (.A(SFD), .ZN(n_0_0_54));
   INV_X1 i_0_0_66 (.A(SFA), .ZN(n_0_0_55));
   INV_X1 i_0_0_67 (.A(SW), .ZN(n_0_0_56));
   INV_X1 i_0_0_68 (.A(n_0_2), .ZN(n_0_0_57));
   INV_X1 i_0_0_69 (.A(n_0_1), .ZN(n_0_0_58));
   INV_X1 i_0_0_70 (.A(n_0_0), .ZN(n_0_0_59));
endmodule