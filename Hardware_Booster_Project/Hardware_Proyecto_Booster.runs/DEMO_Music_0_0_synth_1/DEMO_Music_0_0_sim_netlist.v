// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Fri Dec  8 13:29:10 2023
// Host        : Juanpy running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ DEMO_Music_0_0_sim_netlist.v
// Design      : DEMO_Music_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "DEMO_Music_0_0,Music,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Music,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst,
    freq);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN DEMO_clk, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
  output [19:0]freq;

  wire \<const1> ;
  wire clk;
  wire [19:0]\^freq ;
  wire rst;

  assign freq[19] = \^freq [19];
  assign freq[18] = \^freq [7];
  assign freq[17] = \^freq [3];
  assign freq[16] = \^freq [16];
  assign freq[15] = \<const1> ;
  assign freq[14:10] = \^freq [14:10];
  assign freq[9] = \^freq [5];
  assign freq[8:0] = \^freq [8:0];
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Music U0
       (.clk(clk),
        .freq({\^freq [19],\^freq [7],\^freq [3],\^freq [16],\^freq [14:10],\^freq [5],\^freq [8],\^freq [6],\^freq [4],\^freq [2:0]}),
        .rst(rst));
  VCC VCC
       (.P(\<const1> ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Music
   (freq,
    rst,
    clk);
  output [15:0]freq;
  input rst;
  input clk;

  wire clk;
  wire [2:0]counter;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire [15:0]freq;
  wire \freq_out[0]_i_1_n_0 ;
  wire \freq_out[10]_i_1_n_0 ;
  wire \freq_out[11]_i_1_n_0 ;
  wire \freq_out[12]_i_1_n_0 ;
  wire \freq_out[13]_i_1_n_0 ;
  wire \freq_out[14]_i_1_n_0 ;
  wire \freq_out[16]_i_1_n_0 ;
  wire \freq_out[17]_i_1_n_0 ;
  wire \freq_out[18]_i_1_n_0 ;
  wire \freq_out[19]_i_1_n_0 ;
  wire \freq_out[1]_i_1_n_0 ;
  wire \freq_out[2]_i_1_n_0 ;
  wire \freq_out[4]_i_1_n_0 ;
  wire \freq_out[8]_i_1_n_0 ;
  wire \freq_out[9]_i_1_n_0 ;
  wire out_clk;
  wire rst;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_divider clock_divider_inst
       (.clk(clk),
        .out_clk(out_clk));
  LUT2 #(
    .INIT(4'h1)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .I1(rst),
        .O(\counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \counter[1]_i_1 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(rst),
        .O(\counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h006C)) 
    \counter[2]_i_1 
       (.I0(counter[1]),
        .I1(counter[2]),
        .I2(counter[0]),
        .I3(rst),
        .O(\counter[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(out_clk),
        .CE(1'b1),
        .D(\counter[0]_i_1_n_0 ),
        .Q(counter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(out_clk),
        .CE(1'b1),
        .D(\counter[1]_i_1_n_0 ),
        .Q(counter[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(out_clk),
        .CE(1'b1),
        .D(\counter[2]_i_1_n_0 ),
        .Q(counter[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \freq_out[0]_i_1 
       (.I0(counter[0]),
        .I1(counter[1]),
        .O(\freq_out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \freq_out[10]_i_1 
       (.I0(counter[1]),
        .I1(counter[0]),
        .O(\freq_out[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \freq_out[11]_i_1 
       (.I0(counter[0]),
        .I1(counter[2]),
        .I2(counter[1]),
        .O(\freq_out[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h62)) 
    \freq_out[12]_i_1 
       (.I0(counter[0]),
        .I1(counter[1]),
        .I2(counter[2]),
        .O(\freq_out[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \freq_out[13]_i_1 
       (.I0(counter[0]),
        .I1(counter[2]),
        .I2(counter[1]),
        .O(\freq_out[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \freq_out[14]_i_1 
       (.I0(counter[1]),
        .I1(counter[2]),
        .I2(counter[0]),
        .O(\freq_out[14]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \freq_out[16]_i_1 
       (.I0(counter[1]),
        .O(\freq_out[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h26)) 
    \freq_out[17]_i_1 
       (.I0(counter[0]),
        .I1(counter[1]),
        .I2(counter[2]),
        .O(\freq_out[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \freq_out[18]_i_1 
       (.I0(counter[0]),
        .I1(counter[1]),
        .O(\freq_out[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \freq_out[19]_i_1 
       (.I0(counter[1]),
        .I1(counter[0]),
        .O(\freq_out[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \freq_out[1]_i_1 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(counter[2]),
        .O(\freq_out[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \freq_out[2]_i_1 
       (.I0(counter[1]),
        .I1(counter[0]),
        .O(\freq_out[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \freq_out[4]_i_1 
       (.I0(counter[0]),
        .I1(counter[1]),
        .O(\freq_out[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \freq_out[8]_i_1 
       (.I0(counter[1]),
        .I1(counter[0]),
        .O(\freq_out[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hC7)) 
    \freq_out[9]_i_1 
       (.I0(counter[2]),
        .I1(counter[1]),
        .I2(counter[0]),
        .O(\freq_out[9]_i_1_n_0 ));
  FDRE \freq_out_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\freq_out[0]_i_1_n_0 ),
        .Q(freq[0]),
        .R(1'b0));
  FDRE \freq_out_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\freq_out[10]_i_1_n_0 ),
        .Q(freq[7]),
        .R(1'b0));
  FDRE \freq_out_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\freq_out[11]_i_1_n_0 ),
        .Q(freq[8]),
        .R(1'b0));
  FDRE \freq_out_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\freq_out[12]_i_1_n_0 ),
        .Q(freq[9]),
        .R(1'b0));
  FDRE \freq_out_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\freq_out[13]_i_1_n_0 ),
        .Q(freq[10]),
        .R(1'b0));
  FDRE \freq_out_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\freq_out[14]_i_1_n_0 ),
        .Q(freq[11]),
        .R(1'b0));
  FDRE \freq_out_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\freq_out[16]_i_1_n_0 ),
        .Q(freq[12]),
        .R(1'b0));
  FDRE \freq_out_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\freq_out[17]_i_1_n_0 ),
        .Q(freq[13]),
        .R(1'b0));
  FDRE \freq_out_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\freq_out[18]_i_1_n_0 ),
        .Q(freq[14]),
        .R(1'b0));
  FDRE \freq_out_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\freq_out[19]_i_1_n_0 ),
        .Q(freq[15]),
        .R(1'b0));
  FDRE \freq_out_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\freq_out[1]_i_1_n_0 ),
        .Q(freq[1]),
        .R(1'b0));
  FDRE \freq_out_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\freq_out[2]_i_1_n_0 ),
        .Q(freq[2]),
        .R(1'b0));
  FDRE \freq_out_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\freq_out[4]_i_1_n_0 ),
        .Q(freq[3]),
        .R(1'b0));
  FDRE \freq_out_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(counter[0]),
        .Q(freq[4]),
        .R(1'b0));
  FDRE \freq_out_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\freq_out[8]_i_1_n_0 ),
        .Q(freq[5]),
        .R(1'b0));
  FDRE \freq_out_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\freq_out[9]_i_1_n_0 ),
        .Q(freq[6]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_divider
   (out_clk,
    clk);
  output out_clk;
  input clk;

  wire clear;
  wire clk;
  wire \counter_clk[0]_i_3_n_0 ;
  wire \counter_clk[0]_i_4_n_0 ;
  wire \counter_clk[0]_i_5_n_0 ;
  wire \counter_clk[0]_i_6_n_0 ;
  wire \counter_clk[0]_i_7_n_0 ;
  wire \counter_clk[0]_i_8_n_0 ;
  wire \counter_clk[0]_i_9_n_0 ;
  wire [31:0]counter_clk_reg;
  wire \counter_clk_reg[0]_i_2_n_0 ;
  wire \counter_clk_reg[0]_i_2_n_1 ;
  wire \counter_clk_reg[0]_i_2_n_2 ;
  wire \counter_clk_reg[0]_i_2_n_3 ;
  wire \counter_clk_reg[0]_i_2_n_4 ;
  wire \counter_clk_reg[0]_i_2_n_5 ;
  wire \counter_clk_reg[0]_i_2_n_6 ;
  wire \counter_clk_reg[0]_i_2_n_7 ;
  wire \counter_clk_reg[12]_i_1_n_0 ;
  wire \counter_clk_reg[12]_i_1_n_1 ;
  wire \counter_clk_reg[12]_i_1_n_2 ;
  wire \counter_clk_reg[12]_i_1_n_3 ;
  wire \counter_clk_reg[12]_i_1_n_4 ;
  wire \counter_clk_reg[12]_i_1_n_5 ;
  wire \counter_clk_reg[12]_i_1_n_6 ;
  wire \counter_clk_reg[12]_i_1_n_7 ;
  wire \counter_clk_reg[16]_i_1_n_0 ;
  wire \counter_clk_reg[16]_i_1_n_1 ;
  wire \counter_clk_reg[16]_i_1_n_2 ;
  wire \counter_clk_reg[16]_i_1_n_3 ;
  wire \counter_clk_reg[16]_i_1_n_4 ;
  wire \counter_clk_reg[16]_i_1_n_5 ;
  wire \counter_clk_reg[16]_i_1_n_6 ;
  wire \counter_clk_reg[16]_i_1_n_7 ;
  wire \counter_clk_reg[20]_i_1_n_0 ;
  wire \counter_clk_reg[20]_i_1_n_1 ;
  wire \counter_clk_reg[20]_i_1_n_2 ;
  wire \counter_clk_reg[20]_i_1_n_3 ;
  wire \counter_clk_reg[20]_i_1_n_4 ;
  wire \counter_clk_reg[20]_i_1_n_5 ;
  wire \counter_clk_reg[20]_i_1_n_6 ;
  wire \counter_clk_reg[20]_i_1_n_7 ;
  wire \counter_clk_reg[24]_i_1_n_0 ;
  wire \counter_clk_reg[24]_i_1_n_1 ;
  wire \counter_clk_reg[24]_i_1_n_2 ;
  wire \counter_clk_reg[24]_i_1_n_3 ;
  wire \counter_clk_reg[24]_i_1_n_4 ;
  wire \counter_clk_reg[24]_i_1_n_5 ;
  wire \counter_clk_reg[24]_i_1_n_6 ;
  wire \counter_clk_reg[24]_i_1_n_7 ;
  wire \counter_clk_reg[28]_i_1_n_1 ;
  wire \counter_clk_reg[28]_i_1_n_2 ;
  wire \counter_clk_reg[28]_i_1_n_3 ;
  wire \counter_clk_reg[28]_i_1_n_4 ;
  wire \counter_clk_reg[28]_i_1_n_5 ;
  wire \counter_clk_reg[28]_i_1_n_6 ;
  wire \counter_clk_reg[28]_i_1_n_7 ;
  wire \counter_clk_reg[4]_i_1_n_0 ;
  wire \counter_clk_reg[4]_i_1_n_1 ;
  wire \counter_clk_reg[4]_i_1_n_2 ;
  wire \counter_clk_reg[4]_i_1_n_3 ;
  wire \counter_clk_reg[4]_i_1_n_4 ;
  wire \counter_clk_reg[4]_i_1_n_5 ;
  wire \counter_clk_reg[4]_i_1_n_6 ;
  wire \counter_clk_reg[4]_i_1_n_7 ;
  wire \counter_clk_reg[8]_i_1_n_0 ;
  wire \counter_clk_reg[8]_i_1_n_1 ;
  wire \counter_clk_reg[8]_i_1_n_2 ;
  wire \counter_clk_reg[8]_i_1_n_3 ;
  wire \counter_clk_reg[8]_i_1_n_4 ;
  wire \counter_clk_reg[8]_i_1_n_5 ;
  wire \counter_clk_reg[8]_i_1_n_6 ;
  wire \counter_clk_reg[8]_i_1_n_7 ;
  wire enable_clk;
  wire enable_clk_i_1_n_0;
  wire out_clk;
  wire p_0_in;
  wire [3:3]\NLW_counter_clk_reg[28]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter_clk[0]_i_1 
       (.I0(\counter_clk[0]_i_3_n_0 ),
        .I1(\counter_clk[0]_i_4_n_0 ),
        .I2(\counter_clk[0]_i_5_n_0 ),
        .I3(\counter_clk[0]_i_6_n_0 ),
        .I4(\counter_clk[0]_i_7_n_0 ),
        .I5(\counter_clk[0]_i_8_n_0 ),
        .O(clear));
  LUT2 #(
    .INIT(4'h1)) 
    \counter_clk[0]_i_3 
       (.I0(counter_clk_reg[0]),
        .I1(counter_clk_reg[1]),
        .O(\counter_clk[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \counter_clk[0]_i_4 
       (.I0(counter_clk_reg[4]),
        .I1(counter_clk_reg[5]),
        .I2(counter_clk_reg[3]),
        .I3(counter_clk_reg[2]),
        .I4(counter_clk_reg[7]),
        .I5(counter_clk_reg[6]),
        .O(\counter_clk[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \counter_clk[0]_i_5 
       (.I0(counter_clk_reg[10]),
        .I1(counter_clk_reg[11]),
        .I2(counter_clk_reg[8]),
        .I3(counter_clk_reg[9]),
        .I4(counter_clk_reg[12]),
        .I5(counter_clk_reg[13]),
        .O(\counter_clk[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \counter_clk[0]_i_6 
       (.I0(counter_clk_reg[16]),
        .I1(counter_clk_reg[17]),
        .I2(counter_clk_reg[14]),
        .I3(counter_clk_reg[15]),
        .I4(counter_clk_reg[19]),
        .I5(counter_clk_reg[18]),
        .O(\counter_clk[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \counter_clk[0]_i_7 
       (.I0(counter_clk_reg[22]),
        .I1(counter_clk_reg[23]),
        .I2(counter_clk_reg[20]),
        .I3(counter_clk_reg[21]),
        .I4(counter_clk_reg[25]),
        .I5(counter_clk_reg[24]),
        .O(\counter_clk[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \counter_clk[0]_i_8 
       (.I0(counter_clk_reg[28]),
        .I1(counter_clk_reg[29]),
        .I2(counter_clk_reg[26]),
        .I3(counter_clk_reg[27]),
        .I4(counter_clk_reg[31]),
        .I5(counter_clk_reg[30]),
        .O(\counter_clk[0]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_clk[0]_i_9 
       (.I0(counter_clk_reg[0]),
        .O(\counter_clk[0]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_clk_reg[0]_i_2_n_7 ),
        .Q(counter_clk_reg[0]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_clk_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_clk_reg[0]_i_2_n_0 ,\counter_clk_reg[0]_i_2_n_1 ,\counter_clk_reg[0]_i_2_n_2 ,\counter_clk_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_clk_reg[0]_i_2_n_4 ,\counter_clk_reg[0]_i_2_n_5 ,\counter_clk_reg[0]_i_2_n_6 ,\counter_clk_reg[0]_i_2_n_7 }),
        .S({counter_clk_reg[3:1],\counter_clk[0]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_clk_reg[8]_i_1_n_5 ),
        .Q(counter_clk_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_clk_reg[8]_i_1_n_4 ),
        .Q(counter_clk_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_clk_reg[12]_i_1_n_7 ),
        .Q(counter_clk_reg[12]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_clk_reg[12]_i_1 
       (.CI(\counter_clk_reg[8]_i_1_n_0 ),
        .CO({\counter_clk_reg[12]_i_1_n_0 ,\counter_clk_reg[12]_i_1_n_1 ,\counter_clk_reg[12]_i_1_n_2 ,\counter_clk_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_clk_reg[12]_i_1_n_4 ,\counter_clk_reg[12]_i_1_n_5 ,\counter_clk_reg[12]_i_1_n_6 ,\counter_clk_reg[12]_i_1_n_7 }),
        .S(counter_clk_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_clk_reg[12]_i_1_n_6 ),
        .Q(counter_clk_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_clk_reg[12]_i_1_n_5 ),
        .Q(counter_clk_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_clk_reg[12]_i_1_n_4 ),
        .Q(counter_clk_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_clk_reg[16]_i_1_n_7 ),
        .Q(counter_clk_reg[16]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_clk_reg[16]_i_1 
       (.CI(\counter_clk_reg[12]_i_1_n_0 ),
        .CO({\counter_clk_reg[16]_i_1_n_0 ,\counter_clk_reg[16]_i_1_n_1 ,\counter_clk_reg[16]_i_1_n_2 ,\counter_clk_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_clk_reg[16]_i_1_n_4 ,\counter_clk_reg[16]_i_1_n_5 ,\counter_clk_reg[16]_i_1_n_6 ,\counter_clk_reg[16]_i_1_n_7 }),
        .S(counter_clk_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_clk_reg[16]_i_1_n_6 ),
        .Q(counter_clk_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_clk_reg[16]_i_1_n_5 ),
        .Q(counter_clk_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_clk_reg[16]_i_1_n_4 ),
        .Q(counter_clk_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_clk_reg[0]_i_2_n_6 ),
        .Q(counter_clk_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_clk_reg[20]_i_1_n_7 ),
        .Q(counter_clk_reg[20]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_clk_reg[20]_i_1 
       (.CI(\counter_clk_reg[16]_i_1_n_0 ),
        .CO({\counter_clk_reg[20]_i_1_n_0 ,\counter_clk_reg[20]_i_1_n_1 ,\counter_clk_reg[20]_i_1_n_2 ,\counter_clk_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_clk_reg[20]_i_1_n_4 ,\counter_clk_reg[20]_i_1_n_5 ,\counter_clk_reg[20]_i_1_n_6 ,\counter_clk_reg[20]_i_1_n_7 }),
        .S(counter_clk_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_clk_reg[20]_i_1_n_6 ),
        .Q(counter_clk_reg[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_clk_reg[20]_i_1_n_5 ),
        .Q(counter_clk_reg[22]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_clk_reg[20]_i_1_n_4 ),
        .Q(counter_clk_reg[23]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_clk_reg[24]_i_1_n_7 ),
        .Q(counter_clk_reg[24]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_clk_reg[24]_i_1 
       (.CI(\counter_clk_reg[20]_i_1_n_0 ),
        .CO({\counter_clk_reg[24]_i_1_n_0 ,\counter_clk_reg[24]_i_1_n_1 ,\counter_clk_reg[24]_i_1_n_2 ,\counter_clk_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_clk_reg[24]_i_1_n_4 ,\counter_clk_reg[24]_i_1_n_5 ,\counter_clk_reg[24]_i_1_n_6 ,\counter_clk_reg[24]_i_1_n_7 }),
        .S(counter_clk_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_clk_reg[24]_i_1_n_6 ),
        .Q(counter_clk_reg[25]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_clk_reg[24]_i_1_n_5 ),
        .Q(counter_clk_reg[26]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_clk_reg[24]_i_1_n_4 ),
        .Q(counter_clk_reg[27]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_clk_reg[28]_i_1_n_7 ),
        .Q(counter_clk_reg[28]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_clk_reg[28]_i_1 
       (.CI(\counter_clk_reg[24]_i_1_n_0 ),
        .CO({\NLW_counter_clk_reg[28]_i_1_CO_UNCONNECTED [3],\counter_clk_reg[28]_i_1_n_1 ,\counter_clk_reg[28]_i_1_n_2 ,\counter_clk_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_clk_reg[28]_i_1_n_4 ,\counter_clk_reg[28]_i_1_n_5 ,\counter_clk_reg[28]_i_1_n_6 ,\counter_clk_reg[28]_i_1_n_7 }),
        .S(counter_clk_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_clk_reg[28]_i_1_n_6 ),
        .Q(counter_clk_reg[29]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_clk_reg[0]_i_2_n_5 ),
        .Q(counter_clk_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_clk_reg[28]_i_1_n_5 ),
        .Q(counter_clk_reg[30]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_clk_reg[28]_i_1_n_4 ),
        .Q(counter_clk_reg[31]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_clk_reg[0]_i_2_n_4 ),
        .Q(counter_clk_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_clk_reg[4]_i_1_n_7 ),
        .Q(counter_clk_reg[4]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_clk_reg[4]_i_1 
       (.CI(\counter_clk_reg[0]_i_2_n_0 ),
        .CO({\counter_clk_reg[4]_i_1_n_0 ,\counter_clk_reg[4]_i_1_n_1 ,\counter_clk_reg[4]_i_1_n_2 ,\counter_clk_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_clk_reg[4]_i_1_n_4 ,\counter_clk_reg[4]_i_1_n_5 ,\counter_clk_reg[4]_i_1_n_6 ,\counter_clk_reg[4]_i_1_n_7 }),
        .S(counter_clk_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_clk_reg[4]_i_1_n_6 ),
        .Q(counter_clk_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_clk_reg[4]_i_1_n_5 ),
        .Q(counter_clk_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_clk_reg[4]_i_1_n_4 ),
        .Q(counter_clk_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_clk_reg[8]_i_1_n_7 ),
        .Q(counter_clk_reg[8]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_clk_reg[8]_i_1 
       (.CI(\counter_clk_reg[4]_i_1_n_0 ),
        .CO({\counter_clk_reg[8]_i_1_n_0 ,\counter_clk_reg[8]_i_1_n_1 ,\counter_clk_reg[8]_i_1_n_2 ,\counter_clk_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_clk_reg[8]_i_1_n_4 ,\counter_clk_reg[8]_i_1_n_5 ,\counter_clk_reg[8]_i_1_n_6 ,\counter_clk_reg[8]_i_1_n_7 }),
        .S(counter_clk_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_clk_reg[8]_i_1_n_6 ),
        .Q(counter_clk_reg[9]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    enable_clk_i_1
       (.I0(clear),
        .I1(enable_clk),
        .O(enable_clk_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    enable_clk_reg
       (.C(clk),
        .CE(1'b1),
        .D(enable_clk_i_1_n_0),
        .Q(enable_clk),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    out_clk_i_1
       (.I0(enable_clk),
        .O(p_0_in));
  FDRE out_clk_reg
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(out_clk),
        .R(1'b0));
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
