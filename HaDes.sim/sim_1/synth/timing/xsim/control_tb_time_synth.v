// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Aug  2 11:47:37 2021
// Host        : SAND-PC-01 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {D:/Programme/Xilinx/Vivado
//               Projects/HaDes/HaDes.sim/sim_1/synth/timing/xsim/control_tb_time_synth.v}
// Design      : control
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module control
   (clk,
    reset,
    inop,
    outop,
    loadop,
    storeop,
    dpma,
    epma,
    xack,
    xpresent,
    dmembusy,
    loadir,
    regwrite,
    pcwrite,
    pwrite,
    xread,
    xwrite,
    xnaintr);
  input clk;
  input reset;
  input inop;
  input outop;
  input loadop;
  input storeop;
  input dpma;
  input epma;
  input xack;
  input xpresent;
  input dmembusy;
  output loadir;
  output regwrite;
  output pcwrite;
  output pwrite;
  output xread;
  output xwrite;
  output xnaintr;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire dmembusy;
  wire dmembusy_IBUF;
  wire dmembusy_IBUF_BUFG;
  wire dpma;
  wire dpma_IBUF;
  wire epma;
  wire epma_IBUF;
  wire inop;
  wire inop_IBUF;
  wire loadir;
  wire loadir_OBUF;
  wire loadop;
  wire loadop_IBUF;
  wire \next_state[0]_LDC_i_1_n_0 ;
  wire \next_state[0]_LDC_i_2_n_0 ;
  wire \next_state[0]_LDC_i_3_n_0 ;
  wire \next_state[0]_LDC_i_4_n_0 ;
  wire \next_state[0]_LDC_i_5_n_0 ;
  wire \next_state[0]_LDC_i_6_n_0 ;
  wire \next_state[0]_LDC_i_7_n_0 ;
  wire \next_state[0]_LDC_n_0 ;
  wire \next_state[0]_P_n_0 ;
  wire \next_state[1]_LDC_i_1_n_0 ;
  wire \next_state[1]_LDC_i_2_n_0 ;
  wire \next_state[1]_LDC_i_3_n_0 ;
  wire \next_state[1]_LDC_i_4_n_0 ;
  wire \next_state[1]_LDC_i_5_n_0 ;
  wire \next_state[1]_LDC_i_6_n_0 ;
  wire \next_state[1]_LDC_i_7_n_0 ;
  wire \next_state[1]_LDC_n_0 ;
  wire \next_state[1]_P_n_0 ;
  wire \next_state[2]_LDC_i_1_n_0 ;
  wire \next_state[2]_LDC_i_2_n_0 ;
  wire \next_state[2]_LDC_i_3_n_0 ;
  wire \next_state[2]_LDC_i_4_n_0 ;
  wire \next_state[2]_LDC_i_5_n_0 ;
  wire \next_state[2]_LDC_i_6_n_0 ;
  wire \next_state[2]_LDC_i_7_n_0 ;
  wire \next_state[2]_LDC_i_8_n_0 ;
  wire \next_state[2]_LDC_i_9_n_0 ;
  wire \next_state[2]_LDC_n_0 ;
  wire \next_state[2]_P_n_0 ;
  wire \next_state[3]_C_n_0 ;
  wire \next_state[3]_LDC_i_1_n_0 ;
  wire \next_state[3]_LDC_i_2_n_0 ;
  wire \next_state[3]_LDC_i_3_n_0 ;
  wire \next_state[3]_LDC_i_4_n_0 ;
  wire \next_state[3]_LDC_i_5_n_0 ;
  wire \next_state[3]_LDC_n_0 ;
  wire outop;
  wire outop_IBUF;
  wire pcwrite;
  wire pcwrite_OBUF;
  wire pma;
  wire pma_i_1_n_0;
  wire \pma_logic.pma_v_reg_n_0 ;
  wire pma_v;
  wire pwrite;
  wire pwrite_OBUF;
  wire regwrite;
  wire regwrite_OBUF;
  wire reset;
  wire reset_IBUF;
  wire [2:0]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[3]_i_1_n_0 ;
  wire storeop;
  wire storeop_IBUF;
  wire xack;
  wire xack_IBUF;
  wire xnaintr;
  wire xnaintr_OBUF;
  wire xpresent;
  wire xpresent_IBUF;
  wire xread;
  wire xread_OBUF;
  wire xwrite;
  wire xwrite_OBUF;

