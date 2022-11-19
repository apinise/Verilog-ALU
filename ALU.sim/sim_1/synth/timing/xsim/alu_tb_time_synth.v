// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri Nov 18 22:02:24 2022
// Host        : DESKTOP-P77UBKI running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/socce/Desktop/FPGA
//               Projects/ALU/ALU.sim/sim_1/synth/timing/xsim/alu_tb_time_synth.v}
// Design      : alu_top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module alu_top
   (A_in,
    B_in,
    Cin,
    F,
    led,
    cout);
  input [3:0]A_in;
  input [3:0]B_in;
  input Cin;
  input [3:0]F;
  output [3:0]led;
  output cout;

  wire [3:0]A_in;
  wire [3:0]A_in_IBUF;
  wire [3:0]B_in;
  wire [3:0]B_in_IBUF;
  wire Cin;
  wire Cin_IBUF;
  wire [3:0]F;
  wire [3:0]F_IBUF;
  wire [3:0]b_bus;
  wire cout;
  wire cout_OBUF;
  wire [3:2]cout_bus;
  wire [3:0]led;
  wire [3:0]led_OBUF;
  wire \led_OBUF[1]_inst_i_2_n_0 ;
  wire \led_OBUF[3]_inst_i_4_n_0 ;

initial begin
 $sdf_annotate("alu_tb_time_synth.sdf",,,,"tool_control");
end
  IBUF \A_in_IBUF[0]_inst 
       (.I(A_in[0]),
        .O(A_in_IBUF[0]));
  IBUF \A_in_IBUF[1]_inst 
       (.I(A_in[1]),
        .O(A_in_IBUF[1]));
  IBUF \A_in_IBUF[2]_inst 
       (.I(A_in[2]),
        .O(A_in_IBUF[2]));
  IBUF \A_in_IBUF[3]_inst 
       (.I(A_in[3]),
        .O(A_in_IBUF[3]));
  IBUF \B_in_IBUF[0]_inst 
       (.I(B_in[0]),
        .O(B_in_IBUF[0]));
  IBUF \B_in_IBUF[1]_inst 
       (.I(B_in[1]),
        .O(B_in_IBUF[1]));
  IBUF \B_in_IBUF[2]_inst 
       (.I(B_in[2]),
        .O(B_in_IBUF[2]));
  IBUF \B_in_IBUF[3]_inst 
       (.I(B_in[3]),
        .O(B_in_IBUF[3]));
  IBUF Cin_IBUF_inst
       (.I(Cin),
        .O(Cin_IBUF));
  IBUF \F_IBUF[0]_inst 
       (.I(F[0]),
        .O(F_IBUF[0]));
  IBUF \F_IBUF[1]_inst 
       (.I(F[1]),
        .O(F_IBUF[1]));
  IBUF \F_IBUF[2]_inst 
       (.I(F[2]),
        .O(F_IBUF[2]));
  IBUF \F_IBUF[3]_inst 
       (.I(F[3]),
        .O(F_IBUF[3]));
  OBUF cout_OBUF_inst
       (.I(cout_OBUF),
        .O(cout));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h28BEBE28)) 
    cout_OBUF_inst_i_1
       (.I0(cout_bus[3]),
        .I1(F_IBUF[0]),
        .I2(A_in_IBUF[3]),
        .I3(F_IBUF[1]),
        .I4(B_in_IBUF[3]),
        .O(cout_OBUF));
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF[0]),
        .O(led[0]));
  LUT6 #(
    .INIT(64'hC639F906F6C9C906)) 
    \led_OBUF[0]_inst_i_1 
       (.I0(Cin_IBUF),
        .I1(F_IBUF[0]),
        .I2(F_IBUF[3]),
        .I3(b_bus[0]),
        .I4(A_in_IBUF[0]),
        .I5(F_IBUF[2]),
        .O(led_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \led_OBUF[0]_inst_i_2 
       (.I0(F_IBUF[1]),
        .I1(B_in_IBUF[0]),
        .O(b_bus[0]));
  OBUF \led_OBUF[1]_inst 
       (.I(led_OBUF[1]),
        .O(led[1]));
  LUT6 #(
    .INIT(64'hC53AF50AF5CAC50A)) 
    \led_OBUF[1]_inst_i_1 
       (.I0(\led_OBUF[1]_inst_i_2_n_0 ),
        .I1(F_IBUF[0]),
        .I2(F_IBUF[3]),
        .I3(b_bus[1]),
        .I4(A_in_IBUF[1]),
        .I5(F_IBUF[2]),
        .O(led_OBUF[1]));
  LUT6 #(
    .INIT(64'h36939336C69C9CC6)) 
    \led_OBUF[1]_inst_i_2 
       (.I0(F_IBUF[0]),
        .I1(A_in_IBUF[1]),
        .I2(Cin_IBUF),
        .I3(B_in_IBUF[0]),
        .I4(F_IBUF[1]),
        .I5(A_in_IBUF[0]),
        .O(\led_OBUF[1]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \led_OBUF[1]_inst_i_3 
       (.I0(F_IBUF[1]),
        .I1(B_in_IBUF[1]),
        .O(b_bus[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(led_OBUF[2]),
        .O(led[2]));
  LUT6 #(
    .INIT(64'hC639F906F6C9C906)) 
    \led_OBUF[2]_inst_i_1 
       (.I0(cout_bus[2]),
        .I1(F_IBUF[0]),
        .I2(F_IBUF[3]),
        .I3(b_bus[2]),
        .I4(A_in_IBUF[2]),
        .I5(F_IBUF[2]),
        .O(led_OBUF[2]));
  LUT6 #(
    .INIT(64'h8EFFFFE800E88E00)) 
    \led_OBUF[2]_inst_i_2 
       (.I0(Cin_IBUF),
        .I1(b_bus[0]),
        .I2(A_in_IBUF[0]),
        .I3(F_IBUF[0]),
        .I4(A_in_IBUF[1]),
        .I5(b_bus[1]),
        .O(cout_bus[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \led_OBUF[2]_inst_i_3 
       (.I0(F_IBUF[1]),
        .I1(B_in_IBUF[2]),
        .O(b_bus[2]));
  OBUF \led_OBUF[3]_inst 
       (.I(led_OBUF[3]),
        .O(led[3]));
  LUT6 #(
    .INIT(64'hC639F906F6C9C906)) 
    \led_OBUF[3]_inst_i_1 
       (.I0(cout_bus[3]),
        .I1(F_IBUF[0]),
        .I2(F_IBUF[3]),
        .I3(b_bus[3]),
        .I4(A_in_IBUF[3]),
        .I5(F_IBUF[2]),
        .O(led_OBUF[3]));
  LUT6 #(
    .INIT(64'hB2FFFFE800E8B200)) 
    \led_OBUF[3]_inst_i_2 
       (.I0(\led_OBUF[3]_inst_i_4_n_0 ),
        .I1(A_in_IBUF[1]),
        .I2(b_bus[1]),
        .I3(F_IBUF[0]),
        .I4(A_in_IBUF[2]),
        .I5(b_bus[2]),
        .O(cout_bus[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \led_OBUF[3]_inst_i_3 
       (.I0(F_IBUF[1]),
        .I1(B_in_IBUF[3]),
        .O(b_bus[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h28BEBE28)) 
    \led_OBUF[3]_inst_i_4 
       (.I0(Cin_IBUF),
        .I1(B_in_IBUF[0]),
        .I2(F_IBUF[1]),
        .I3(A_in_IBUF[0]),
        .I4(F_IBUF[0]),
        .O(\led_OBUF[3]_inst_i_4_n_0 ));
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