initial begin
 $sdf_annotate("control_tb_time_synth.sdf",,,,"tool_control");
end
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  BUFG dmembusy_IBUF_BUFG_inst
       (.I(dmembusy_IBUF),
        .O(dmembusy_IBUF_BUFG));
  IBUF dmembusy_IBUF_inst
       (.I(dmembusy),
        .O(dmembusy_IBUF));
  IBUF dpma_IBUF_inst
       (.I(dpma),
        .O(dpma_IBUF));
  IBUF epma_IBUF_inst
       (.I(epma),
        .O(epma_IBUF));
  IBUF inop_IBUF_inst
       (.I(inop),
        .O(inop_IBUF));
  OBUF loadir_OBUF_inst
       (.I(loadir_OBUF),
        .O(loadir));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    loadir_OBUF_inst_i_1
       (.I0(regwrite_OBUF),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .O(loadir_OBUF));
  IBUF loadop_IBUF_inst
       (.I(loadop),
        .O(loadop_IBUF));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_state[0]_LDC 
       (.CLR(\next_state[0]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\next_state[0]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\next_state[0]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'h0011011101110111)) 
    \next_state[0]_LDC_i_1 
       (.I0(\next_state[0]_LDC_i_3_n_0 ),
        .I1(\next_state[0]_LDC_i_4_n_0 ),
        .I2(state[2]),
        .I3(xpresent_IBUF),
        .I4(state[0]),
        .I5(xack_IBUF),
        .O(\next_state[0]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055555455)) 
    \next_state[0]_LDC_i_2 
       (.I0(\next_state[0]_LDC_i_5_n_0 ),
        .I1(state[2]),
        .I2(\next_state[0]_LDC_i_6_n_0 ),
        .I3(loadop_IBUF),
        .I4(outop_IBUF),
        .I5(\next_state[0]_LDC_i_7_n_0 ),
        .O(\next_state[0]_LDC_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hEEFC)) 
    \next_state[0]_LDC_i_3 
       (.I0(state[2]),
        .I1(regwrite_OBUF),
        .I2(state[0]),
        .I3(state[1]),
        .O(\next_state[0]_LDC_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h000D0000)) 
    \next_state[0]_LDC_i_4 
       (.I0(loadop_IBUF),
        .I1(outop_IBUF),
        .I2(inop_IBUF),
        .I3(state[0]),
        .I4(state[1]),
        .O(\next_state[0]_LDC_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0F00FFF07000)) 
    \next_state[0]_LDC_i_5 
       (.I0(xack_IBUF),
        .I1(xpresent_IBUF),
        .I2(state[1]),
        .I3(state[0]),
        .I4(regwrite_OBUF),
        .I5(state[2]),
        .O(\next_state[0]_LDC_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \next_state[0]_LDC_i_6 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\next_state[0]_LDC_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000022000000223F)) 
    \next_state[0]_LDC_i_7 
       (.I0(inop_IBUF),
        .I1(state[2]),
        .I2(xpresent_IBUF),
        .I3(state[1]),
        .I4(state[0]),
        .I5(regwrite_OBUF),
        .O(\next_state[0]_LDC_i_7_n_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \next_state[0]_P 
       (.C(dmembusy_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\next_state[0]_LDC_i_1_n_0 ),
        .Q(\next_state[0]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_state[1]_LDC 
       (.CLR(\next_state[1]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\next_state[1]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\next_state[1]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'h0000000015515551)) 
    \next_state[1]_LDC_i_1 
       (.I0(\next_state[1]_LDC_i_3_n_0 ),
        .I1(xpresent_IBUF),
        .I2(state[1]),
        .I3(state[0]),
        .I4(xack_IBUF),
        .I5(\next_state[1]_LDC_i_4_n_0 ),
        .O(\next_state[1]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055555515)) 
    \next_state[1]_LDC_i_2 
       (.I0(\next_state[1]_LDC_i_5_n_0 ),
        .I1(\next_state[1]_LDC_i_6_n_0 ),
        .I2(storeop_IBUF),
        .I3(loadop_IBUF),
        .I4(outop_IBUF),
        .I5(\next_state[1]_LDC_i_7_n_0 ),
        .O(\next_state[1]_LDC_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFA9)) 
    \next_state[1]_LDC_i_3 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(regwrite_OBUF),
        .O(\next_state[1]_LDC_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000FD00000000)) 
    \next_state[1]_LDC_i_4 
       (.I0(storeop_IBUF),
        .I1(loadop_IBUF),
        .I2(outop_IBUF),
        .I3(inop_IBUF),
        .I4(state[0]),
        .I5(state[1]),
        .O(\next_state[1]_LDC_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF0FFF0A2)) 
    \next_state[1]_LDC_i_5 
       (.I0(state[2]),
        .I1(xpresent_IBUF),
        .I2(regwrite_OBUF),
        .I3(state[1]),
        .I4(state[0]),
        .O(\next_state[1]_LDC_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \next_state[1]_LDC_i_6 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .O(\next_state[1]_LDC_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000000000FFF8888)) 
    \next_state[1]_LDC_i_7 
       (.I0(inop_IBUF),
        .I1(state[1]),
        .I2(xack_IBUF),
        .I3(xpresent_IBUF),
        .I4(state[0]),
        .I5(state[2]),
        .O(\next_state[1]_LDC_i_7_n_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \next_state[1]_P 
       (.C(dmembusy_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\next_state[1]_LDC_i_1_n_0 ),
        .Q(\next_state[1]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_state[2]_LDC 
       (.CLR(\next_state[2]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\next_state[2]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\next_state[2]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'h1111101011001010)) 
    \next_state[2]_LDC_i_1 
       (.I0(\next_state[2]_LDC_i_3_n_0 ),
        .I1(\next_state[2]_LDC_i_4_n_0 ),
        .I2(\next_state[3]_LDC_i_3_n_0 ),
        .I3(state[0]),
        .I4(state[1]),
        .I5(\next_state[2]_LDC_i_5_n_0 ),
        .O(\next_state[2]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011110111)) 
    \next_state[2]_LDC_i_2 
       (.I0(\next_state[2]_LDC_i_6_n_0 ),
        .I1(\next_state[2]_LDC_i_7_n_0 ),
        .I2(\next_state[2]_LDC_i_8_n_0 ),
        .I3(\next_state[2]_LDC_i_5_n_0 ),
        .I4(state[2]),
        .I5(\next_state[2]_LDC_i_9_n_0 ),
        .O(\next_state[2]_LDC_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFCFFB0)) 
    \next_state[2]_LDC_i_3 
       (.I0(xpresent_IBUF),
        .I1(state[1]),
        .I2(state[0]),
        .I3(regwrite_OBUF),
        .I4(state[2]),
        .O(\next_state[2]_LDC_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h440F)) 
    \next_state[2]_LDC_i_4 
       (.I0(state[0]),
        .I1(inop_IBUF),
        .I2(state[2]),
        .I3(state[1]),
        .O(\next_state[2]_LDC_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \next_state[2]_LDC_i_5 
       (.I0(outop_IBUF),
        .I1(loadop_IBUF),
        .I2(storeop_IBUF),
        .O(\next_state[2]_LDC_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0444)) 
    \next_state[2]_LDC_i_6 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(xpresent_IBUF),
        .I3(xack_IBUF),
        .O(\next_state[2]_LDC_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \next_state[2]_LDC_i_7 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(xpresent_IBUF),
        .O(\next_state[2]_LDC_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \next_state[2]_LDC_i_8 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(inop_IBUF),
        .O(\next_state[2]_LDC_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hCCE8)) 
    \next_state[2]_LDC_i_9 
       (.I0(state[2]),
        .I1(regwrite_OBUF),
        .I2(state[0]),
        .I3(state[1]),
        .O(\next_state[2]_LDC_i_9_n_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \next_state[2]_P 
       (.C(dmembusy_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\next_state[2]_LDC_i_1_n_0 ),
        .Q(\next_state[2]_P_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \next_state[3]_C 
       (.C(dmembusy_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\next_state[3]_LDC_i_2_n_0 ),
        .D(1'b1),
        .Q(\next_state[3]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_state[3]_LDC 
       (.CLR(\next_state[3]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\next_state[3]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\next_state[3]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'h0000000003000702)) 
    \next_state[3]_LDC_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(regwrite_OBUF),
        .I3(state[1]),
        .I4(\next_state[3]_LDC_i_3_n_0 ),
        .I5(\next_state[3]_LDC_i_4_n_0 ),
        .O(\next_state[3]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0041015500400115)) 
    \next_state[3]_LDC_i_2 
       (.I0(\next_state[3]_LDC_i_5_n_0 ),
        .I1(state[1]),
        .I2(state[0]),
        .I3(regwrite_OBUF),
        .I4(state[2]),
        .I5(\next_state[3]_LDC_i_3_n_0 ),
        .O(\next_state[3]_LDC_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \next_state[3]_LDC_i_3 
       (.I0(xack_IBUF),
        .I1(xpresent_IBUF),
        .O(\next_state[3]_LDC_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1111111111111110)) 
    \next_state[3]_LDC_i_4 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(inop_IBUF),
        .I3(outop_IBUF),
        .I4(loadop_IBUF),
        .I5(storeop_IBUF),
        .O(\next_state[3]_LDC_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \next_state[3]_LDC_i_5 
       (.I0(inop_IBUF),
        .I1(state[0]),
        .I2(state[1]),
        .I3(storeop_IBUF),
        .I4(loadop_IBUF),
        .I5(outop_IBUF),
        .O(\next_state[3]_LDC_i_5_n_0 ));
  IBUF outop_IBUF_inst
       (.I(outop),
        .O(outop_IBUF));
  OBUF pcwrite_OBUF_inst
       (.I(pcwrite_OBUF),
        .O(pcwrite));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    pcwrite_OBUF_inst_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(regwrite_OBUF),
        .O(pcwrite_OBUF));
  LUT5 #(
    .INIT(32'h8888BBB8)) 
    pma_i_1
       (.I0(pma),
        .I1(reset_IBUF),
        .I2(epma_IBUF),
        .I3(\pma_logic.pma_v_reg_n_0 ),
        .I4(dpma_IBUF),
        .O(pma_i_1_n_0));
  LUT3 #(
    .INIT(8'h0E)) 
    \pma_logic.pma_v_i_1 
       (.I0(epma_IBUF),
        .I1(\pma_logic.pma_v_reg_n_0 ),
        .I2(dpma_IBUF),
        .O(pma_v));
  FDPE #(
    .INIT(1'b0)) 
    \pma_logic.pma_v_reg 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pma_v),
        .PRE(reset_IBUF),
        .Q(\pma_logic.pma_v_reg_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    pma_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pma_i_1_n_0),
        .Q(pma),
        .R(1'b0));
  OBUF pwrite_OBUF_inst
       (.I(pwrite_OBUF),
        .O(pwrite));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    pwrite_OBUF_inst_i_1
       (.I0(pma),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .O(pwrite_OBUF));
  OBUF regwrite_OBUF_inst
       (.I(regwrite_OBUF),
        .O(regwrite));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  LUT2 #(
    .INIT(4'h8)) 
    \state[0]_i_1 
       (.I0(\next_state[0]_LDC_n_0 ),
        .I1(\next_state[0]_P_n_0 ),
        .O(\state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \state[1]_i_1 
       (.I0(\next_state[1]_LDC_n_0 ),
        .I1(\next_state[1]_P_n_0 ),
        .O(\state[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \state[2]_i_1 
       (.I0(\next_state[2]_LDC_n_0 ),
        .I1(\next_state[2]_P_n_0 ),
        .O(\state[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \state[3]_i_1 
       (.I0(\next_state[3]_LDC_n_0 ),
        .I1(\next_state[3]_C_n_0 ),
        .O(\state[3]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\state[0]_i_1_n_0 ),
        .Q(state[0]));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\state[1]_i_1_n_0 ),
        .Q(state[1]));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\state[2]_i_1_n_0 ),
        .Q(state[2]));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\state[3]_i_1_n_0 ),
        .Q(regwrite_OBUF));
  IBUF storeop_IBUF_inst
       (.I(storeop),
        .O(storeop_IBUF));
  IBUF xack_IBUF_inst
       (.I(xack),
        .O(xack_IBUF));
  OBUF xnaintr_OBUF_inst
       (.I(xnaintr_OBUF),
        .O(xnaintr));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h80)) 
    xnaintr_OBUF_inst_i_1
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .O(xnaintr_OBUF));
  IBUF xpresent_IBUF_inst
       (.I(xpresent),
        .O(xpresent_IBUF));
  OBUF xread_OBUF_inst
       (.I(xread_OBUF),
        .O(xread));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h48)) 
    xread_OBUF_inst_i_1
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .O(xread_OBUF));
  OBUF xwrite_OBUF_inst
       (.I(xwrite_OBUF),
        .O(xwrite));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h040C)) 
    xwrite_OBUF_inst_i_1
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(pma),
        .O(xwrite_OBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
