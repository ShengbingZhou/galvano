// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.7.0.96.1
// Netlist written on Tue Oct 23 00:35:38 2018
//
// Verilog Description of module top
//

module top (clk_in, cfg_done, xy_sync, xy_clk, xy_x, xy_y, xy_status, 
            xiadc_clkin, xiadc_mdat, yiadc_clkin, yiadc_mdat, xpadc_cs, 
            xpadc_rst, xpadc_sck, xpadc_sdi, xpadc_sdo0, xpadc_sdo1, 
            xpadc_rvs, ypadc_cs, ypadc_rst, ypadc_sck, ypadc_sdi, 
            ypadc_sdo0, ypadc_sdo1, ypadc_rvs, xdac_rst, xdac_cs, 
            xdac_ldac, xdac_rstsel, xdac_sck, xdac_sdi, xdac_sdo, 
            ydac_rst, ydac_cs, ydac_ldac, ydac_rstsel, ydac_sck, ydac_sdi, 
            ydac_sdo, temp_cs, temp_clk, temp_data, uart_tx1, uart_rx1, 
            uart_tx2, uart_rx2) /* synthesis syn_module_defined=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(1[8:11])
    input clk_in;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(4[17:23])
    output cfg_done;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(5[17:25])
    input xy_sync;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(8[17:24])
    input xy_clk;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(9[17:23])
    input xy_x;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(10[17:21])
    input xy_y;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(11[17:21])
    output xy_status;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(12[17:26])
    output xiadc_clkin;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(15[17:28])
    input xiadc_mdat;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(16[17:27])
    output yiadc_clkin;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(17[17:28])
    input yiadc_mdat;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(18[17:27])
    output xpadc_cs;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(21[17:25])
    output xpadc_rst;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(22[17:26])
    output xpadc_sck;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(23[17:26])
    output xpadc_sdi;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(24[17:26])
    input xpadc_sdo0;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(25[17:27])
    input xpadc_sdo1;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(26[17:27])
    input xpadc_rvs;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(27[17:26])
    output ypadc_cs;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(28[17:25])
    output ypadc_rst;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(29[17:26])
    output ypadc_sck;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(30[17:26])
    output ypadc_sdi;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(31[17:26])
    output ypadc_sdo0;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(32[17:27])
    output ypadc_sdo1;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(33[17:27])
    output ypadc_rvs;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(34[17:26])
    output xdac_rst;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(37[17:25])
    output xdac_cs;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(38[17:24])
    output xdac_ldac;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(39[17:26])
    output xdac_rstsel;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(40[17:28])
    output xdac_sck;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(41[17:25])
    output xdac_sdi;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(42[17:25])
    input xdac_sdo;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(43[17:25])
    output ydac_rst;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(44[17:25])
    output ydac_cs;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(45[17:24])
    output ydac_ldac;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(46[17:26])
    output ydac_rstsel;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(47[17:28])
    output ydac_sck;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(48[17:25])
    output ydac_sdi;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(49[17:25])
    input ydac_sdo;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(50[17:25])
    output temp_cs;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(53[17:24])
    output temp_clk;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(54[17:25])
    input temp_data;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(55[17:26])
    output uart_tx1;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(58[17:25])
    input uart_rx1;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(59[17:25])
    output uart_tx2;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(60[17:25])
    input uart_rx2;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(61[17:25])
    
    wire clk_in_c /* synthesis is_clock=1, SET_AS_NETWORK=clk_in_c */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(4[17:23])
    wire clk1 /* synthesis SET_AS_NETWORK=clk1, is_clock=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(65[6:10])
    wire clk2 /* synthesis SET_AS_NETWORK=clk2, is_clock=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(65[12:16])
    wire mclk1_N_406 /* synthesis is_inv_clock=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(12[13:17])
    
    wire GND_net, VCC_net, ydac_rst_c, xiadc_mdat_c, xpadc_cs_c, xpadc_sck_c, 
        xpadc_sdi_c, xpadc_sdo0_c, ypadc_cs_c, ypadc_sck_c, ypadc_sdi_c, 
        xdac_cs_c_0, xdac_ldac_c, xdac_sck_c_1, xdac_sdi_c_15, ydac_cs_c_0, 
        ydac_ldac_c, ydac_sck_c_1, ydac_sdi_c_15, uart_tx1_c, uart_rx1_c, 
        pll_locked;
    wire [1:0]pll_locked_dly;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(78[13:27])
    wire [31:0]sys_rstn_cnt;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(79[13:25])
    wire [15:0]xi_data;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(104[13:20])
    
    wire xi_data_en, xp_data_valid;
    wire [15:0]xp_data;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(131[13:20])
    wire [15:0]xdac_data;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(166[13:22])
    wire [6:0]u_req;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(211[14:19])
    wire [6:0]u_ack;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(212[14:19])
    wire [63:0]u0_msg;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(213[14:20])
    wire [63:0]u1_msg;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(214[14:20])
    
    wire cfg_done_N_40, cfg_done_N_37, n13667, n13666, n13665, n26, 
        n95, n93, n91, n89, n87, n85, n83, n81, n79, n77, 
        n75, n73, n71, n69, n13664, n67, n65, n63, n61, n59, 
        n57, n55, n53, n13663, n13662, n51, n49, n47, n45, 
        n43, n41, n39, n37, n13661, n13660, n13659, cout, n13658, 
        n13657, n35, n8984, n33;
    wire [3:0]u_state;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(57[12:19])
    
    wire rx_req, n10765, n13652, u_state_3__N_1889, n13651, n13650, 
        n13699, n13698, n13649, n13697, n13648, n13696, n13695, 
        n13647, n13694, n13693, n13646, n13645, n13692, n13691, 
        n13690, n13689, n13688, n13687, n13644, n13643, clk1_enable_71, 
        clk1_enable_115, n13642, n13641, n13640, n13639, n13638, 
        n13637, clk_in_c_enable_33, clk1_enable_64, n10771, clk_in_c_enable_37, 
        n16655, n16654, n16685, n16684, n16683, n17031, clk2_enable_377, 
        clk2_enable_284, n17022, clk_in_c_enable_28;
    
    VHI i2 (.Z(VCC_net));
    FD1S3AX u_req_i0 (.D(n10771), .CK(clk2), .Q(u_req[0]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(241[10] 268[8])
    defparam u_req_i0.GSR = "ENABLED";
    FD1S3AX pll_locked_dly_i0 (.D(pll_locked), .CK(clk_in_c), .Q(pll_locked_dly[0]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(80[8] 99[4])
    defparam pll_locked_dly_i0.GSR = "DISABLED";
    FD1P3AX u0_msg__i6 (.D(xp_data[5]), .SP(clk2_enable_284), .CK(clk2), 
            .Q(u0_msg[29]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(241[10] 268[8])
    defparam u0_msg__i6.GSR = "DISABLED";
    FD1P3AX u0_msg__i5 (.D(xp_data[4]), .SP(clk2_enable_284), .CK(clk2), 
            .Q(u0_msg[28]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(241[10] 268[8])
    defparam u0_msg__i5.GSR = "DISABLED";
    FD1P3AX u0_msg__i4 (.D(xp_data[3]), .SP(clk2_enable_284), .CK(clk2), 
            .Q(u0_msg[27]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(241[10] 268[8])
    defparam u0_msg__i4.GSR = "DISABLED";
    FD1P3AX u0_msg__i3 (.D(xp_data[2]), .SP(clk2_enable_284), .CK(clk2), 
            .Q(u0_msg[26]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(241[10] 268[8])
    defparam u0_msg__i3.GSR = "DISABLED";
    FD1P3AX u0_msg__i2 (.D(xp_data[1]), .SP(clk2_enable_284), .CK(clk2), 
            .Q(u0_msg[25]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(241[10] 268[8])
    defparam u0_msg__i2.GSR = "DISABLED";
    OB ydac_cs_pad (.I(ydac_cs_c_0), .O(ydac_cs));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(45[17:24])
    FD1P3AX u0_msg__i1 (.D(xp_data[0]), .SP(clk2_enable_284), .CK(clk2), 
            .Q(u0_msg[24]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(241[10] 268[8])
    defparam u0_msg__i1.GSR = "DISABLED";
    ORCALUT4 i5297_2_lut_4_lut_4_lut (.A(pll_locked_dly[0]), .B(pll_locked_dly[1]), 
            .C(cout), .D(cfg_done_N_37), .Z(clk_in_c_enable_33)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A (B))) */ ;
    defparam i5297_2_lut_4_lut_4_lut.init = 16'h1999;
    ORCALUT4 i12338_4_lut_then_4_lut (.A(rx_req), .B(u_state_3__N_1889), 
            .C(u_state[0]), .D(u_req[0]), .Z(n16684)) /* synthesis lut_function=(A (B+(C))+!A (B (C+(D))+!B (C))) */ ;
    defparam i12338_4_lut_then_4_lut.init = 16'hfcf8;
    ORCALUT4 i12338_4_lut_else_4_lut (.A(rx_req), .B(u_state_3__N_1889), 
            .C(u_state[0]), .D(u_req[0]), .Z(n16683)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i12338_4_lut_else_4_lut.init = 16'h0400;
    CCU2B add_10163_24 (.A0(sys_rstn_cnt[31]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13667), .S1(cfg_done_N_37));
    defparam add_10163_24.INIT0 = 16'h555a;
    defparam add_10163_24.INIT1 = 16'h0000;
    defparam add_10163_24.INJECT1_0 = "NO";
    defparam add_10163_24.INJECT1_1 = "NO";
    ORCALUT4 i39_2_lut_rep_213 (.A(u_req[1]), .B(u_req[0]), .Z(n16654)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i39_2_lut_rep_213.init = 16'heeee;
    ORCALUT4 i5911_2_lut_3_lut (.A(u_req[1]), .B(u_req[0]), .C(rx_req), 
            .Z(n8984)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i5911_2_lut_3_lut.init = 16'hfefe;
    ORCALUT4 i42_3_lut_4_lut (.A(u_req[1]), .B(u_req[0]), .C(n16655), 
            .D(u_state_3__N_1889), .Z(n26)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;
    defparam i42_3_lut_4_lut.init = 16'hf1f0;
    CCU2B add_10163_22 (.A0(sys_rstn_cnt[29]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sys_rstn_cnt[30]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13666), .COUT(n13667));
    defparam add_10163_22.INIT0 = 16'h555a;
    defparam add_10163_22.INIT1 = 16'h555a;
    defparam add_10163_22.INJECT1_0 = "NO";
    defparam add_10163_22.INJECT1_1 = "NO";
    OB ydac_rst_pad (.I(n17031), .O(ydac_rst));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(44[17:25])
    CCU2B add_10163_20 (.A0(sys_rstn_cnt[27]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sys_rstn_cnt[28]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13665), .COUT(n13666));
    defparam add_10163_20.INIT0 = 16'h555a;
    defparam add_10163_20.INIT1 = 16'h555a;
    defparam add_10163_20.INJECT1_0 = "NO";
    defparam add_10163_20.INJECT1_1 = "NO";
    CCU2B add_10163_18 (.A0(sys_rstn_cnt[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sys_rstn_cnt[26]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13664), .COUT(n13665));
    defparam add_10163_18.INIT0 = 16'h555a;
    defparam add_10163_18.INIT1 = 16'h555a;
    defparam add_10163_18.INJECT1_0 = "NO";
    defparam add_10163_18.INJECT1_1 = "NO";
    CCU2B add_10163_16 (.A0(sys_rstn_cnt[23]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sys_rstn_cnt[24]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13663), .COUT(n13664));
    defparam add_10163_16.INIT0 = 16'h555a;
    defparam add_10163_16.INIT1 = 16'h555a;
    defparam add_10163_16.INJECT1_0 = "NO";
    defparam add_10163_16.INJECT1_1 = "NO";
    CCU2B add_10163_14 (.A0(sys_rstn_cnt[21]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sys_rstn_cnt[22]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13662), .COUT(n13663));
    defparam add_10163_14.INIT0 = 16'haaaa;
    defparam add_10163_14.INIT1 = 16'h555a;
    defparam add_10163_14.INJECT1_0 = "NO";
    defparam add_10163_14.INJECT1_1 = "NO";
    CCU2B add_10163_12 (.A0(sys_rstn_cnt[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sys_rstn_cnt[20]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13661), .COUT(n13662));
    defparam add_10163_12.INIT0 = 16'haaaa;
    defparam add_10163_12.INIT1 = 16'haaaa;
    defparam add_10163_12.INJECT1_0 = "NO";
    defparam add_10163_12.INJECT1_1 = "NO";
    CCU2B add_10163_10 (.A0(sys_rstn_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sys_rstn_cnt[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13660), .COUT(n13661));
    defparam add_10163_10.INIT0 = 16'h555a;
    defparam add_10163_10.INIT1 = 16'haaaa;
    defparam add_10163_10.INJECT1_0 = "NO";
    defparam add_10163_10.INJECT1_1 = "NO";
    CCU2B add_10163_8 (.A0(sys_rstn_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sys_rstn_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13659), .COUT(n13660));
    defparam add_10163_8.INIT0 = 16'h555a;
    defparam add_10163_8.INIT1 = 16'haaaa;
    defparam add_10163_8.INJECT1_0 = "NO";
    defparam add_10163_8.INJECT1_1 = "NO";
    ORCALUT4 i1_2_lut_3_lut (.A(u_req[1]), .B(xi_data_en), .C(n17031), 
            .Z(clk2_enable_377)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(241[10] 268[8])
    defparam i1_2_lut_3_lut.init = 16'h4040;
    FD1S3AX pll_locked_dly_i1 (.D(pll_locked_dly[0]), .CK(clk_in_c), .Q(pll_locked_dly[1]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(80[8] 99[4])
    defparam pll_locked_dly_i1.GSR = "DISABLED";
    ORCALUT4 i1_3_lut_3_lut (.A(u_req[1]), .B(xi_data_en), .C(u_ack[1]), 
            .Z(n10765)) /* synthesis lut_function=(!(A (C)+!A !(B))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(241[10] 268[8])
    defparam i1_3_lut_3_lut.init = 16'h4e4e;
    CCU2B add_10163_6 (.A0(sys_rstn_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sys_rstn_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13658), .COUT(n13659));
    defparam add_10163_6.INIT0 = 16'h555a;
    defparam add_10163_6.INIT1 = 16'h555a;
    defparam add_10163_6.INJECT1_0 = "NO";
    defparam add_10163_6.INJECT1_1 = "NO";
    CCU2B add_10163_4 (.A0(sys_rstn_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sys_rstn_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13657), .COUT(n13658));
    defparam add_10163_4.INIT0 = 16'haaaa;
    defparam add_10163_4.INIT1 = 16'h555a;
    defparam add_10163_4.INJECT1_0 = "NO";
    defparam add_10163_4.INJECT1_1 = "NO";
    ORCALUT4 i8762_2_lut_rep_220 (.A(pll_locked_dly[0]), .B(pll_locked_dly[1]), 
            .Z(clk_in_c_enable_37)) /* synthesis lut_function=(A (B)) */ ;
    defparam i8762_2_lut_rep_220.init = 16'h8888;
    ORCALUT4 i1_3_lut_rep_179_4_lut (.A(pll_locked_dly[0]), .B(pll_locked_dly[1]), 
            .C(cfg_done_N_37), .D(cout), .Z(clk_in_c_enable_28)) /* synthesis lut_function=(!(((C (D))+!B)+!A)) */ ;
    defparam i1_3_lut_rep_179_4_lut.init = 16'h0888;
    CCU2B add_10163_2 (.A0(sys_rstn_cnt[9]), .B0(sys_rstn_cnt[8]), .C0(GND_net), 
          .D0(VCC_net), .A1(sys_rstn_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n13657));
    defparam add_10163_2.INIT0 = 16'h000e;
    defparam add_10163_2.INIT1 = 16'h555a;
    defparam add_10163_2.INJECT1_0 = "NO";
    defparam add_10163_2.INJECT1_1 = "NO";
    OB ydac_ldac_pad (.I(ydac_ldac_c), .O(ydac_ldac));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(46[17:26])
    OB xdac_sdi_pad (.I(xdac_sdi_c_15), .O(xdac_sdi));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(42[17:25])
    OB xdac_sck_pad (.I(xdac_sck_c_1), .O(xdac_sck));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(41[17:25])
    OB xdac_rstsel_pad (.I(VCC_net), .O(xdac_rstsel));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(40[17:28])
    OB xdac_ldac_pad (.I(xdac_ldac_c), .O(xdac_ldac));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(39[17:26])
    OB xdac_cs_pad (.I(xdac_cs_c_0), .O(xdac_cs));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(38[17:24])
    OB xdac_rst_pad (.I(n17031), .O(xdac_rst));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(37[17:25])
    OBZ ypadc_rvs_pad (.I(GND_net), .T(VCC_net), .O(ypadc_rvs));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(34[17:26])
    OBZ ypadc_sdo1_pad (.I(GND_net), .T(VCC_net), .O(ypadc_sdo1));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(33[17:27])
    OB ypadc_sdo0_pad (.I(GND_net), .O(ypadc_sdo0));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(32[17:27])
    OB ypadc_sdi_pad (.I(ypadc_sdi_c), .O(ypadc_sdi));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(31[17:26])
    OB ypadc_sck_pad (.I(ypadc_sck_c), .O(ypadc_sck));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(30[17:26])
    OB ypadc_rst_pad (.I(VCC_net), .O(ypadc_rst));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(29[17:26])
    OB ypadc_cs_pad (.I(ypadc_cs_c), .O(ypadc_cs));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(28[17:25])
    OB xpadc_sdi_pad (.I(xpadc_sdi_c), .O(xpadc_sdi));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(24[17:26])
    OB xpadc_sck_pad (.I(xpadc_sck_c), .O(xpadc_sck));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(23[17:26])
    ORCALUT4 i1_2_lut_3_lut_adj_262 (.A(u_req[0]), .B(xp_data_valid), .C(n17031), 
            .Z(clk2_enable_284)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(241[10] 268[8])
    defparam i1_2_lut_3_lut_adj_262.init = 16'h4040;
    ORCALUT4 i8732_3_lut_3_lut (.A(u_req[0]), .B(xp_data_valid), .C(u_ack[0]), 
            .Z(n10771)) /* synthesis lut_function=(!(A (C)+!A !(B))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(241[10] 268[8])
    defparam i8732_3_lut_3_lut.init = 16'h4e4e;
    FD1P3JX sys_rstn_58 (.D(cfg_done_N_37), .SP(clk_in_c_enable_37), .PD(cfg_done_N_40), 
            .CK(clk_in_c), .Q(ydac_rst_c));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(80[8] 99[4])
    defparam sys_rstn_58.GSR = "DISABLED";
    FD1P3AX u1_msg__i16 (.D(xi_data[15]), .SP(clk2_enable_377), .CK(clk2), 
            .Q(u1_msg[39]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(241[10] 268[8])
    defparam u1_msg__i16.GSR = "DISABLED";
    FD1P3AX u1_msg__i15 (.D(xi_data[14]), .SP(clk2_enable_377), .CK(clk2), 
            .Q(u1_msg[38]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(241[10] 268[8])
    defparam u1_msg__i15.GSR = "DISABLED";
    FD1P3AX u1_msg__i14 (.D(xi_data[13]), .SP(clk2_enable_377), .CK(clk2), 
            .Q(u1_msg[37]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(241[10] 268[8])
    defparam u1_msg__i14.GSR = "DISABLED";
    FD1P3AX u1_msg__i13 (.D(xi_data[12]), .SP(clk2_enable_377), .CK(clk2), 
            .Q(u1_msg[36]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(241[10] 268[8])
    defparam u1_msg__i13.GSR = "DISABLED";
    FD1P3AX u1_msg__i12 (.D(xi_data[11]), .SP(clk2_enable_377), .CK(clk2), 
            .Q(u1_msg[35]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(241[10] 268[8])
    defparam u1_msg__i12.GSR = "DISABLED";
    FD1P3AX u1_msg__i11 (.D(xi_data[10]), .SP(clk2_enable_377), .CK(clk2), 
            .Q(u1_msg[34]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(241[10] 268[8])
    defparam u1_msg__i11.GSR = "DISABLED";
    FD1P3AX u1_msg__i10 (.D(xi_data[9]), .SP(clk2_enable_377), .CK(clk2), 
            .Q(u1_msg[33]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(241[10] 268[8])
    defparam u1_msg__i10.GSR = "DISABLED";
    FD1P3IX sys_rstn_cnt__i0 (.D(n95), .SP(clk_in_c_enable_28), .CD(cfg_done_N_40), 
            .CK(clk_in_c), .Q(sys_rstn_cnt[0]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(80[8] 99[4])
    defparam sys_rstn_cnt__i0.GSR = "DISABLED";
    OB xpadc_rst_pad (.I(VCC_net), .O(xpadc_rst));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(22[17:26])
    OB xpadc_cs_pad (.I(xpadc_cs_c), .O(xpadc_cs));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(21[17:25])
    OBZ yiadc_clkin_pad (.I(GND_net), .T(VCC_net), .O(yiadc_clkin));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(17[17:28])
    OBZ xiadc_clkin_pad (.I(GND_net), .T(VCC_net), .O(xiadc_clkin));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(15[17:28])
    OBZ xy_status_pad (.I(GND_net), .T(VCC_net), .O(xy_status));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(12[17:26])
    OB cfg_done_pad (.I(n17031), .O(cfg_done));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(5[17:25])
    CCU2B add_10162_28 (.A0(sys_rstn_cnt[31]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13699), .S1(cout));
    defparam add_10162_28.INIT0 = 16'h555a;
    defparam add_10162_28.INIT1 = 16'h0000;
    defparam add_10162_28.INJECT1_0 = "NO";
    defparam add_10162_28.INJECT1_1 = "NO";
    FD1P3AX u0_msg__i16 (.D(xp_data[15]), .SP(clk2_enable_284), .CK(clk2), 
            .Q(u0_msg[39]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(241[10] 268[8])
    defparam u0_msg__i16.GSR = "DISABLED";
    FD1P3AX u0_msg__i15 (.D(xp_data[14]), .SP(clk2_enable_284), .CK(clk2), 
            .Q(u0_msg[38]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(241[10] 268[8])
    defparam u0_msg__i15.GSR = "DISABLED";
    FD1P3AX u0_msg__i14 (.D(xp_data[13]), .SP(clk2_enable_284), .CK(clk2), 
            .Q(u0_msg[37]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(241[10] 268[8])
    defparam u0_msg__i14.GSR = "DISABLED";
    FD1P3AX u0_msg__i13 (.D(xp_data[12]), .SP(clk2_enable_284), .CK(clk2), 
            .Q(u0_msg[36]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(241[10] 268[8])
    defparam u0_msg__i13.GSR = "DISABLED";
    FD1P3AX u0_msg__i12 (.D(xp_data[11]), .SP(clk2_enable_284), .CK(clk2), 
            .Q(u0_msg[35]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(241[10] 268[8])
    defparam u0_msg__i12.GSR = "DISABLED";
    FD1P3AX u0_msg__i11 (.D(xp_data[10]), .SP(clk2_enable_284), .CK(clk2), 
            .Q(u0_msg[34]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(241[10] 268[8])
    defparam u0_msg__i11.GSR = "DISABLED";
    FD1P3AX u0_msg__i10 (.D(xp_data[9]), .SP(clk2_enable_284), .CK(clk2), 
            .Q(u0_msg[33]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(241[10] 268[8])
    defparam u0_msg__i10.GSR = "DISABLED";
    FD1P3AX u0_msg__i9 (.D(xp_data[8]), .SP(clk2_enable_284), .CK(clk2), 
            .Q(u0_msg[32]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(241[10] 268[8])
    defparam u0_msg__i9.GSR = "DISABLED";
    FD1P3AX u0_msg__i8 (.D(xp_data[7]), .SP(clk2_enable_284), .CK(clk2), 
            .Q(u0_msg[31]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(241[10] 268[8])
    defparam u0_msg__i8.GSR = "DISABLED";
    FD1P3AX u0_msg__i7 (.D(xp_data[6]), .SP(clk2_enable_284), .CK(clk2), 
            .Q(u0_msg[30]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(241[10] 268[8])
    defparam u0_msg__i7.GSR = "DISABLED";
    IB uart_rx1_pad (.I(uart_rx1), .O(uart_rx1_c));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(59[17:25])
    IB xpadc_sdo0_pad (.I(xpadc_sdo0), .O(xpadc_sdo0_c));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(25[17:27])
    IB xiadc_mdat_pad (.I(xiadc_mdat), .O(xiadc_mdat_c));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(16[17:27])
    IB clk_in_pad (.I(clk_in), .O(clk_in_c));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(4[17:23])
    OBZ uart_tx2_pad (.I(GND_net), .T(VCC_net), .O(uart_tx2));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(60[17:25])
    OB uart_tx1_pad (.I(uart_tx1_c), .O(uart_tx1));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(58[17:25])
    OBZ temp_clk_pad (.I(GND_net), .T(VCC_net), .O(temp_clk));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(54[17:25])
    OBZ temp_cs_pad (.I(GND_net), .T(VCC_net), .O(temp_cs));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(53[17:24])
    OB ydac_sdi_pad (.I(ydac_sdi_c_15), .O(ydac_sdi));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(49[17:25])
    OB ydac_sck_pad (.I(ydac_sck_c_1), .O(ydac_sck));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(48[17:25])
    OB ydac_rstsel_pad (.I(VCC_net), .O(ydac_rstsel));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(47[17:28])
    FD1P3AX u1_msg__i1 (.D(xi_data[0]), .SP(clk2_enable_377), .CK(clk2), 
            .Q(u1_msg[24]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(241[10] 268[8])
    defparam u1_msg__i1.GSR = "DISABLED";
    CCU2B add_10162_26 (.A0(sys_rstn_cnt[29]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sys_rstn_cnt[30]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13698), .COUT(n13699));
    defparam add_10162_26.INIT0 = 16'h555a;
    defparam add_10162_26.INIT1 = 16'h555a;
    defparam add_10162_26.INJECT1_0 = "NO";
    defparam add_10162_26.INJECT1_1 = "NO";
    CCU2B add_10162_24 (.A0(sys_rstn_cnt[27]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sys_rstn_cnt[28]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13697), .COUT(n13698));
    defparam add_10162_24.INIT0 = 16'h555a;
    defparam add_10162_24.INIT1 = 16'h555a;
    defparam add_10162_24.INJECT1_0 = "NO";
    defparam add_10162_24.INJECT1_1 = "NO";
    CCU2B add_10162_22 (.A0(sys_rstn_cnt[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sys_rstn_cnt[26]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13696), .COUT(n13697));
    defparam add_10162_22.INIT0 = 16'h555a;
    defparam add_10162_22.INIT1 = 16'h555a;
    defparam add_10162_22.INJECT1_0 = "NO";
    defparam add_10162_22.INJECT1_1 = "NO";
    FD1S3AX u_req_i1 (.D(n10765), .CK(clk2), .Q(u_req[1]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(241[10] 268[8])
    defparam u_req_i1.GSR = "ENABLED";
    FD1P3AX u1_msg__i9 (.D(xi_data[8]), .SP(clk2_enable_377), .CK(clk2), 
            .Q(u1_msg[32]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(241[10] 268[8])
    defparam u1_msg__i9.GSR = "DISABLED";
    CCU2B add_10162_20 (.A0(sys_rstn_cnt[23]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sys_rstn_cnt[24]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13695), .COUT(n13696));
    defparam add_10162_20.INIT0 = 16'h555a;
    defparam add_10162_20.INIT1 = 16'h555a;
    defparam add_10162_20.INJECT1_0 = "NO";
    defparam add_10162_20.INJECT1_1 = "NO";
    CCU2B add_10162_18 (.A0(sys_rstn_cnt[21]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sys_rstn_cnt[22]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13694), .COUT(n13695));
    defparam add_10162_18.INIT0 = 16'h555a;
    defparam add_10162_18.INIT1 = 16'h555a;
    defparam add_10162_18.INJECT1_0 = "NO";
    defparam add_10162_18.INJECT1_1 = "NO";
    CCU2B add_10162_16 (.A0(sys_rstn_cnt[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sys_rstn_cnt[20]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13693), .COUT(n13694));
    defparam add_10162_16.INIT0 = 16'h555a;
    defparam add_10162_16.INIT1 = 16'h555a;
    defparam add_10162_16.INJECT1_0 = "NO";
    defparam add_10162_16.INJECT1_1 = "NO";
    FD1P3AX u1_msg__i8 (.D(xi_data[7]), .SP(clk2_enable_377), .CK(clk2), 
            .Q(u1_msg[31]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(241[10] 268[8])
    defparam u1_msg__i8.GSR = "DISABLED";
    FD1P3AX u1_msg__i7 (.D(xi_data[6]), .SP(clk2_enable_377), .CK(clk2), 
            .Q(u1_msg[30]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(241[10] 268[8])
    defparam u1_msg__i7.GSR = "DISABLED";
    FD1P3AX u1_msg__i6 (.D(xi_data[5]), .SP(clk2_enable_377), .CK(clk2), 
            .Q(u1_msg[29]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(241[10] 268[8])
    defparam u1_msg__i6.GSR = "DISABLED";
    FD1P3AX u1_msg__i5 (.D(xi_data[4]), .SP(clk2_enable_377), .CK(clk2), 
            .Q(u1_msg[28]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(241[10] 268[8])
    defparam u1_msg__i5.GSR = "DISABLED";
    FD1P3AX u1_msg__i4 (.D(xi_data[3]), .SP(clk2_enable_377), .CK(clk2), 
            .Q(u1_msg[27]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(241[10] 268[8])
    defparam u1_msg__i4.GSR = "DISABLED";
    FD1P3AX u1_msg__i3 (.D(xi_data[2]), .SP(clk2_enable_377), .CK(clk2), 
            .Q(u1_msg[26]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(241[10] 268[8])
    defparam u1_msg__i3.GSR = "DISABLED";
    FD1P3AX u1_msg__i2 (.D(xi_data[1]), .SP(clk2_enable_377), .CK(clk2), 
            .Q(u1_msg[25]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(241[10] 268[8])
    defparam u1_msg__i2.GSR = "DISABLED";
    CCU2B add_10162_14 (.A0(sys_rstn_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sys_rstn_cnt[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13692), .COUT(n13693));
    defparam add_10162_14.INIT0 = 16'h555a;
    defparam add_10162_14.INIT1 = 16'h555a;
    defparam add_10162_14.INJECT1_0 = "NO";
    defparam add_10162_14.INJECT1_1 = "NO";
    CCU2B add_10162_12 (.A0(sys_rstn_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sys_rstn_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13691), .COUT(n13692));
    defparam add_10162_12.INIT0 = 16'h555a;
    defparam add_10162_12.INIT1 = 16'h555a;
    defparam add_10162_12.INJECT1_0 = "NO";
    defparam add_10162_12.INJECT1_1 = "NO";
    CCU2B add_10162_10 (.A0(sys_rstn_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sys_rstn_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13690), .COUT(n13691));
    defparam add_10162_10.INIT0 = 16'h555a;
    defparam add_10162_10.INIT1 = 16'h555a;
    defparam add_10162_10.INJECT1_0 = "NO";
    defparam add_10162_10.INJECT1_1 = "NO";
    CCU2B add_10162_8 (.A0(sys_rstn_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sys_rstn_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13689), .COUT(n13690));
    defparam add_10162_8.INIT0 = 16'h555a;
    defparam add_10162_8.INIT1 = 16'h555a;
    defparam add_10162_8.INJECT1_0 = "NO";
    defparam add_10162_8.INJECT1_1 = "NO";
    CCU2B add_10162_6 (.A0(sys_rstn_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sys_rstn_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13688), .COUT(n13689));
    defparam add_10162_6.INIT0 = 16'h555a;
    defparam add_10162_6.INIT1 = 16'h555a;
    defparam add_10162_6.INJECT1_0 = "NO";
    defparam add_10162_6.INJECT1_1 = "NO";
    CCU2B add_6_add_4_33 (.A0(sys_rstn_cnt[31]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13652), .S0(n33));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(88[29:45])
    defparam add_6_add_4_33.INIT0 = 16'haaaa;
    defparam add_6_add_4_33.INIT1 = 16'h0000;
    defparam add_6_add_4_33.INJECT1_0 = "NO";
    defparam add_6_add_4_33.INJECT1_1 = "NO";
    CCU2B add_6_add_4_31 (.A0(sys_rstn_cnt[29]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sys_rstn_cnt[30]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13651), .COUT(n13652), .S0(n37), .S1(n35));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(88[29:45])
    defparam add_6_add_4_31.INIT0 = 16'haaaa;
    defparam add_6_add_4_31.INIT1 = 16'haaaa;
    defparam add_6_add_4_31.INJECT1_0 = "NO";
    defparam add_6_add_4_31.INJECT1_1 = "NO";
    CCU2B add_6_add_4_29 (.A0(sys_rstn_cnt[27]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sys_rstn_cnt[28]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13650), .COUT(n13651), .S0(n41), .S1(n39));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(88[29:45])
    defparam add_6_add_4_29.INIT0 = 16'haaaa;
    defparam add_6_add_4_29.INIT1 = 16'haaaa;
    defparam add_6_add_4_29.INJECT1_0 = "NO";
    defparam add_6_add_4_29.INJECT1_1 = "NO";
    CCU2B add_10162_4 (.A0(sys_rstn_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sys_rstn_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13687), .COUT(n13688));
    defparam add_10162_4.INIT0 = 16'haaaa;
    defparam add_10162_4.INIT1 = 16'haaaa;
    defparam add_10162_4.INJECT1_0 = "NO";
    defparam add_10162_4.INJECT1_1 = "NO";
    CCU2B add_10162_2 (.A0(sys_rstn_cnt[5]), .B0(sys_rstn_cnt[4]), .C0(GND_net), 
          .D0(VCC_net), .A1(sys_rstn_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n13687));
    defparam add_10162_2.INIT0 = 16'h000e;
    defparam add_10162_2.INIT1 = 16'h555a;
    defparam add_10162_2.INJECT1_0 = "NO";
    defparam add_10162_2.INJECT1_1 = "NO";
    CCU2B add_6_add_4_27 (.A0(sys_rstn_cnt[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sys_rstn_cnt[26]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13649), .COUT(n13650), .S0(n45), .S1(n43));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(88[29:45])
    defparam add_6_add_4_27.INIT0 = 16'haaaa;
    defparam add_6_add_4_27.INIT1 = 16'haaaa;
    defparam add_6_add_4_27.INJECT1_0 = "NO";
    defparam add_6_add_4_27.INJECT1_1 = "NO";
    CCU2B add_6_add_4_25 (.A0(sys_rstn_cnt[23]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sys_rstn_cnt[24]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13648), .COUT(n13649), .S0(n49), .S1(n47));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(88[29:45])
    defparam add_6_add_4_25.INIT0 = 16'haaaa;
    defparam add_6_add_4_25.INIT1 = 16'haaaa;
    defparam add_6_add_4_25.INJECT1_0 = "NO";
    defparam add_6_add_4_25.INJECT1_1 = "NO";
    FD1P3IX sys_rstn_cnt__i31 (.D(n33), .SP(clk_in_c_enable_28), .CD(cfg_done_N_40), 
            .CK(clk_in_c), .Q(sys_rstn_cnt[31]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(80[8] 99[4])
    defparam sys_rstn_cnt__i31.GSR = "DISABLED";
    FD1P3IX sys_rstn_cnt__i30 (.D(n35), .SP(clk_in_c_enable_28), .CD(cfg_done_N_40), 
            .CK(clk_in_c), .Q(sys_rstn_cnt[30]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(80[8] 99[4])
    defparam sys_rstn_cnt__i30.GSR = "DISABLED";
    FD1P3IX sys_rstn_cnt__i29 (.D(n37), .SP(clk_in_c_enable_28), .CD(cfg_done_N_40), 
            .CK(clk_in_c), .Q(sys_rstn_cnt[29]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(80[8] 99[4])
    defparam sys_rstn_cnt__i29.GSR = "DISABLED";
    FD1P3IX sys_rstn_cnt__i28 (.D(n39), .SP(clk_in_c_enable_28), .CD(cfg_done_N_40), 
            .CK(clk_in_c), .Q(sys_rstn_cnt[28]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(80[8] 99[4])
    defparam sys_rstn_cnt__i28.GSR = "DISABLED";
    FD1P3IX sys_rstn_cnt__i27 (.D(n41), .SP(clk_in_c_enable_28), .CD(cfg_done_N_40), 
            .CK(clk_in_c), .Q(sys_rstn_cnt[27]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(80[8] 99[4])
    defparam sys_rstn_cnt__i27.GSR = "DISABLED";
    FD1P3IX sys_rstn_cnt__i26 (.D(n43), .SP(clk_in_c_enable_28), .CD(cfg_done_N_40), 
            .CK(clk_in_c), .Q(sys_rstn_cnt[26]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(80[8] 99[4])
    defparam sys_rstn_cnt__i26.GSR = "DISABLED";
    FD1P3IX sys_rstn_cnt__i25 (.D(n45), .SP(clk_in_c_enable_28), .CD(cfg_done_N_40), 
            .CK(clk_in_c), .Q(sys_rstn_cnt[25]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(80[8] 99[4])
    defparam sys_rstn_cnt__i25.GSR = "DISABLED";
    FD1P3IX sys_rstn_cnt__i24 (.D(n47), .SP(clk_in_c_enable_28), .CD(cfg_done_N_40), 
            .CK(clk_in_c), .Q(sys_rstn_cnt[24]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(80[8] 99[4])
    defparam sys_rstn_cnt__i24.GSR = "DISABLED";
    FD1P3IX sys_rstn_cnt__i23 (.D(n49), .SP(clk_in_c_enable_28), .CD(cfg_done_N_40), 
            .CK(clk_in_c), .Q(sys_rstn_cnt[23]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(80[8] 99[4])
    defparam sys_rstn_cnt__i23.GSR = "DISABLED";
    FD1P3IX sys_rstn_cnt__i22 (.D(n51), .SP(clk_in_c_enable_28), .CD(cfg_done_N_40), 
            .CK(clk_in_c), .Q(sys_rstn_cnt[22]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(80[8] 99[4])
    defparam sys_rstn_cnt__i22.GSR = "DISABLED";
    FD1P3IX sys_rstn_cnt__i21 (.D(n53), .SP(clk_in_c_enable_28), .CD(cfg_done_N_40), 
            .CK(clk_in_c), .Q(sys_rstn_cnt[21]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(80[8] 99[4])
    defparam sys_rstn_cnt__i21.GSR = "DISABLED";
    FD1P3IX sys_rstn_cnt__i20 (.D(n55), .SP(clk_in_c_enable_28), .CD(cfg_done_N_40), 
            .CK(clk_in_c), .Q(sys_rstn_cnt[20]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(80[8] 99[4])
    defparam sys_rstn_cnt__i20.GSR = "DISABLED";
    FD1P3IX sys_rstn_cnt__i19 (.D(n57), .SP(clk_in_c_enable_28), .CD(cfg_done_N_40), 
            .CK(clk_in_c), .Q(sys_rstn_cnt[19]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(80[8] 99[4])
    defparam sys_rstn_cnt__i19.GSR = "DISABLED";
    FD1P3IX sys_rstn_cnt__i18 (.D(n59), .SP(clk_in_c_enable_28), .CD(cfg_done_N_40), 
            .CK(clk_in_c), .Q(sys_rstn_cnt[18]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(80[8] 99[4])
    defparam sys_rstn_cnt__i18.GSR = "DISABLED";
    FD1P3IX sys_rstn_cnt__i17 (.D(n61), .SP(clk_in_c_enable_28), .CD(cfg_done_N_40), 
            .CK(clk_in_c), .Q(sys_rstn_cnt[17]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(80[8] 99[4])
    defparam sys_rstn_cnt__i17.GSR = "DISABLED";
    FD1P3IX sys_rstn_cnt__i16 (.D(n63), .SP(clk_in_c_enable_28), .CD(cfg_done_N_40), 
            .CK(clk_in_c), .Q(sys_rstn_cnt[16]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(80[8] 99[4])
    defparam sys_rstn_cnt__i16.GSR = "DISABLED";
    FD1P3IX sys_rstn_cnt__i15 (.D(n65), .SP(clk_in_c_enable_28), .CD(cfg_done_N_40), 
            .CK(clk_in_c), .Q(sys_rstn_cnt[15]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(80[8] 99[4])
    defparam sys_rstn_cnt__i15.GSR = "DISABLED";
    FD1P3IX sys_rstn_cnt__i14 (.D(n67), .SP(clk_in_c_enable_28), .CD(cfg_done_N_40), 
            .CK(clk_in_c), .Q(sys_rstn_cnt[14]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(80[8] 99[4])
    defparam sys_rstn_cnt__i14.GSR = "DISABLED";
    FD1P3IX sys_rstn_cnt__i13 (.D(n69), .SP(clk_in_c_enable_28), .CD(cfg_done_N_40), 
            .CK(clk_in_c), .Q(sys_rstn_cnt[13]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(80[8] 99[4])
    defparam sys_rstn_cnt__i13.GSR = "DISABLED";
    FD1P3IX sys_rstn_cnt__i12 (.D(n71), .SP(clk_in_c_enable_28), .CD(cfg_done_N_40), 
            .CK(clk_in_c), .Q(sys_rstn_cnt[12]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(80[8] 99[4])
    defparam sys_rstn_cnt__i12.GSR = "DISABLED";
    FD1P3IX sys_rstn_cnt__i11 (.D(n73), .SP(clk_in_c_enable_28), .CD(cfg_done_N_40), 
            .CK(clk_in_c), .Q(sys_rstn_cnt[11]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(80[8] 99[4])
    defparam sys_rstn_cnt__i11.GSR = "DISABLED";
    FD1P3IX sys_rstn_cnt__i10 (.D(n75), .SP(clk_in_c_enable_28), .CD(cfg_done_N_40), 
            .CK(clk_in_c), .Q(sys_rstn_cnt[10]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(80[8] 99[4])
    defparam sys_rstn_cnt__i10.GSR = "DISABLED";
    FD1P3IX sys_rstn_cnt__i9 (.D(n77), .SP(clk_in_c_enable_28), .CD(cfg_done_N_40), 
            .CK(clk_in_c), .Q(sys_rstn_cnt[9]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(80[8] 99[4])
    defparam sys_rstn_cnt__i9.GSR = "DISABLED";
    FD1P3IX sys_rstn_cnt__i8 (.D(n79), .SP(clk_in_c_enable_28), .CD(cfg_done_N_40), 
            .CK(clk_in_c), .Q(sys_rstn_cnt[8]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(80[8] 99[4])
    defparam sys_rstn_cnt__i8.GSR = "DISABLED";
    FD1P3IX sys_rstn_cnt__i7 (.D(n81), .SP(clk_in_c_enable_28), .CD(cfg_done_N_40), 
            .CK(clk_in_c), .Q(sys_rstn_cnt[7]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(80[8] 99[4])
    defparam sys_rstn_cnt__i7.GSR = "DISABLED";
    FD1P3IX sys_rstn_cnt__i6 (.D(n83), .SP(clk_in_c_enable_28), .CD(cfg_done_N_40), 
            .CK(clk_in_c), .Q(sys_rstn_cnt[6]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(80[8] 99[4])
    defparam sys_rstn_cnt__i6.GSR = "DISABLED";
    FD1P3IX sys_rstn_cnt__i5 (.D(n85), .SP(clk_in_c_enable_33), .CD(cfg_done_N_40), 
            .CK(clk_in_c), .Q(sys_rstn_cnt[5]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(80[8] 99[4])
    defparam sys_rstn_cnt__i5.GSR = "DISABLED";
    FD1P3IX sys_rstn_cnt__i4 (.D(n87), .SP(clk_in_c_enable_33), .CD(cfg_done_N_40), 
            .CK(clk_in_c), .Q(sys_rstn_cnt[4]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(80[8] 99[4])
    defparam sys_rstn_cnt__i4.GSR = "DISABLED";
    FD1P3IX sys_rstn_cnt__i3 (.D(n89), .SP(clk_in_c_enable_33), .CD(cfg_done_N_40), 
            .CK(clk_in_c), .Q(sys_rstn_cnt[3]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(80[8] 99[4])
    defparam sys_rstn_cnt__i3.GSR = "DISABLED";
    FD1P3IX sys_rstn_cnt__i2 (.D(n91), .SP(clk_in_c_enable_33), .CD(cfg_done_N_40), 
            .CK(clk_in_c), .Q(sys_rstn_cnt[2]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(80[8] 99[4])
    defparam sys_rstn_cnt__i2.GSR = "DISABLED";
    FD1P3IX sys_rstn_cnt__i1 (.D(n93), .SP(clk_in_c_enable_33), .CD(cfg_done_N_40), 
            .CK(clk_in_c), .Q(sys_rstn_cnt[1]));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(80[8] 99[4])
    defparam sys_rstn_cnt__i1.GSR = "DISABLED";
    ORCALUT4 i12856_2_lut (.A(pll_locked_dly[0]), .B(pll_locked_dly[1]), 
            .Z(cfg_done_N_40)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(82[9:32])
    defparam i12856_2_lut.init = 16'h1111;
    CCU2B add_6_add_4_23 (.A0(sys_rstn_cnt[21]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sys_rstn_cnt[22]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13647), .COUT(n13648), .S0(n53), .S1(n51));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(88[29:45])
    defparam add_6_add_4_23.INIT0 = 16'haaaa;
    defparam add_6_add_4_23.INIT1 = 16'haaaa;
    defparam add_6_add_4_23.INJECT1_0 = "NO";
    defparam add_6_add_4_23.INJECT1_1 = "NO";
    CCU2B add_6_add_4_21 (.A0(sys_rstn_cnt[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sys_rstn_cnt[20]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13646), .COUT(n13647), .S0(n57), .S1(n55));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(88[29:45])
    defparam add_6_add_4_21.INIT0 = 16'haaaa;
    defparam add_6_add_4_21.INIT1 = 16'haaaa;
    defparam add_6_add_4_21.INJECT1_0 = "NO";
    defparam add_6_add_4_21.INJECT1_1 = "NO";
    VLO i1 (.Z(GND_net));
    FD1P3JX sys_rstn_58_rep_243 (.D(cfg_done_N_37), .SP(clk_in_c_enable_37), 
            .PD(cfg_done_N_40), .CK(clk_in_c), .Q(n17031));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(80[8] 99[4])
    defparam sys_rstn_58_rep_243.GSR = "DISABLED";
    FD1P3JX sys_rstn_58_rep_242 (.D(cfg_done_N_37), .SP(clk_in_c_enable_37), 
            .PD(cfg_done_N_40), .CK(clk_in_c), .Q(clk1_enable_64));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(80[8] 99[4])
    defparam sys_rstn_58_rep_242.GSR = "DISABLED";
    CCU2B add_6_add_4_19 (.A0(sys_rstn_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sys_rstn_cnt[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13645), .COUT(n13646), .S0(n61), .S1(n59));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(88[29:45])
    defparam add_6_add_4_19.INIT0 = 16'haaaa;
    defparam add_6_add_4_19.INIT1 = 16'haaaa;
    defparam add_6_add_4_19.INJECT1_0 = "NO";
    defparam add_6_add_4_19.INJECT1_1 = "NO";
    CCU2B add_6_add_4_17 (.A0(sys_rstn_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sys_rstn_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13644), .COUT(n13645), .S0(n65), .S1(n63));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(88[29:45])
    defparam add_6_add_4_17.INIT0 = 16'haaaa;
    defparam add_6_add_4_17.INIT1 = 16'haaaa;
    defparam add_6_add_4_17.INJECT1_0 = "NO";
    defparam add_6_add_4_17.INJECT1_1 = "NO";
    CCU2B add_6_add_4_15 (.A0(sys_rstn_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sys_rstn_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13643), .COUT(n13644), .S0(n69), .S1(n67));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(88[29:45])
    defparam add_6_add_4_15.INIT0 = 16'haaaa;
    defparam add_6_add_4_15.INIT1 = 16'haaaa;
    defparam add_6_add_4_15.INJECT1_0 = "NO";
    defparam add_6_add_4_15.INJECT1_1 = "NO";
    CCU2B add_6_add_4_13 (.A0(sys_rstn_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sys_rstn_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13642), .COUT(n13643), .S0(n73), .S1(n71));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(88[29:45])
    defparam add_6_add_4_13.INIT0 = 16'haaaa;
    defparam add_6_add_4_13.INIT1 = 16'haaaa;
    defparam add_6_add_4_13.INJECT1_0 = "NO";
    defparam add_6_add_4_13.INJECT1_1 = "NO";
    CCU2B add_6_add_4_11 (.A0(sys_rstn_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sys_rstn_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13641), .COUT(n13642), .S0(n77), .S1(n75));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(88[29:45])
    defparam add_6_add_4_11.INIT0 = 16'haaaa;
    defparam add_6_add_4_11.INIT1 = 16'haaaa;
    defparam add_6_add_4_11.INJECT1_0 = "NO";
    defparam add_6_add_4_11.INJECT1_1 = "NO";
    CCU2B add_6_add_4_9 (.A0(sys_rstn_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sys_rstn_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13640), .COUT(n13641), .S0(n81), .S1(n79));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(88[29:45])
    defparam add_6_add_4_9.INIT0 = 16'haaaa;
    defparam add_6_add_4_9.INIT1 = 16'haaaa;
    defparam add_6_add_4_9.INJECT1_0 = "NO";
    defparam add_6_add_4_9.INJECT1_1 = "NO";
    CCU2B add_6_add_4_7 (.A0(sys_rstn_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sys_rstn_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13639), .COUT(n13640), .S0(n85), .S1(n83));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(88[29:45])
    defparam add_6_add_4_7.INIT0 = 16'haaaa;
    defparam add_6_add_4_7.INIT1 = 16'haaaa;
    defparam add_6_add_4_7.INJECT1_0 = "NO";
    defparam add_6_add_4_7.INJECT1_1 = "NO";
    CCU2B add_6_add_4_5 (.A0(sys_rstn_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sys_rstn_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13638), .COUT(n13639), .S0(n89), .S1(n87));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(88[29:45])
    defparam add_6_add_4_5.INIT0 = 16'haaaa;
    defparam add_6_add_4_5.INIT1 = 16'haaaa;
    defparam add_6_add_4_5.INJECT1_0 = "NO";
    defparam add_6_add_4_5.INJECT1_1 = "NO";
    FD1P3JX sys_rstn_58_rep_240 (.D(cfg_done_N_37), .SP(clk_in_c_enable_37), 
            .PD(cfg_done_N_40), .CK(clk_in_c), .Q(clk1_enable_71));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(80[8] 99[4])
    defparam sys_rstn_58_rep_240.GSR = "DISABLED";
    FD1P3JX sys_rstn_58_rep_239 (.D(cfg_done_N_37), .SP(clk_in_c_enable_37), 
            .PD(cfg_done_N_40), .CK(clk_in_c), .Q(clk1_enable_115));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(80[8] 99[4])
    defparam sys_rstn_58_rep_239.GSR = "DISABLED";
    pll_module pll_u1 (.mclk1_N_406(mclk1_N_406), .clk1(clk1), .clk_in_c(clk_in_c), 
            .clk2(clk2), .pll_locked(pll_locked), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(67[12] 74[2])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    CCU2B add_6_add_4_3 (.A0(sys_rstn_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sys_rstn_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13637), .COUT(n13638), .S0(n93), .S1(n91));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(88[29:45])
    defparam add_6_add_4_3.INIT0 = 16'haaaa;
    defparam add_6_add_4_3.INIT1 = 16'haaaa;
    defparam add_6_add_4_3.INJECT1_0 = "NO";
    defparam add_6_add_4_3.INJECT1_1 = "NO";
    ORCALUT4 m0_lut (.Z(n17022)) /* synthesis lut_function=0, syn_instantiated=1 */ ;
    defparam m0_lut.init = 16'h0000;
    GSR GSR_INST (.GSR(n17031));
    PFUMX i13065 (.BLUT(n16683), .ALUT(n16684), .C0(u_ack[0]), .Z(n16685));
    ads8686if_U0 xp_adc_u1 (.clk1(clk1), .clk1_enable_64(clk1_enable_64), 
            .xp_data({xp_data}), .xp_data_valid(xp_data_valid), .xpadc_sck_c(xpadc_sck_c), 
            .xpadc_sdi_c(xpadc_sdi_c), .xpadc_cs_c(xpadc_cs_c), .GND_net(GND_net), 
            .VCC_net(VCC_net), .xpadc_sdo0_c(xpadc_sdo0_c), .ydac_rst_c(ydac_rst_c), 
            .clk1_enable_71(clk1_enable_71), .n17031(n17031)) /* synthesis syn_module_defined=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(132[11] 145[2])
    CCU2B add_6_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sys_rstn_cnt[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n13637), .S1(n95));   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(88[29:45])
    defparam add_6_add_4_1.INIT0 = 16'h0000;
    defparam add_6_add_4_1.INIT1 = 16'h555a;
    defparam add_6_add_4_1.INJECT1_0 = "NO";
    defparam add_6_add_4_1.INJECT1_1 = "NO";
    dac7731if_U1 xdac_u1 (.clk1(clk1), .xdac_ldac_c(xdac_ldac_c), .xdac_sck_c_1(xdac_sck_c_1), 
            .\xdac_data[1] (xdac_data[1]), .n17022(n17022), .xdac_sdi_c_15(xdac_sdi_c_15), 
            .n17031(n17031), .\xdac_data[5] (xdac_data[5]), .\xdac_data[4] (xdac_data[4]), 
            .\xdac_data[3] (xdac_data[3]), .\xdac_data[2] (xdac_data[2]), 
            .\xdac_data[0] (xdac_data[0]), .\xdac_data[14] (xdac_data[14]), 
            .\xdac_data[13] (xdac_data[13]), .\xdac_data[12] (xdac_data[12]), 
            .\xdac_data[11] (xdac_data[11]), .\xdac_data[10] (xdac_data[10]), 
            .\xdac_data[9] (xdac_data[9]), .\xdac_data[8] (xdac_data[8]), 
            .\xdac_data[7] (xdac_data[7]), .\xdac_data[6] (xdac_data[6]), 
            .xdac_cs_c_0(xdac_cs_c_0)) /* synthesis syn_module_defined=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(167[11] 179[2])
    pos_pid xpos_pid_u1 (.GND_net(GND_net), .VCC_net(VCC_net), .\xdac_data[11] (xdac_data[11]), 
            .\xdac_data[12] (xdac_data[12]), .\xdac_data[9] (xdac_data[9]), 
            .\xdac_data[10] (xdac_data[10]), .\xdac_data[7] (xdac_data[7]), 
            .\xdac_data[8] (xdac_data[8]), .\xdac_data[5] (xdac_data[5]), 
            .\xdac_data[6] (xdac_data[6]), .\xdac_data[3] (xdac_data[3]), 
            .\xdac_data[4] (xdac_data[4]), .\xdac_data[1] (xdac_data[1]), 
            .\xdac_data[2] (xdac_data[2]), .\xdac_data[0] (xdac_data[0]), 
            .\xdac_data[13] (xdac_data[13]), .\xdac_data[14] (xdac_data[14])) /* synthesis syn_module_defined=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(198[9] 208[2])
    dac7731if ydac_u1 (.clk1(clk1), .ydac_ldac_c(ydac_ldac_c), .ydac_sdi_c_15(ydac_sdi_c_15), 
            .ydac_sck_c_1(ydac_sck_c_1), .n17031(n17031), .n17022(n17022), 
            .ydac_cs_c_0(ydac_cs_c_0)) /* synthesis syn_module_defined=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(183[11] 195[2])
    uart uart_u1 (.clk2(clk2), .GND_net(GND_net), .VCC_net(VCC_net), .uart_rx1_c(uart_rx1_c), 
         .\u_ack[0] (u_ack[0]), .n16685(n16685), .ydac_rst_c(ydac_rst_c), 
         .clk1_enable_115(clk1_enable_115), .u_state_3__N_1889(u_state_3__N_1889), 
         .\u1_msg[39] (u1_msg[39]), .\u_req[1] (u_req[1]), .rx_req(rx_req), 
         .\u_req[0] (u_req[0]), .n16655(n16655), .\u0_msg[38] (u0_msg[38]), 
         .\u1_msg[38] (u1_msg[38]), .\u0_msg[37] (u0_msg[37]), .\u1_msg[37] (u1_msg[37]), 
         .\u0_msg[36] (u0_msg[36]), .\u1_msg[36] (u1_msg[36]), .\u0_msg[35] (u0_msg[35]), 
         .\u1_msg[24] (u1_msg[24]), .\u1_msg[35] (u1_msg[35]), .\u0_msg[34] (u0_msg[34]), 
         .\u1_msg[34] (u1_msg[34]), .\u0_msg[33] (u0_msg[33]), .\u1_msg[33] (u1_msg[33]), 
         .n17031(n17031), .\u_state[0] (u_state[0]), .\u0_msg[32] (u0_msg[32]), 
         .\u1_msg[32] (u1_msg[32]), .\u0_msg[24] (u0_msg[24]), .n16654(n16654), 
         .n26(n26), .n8984(n8984), .\u_ack[1] (u_ack[1]), .\u1_msg[26] (u1_msg[26]), 
         .\u0_msg[26] (u0_msg[26]), .\u1_msg[27] (u1_msg[27]), .\u0_msg[27] (u0_msg[27]), 
         .\u1_msg[28] (u1_msg[28]), .\u0_msg[28] (u0_msg[28]), .\u1_msg[29] (u1_msg[29]), 
         .\u0_msg[29] (u0_msg[29]), .\u1_msg[30] (u1_msg[30]), .\u0_msg[30] (u0_msg[30]), 
         .\u1_msg[31] (u1_msg[31]), .\u0_msg[31] (u0_msg[31]), .\u0_msg[39] (u0_msg[39]), 
         .\u1_msg[25] (u1_msg[25]), .\u0_msg[25] (u0_msg[25]), .uart_tx1_c(uart_tx1_c)) /* synthesis syn_module_defined=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(220[6] 236[2])
    dec256sinc24b xi_data_15__I_0 (.GND_net(GND_net), .VCC_net(VCC_net), 
            .clk1(clk1), .xi_data({xi_data}), .xi_data_en(xi_data_en), 
            .mclk1_N_406(mclk1_N_406), .xiadc_mdat_c(xiadc_mdat_c)) /* synthesis syn_module_defined=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(106[15] 114[2])
    ads8686if yp_adc_u1 (.ypadc_sck_c(ypadc_sck_c), .clk1(clk1), .ypadc_sdi_c(ypadc_sdi_c), 
            .ypadc_cs_c(ypadc_cs_c), .GND_net(GND_net), .VCC_net(VCC_net), 
            .n17031(n17031), .clk1_enable_115(clk1_enable_115), .ydac_rst_c(ydac_rst_c)) /* synthesis syn_module_defined=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(150[11] 163[2])
    
endmodule
//
// Verilog Description of module pll_module
//

module pll_module (mclk1_N_406, clk1, clk_in_c, clk2, pll_locked, 
            GND_net) /* synthesis NGD_DRC_MASK=1 */ ;
    output mclk1_N_406;
    output clk1;
    input clk_in_c;
    output clk2;
    output pll_locked;
    input GND_net;
    
    wire mclk1_N_406 /* synthesis is_inv_clock=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(12[13:17])
    wire clk1 /* synthesis SET_AS_NETWORK=clk1, is_clock=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(65[6:10])
    wire clk_in_c /* synthesis is_clock=1, SET_AS_NETWORK=clk_in_c */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(4[17:23])
    wire clk2 /* synthesis SET_AS_NETWORK=clk2, is_clock=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(65[12:16])
    
    INV i13267 (.A(clk1), .Z(mclk1_N_406));
    EPLLD1 PLLInst_0 (.CLKI(clk_in_c), .CLKFB(clk2), .RST(GND_net), .RSTK(GND_net), 
           .DPAMODE(GND_net), .DRPAI0(GND_net), .DRPAI1(GND_net), .DRPAI2(GND_net), 
           .DRPAI3(GND_net), .DFPAI0(GND_net), .DFPAI1(GND_net), .DFPAI2(GND_net), 
           .DFPAI3(GND_net), .PWD(GND_net), .CLKOP(clk2), .CLKOS(clk1), 
           .LOCK(pll_locked)) /* synthesis CLKOK_BYPASS="DISABLED", CLKOS_BYPASS="ENABLED", FREQUENCY_PIN_CLKOP="50.000000", CLKOP_BYPASS="DISABLED", PHASE_CNTL="STATIC", DUTY="8", PHASEADJ="0.0", FREQUENCY_PIN_CLKOS="20.000000", FREQUENCY_PIN_CLKI="20.000000", FREQUENCY_PIN_CLKOK="5.000000", CLKOK_DIV="10", CLKOP_DIV="16", CLKFB_DIV="5", CLKI_DIV="2", FIN="20.000000", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=74 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(67[12] 74[2])
    defparam PLLInst_0.FIN = "20.000000";
    defparam PLLInst_0.CLKI_DIV = 2;
    defparam PLLInst_0.CLKFB_DIV = 5;
    defparam PLLInst_0.CLKOP_DIV = 16;
    defparam PLLInst_0.CLKOK_DIV = 10;
    defparam PLLInst_0.PHASEADJ = "0.0";
    defparam PLLInst_0.DUTY = 8;
    defparam PLLInst_0.PHASE_CNTL = "STATIC";
    defparam PLLInst_0.PLLCAP = "DISABLED";
    defparam PLLInst_0.CLKOP_BYPASS = "DISABLED";
    defparam PLLInst_0.CLKOS_BYPASS = "ENABLED";
    defparam PLLInst_0.CLKOK_BYPASS = "DISABLED";
    defparam PLLInst_0.PLLTYPE = "AUTO";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module ads8686if_U0
//

module ads8686if_U0 (clk1, clk1_enable_64, xp_data, xp_data_valid, xpadc_sck_c, 
            xpadc_sdi_c, xpadc_cs_c, GND_net, VCC_net, xpadc_sdo0_c, 
            ydac_rst_c, clk1_enable_71, n17031) /* synthesis syn_module_defined=1 */ ;
    input clk1;
    input clk1_enable_64;
    output [15:0]xp_data;
    output xp_data_valid;
    output xpadc_sck_c;
    output xpadc_sdi_c;
    output xpadc_cs_c;
    input GND_net;
    input VCC_net;
    input xpadc_sdo0_c;
    input ydac_rst_c;
    input clk1_enable_71;
    input n17031;
    
    wire clk1 /* synthesis SET_AS_NETWORK=clk1, is_clock=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(65[6:10])
    wire [31:0]readout;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(36[12:19])
    wire [31:0]readout_31__N_1003;
    
    wire n1, n2;
    wire [31:0]reg_cfg_data;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(67[12:24])
    
    wire state_3__N_975;
    wire [31:0]reg_cfg_data_31__N_1035;
    wire [3:0]state;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(65[11:16])
    
    wire n8967, clk1_enable_131, dvalid_N_1104, ads_sclk_N_1095, ads_sdi_N_1098, 
        convst_csn_N_1087;
    wire [15:0]clk_cnt;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(66[12:19])
    wire [15:0]n69;
    
    wire n13573, n6317;
    wire [31:0]cfgdata;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(37[12:19])
    
    wire ads_sdi_N_1100, n1_adj_2611, n2_adj_2612;
    wire [31:0]n563;
    
    wire n4, n6319, convst_csn_N_1094, convst_csn_N_1093, n1_adj_2613, 
        n2_adj_2614;
    wire [31:0]n530;
    wire [3:0]reg_cfg_cnt;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(35[12:23])
    
    wire n13953, n14768, n16674, n4_adj_2615, n16667;
    wire [3:0]n21;
    
    wire n15097;
    wire [31:0]cfgdata_31__N_856;
    
    wire n3557, n16636;
    wire [31:0]cfgdata_31__N_942;
    
    wire n15197, n16637, n14, n10, n14688, n4_adj_2616;
    wire [31:0]n248;
    
    wire n4_adj_2617, n4_adj_2618, n14680, n6, n16629, dvalid_N_1105, 
        n9189, n8895, n1_adj_2619, n2_adj_2620, n4_adj_2621, n2_adj_2622, 
        n3, convst_csn_N_1089, n13580, n13579, n13578, n13577, n1_adj_2623, 
        n2_adj_2624, n1_adj_2625, n2_adj_2626, n13576, n13575, n13574;
    
    FD1P3AX readout_i0_i0 (.D(readout_31__N_1003[0]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(readout[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam readout_i0_i0.GSR = "DISABLED";
    ORCALUT4 i2_4_lut (.A(n1), .B(n2), .C(reg_cfg_data[29]), .D(state_3__N_975), 
            .Z(reg_cfg_data_31__N_1035[29])) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i2_4_lut.init = 16'hfeee;
    FD1S3AX state_FSM_i1 (.D(n8967), .CK(clk1), .Q(state[1]));   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam state_FSM_i1.GSR = "ENABLED";
    FD1P3AX dout_i0_i0 (.D(readout[16]), .SP(clk1_enable_131), .CK(clk1), 
            .Q(xp_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam dout_i0_i0.GSR = "DISABLED";
    FD1S3AX dvalid_87 (.D(dvalid_N_1104), .CK(clk1), .Q(xp_data_valid)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam dvalid_87.GSR = "ENABLED";
    FD1S3AX ads_sclk_88 (.D(ads_sclk_N_1095), .CK(clk1), .Q(xpadc_sck_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam ads_sclk_88.GSR = "ENABLED";
    FD1S3AX ads_sdi_89 (.D(ads_sdi_N_1098), .CK(clk1), .Q(xpadc_sdi_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam ads_sdi_89.GSR = "ENABLED";
    FD1S3AY convst_csn_86 (.D(convst_csn_N_1087), .CK(clk1), .Q(xpadc_cs_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam convst_csn_86.GSR = "ENABLED";
    CCU2B clk_cnt_5254_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n13573), .S1(n69[0]));   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5254_add_4_1.INIT0 = 16'h0000;
    defparam clk_cnt_5254_add_4_1.INIT1 = 16'h555f;
    defparam clk_cnt_5254_add_4_1.INJECT1_0 = "NO";
    defparam clk_cnt_5254_add_4_1.INJECT1_1 = "NO";
    ORCALUT4 select_2290_Select_29_i1_4_lut (.A(reg_cfg_data[29]), .B(state[1]), 
            .C(reg_cfg_data[28]), .D(n6317), .Z(n1)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam select_2290_Select_29_i1_4_lut.init = 16'hc088;
    ORCALUT4 select_2290_Select_29_i2_4_lut (.A(reg_cfg_data[29]), .B(state[0]), 
            .C(cfgdata[28]), .D(ads_sdi_N_1100), .Z(n2)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam select_2290_Select_29_i2_4_lut.init = 16'hc088;
    ORCALUT4 i2_4_lut_adj_189 (.A(n1_adj_2611), .B(n2_adj_2612), .C(reg_cfg_data[28]), 
            .D(state_3__N_975), .Z(reg_cfg_data_31__N_1035[28])) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i2_4_lut_adj_189.init = 16'hfeee;
    ORCALUT4 select_2290_Select_28_i1_4_lut (.A(reg_cfg_data[28]), .B(state[1]), 
            .C(reg_cfg_data[27]), .D(n6317), .Z(n1_adj_2611)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam select_2290_Select_28_i1_4_lut.init = 16'hc088;
    ORCALUT4 select_2290_Select_28_i2_4_lut (.A(reg_cfg_data[28]), .B(state[0]), 
            .C(cfgdata[27]), .D(ads_sdi_N_1100), .Z(n2_adj_2612)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam select_2290_Select_28_i2_4_lut.init = 16'hc088;
    ORCALUT4 i1_4_lut (.A(n563[0]), .B(readout[0]), .C(state[1]), .D(n4), 
            .Z(readout_31__N_1003[0])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut.init = 16'heca0;
    ORCALUT4 mux_31_i1_3_lut (.A(xpadc_sdo0_c), .B(readout[0]), .C(n6319), 
            .Z(n563[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_31_i1_3_lut.init = 16'hcaca;
    ORCALUT4 i2_3_lut (.A(xpadc_sck_c), .B(convst_csn_N_1094), .C(convst_csn_N_1093), 
            .Z(n6319)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(103[22] 116[20])
    defparam i2_3_lut.init = 16'hefef;
    ORCALUT4 i2_4_lut_adj_190 (.A(n1_adj_2613), .B(n2_adj_2614), .C(reg_cfg_data[19]), 
            .D(state_3__N_975), .Z(reg_cfg_data_31__N_1035[19])) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i2_4_lut_adj_190.init = 16'hfeee;
    ORCALUT4 select_2290_Select_19_i1_4_lut (.A(reg_cfg_data[19]), .B(state[1]), 
            .C(reg_cfg_data[18]), .D(n6317), .Z(n1_adj_2613)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam select_2290_Select_19_i1_4_lut.init = 16'hc088;
    ORCALUT4 select_2290_Select_19_i2_4_lut (.A(reg_cfg_data[19]), .B(state[0]), 
            .C(cfgdata[18]), .D(ads_sdi_N_1100), .Z(n2_adj_2614)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam select_2290_Select_19_i2_4_lut.init = 16'hc088;
    ORCALUT4 i1_4_lut_adj_191 (.A(n530[18]), .B(reg_cfg_data[18]), .C(state[1]), 
            .D(n4), .Z(reg_cfg_data_31__N_1035[18])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_191.init = 16'heca0;
    ORCALUT4 i1_3_lut (.A(state_3__N_975), .B(state[0]), .C(ads_sdi_N_1100), 
            .Z(n4)) /* synthesis lut_function=(A+!((C)+!B)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_3_lut.init = 16'haeae;
    ORCALUT4 mux_30_i19_3_lut (.A(reg_cfg_data[18]), .B(reg_cfg_data[17]), 
            .C(n6317), .Z(n530[18])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i19_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_192 (.A(n530[17]), .B(reg_cfg_data[17]), .C(state[1]), 
            .D(n4), .Z(reg_cfg_data_31__N_1035[17])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_192.init = 16'heca0;
    ORCALUT4 i1_4_lut_adj_193 (.A(n530[27]), .B(reg_cfg_data[27]), .C(state[1]), 
            .D(n4), .Z(reg_cfg_data_31__N_1035[27])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_193.init = 16'heca0;
    ORCALUT4 mux_30_i28_3_lut (.A(reg_cfg_data[27]), .B(reg_cfg_data[26]), 
            .C(n6317), .Z(n530[27])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i28_3_lut.init = 16'hcaca;
    ORCALUT4 mux_30_i18_3_lut (.A(reg_cfg_data[17]), .B(reg_cfg_data[16]), 
            .C(n6317), .Z(n530[17])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i18_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_194 (.A(n530[16]), .B(reg_cfg_data[16]), .C(state[1]), 
            .D(n4), .Z(reg_cfg_data_31__N_1035[16])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_194.init = 16'heca0;
    ORCALUT4 mux_30_i17_3_lut (.A(reg_cfg_data[16]), .B(reg_cfg_data[15]), 
            .C(n6317), .Z(n530[16])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i17_3_lut.init = 16'hcaca;
    FD1P3AX reg_cfg_cnt_5253__i0 (.D(n13953), .SP(clk1_enable_131), .CK(clk1), 
            .Q(reg_cfg_cnt[0]));   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(101[40:55])
    defparam reg_cfg_cnt_5253__i0.GSR = "DISABLED";
    ORCALUT4 i1_4_lut_adj_195 (.A(n530[15]), .B(reg_cfg_data[15]), .C(state[1]), 
            .D(n4), .Z(reg_cfg_data_31__N_1035[15])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_195.init = 16'heca0;
    FD1S3IX clk_cnt_5254__i0 (.D(n69[0]), .CK(clk1), .CD(state_3__N_975), 
            .Q(clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5254__i0.GSR = "ENABLED";
    ORCALUT4 mux_30_i16_3_lut (.A(reg_cfg_data[15]), .B(reg_cfg_data[14]), 
            .C(n6317), .Z(n530[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i16_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_196 (.A(clk_cnt[1]), .B(n14768), .C(n16674), 
            .D(n4_adj_2615), .Z(ads_sdi_N_1100)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_196.init = 16'hfcec;
    ORCALUT4 i1_2_lut (.A(clk_cnt[3]), .B(clk_cnt[2]), .Z(n4_adj_2615)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    ORCALUT4 i1_4_lut_adj_197 (.A(n530[14]), .B(reg_cfg_data[14]), .C(state[1]), 
            .D(n4), .Z(reg_cfg_data_31__N_1035[14])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_197.init = 16'heca0;
    ORCALUT4 mux_30_i15_3_lut (.A(reg_cfg_data[14]), .B(reg_cfg_data[13]), 
            .C(n6317), .Z(n530[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i15_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_198 (.A(n530[13]), .B(reg_cfg_data[13]), .C(state[1]), 
            .D(n4), .Z(reg_cfg_data_31__N_1035[13])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_198.init = 16'heca0;
    ORCALUT4 mux_30_i14_3_lut (.A(reg_cfg_data[13]), .B(reg_cfg_data[12]), 
            .C(n6317), .Z(n530[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i14_3_lut.init = 16'hcaca;
    FD1P3AX reg_cfg_data_i0_i31 (.D(reg_cfg_data_31__N_1035[31]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(reg_cfg_data[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i31.GSR = "DISABLED";
    ORCALUT4 i1_4_lut_adj_199 (.A(n530[12]), .B(reg_cfg_data[12]), .C(state[1]), 
            .D(n4), .Z(reg_cfg_data_31__N_1035[12])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_199.init = 16'heca0;
    ORCALUT4 mux_30_i13_3_lut (.A(reg_cfg_data[12]), .B(reg_cfg_data[11]), 
            .C(n6317), .Z(n530[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i13_3_lut.init = 16'hcaca;
    FD1P3AX reg_cfg_data_i0_i30 (.D(reg_cfg_data_31__N_1035[30]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(reg_cfg_data[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i30.GSR = "DISABLED";
    ORCALUT4 i1_4_lut_adj_200 (.A(n530[11]), .B(reg_cfg_data[11]), .C(state[1]), 
            .D(n4), .Z(reg_cfg_data_31__N_1035[11])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_200.init = 16'heca0;
    ORCALUT4 mux_30_i12_3_lut (.A(reg_cfg_data[11]), .B(reg_cfg_data[10]), 
            .C(n6317), .Z(n530[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i12_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_201 (.A(n530[10]), .B(reg_cfg_data[10]), .C(state[1]), 
            .D(n4), .Z(reg_cfg_data_31__N_1035[10])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_201.init = 16'heca0;
    ORCALUT4 mux_30_i11_3_lut (.A(reg_cfg_data[10]), .B(reg_cfg_data[9]), 
            .C(n6317), .Z(n530[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i11_3_lut.init = 16'hcaca;
    ORCALUT4 i12853_2_lut_rep_226 (.A(reg_cfg_cnt[2]), .B(reg_cfg_cnt[3]), 
            .Z(n16667)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i12853_2_lut_rep_226.init = 16'h1111;
    ORCALUT4 i1_2_lut_3_lut (.A(reg_cfg_cnt[2]), .B(reg_cfg_cnt[3]), .C(reg_cfg_cnt[0]), 
            .Z(n13953)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'he1e1;
    ORCALUT4 i10182_2_lut_3_lut_4_lut_4_lut (.A(reg_cfg_cnt[2]), .B(reg_cfg_cnt[3]), 
            .C(reg_cfg_cnt[1]), .D(reg_cfg_cnt[0]), .Z(n21[2])) /* synthesis lut_function=(A+!(B+!(C (D)))) */ ;
    defparam i10182_2_lut_3_lut_4_lut_4_lut.init = 16'hbaaa;
    ORCALUT4 i1_4_lut_adj_202 (.A(n530[9]), .B(reg_cfg_data[9]), .C(state[1]), 
            .D(n4), .Z(reg_cfg_data_31__N_1035[9])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_202.init = 16'heca0;
    ORCALUT4 i12875_2_lut_3_lut_4_lut (.A(reg_cfg_cnt[2]), .B(reg_cfg_cnt[3]), 
            .C(reg_cfg_cnt[1]), .D(reg_cfg_cnt[0]), .Z(n15097)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i12875_2_lut_3_lut_4_lut.init = 16'h0010;
    ORCALUT4 i12869_3_lut_4_lut (.A(reg_cfg_cnt[2]), .B(reg_cfg_cnt[3]), 
            .C(reg_cfg_cnt[1]), .D(reg_cfg_cnt[0]), .Z(cfgdata_31__N_856[28])) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;
    defparam i12869_3_lut_4_lut.init = 16'h0111;
    ORCALUT4 i2202_2_lut (.A(convst_csn_N_1094), .B(state[1]), .Z(n3557)) /* synthesis lut_function=(A (B)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i2202_2_lut.init = 16'h8888;
    ORCALUT4 i12835_2_lut_rep_195_3_lut (.A(reg_cfg_cnt[2]), .B(reg_cfg_cnt[3]), 
            .C(reg_cfg_cnt[0]), .Z(n16636)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i12835_2_lut_rep_195_3_lut.init = 16'h0101;
    ORCALUT4 i12823_3_lut_4_lut (.A(reg_cfg_cnt[2]), .B(reg_cfg_cnt[3]), 
            .C(reg_cfg_cnt[0]), .D(reg_cfg_cnt[1]), .Z(cfgdata_31__N_942[20])) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i12823_3_lut_4_lut.init = 16'h1110;
    ORCALUT4 mux_30_i10_3_lut (.A(reg_cfg_data[9]), .B(reg_cfg_data[8]), 
            .C(n6317), .Z(n530[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i10_3_lut.init = 16'hcaca;
    ORCALUT4 i12896_3_lut_4_lut (.A(reg_cfg_cnt[2]), .B(reg_cfg_cnt[3]), 
            .C(reg_cfg_cnt[1]), .D(reg_cfg_cnt[0]), .Z(n15197)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i12896_3_lut_4_lut.init = 16'h1000;
    ORCALUT4 i12874_2_lut_3_lut_4_lut (.A(reg_cfg_cnt[2]), .B(reg_cfg_cnt[3]), 
            .C(reg_cfg_cnt[0]), .D(reg_cfg_cnt[1]), .Z(cfgdata_31__N_856[19])) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i12874_2_lut_3_lut_4_lut.init = 16'h0001;
    ORCALUT4 i1_4_lut_adj_203 (.A(n530[8]), .B(reg_cfg_data[8]), .C(state[1]), 
            .D(n4), .Z(reg_cfg_data_31__N_1035[8])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_203.init = 16'heca0;
    ORCALUT4 mux_30_i9_3_lut (.A(reg_cfg_data[8]), .B(reg_cfg_data[7]), 
            .C(n6317), .Z(n530[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i9_3_lut.init = 16'hcaca;
    ORCALUT4 i10175_2_lut_3_lut_4_lut (.A(reg_cfg_cnt[2]), .B(reg_cfg_cnt[3]), 
            .C(reg_cfg_cnt[1]), .D(reg_cfg_cnt[0]), .Z(n21[1])) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C (D)+!C !(D)))) */ ;
    defparam i10175_2_lut_3_lut_4_lut.init = 16'he1f0;
    ORCALUT4 i12827_2_lut_rep_196_3_lut (.A(reg_cfg_cnt[2]), .B(reg_cfg_cnt[3]), 
            .C(reg_cfg_cnt[1]), .Z(n16637)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i12827_2_lut_rep_196_3_lut.init = 16'h0101;
    ORCALUT4 i10189_3_lut_4_lut_1_lut (.A(reg_cfg_cnt[3]), .Z(n21[3])) /* synthesis lut_function=(A) */ ;
    defparam i10189_3_lut_4_lut_1_lut.init = 16'haaaa;
    ORCALUT4 i1_4_lut_adj_204 (.A(n530[7]), .B(reg_cfg_data[7]), .C(state[1]), 
            .D(n4), .Z(reg_cfg_data_31__N_1035[7])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_204.init = 16'heca0;
    ORCALUT4 mux_30_i8_3_lut (.A(reg_cfg_data[7]), .B(reg_cfg_data[6]), 
            .C(n6317), .Z(n530[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i8_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_205 (.A(n530[6]), .B(reg_cfg_data[6]), .C(state[1]), 
            .D(n4), .Z(reg_cfg_data_31__N_1035[6])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_205.init = 16'heca0;
    ORCALUT4 mux_30_i7_3_lut (.A(reg_cfg_data[6]), .B(reg_cfg_data[5]), 
            .C(n6317), .Z(n530[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i7_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_206 (.A(n530[5]), .B(reg_cfg_data[5]), .C(state[1]), 
            .D(n4), .Z(reg_cfg_data_31__N_1035[5])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_206.init = 16'heca0;
    ORCALUT4 mux_30_i6_3_lut (.A(reg_cfg_data[5]), .B(reg_cfg_data[4]), 
            .C(n6317), .Z(n530[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i6_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_207 (.A(n530[4]), .B(reg_cfg_data[4]), .C(state[1]), 
            .D(n4), .Z(reg_cfg_data_31__N_1035[4])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_207.init = 16'heca0;
    ORCALUT4 mux_30_i5_3_lut (.A(reg_cfg_data[4]), .B(reg_cfg_data[3]), 
            .C(n6317), .Z(n530[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i5_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_208 (.A(n530[3]), .B(reg_cfg_data[3]), .C(state[1]), 
            .D(n4), .Z(reg_cfg_data_31__N_1035[3])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_208.init = 16'heca0;
    ORCALUT4 mux_30_i4_3_lut (.A(reg_cfg_data[3]), .B(reg_cfg_data[2]), 
            .C(n6317), .Z(n530[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i4_3_lut.init = 16'hcaca;
    ORCALUT4 i7_4_lut (.A(clk_cnt[12]), .B(n14), .C(n10), .D(clk_cnt[9]), 
            .Z(n14688)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7_4_lut.init = 16'hfffe;
    ORCALUT4 i1_4_lut_adj_209 (.A(n530[2]), .B(reg_cfg_data[2]), .C(state[1]), 
            .D(n4), .Z(reg_cfg_data_31__N_1035[2])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_209.init = 16'heca0;
    ORCALUT4 i1_2_lut_rep_233 (.A(clk_cnt[5]), .B(clk_cnt[4]), .Z(n16674)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_233.init = 16'h8888;
    ORCALUT4 i1_2_lut_3_lut_adj_210 (.A(clk_cnt[5]), .B(clk_cnt[4]), .C(clk_cnt[2]), 
            .Z(n4_adj_2616)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_210.init = 16'h8080;
    ORCALUT4 mux_30_i3_3_lut (.A(reg_cfg_data[2]), .B(reg_cfg_data[1]), 
            .C(n6317), .Z(n530[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i3_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_211 (.A(n248[1]), .B(reg_cfg_data[1]), .C(state[0]), 
            .D(n4_adj_2617), .Z(reg_cfg_data_31__N_1035[1])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_211.init = 16'heca0;
    ORCALUT4 i6_4_lut (.A(clk_cnt[15]), .B(clk_cnt[8]), .C(clk_cnt[13]), 
            .D(clk_cnt[10]), .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut.init = 16'hfffe;
    ORCALUT4 mux_20_i2_3_lut (.A(reg_cfg_data[1]), .B(cfgdata[0]), .C(ads_sdi_N_1100), 
            .Z(n248[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(85[17] 90[20])
    defparam mux_20_i2_3_lut.init = 16'hcaca;
    ORCALUT4 i1_3_lut_adj_212 (.A(state_3__N_975), .B(state[1]), .C(n6317), 
            .Z(n4_adj_2617)) /* synthesis lut_function=(A+!((C)+!B)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_3_lut_adj_212.init = 16'haeae;
    ORCALUT4 i1_4_lut_adj_213 (.A(n563[31]), .B(readout[31]), .C(state[1]), 
            .D(n4), .Z(readout_31__N_1003[31])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_213.init = 16'heca0;
    ORCALUT4 mux_31_i32_3_lut (.A(readout[30]), .B(readout[31]), .C(n6319), 
            .Z(n563[31])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_31_i32_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_214 (.A(n563[30]), .B(readout[30]), .C(state[1]), 
            .D(n4), .Z(readout_31__N_1003[30])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_214.init = 16'heca0;
    ORCALUT4 mux_31_i31_3_lut (.A(readout[29]), .B(readout[30]), .C(n6319), 
            .Z(n563[30])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_31_i31_3_lut.init = 16'hcaca;
    ORCALUT4 i2_2_lut (.A(clk_cnt[14]), .B(clk_cnt[11]), .Z(n10)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    ORCALUT4 i1_4_lut_adj_215 (.A(n563[29]), .B(readout[29]), .C(state[1]), 
            .D(n4), .Z(readout_31__N_1003[29])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_215.init = 16'heca0;
    ORCALUT4 mux_31_i30_3_lut (.A(readout[28]), .B(readout[29]), .C(n6319), 
            .Z(n563[29])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_31_i30_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_216 (.A(n563[28]), .B(readout[28]), .C(state[1]), 
            .D(n4), .Z(readout_31__N_1003[28])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_216.init = 16'heca0;
    ORCALUT4 i1_4_lut_adj_217 (.A(clk_cnt[6]), .B(n14688), .C(clk_cnt[7]), 
            .D(n4_adj_2618), .Z(convst_csn_N_1094)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_217.init = 16'hfcec;
    ORCALUT4 i1_4_lut_adj_218 (.A(n14680), .B(clk_cnt[0]), .C(clk_cnt[2]), 
            .D(clk_cnt[1]), .Z(n4_adj_2618)) /* synthesis lut_function=(A+(B (C)+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_218.init = 16'hfaea;
    ORCALUT4 i1_4_lut_adj_219 (.A(n6), .B(n16629), .C(clk_cnt[6]), .D(n14680), 
            .Z(convst_csn_N_1093)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_219.init = 16'hfcec;
    FD1P3AX reg_cfg_data_i0_i29 (.D(reg_cfg_data_31__N_1035[29]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(reg_cfg_data[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i29.GSR = "DISABLED";
    ORCALUT4 mux_31_i29_3_lut (.A(readout[27]), .B(readout[28]), .C(n6319), 
            .Z(n563[28])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_31_i29_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_220 (.A(n563[27]), .B(readout[27]), .C(state[1]), 
            .D(n4), .Z(readout_31__N_1003[27])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_220.init = 16'heca0;
    ORCALUT4 mux_31_i28_3_lut (.A(readout[26]), .B(readout[27]), .C(n6319), 
            .Z(n563[27])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_31_i28_3_lut.init = 16'hcaca;
    ORCALUT4 i5485_2_lut (.A(clk_cnt[1]), .B(clk_cnt[2]), .Z(n6)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5485_2_lut.init = 16'h8888;
    ORCALUT4 i2_3_lut_adj_221 (.A(clk_cnt[5]), .B(clk_cnt[4]), .C(clk_cnt[3]), 
            .Z(n14680)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_adj_221.init = 16'hfefe;
    ORCALUT4 i1_4_lut_adj_222 (.A(n563[26]), .B(readout[26]), .C(state[1]), 
            .D(n4), .Z(readout_31__N_1003[26])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_222.init = 16'heca0;
    FD1P3AX reg_cfg_data_i0_i28 (.D(reg_cfg_data_31__N_1035[28]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(reg_cfg_data[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i28.GSR = "DISABLED";
    ORCALUT4 mux_31_i27_3_lut (.A(readout[25]), .B(readout[26]), .C(n6319), 
            .Z(n563[26])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_31_i27_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_223 (.A(n563[25]), .B(readout[25]), .C(state[1]), 
            .D(n4), .Z(readout_31__N_1003[25])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_223.init = 16'heca0;
    ORCALUT4 mux_31_i26_3_lut (.A(readout[24]), .B(readout[25]), .C(n6319), 
            .Z(n563[25])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_31_i26_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_224 (.A(n563[24]), .B(readout[24]), .C(state[1]), 
            .D(n4), .Z(readout_31__N_1003[24])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_224.init = 16'heca0;
    FD1P3AX reg_cfg_data_i0_i27 (.D(reg_cfg_data_31__N_1035[27]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(reg_cfg_data[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i27.GSR = "DISABLED";
    ORCALUT4 mux_31_i25_3_lut (.A(readout[23]), .B(readout[24]), .C(n6319), 
            .Z(n563[24])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_31_i25_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_225 (.A(n563[23]), .B(readout[23]), .C(state[1]), 
            .D(n4), .Z(readout_31__N_1003[23])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_225.init = 16'heca0;
    ORCALUT4 mux_31_i24_3_lut (.A(readout[22]), .B(readout[23]), .C(n6319), 
            .Z(n563[23])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_31_i24_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_226 (.A(n563[22]), .B(readout[22]), .C(state[1]), 
            .D(n4), .Z(readout_31__N_1003[22])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_226.init = 16'heca0;
    ORCALUT4 mux_31_i23_3_lut (.A(readout[21]), .B(readout[22]), .C(n6319), 
            .Z(n563[22])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_31_i23_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_rep_188 (.A(clk_cnt[7]), .B(n14688), .Z(n16629)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_188.init = 16'heeee;
    ORCALUT4 i1_2_lut_3_lut_adj_227 (.A(clk_cnt[7]), .B(n14688), .C(clk_cnt[6]), 
            .Z(n14768)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut_adj_227.init = 16'hfefe;
    ORCALUT4 i1_4_lut_adj_228 (.A(n563[21]), .B(readout[21]), .C(state[1]), 
            .D(n4), .Z(readout_31__N_1003[21])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_228.init = 16'heca0;
    ORCALUT4 mux_31_i22_3_lut (.A(readout[20]), .B(readout[21]), .C(n6319), 
            .Z(n563[21])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_31_i22_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_229 (.A(n563[20]), .B(readout[20]), .C(state[1]), 
            .D(n4), .Z(readout_31__N_1003[20])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_229.init = 16'heca0;
    ORCALUT4 mux_31_i21_3_lut (.A(readout[19]), .B(readout[20]), .C(n6319), 
            .Z(n563[20])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_31_i21_3_lut.init = 16'hcaca;
    ORCALUT4 select_4784_Select_0_i5_4_lut (.A(dvalid_N_1105), .B(xp_data_valid), 
            .C(state[1]), .D(n9189), .Z(dvalid_N_1104)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam select_4784_Select_0_i5_4_lut.init = 16'heca0;
    ORCALUT4 i1_4_lut_adj_230 (.A(n563[19]), .B(readout[19]), .C(state[1]), 
            .D(n4), .Z(readout_31__N_1003[19])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_230.init = 16'heca0;
    ORCALUT4 i8734_3_lut (.A(xp_data_valid), .B(convst_csn_N_1094), .C(n8895), 
            .Z(dvalid_N_1105)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(103[22] 116[20])
    defparam i8734_3_lut.init = 16'hcece;
    ORCALUT4 mux_31_i20_3_lut (.A(readout[18]), .B(readout[19]), .C(n6319), 
            .Z(n563[19])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_31_i20_3_lut.init = 16'hcaca;
    FD1P3AX reg_cfg_data_i0_i26 (.D(reg_cfg_data_31__N_1035[26]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(reg_cfg_data[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i26.GSR = "DISABLED";
    ORCALUT4 i1_4_lut_adj_231 (.A(n563[18]), .B(readout[18]), .C(state[1]), 
            .D(n4), .Z(readout_31__N_1003[18])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_231.init = 16'heca0;
    FD1P3AX reg_cfg_data_i0_i25 (.D(reg_cfg_data_31__N_1035[25]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(reg_cfg_data[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i25.GSR = "DISABLED";
    ORCALUT4 mux_31_i19_3_lut (.A(readout[17]), .B(readout[18]), .C(n6319), 
            .Z(n563[18])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_31_i19_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_232 (.A(n563[17]), .B(readout[17]), .C(state[1]), 
            .D(n4), .Z(readout_31__N_1003[17])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_232.init = 16'heca0;
    ORCALUT4 i2_4_lut_adj_233 (.A(n1_adj_2619), .B(n2_adj_2620), .C(reg_cfg_data[31]), 
            .D(state_3__N_975), .Z(reg_cfg_data_31__N_1035[31])) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i2_4_lut_adj_233.init = 16'hfeee;
    FD1P3AX reg_cfg_data_i0_i24 (.D(reg_cfg_data_31__N_1035[24]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(reg_cfg_data[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i24.GSR = "DISABLED";
    ORCALUT4 select_2290_Select_31_i1_4_lut (.A(reg_cfg_data[31]), .B(state[1]), 
            .C(reg_cfg_data[30]), .D(n6317), .Z(n1_adj_2619)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam select_2290_Select_31_i1_4_lut.init = 16'hc088;
    ORCALUT4 mux_31_i18_3_lut (.A(readout[16]), .B(readout[17]), .C(n6319), 
            .Z(n563[17])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_31_i18_3_lut.init = 16'hcaca;
    FD1S3IX clk_cnt_5254__i15 (.D(n69[15]), .CK(clk1), .CD(state_3__N_975), 
            .Q(clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5254__i15.GSR = "ENABLED";
    ORCALUT4 select_2290_Select_31_i2_4_lut (.A(reg_cfg_data[31]), .B(state[0]), 
            .C(cfgdata[31]), .D(ads_sdi_N_1100), .Z(n2_adj_2620)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam select_2290_Select_31_i2_4_lut.init = 16'hc088;
    FD1S3IX clk_cnt_5254__i14 (.D(n69[14]), .CK(clk1), .CD(state_3__N_975), 
            .Q(clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5254__i14.GSR = "ENABLED";
    FD1S3IX clk_cnt_5254__i13 (.D(n69[13]), .CK(clk1), .CD(state_3__N_975), 
            .Q(clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5254__i13.GSR = "ENABLED";
    FD1S3IX clk_cnt_5254__i12 (.D(n69[12]), .CK(clk1), .CD(state_3__N_975), 
            .Q(clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5254__i12.GSR = "ENABLED";
    FD1S3IX clk_cnt_5254__i11 (.D(n69[11]), .CK(clk1), .CD(state_3__N_975), 
            .Q(clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5254__i11.GSR = "ENABLED";
    FD1S3IX clk_cnt_5254__i10 (.D(n69[10]), .CK(clk1), .CD(state_3__N_975), 
            .Q(clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5254__i10.GSR = "ENABLED";
    FD1S3IX clk_cnt_5254__i9 (.D(n69[9]), .CK(clk1), .CD(state_3__N_975), 
            .Q(clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5254__i9.GSR = "ENABLED";
    FD1S3IX clk_cnt_5254__i8 (.D(n69[8]), .CK(clk1), .CD(state_3__N_975), 
            .Q(clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5254__i8.GSR = "ENABLED";
    FD1S3IX clk_cnt_5254__i7 (.D(n69[7]), .CK(clk1), .CD(state_3__N_975), 
            .Q(clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5254__i7.GSR = "ENABLED";
    FD1S3IX clk_cnt_5254__i6 (.D(n69[6]), .CK(clk1), .CD(state_3__N_975), 
            .Q(clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5254__i6.GSR = "ENABLED";
    FD1S3IX clk_cnt_5254__i5 (.D(n69[5]), .CK(clk1), .CD(state_3__N_975), 
            .Q(clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5254__i5.GSR = "ENABLED";
    FD1S3IX clk_cnt_5254__i4 (.D(n69[4]), .CK(clk1), .CD(state_3__N_975), 
            .Q(clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5254__i4.GSR = "ENABLED";
    FD1S3IX clk_cnt_5254__i3 (.D(n69[3]), .CK(clk1), .CD(state_3__N_975), 
            .Q(clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5254__i3.GSR = "ENABLED";
    FD1S3IX clk_cnt_5254__i2 (.D(n69[2]), .CK(clk1), .CD(state_3__N_975), 
            .Q(clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5254__i2.GSR = "ENABLED";
    FD1S3IX clk_cnt_5254__i1 (.D(n69[1]), .CK(clk1), .CD(state_3__N_975), 
            .Q(clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5254__i1.GSR = "ENABLED";
    FD1P3AX reg_cfg_cnt_5253__i3 (.D(n21[3]), .SP(clk1_enable_131), .CK(clk1), 
            .Q(reg_cfg_cnt[3]));   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(101[40:55])
    defparam reg_cfg_cnt_5253__i3.GSR = "DISABLED";
    FD1P3AX reg_cfg_cnt_5253__i2 (.D(n21[2]), .SP(clk1_enable_131), .CK(clk1), 
            .Q(reg_cfg_cnt[2]));   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(101[40:55])
    defparam reg_cfg_cnt_5253__i2.GSR = "DISABLED";
    FD1P3AX reg_cfg_cnt_5253__i1 (.D(n21[1]), .SP(clk1_enable_131), .CK(clk1), 
            .Q(reg_cfg_cnt[1]));   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(101[40:55])
    defparam reg_cfg_cnt_5253__i1.GSR = "DISABLED";
    ORCALUT4 i1_4_lut_adj_234 (.A(n563[16]), .B(readout[16]), .C(state[1]), 
            .D(n4), .Z(readout_31__N_1003[16])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_234.init = 16'heca0;
    ORCALUT4 mux_31_i17_3_lut (.A(readout[15]), .B(readout[16]), .C(n6319), 
            .Z(n563[16])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_31_i17_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_235 (.A(n563[15]), .B(readout[15]), .C(state[1]), 
            .D(n4), .Z(readout_31__N_1003[15])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_235.init = 16'heca0;
    ORCALUT4 mux_31_i16_3_lut (.A(readout[14]), .B(readout[15]), .C(n6319), 
            .Z(n563[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_31_i16_3_lut.init = 16'hcaca;
    FD1P3AX reg_cfg_data_i0_i23 (.D(reg_cfg_data_31__N_1035[23]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(reg_cfg_data[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i23.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i22 (.D(reg_cfg_data_31__N_1035[22]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(reg_cfg_data[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i22.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i21 (.D(reg_cfg_data_31__N_1035[21]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(reg_cfg_data[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i21.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i20 (.D(reg_cfg_data_31__N_1035[20]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(reg_cfg_data[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i20.GSR = "DISABLED";
    ORCALUT4 i1_4_lut_adj_236 (.A(n563[14]), .B(readout[14]), .C(state[1]), 
            .D(n4), .Z(readout_31__N_1003[14])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_236.init = 16'heca0;
    ORCALUT4 mux_31_i15_3_lut (.A(readout[13]), .B(readout[14]), .C(n6319), 
            .Z(n563[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_31_i15_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_237 (.A(n563[13]), .B(readout[13]), .C(state[1]), 
            .D(n4), .Z(readout_31__N_1003[13])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_237.init = 16'heca0;
    FD1P3AX reg_cfg_data_i0_i19 (.D(reg_cfg_data_31__N_1035[19]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(reg_cfg_data[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i19.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i18 (.D(reg_cfg_data_31__N_1035[18]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(reg_cfg_data[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i18.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i17 (.D(reg_cfg_data_31__N_1035[17]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(reg_cfg_data[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i17.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i16 (.D(reg_cfg_data_31__N_1035[16]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(reg_cfg_data[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i16.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i15 (.D(reg_cfg_data_31__N_1035[15]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(reg_cfg_data[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i15.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i14 (.D(reg_cfg_data_31__N_1035[14]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(reg_cfg_data[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i14.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i13 (.D(reg_cfg_data_31__N_1035[13]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(reg_cfg_data[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i13.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i12 (.D(reg_cfg_data_31__N_1035[12]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(reg_cfg_data[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i12.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i11 (.D(reg_cfg_data_31__N_1035[11]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(reg_cfg_data[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i11.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i10 (.D(reg_cfg_data_31__N_1035[10]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(reg_cfg_data[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i10.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i9 (.D(reg_cfg_data_31__N_1035[9]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(reg_cfg_data[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i9.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i8 (.D(reg_cfg_data_31__N_1035[8]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(reg_cfg_data[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i8.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i7 (.D(reg_cfg_data_31__N_1035[7]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(reg_cfg_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i7.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i6 (.D(reg_cfg_data_31__N_1035[6]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(reg_cfg_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i6.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i5 (.D(reg_cfg_data_31__N_1035[5]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(reg_cfg_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i5.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i4 (.D(reg_cfg_data_31__N_1035[4]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(reg_cfg_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i4.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i3 (.D(reg_cfg_data_31__N_1035[3]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(reg_cfg_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i3.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i2 (.D(reg_cfg_data_31__N_1035[2]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(reg_cfg_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i2.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i1 (.D(reg_cfg_data_31__N_1035[1]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(reg_cfg_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i1.GSR = "DISABLED";
    FD1P3AX readout_i0_i31 (.D(readout_31__N_1003[31]), .SP(ydac_rst_c), 
            .CK(clk1), .Q(readout[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam readout_i0_i31.GSR = "DISABLED";
    FD1P3AX readout_i0_i30 (.D(readout_31__N_1003[30]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(readout[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam readout_i0_i30.GSR = "DISABLED";
    FD1P3AX readout_i0_i29 (.D(readout_31__N_1003[29]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(readout[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam readout_i0_i29.GSR = "DISABLED";
    FD1P3AX readout_i0_i28 (.D(readout_31__N_1003[28]), .SP(ydac_rst_c), 
            .CK(clk1), .Q(readout[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam readout_i0_i28.GSR = "DISABLED";
    FD1P3AX readout_i0_i27 (.D(readout_31__N_1003[27]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(readout[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam readout_i0_i27.GSR = "DISABLED";
    FD1P3AX readout_i0_i26 (.D(readout_31__N_1003[26]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(readout[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam readout_i0_i26.GSR = "DISABLED";
    FD1P3AX readout_i0_i25 (.D(readout_31__N_1003[25]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(readout[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam readout_i0_i25.GSR = "DISABLED";
    FD1P3AX readout_i0_i24 (.D(readout_31__N_1003[24]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(readout[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam readout_i0_i24.GSR = "DISABLED";
    FD1P3AX readout_i0_i23 (.D(readout_31__N_1003[23]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(readout[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam readout_i0_i23.GSR = "DISABLED";
    FD1P3AX readout_i0_i22 (.D(readout_31__N_1003[22]), .SP(ydac_rst_c), 
            .CK(clk1), .Q(readout[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam readout_i0_i22.GSR = "DISABLED";
    ORCALUT4 mux_31_i14_3_lut (.A(readout[12]), .B(readout[13]), .C(n6319), 
            .Z(n563[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_31_i14_3_lut.init = 16'hcaca;
    FD1P3AX readout_i0_i21 (.D(readout_31__N_1003[21]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(readout[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam readout_i0_i21.GSR = "DISABLED";
    ORCALUT4 i1_4_lut_adj_238 (.A(n563[12]), .B(readout[12]), .C(state[1]), 
            .D(n4), .Z(readout_31__N_1003[12])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_238.init = 16'heca0;
    ORCALUT4 mux_31_i13_3_lut (.A(readout[11]), .B(readout[12]), .C(n6319), 
            .Z(n563[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_31_i13_3_lut.init = 16'hcaca;
    FD1P3AX readout_i0_i20 (.D(readout_31__N_1003[20]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(readout[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam readout_i0_i20.GSR = "DISABLED";
    FD1P3AX readout_i0_i19 (.D(readout_31__N_1003[19]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(readout[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam readout_i0_i19.GSR = "DISABLED";
    FD1P3AX readout_i0_i18 (.D(readout_31__N_1003[18]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(readout[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam readout_i0_i18.GSR = "DISABLED";
    FD1P3AX readout_i0_i17 (.D(readout_31__N_1003[17]), .SP(ydac_rst_c), 
            .CK(clk1), .Q(readout[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam readout_i0_i17.GSR = "DISABLED";
    FD1P3AX readout_i0_i16 (.D(readout_31__N_1003[16]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(readout[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam readout_i0_i16.GSR = "DISABLED";
    FD1P3AX readout_i0_i15 (.D(readout_31__N_1003[15]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(readout[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam readout_i0_i15.GSR = "DISABLED";
    FD1P3AX readout_i0_i14 (.D(readout_31__N_1003[14]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(readout[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam readout_i0_i14.GSR = "DISABLED";
    FD1P3AX readout_i0_i13 (.D(readout_31__N_1003[13]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(readout[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam readout_i0_i13.GSR = "DISABLED";
    FD1P3AX readout_i0_i12 (.D(readout_31__N_1003[12]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(readout[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam readout_i0_i12.GSR = "DISABLED";
    FD1P3AX readout_i0_i11 (.D(readout_31__N_1003[11]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(readout[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam readout_i0_i11.GSR = "DISABLED";
    FD1P3AX readout_i0_i10 (.D(readout_31__N_1003[10]), .SP(clk1_enable_64), 
            .CK(clk1), .Q(readout[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam readout_i0_i10.GSR = "DISABLED";
    FD1P3AX readout_i0_i9 (.D(readout_31__N_1003[9]), .SP(clk1_enable_71), 
            .CK(clk1), .Q(readout[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam readout_i0_i9.GSR = "DISABLED";
    FD1P3AX readout_i0_i8 (.D(readout_31__N_1003[8]), .SP(ydac_rst_c), .CK(clk1), 
            .Q(readout[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam readout_i0_i8.GSR = "DISABLED";
    FD1P3AX readout_i0_i7 (.D(readout_31__N_1003[7]), .SP(clk1_enable_71), 
            .CK(clk1), .Q(readout[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam readout_i0_i7.GSR = "DISABLED";
    FD1P3AX readout_i0_i6 (.D(readout_31__N_1003[6]), .SP(clk1_enable_71), 
            .CK(clk1), .Q(readout[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam readout_i0_i6.GSR = "DISABLED";
    FD1P3AX readout_i0_i5 (.D(readout_31__N_1003[5]), .SP(clk1_enable_71), 
            .CK(clk1), .Q(readout[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam readout_i0_i5.GSR = "DISABLED";
    FD1P3AX readout_i0_i4 (.D(readout_31__N_1003[4]), .SP(clk1_enable_71), 
            .CK(clk1), .Q(readout[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam readout_i0_i4.GSR = "DISABLED";
    FD1P3AX readout_i0_i3 (.D(readout_31__N_1003[3]), .SP(ydac_rst_c), .CK(clk1), 
            .Q(readout[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam readout_i0_i3.GSR = "DISABLED";
    FD1P3AX readout_i0_i2 (.D(readout_31__N_1003[2]), .SP(clk1_enable_71), 
            .CK(clk1), .Q(readout[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam readout_i0_i2.GSR = "DISABLED";
    FD1P3AX readout_i0_i1 (.D(readout_31__N_1003[1]), .SP(clk1_enable_71), 
            .CK(clk1), .Q(readout[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam readout_i0_i1.GSR = "DISABLED";
    FD1S3AX cfgdata_i6 (.D(cfgdata_31__N_856[28]), .CK(clk1), .Q(cfgdata[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(42[10] 58[8])
    defparam cfgdata_i6.GSR = "ENABLED";
    FD1S3IX cfgdata_i5 (.D(n15197), .CK(clk1), .CD(cfgdata_31__N_856[28]), 
            .Q(cfgdata[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(42[10] 58[8])
    defparam cfgdata_i5.GSR = "ENABLED";
    FD1S3IX cfgdata_i4 (.D(cfgdata_31__N_942[20]), .CK(clk1), .CD(cfgdata_31__N_856[19]), 
            .Q(cfgdata[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(42[10] 58[8])
    defparam cfgdata_i4.GSR = "ENABLED";
    FD1S3AX cfgdata_i3 (.D(cfgdata_31__N_856[19]), .CK(clk1), .Q(cfgdata[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(42[10] 58[8])
    defparam cfgdata_i3.GSR = "ENABLED";
    FD1S3AX cfgdata_i2 (.D(n16636), .CK(clk1), .Q(cfgdata[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(42[10] 58[8])
    defparam cfgdata_i2.GSR = "ENABLED";
    FD1P3AX dout_i0_i15 (.D(readout[31]), .SP(clk1_enable_131), .CK(clk1), 
            .Q(xp_data[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam dout_i0_i15.GSR = "DISABLED";
    FD1P3AX dout_i0_i14 (.D(readout[30]), .SP(clk1_enable_131), .CK(clk1), 
            .Q(xp_data[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam dout_i0_i14.GSR = "DISABLED";
    FD1P3AX dout_i0_i13 (.D(readout[29]), .SP(clk1_enable_131), .CK(clk1), 
            .Q(xp_data[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam dout_i0_i13.GSR = "DISABLED";
    FD1P3AX dout_i0_i12 (.D(readout[28]), .SP(clk1_enable_131), .CK(clk1), 
            .Q(xp_data[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam dout_i0_i12.GSR = "DISABLED";
    FD1P3AX dout_i0_i11 (.D(readout[27]), .SP(clk1_enable_131), .CK(clk1), 
            .Q(xp_data[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam dout_i0_i11.GSR = "DISABLED";
    FD1P3AX dout_i0_i10 (.D(readout[26]), .SP(clk1_enable_131), .CK(clk1), 
            .Q(xp_data[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam dout_i0_i10.GSR = "DISABLED";
    FD1P3AX dout_i0_i9 (.D(readout[25]), .SP(clk1_enable_131), .CK(clk1), 
            .Q(xp_data[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam dout_i0_i9.GSR = "DISABLED";
    FD1P3AX dout_i0_i8 (.D(readout[24]), .SP(clk1_enable_131), .CK(clk1), 
            .Q(xp_data[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam dout_i0_i8.GSR = "DISABLED";
    FD1P3AX dout_i0_i7 (.D(readout[23]), .SP(clk1_enable_131), .CK(clk1), 
            .Q(xp_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam dout_i0_i7.GSR = "DISABLED";
    FD1P3AX dout_i0_i6 (.D(readout[22]), .SP(clk1_enable_131), .CK(clk1), 
            .Q(xp_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam dout_i0_i6.GSR = "DISABLED";
    FD1P3AX dout_i0_i5 (.D(readout[21]), .SP(clk1_enable_131), .CK(clk1), 
            .Q(xp_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam dout_i0_i5.GSR = "DISABLED";
    FD1P3AX dout_i0_i4 (.D(readout[20]), .SP(clk1_enable_131), .CK(clk1), 
            .Q(xp_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam dout_i0_i4.GSR = "DISABLED";
    FD1P3AX dout_i0_i3 (.D(readout[19]), .SP(clk1_enable_131), .CK(clk1), 
            .Q(xp_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam dout_i0_i3.GSR = "DISABLED";
    FD1P3AX dout_i0_i2 (.D(readout[18]), .SP(clk1_enable_131), .CK(clk1), 
            .Q(xp_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam dout_i0_i2.GSR = "DISABLED";
    FD1P3AX dout_i0_i1 (.D(readout[17]), .SP(clk1_enable_131), .CK(clk1), 
            .Q(xp_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam dout_i0_i1.GSR = "DISABLED";
    FD1S3AY state_FSM_i3 (.D(n3557), .CK(clk1), .Q(state_3__N_975));   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3AX state_FSM_i2 (.D(n4), .CK(clk1), .Q(state[0]));   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam state_FSM_i2.GSR = "ENABLED";
    ORCALUT4 i1_4_lut_adj_239 (.A(n563[11]), .B(readout[11]), .C(state[1]), 
            .D(n4), .Z(readout_31__N_1003[11])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_239.init = 16'heca0;
    ORCALUT4 i5826_4_lut (.A(clk_cnt[3]), .B(convst_csn_N_1093), .C(n14768), 
            .D(n4_adj_2616), .Z(n8895)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+!(C)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(113[22] 116[20])
    defparam i5826_4_lut.init = 16'h3230;
    ORCALUT4 i1_4_lut_adj_240 (.A(n530[30]), .B(reg_cfg_data[30]), .C(state[1]), 
            .D(n4), .Z(reg_cfg_data_31__N_1035[30])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_240.init = 16'heca0;
    ORCALUT4 mux_31_i12_3_lut (.A(readout[10]), .B(readout[11]), .C(n6319), 
            .Z(n563[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_31_i12_3_lut.init = 16'hcaca;
    ORCALUT4 mux_30_i31_3_lut (.A(reg_cfg_data[30]), .B(reg_cfg_data[29]), 
            .C(n6317), .Z(n530[30])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i31_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_241 (.A(n563[10]), .B(readout[10]), .C(state[1]), 
            .D(n4), .Z(readout_31__N_1003[10])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_241.init = 16'heca0;
    ORCALUT4 select_4779_Select_0_i4_2_lut (.A(state[0]), .B(state_3__N_975), 
            .Z(n9189)) /* synthesis lut_function=(A+(B)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam select_4779_Select_0_i4_2_lut.init = 16'heeee;
    ORCALUT4 mux_31_i11_3_lut (.A(readout[9]), .B(readout[10]), .C(n6319), 
            .Z(n563[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_31_i11_3_lut.init = 16'hcaca;
    ORCALUT4 select_4783_Select_0_i5_4_lut (.A(state[1]), .B(xpadc_sck_c), 
            .C(n4_adj_2621), .D(n9189), .Z(ads_sclk_N_1095)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam select_4783_Select_0_i5_4_lut.init = 16'heca0;
    ORCALUT4 i1_4_lut_adj_242 (.A(n563[9]), .B(readout[9]), .C(state[1]), 
            .D(n4), .Z(readout_31__N_1003[9])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_242.init = 16'heca0;
    ORCALUT4 i1_3_lut_adj_243 (.A(convst_csn_N_1094), .B(xpadc_sck_c), .C(convst_csn_N_1093), 
            .Z(n4_adj_2621)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_3_lut_adj_243.init = 16'h1414;
    ORCALUT4 i2_4_lut_adj_244 (.A(n2_adj_2622), .B(n3), .C(xpadc_sdi_c), 
            .D(state_3__N_975), .Z(ads_sdi_N_1098)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i2_4_lut_adj_244.init = 16'hfeee;
    ORCALUT4 mux_31_i10_3_lut (.A(readout[8]), .B(readout[9]), .C(n6319), 
            .Z(n563[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_31_i10_3_lut.init = 16'hcaca;
    ORCALUT4 state_3__N_975_I_0_i2_4_lut (.A(xpadc_sdi_c), .B(state[1]), 
            .C(reg_cfg_data[31]), .D(n6317), .Z(n2_adj_2622)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam state_3__N_975_I_0_i2_4_lut.init = 16'hc088;
    ORCALUT4 state_3__N_975_I_0_i3_4_lut (.A(xpadc_sdi_c), .B(state[0]), 
            .C(cfgdata[31]), .D(ads_sdi_N_1100), .Z(n3)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam state_3__N_975_I_0_i3_4_lut.init = 16'hc088;
    ORCALUT4 i1_4_lut_adj_245 (.A(n563[8]), .B(readout[8]), .C(state[1]), 
            .D(n4), .Z(readout_31__N_1003[8])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_245.init = 16'heca0;
    ORCALUT4 i2_3_lut_adj_246 (.A(xpadc_sck_c), .B(convst_csn_N_1094), .C(convst_csn_N_1093), 
            .Z(n6317)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(103[22] 116[20])
    defparam i2_3_lut_adj_246.init = 16'h2020;
    ORCALUT4 mux_31_i9_3_lut (.A(readout[7]), .B(readout[8]), .C(n6319), 
            .Z(n563[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_31_i9_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_247 (.A(n563[7]), .B(readout[7]), .C(state[1]), 
            .D(n4), .Z(readout_31__N_1003[7])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_247.init = 16'heca0;
    ORCALUT4 mux_31_i8_3_lut (.A(readout[6]), .B(readout[7]), .C(n6319), 
            .Z(n563[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_31_i8_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_248 (.A(n563[6]), .B(readout[6]), .C(state[1]), 
            .D(n4), .Z(readout_31__N_1003[6])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_248.init = 16'heca0;
    ORCALUT4 mux_31_i7_3_lut (.A(readout[5]), .B(readout[6]), .C(n6319), 
            .Z(n563[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_31_i7_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_249 (.A(n563[5]), .B(readout[5]), .C(state[1]), 
            .D(n4), .Z(readout_31__N_1003[5])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_249.init = 16'heca0;
    ORCALUT4 mux_31_i6_3_lut (.A(readout[4]), .B(readout[5]), .C(n6319), 
            .Z(n563[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_31_i6_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_250 (.A(n563[4]), .B(readout[4]), .C(state[1]), 
            .D(n4), .Z(readout_31__N_1003[4])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_250.init = 16'heca0;
    ORCALUT4 mux_31_i5_3_lut (.A(readout[3]), .B(readout[4]), .C(n6319), 
            .Z(n563[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_31_i5_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_251 (.A(n563[3]), .B(readout[3]), .C(state[1]), 
            .D(n4), .Z(readout_31__N_1003[3])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_251.init = 16'heca0;
    ORCALUT4 mux_31_i4_3_lut (.A(readout[2]), .B(readout[3]), .C(n6319), 
            .Z(n563[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_31_i4_3_lut.init = 16'hcaca;
    ORCALUT4 select_4779_Select_0_i5_4_lut (.A(convst_csn_N_1089), .B(xpadc_cs_c), 
            .C(state[1]), .D(n9189), .Z(convst_csn_N_1087)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam select_4779_Select_0_i5_4_lut.init = 16'heca0;
    ORCALUT4 i1_4_lut_adj_252 (.A(n563[2]), .B(readout[2]), .C(state[1]), 
            .D(n4), .Z(readout_31__N_1003[2])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_252.init = 16'heca0;
    ORCALUT4 i8733_3_lut (.A(xpadc_cs_c), .B(convst_csn_N_1094), .C(n8895), 
            .Z(convst_csn_N_1089)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(103[22] 116[20])
    defparam i8733_3_lut.init = 16'hcece;
    ORCALUT4 mux_31_i3_3_lut (.A(readout[1]), .B(readout[2]), .C(n6319), 
            .Z(n563[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_31_i3_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_253 (.A(n563[1]), .B(readout[1]), .C(state[1]), 
            .D(n4), .Z(readout_31__N_1003[1])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_253.init = 16'heca0;
    ORCALUT4 mux_31_i2_3_lut (.A(readout[0]), .B(readout[1]), .C(n6319), 
            .Z(n563[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_31_i2_3_lut.init = 16'hcaca;
    FD1S3AX cfgdata_i8 (.D(n16667), .CK(clk1), .Q(cfgdata[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(42[10] 58[8])
    defparam cfgdata_i8.GSR = "ENABLED";
    ORCALUT4 i2_3_lut_adj_254 (.A(convst_csn_N_1094), .B(state[1]), .C(n17031), 
            .Z(clk1_enable_131)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_adj_254.init = 16'h8080;
    CCU2B clk_cnt_5254_add_4_17 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13580), .S0(n69[15]));   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5254_add_4_17.INIT0 = 16'haaa0;
    defparam clk_cnt_5254_add_4_17.INIT1 = 16'h0000;
    defparam clk_cnt_5254_add_4_17.INJECT1_0 = "NO";
    defparam clk_cnt_5254_add_4_17.INJECT1_1 = "NO";
    CCU2B clk_cnt_5254_add_4_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13579), .COUT(n13580), .S0(n69[13]), .S1(n69[14]));   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5254_add_4_15.INIT0 = 16'haaa0;
    defparam clk_cnt_5254_add_4_15.INIT1 = 16'haaa0;
    defparam clk_cnt_5254_add_4_15.INJECT1_0 = "NO";
    defparam clk_cnt_5254_add_4_15.INJECT1_1 = "NO";
    CCU2B clk_cnt_5254_add_4_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13578), .COUT(n13579), .S0(n69[11]), .S1(n69[12]));   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5254_add_4_13.INIT0 = 16'haaa0;
    defparam clk_cnt_5254_add_4_13.INIT1 = 16'haaa0;
    defparam clk_cnt_5254_add_4_13.INJECT1_0 = "NO";
    defparam clk_cnt_5254_add_4_13.INJECT1_1 = "NO";
    CCU2B clk_cnt_5254_add_4_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13577), .COUT(n13578), .S0(n69[9]), .S1(n69[10]));   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5254_add_4_11.INIT0 = 16'haaa0;
    defparam clk_cnt_5254_add_4_11.INIT1 = 16'haaa0;
    defparam clk_cnt_5254_add_4_11.INJECT1_0 = "NO";
    defparam clk_cnt_5254_add_4_11.INJECT1_1 = "NO";
    ORCALUT4 i5892_4_lut (.A(state[1]), .B(ads_sdi_N_1100), .C(convst_csn_N_1094), 
            .D(state[0]), .Z(n8967)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i5892_4_lut.init = 16'hce0a;
    ORCALUT4 i1_4_lut_adj_255 (.A(n530[26]), .B(reg_cfg_data[26]), .C(state[1]), 
            .D(n4), .Z(reg_cfg_data_31__N_1035[26])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_255.init = 16'heca0;
    ORCALUT4 mux_30_i27_3_lut (.A(reg_cfg_data[26]), .B(reg_cfg_data[25]), 
            .C(n6317), .Z(n530[26])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i27_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_256 (.A(n530[25]), .B(reg_cfg_data[25]), .C(state[1]), 
            .D(n4), .Z(reg_cfg_data_31__N_1035[25])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_256.init = 16'heca0;
    ORCALUT4 mux_30_i26_3_lut (.A(reg_cfg_data[25]), .B(reg_cfg_data[24]), 
            .C(n6317), .Z(n530[25])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i26_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_257 (.A(n530[24]), .B(reg_cfg_data[24]), .C(state[1]), 
            .D(n4), .Z(reg_cfg_data_31__N_1035[24])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_257.init = 16'heca0;
    ORCALUT4 mux_30_i25_3_lut (.A(reg_cfg_data[24]), .B(reg_cfg_data[23]), 
            .C(n6317), .Z(n530[24])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i25_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_258 (.A(n530[23]), .B(reg_cfg_data[23]), .C(state[1]), 
            .D(n4), .Z(reg_cfg_data_31__N_1035[23])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_258.init = 16'heca0;
    ORCALUT4 mux_30_i24_3_lut (.A(reg_cfg_data[23]), .B(reg_cfg_data[22]), 
            .C(n6317), .Z(n530[23])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i24_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_259 (.A(n530[22]), .B(reg_cfg_data[22]), .C(state[1]), 
            .D(n4), .Z(reg_cfg_data_31__N_1035[22])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_259.init = 16'heca0;
    ORCALUT4 mux_30_i23_3_lut (.A(reg_cfg_data[22]), .B(reg_cfg_data[21]), 
            .C(n6317), .Z(n530[22])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i23_3_lut.init = 16'hcaca;
    ORCALUT4 i2_4_lut_adj_260 (.A(n1_adj_2623), .B(n2_adj_2624), .C(reg_cfg_data[21]), 
            .D(state_3__N_975), .Z(reg_cfg_data_31__N_1035[21])) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i2_4_lut_adj_260.init = 16'hfeee;
    ORCALUT4 select_2290_Select_21_i1_4_lut (.A(reg_cfg_data[21]), .B(state[1]), 
            .C(reg_cfg_data[20]), .D(n6317), .Z(n1_adj_2623)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam select_2290_Select_21_i1_4_lut.init = 16'hc088;
    ORCALUT4 select_2290_Select_21_i2_4_lut (.A(reg_cfg_data[21]), .B(state[0]), 
            .C(cfgdata[20]), .D(ads_sdi_N_1100), .Z(n2_adj_2624)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam select_2290_Select_21_i2_4_lut.init = 16'hc088;
    ORCALUT4 i2_4_lut_adj_261 (.A(n1_adj_2625), .B(n2_adj_2626), .C(reg_cfg_data[20]), 
            .D(state_3__N_975), .Z(reg_cfg_data_31__N_1035[20])) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i2_4_lut_adj_261.init = 16'hfeee;
    ORCALUT4 select_2290_Select_20_i1_4_lut (.A(reg_cfg_data[20]), .B(state[1]), 
            .C(reg_cfg_data[19]), .D(n6317), .Z(n1_adj_2625)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam select_2290_Select_20_i1_4_lut.init = 16'hc088;
    CCU2B clk_cnt_5254_add_4_9 (.A0(clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13576), .COUT(n13577), .S0(n69[7]), .S1(n69[8]));   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5254_add_4_9.INIT0 = 16'haaa0;
    defparam clk_cnt_5254_add_4_9.INIT1 = 16'haaa0;
    defparam clk_cnt_5254_add_4_9.INJECT1_0 = "NO";
    defparam clk_cnt_5254_add_4_9.INJECT1_1 = "NO";
    ORCALUT4 select_2290_Select_20_i2_4_lut (.A(reg_cfg_data[20]), .B(state[0]), 
            .C(cfgdata[19]), .D(ads_sdi_N_1100), .Z(n2_adj_2626)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam select_2290_Select_20_i2_4_lut.init = 16'hc088;
    CCU2B clk_cnt_5254_add_4_7 (.A0(clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13575), .COUT(n13576), .S0(n69[5]), .S1(n69[6]));   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5254_add_4_7.INIT0 = 16'haaa0;
    defparam clk_cnt_5254_add_4_7.INIT1 = 16'haaa0;
    defparam clk_cnt_5254_add_4_7.INJECT1_0 = "NO";
    defparam clk_cnt_5254_add_4_7.INJECT1_1 = "NO";
    CCU2B clk_cnt_5254_add_4_5 (.A0(clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13574), .COUT(n13575), .S0(n69[3]), .S1(n69[4]));   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5254_add_4_5.INIT0 = 16'haaa0;
    defparam clk_cnt_5254_add_4_5.INIT1 = 16'haaa0;
    defparam clk_cnt_5254_add_4_5.INJECT1_0 = "NO";
    defparam clk_cnt_5254_add_4_5.INJECT1_1 = "NO";
    CCU2B clk_cnt_5254_add_4_3 (.A0(clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13573), .COUT(n13574), .S0(n69[1]), .S1(n69[2]));   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5254_add_4_3.INIT0 = 16'haaa0;
    defparam clk_cnt_5254_add_4_3.INIT1 = 16'haaa0;
    defparam clk_cnt_5254_add_4_3.INJECT1_0 = "NO";
    defparam clk_cnt_5254_add_4_3.INJECT1_1 = "NO";
    FD1S3IX cfgdata_i1 (.D(n15097), .CK(clk1), .CD(n16637), .Q(cfgdata[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=132, LSE_RLINE=145 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(42[10] 58[8])
    defparam cfgdata_i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module dac7731if_U1
//

module dac7731if_U1 (clk1, xdac_ldac_c, xdac_sck_c_1, \xdac_data[1] , 
            n17022, xdac_sdi_c_15, n17031, \xdac_data[5] , \xdac_data[4] , 
            \xdac_data[3] , \xdac_data[2] , \xdac_data[0] , \xdac_data[14] , 
            \xdac_data[13] , \xdac_data[12] , \xdac_data[11] , \xdac_data[10] , 
            \xdac_data[9] , \xdac_data[8] , \xdac_data[7] , \xdac_data[6] , 
            xdac_cs_c_0) /* synthesis syn_module_defined=1 */ ;
    input clk1;
    output xdac_ldac_c;
    output xdac_sck_c_1;
    input \xdac_data[1] ;
    input n17022;
    output xdac_sdi_c_15;
    input n17031;
    input \xdac_data[5] ;
    input \xdac_data[4] ;
    input \xdac_data[3] ;
    input \xdac_data[2] ;
    input \xdac_data[0] ;
    input \xdac_data[14] ;
    input \xdac_data[13] ;
    input \xdac_data[12] ;
    input \xdac_data[11] ;
    input \xdac_data[10] ;
    input \xdac_data[9] ;
    input \xdac_data[8] ;
    input \xdac_data[7] ;
    input \xdac_data[6] ;
    output xdac_cs_c_0;
    
    wire clk1 /* synthesis SET_AS_NETWORK=clk1, is_clock=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(65[6:10])
    wire [15:0]reg_data;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(24[12:20])
    
    wire clk1_enable_86, bit_cnt_3__N_1117, n6333, dac_lr_N_1161;
    wire [3:0]bit_cnt;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(22[12:19])
    
    wire n13957;
    wire [1:0]refclk_cnt;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(23[12:22])
    
    wire n1;
    wire [3:0]n21;
    
    wire n16633, n12212, n6348, n6334;
    wire [1:0]n13;
    wire [2:0]reg_csn;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(21[12:19])
    
    wire n6347, n6346, n6345, n6344, n6343, n6342, n6341, n6340, 
        n6339, n6338, n6337, n6336, n6335, clk1_enable_145;
    
    FD1P3DX reg_data_i0_i0 (.D(n6333), .SP(clk1_enable_86), .CK(clk1), 
            .CD(bit_cnt_3__N_1117), .Q(reg_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=167, LSE_RLINE=179 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam reg_data_i0_i0.GSR = "DISABLED";
    FD1S3BX reg_lr_42 (.D(dac_lr_N_1161), .CK(clk1), .PD(bit_cnt_3__N_1117), 
            .Q(xdac_ldac_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=167, LSE_RLINE=179 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam reg_lr_42.GSR = "DISABLED";
    FD1S3DX bit_cnt_5257__i0 (.D(n13957), .CK(clk1), .CD(bit_cnt_3__N_1117), 
            .Q(bit_cnt[0]));   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(63[28:39])
    defparam bit_cnt_5257__i0.GSR = "DISABLED";
    FD1S3AX refclk_cnt_5258__i0 (.D(n1), .CK(clk1), .Q(refclk_cnt[0]));   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(32[23:37])
    defparam refclk_cnt_5258__i0.GSR = "ENABLED";
    ORCALUT4 i12860_2_lut_rep_221 (.A(refclk_cnt[0]), .B(xdac_sck_c_1), 
            .Z(clk1_enable_86)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(62[17:32])
    defparam i12860_2_lut_rep_221.init = 16'h2222;
    ORCALUT4 i1_2_lut_3_lut (.A(refclk_cnt[0]), .B(xdac_sck_c_1), .C(bit_cnt[0]), 
            .Z(n13957)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (C)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(62[17:32])
    defparam i1_2_lut_3_lut.init = 16'hd2d2;
    ORCALUT4 i10231_2_lut_3_lut_4_lut (.A(refclk_cnt[0]), .B(xdac_sck_c_1), 
            .C(bit_cnt[1]), .D(bit_cnt[0]), .Z(n21[1])) /* synthesis lut_function=(A (B (C)+!B !(C (D)+!C !(D)))+!A (C)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(62[17:32])
    defparam i10231_2_lut_3_lut_4_lut.init = 16'hd2f0;
    ORCALUT4 i10225_2_lut_rep_192_3_lut (.A(refclk_cnt[0]), .B(xdac_sck_c_1), 
            .C(bit_cnt[0]), .Z(n16633)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(62[17:32])
    defparam i10225_2_lut_rep_192_3_lut.init = 16'h2020;
    ORCALUT4 i8996_2_lut_3_lut_4_lut (.A(refclk_cnt[0]), .B(xdac_sck_c_1), 
            .C(reg_data[14]), .D(n12212), .Z(n6348)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(62[17:32])
    defparam i8996_2_lut_3_lut_4_lut.init = 16'h0020;
    ORCALUT4 mux_4335_i2_3_lut_4_lut (.A(n12212), .B(clk1_enable_86), .C(reg_data[0]), 
            .D(\xdac_data[1] ), .Z(n6334)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_4335_i2_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i10245_3_lut_4_lut (.A(bit_cnt[1]), .B(n16633), .C(bit_cnt[2]), 
            .D(bit_cnt[3]), .Z(n21[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(63[28:39])
    defparam i10245_3_lut_4_lut.init = 16'h7f80;
    ORCALUT4 i5627_1_lut (.A(refclk_cnt[0]), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(42[45:62])
    defparam i5627_1_lut.init = 16'h5555;
    ORCALUT4 i12899_3_lut (.A(xdac_sck_c_1), .B(refclk_cnt[0]), .C(n12212), 
            .Z(dac_lr_N_1161)) /* synthesis lut_function=(!(A (B (C)))) */ ;
    defparam i12899_3_lut.init = 16'h7f7f;
    FD1S3AX refclk_cnt_5258__i1 (.D(n13[1]), .CK(clk1), .Q(xdac_sck_c_1));   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(32[23:37])
    defparam refclk_cnt_5258__i1.GSR = "ENABLED";
    FD1S3DX bit_cnt_5257__i3 (.D(n21[3]), .CK(clk1), .CD(bit_cnt_3__N_1117), 
            .Q(bit_cnt[3]));   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(63[28:39])
    defparam bit_cnt_5257__i3.GSR = "DISABLED";
    FD1S3DX bit_cnt_5257__i2 (.D(n21[2]), .CK(clk1), .CD(bit_cnt_3__N_1117), 
            .Q(bit_cnt[2]));   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(63[28:39])
    defparam bit_cnt_5257__i2.GSR = "DISABLED";
    FD1S3DX bit_cnt_5257__i1 (.D(n21[1]), .CK(clk1), .CD(bit_cnt_3__N_1117), 
            .Q(bit_cnt[1]));   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(63[28:39])
    defparam bit_cnt_5257__i1.GSR = "DISABLED";
    FD1S3AY reg_csn__i2 (.D(n17022), .CK(clk1), .Q(reg_csn[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=167, LSE_RLINE=179 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(41[10] 43[8])
    defparam reg_csn__i2.GSR = "ENABLED";
    ORCALUT4 i10238_2_lut_3_lut_4_lut (.A(clk1_enable_86), .B(bit_cnt[0]), 
            .C(bit_cnt[2]), .D(bit_cnt[1]), .Z(n21[2])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(63[28:39])
    defparam i10238_2_lut_3_lut_4_lut.init = 16'h78f0;
    FD1P3BX reg_data_i0_i15 (.D(n6348), .SP(clk1_enable_86), .CK(clk1), 
            .PD(bit_cnt_3__N_1117), .Q(xdac_sdi_c_15)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=167, LSE_RLINE=179 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam reg_data_i0_i15.GSR = "DISABLED";
    FD1P3DX reg_data_i0_i14 (.D(n6347), .SP(clk1_enable_86), .CK(clk1), 
            .CD(bit_cnt_3__N_1117), .Q(reg_data[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=167, LSE_RLINE=179 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam reg_data_i0_i14.GSR = "DISABLED";
    FD1P3DX reg_data_i0_i13 (.D(n6346), .SP(clk1_enable_86), .CK(clk1), 
            .CD(bit_cnt_3__N_1117), .Q(reg_data[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=167, LSE_RLINE=179 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam reg_data_i0_i13.GSR = "DISABLED";
    FD1P3DX reg_data_i0_i12 (.D(n6345), .SP(clk1_enable_86), .CK(clk1), 
            .CD(bit_cnt_3__N_1117), .Q(reg_data[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=167, LSE_RLINE=179 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam reg_data_i0_i12.GSR = "DISABLED";
    FD1P3DX reg_data_i0_i11 (.D(n6344), .SP(clk1_enable_86), .CK(clk1), 
            .CD(bit_cnt_3__N_1117), .Q(reg_data[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=167, LSE_RLINE=179 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam reg_data_i0_i11.GSR = "DISABLED";
    FD1P3DX reg_data_i0_i10 (.D(n6343), .SP(clk1_enable_86), .CK(clk1), 
            .CD(bit_cnt_3__N_1117), .Q(reg_data[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=167, LSE_RLINE=179 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam reg_data_i0_i10.GSR = "DISABLED";
    FD1P3DX reg_data_i0_i9 (.D(n6342), .SP(clk1_enable_86), .CK(clk1), 
            .CD(bit_cnt_3__N_1117), .Q(reg_data[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=167, LSE_RLINE=179 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam reg_data_i0_i9.GSR = "DISABLED";
    FD1P3DX reg_data_i0_i8 (.D(n6341), .SP(clk1_enable_86), .CK(clk1), 
            .CD(bit_cnt_3__N_1117), .Q(reg_data[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=167, LSE_RLINE=179 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam reg_data_i0_i8.GSR = "DISABLED";
    FD1P3DX reg_data_i0_i7 (.D(n6340), .SP(clk1_enable_86), .CK(clk1), 
            .CD(bit_cnt_3__N_1117), .Q(reg_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=167, LSE_RLINE=179 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam reg_data_i0_i7.GSR = "DISABLED";
    FD1P3DX reg_data_i0_i6 (.D(n6339), .SP(clk1_enable_86), .CK(clk1), 
            .CD(bit_cnt_3__N_1117), .Q(reg_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=167, LSE_RLINE=179 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam reg_data_i0_i6.GSR = "DISABLED";
    FD1P3DX reg_data_i0_i5 (.D(n6338), .SP(clk1_enable_86), .CK(clk1), 
            .CD(bit_cnt_3__N_1117), .Q(reg_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=167, LSE_RLINE=179 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam reg_data_i0_i5.GSR = "DISABLED";
    FD1P3DX reg_data_i0_i4 (.D(n6337), .SP(clk1_enable_86), .CK(clk1), 
            .CD(bit_cnt_3__N_1117), .Q(reg_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=167, LSE_RLINE=179 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam reg_data_i0_i4.GSR = "DISABLED";
    FD1P3DX reg_data_i0_i3 (.D(n6336), .SP(clk1_enable_86), .CK(clk1), 
            .CD(bit_cnt_3__N_1117), .Q(reg_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=167, LSE_RLINE=179 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam reg_data_i0_i3.GSR = "DISABLED";
    FD1P3DX reg_data_i0_i2 (.D(n6335), .SP(clk1_enable_86), .CK(clk1), 
            .CD(bit_cnt_3__N_1117), .Q(reg_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=167, LSE_RLINE=179 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam reg_data_i0_i2.GSR = "DISABLED";
    FD1P3DX reg_data_i0_i1 (.D(n6334), .SP(clk1_enable_86), .CK(clk1), 
            .CD(bit_cnt_3__N_1117), .Q(reg_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=167, LSE_RLINE=179 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam reg_data_i0_i1.GSR = "DISABLED";
    ORCALUT4 sys_rstn_N_1112_I_0_2_lut (.A(n17031), .B(reg_csn[2]), .Z(bit_cnt_3__N_1117)) /* synthesis lut_function=((B)+!A) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(48[9:34])
    defparam sys_rstn_N_1112_I_0_2_lut.init = 16'hdddd;
    ORCALUT4 i3_4_lut (.A(bit_cnt[0]), .B(bit_cnt[3]), .C(bit_cnt[1]), 
            .D(bit_cnt[2]), .Z(n12212)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    ORCALUT4 mux_4335_i6_3_lut_4_lut (.A(n12212), .B(clk1_enable_86), .C(reg_data[4]), 
            .D(\xdac_data[5] ), .Z(n6338)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_4335_i6_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 mux_4335_i5_3_lut_4_lut (.A(n12212), .B(clk1_enable_86), .C(reg_data[3]), 
            .D(\xdac_data[4] ), .Z(n6337)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_4335_i5_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 mux_4335_i4_3_lut_4_lut (.A(n12212), .B(clk1_enable_86), .C(reg_data[2]), 
            .D(\xdac_data[3] ), .Z(n6336)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_4335_i4_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 mux_4335_i3_3_lut_4_lut (.A(n12212), .B(clk1_enable_86), .C(reg_data[1]), 
            .D(\xdac_data[2] ), .Z(n6335)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_4335_i3_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i10260_2_lut (.A(xdac_sck_c_1), .B(refclk_cnt[0]), .Z(n13[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(32[23:37])
    defparam i10260_2_lut.init = 16'h6666;
    ORCALUT4 i8974_2_lut (.A(refclk_cnt[0]), .B(xdac_sck_c_1), .Z(clk1_enable_145)) /* synthesis lut_function=(A (B)) */ ;
    defparam i8974_2_lut.init = 16'h8888;
    ORCALUT4 mux_4335_i1_3_lut_4_lut (.A(n12212), .B(clk1_enable_86), .C(xdac_sdi_c_15), 
            .D(\xdac_data[0] ), .Z(n6333)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_4335_i1_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 mux_4335_i15_3_lut_4_lut (.A(n12212), .B(clk1_enable_86), .C(reg_data[13]), 
            .D(\xdac_data[14] ), .Z(n6347)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_4335_i15_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 mux_4335_i14_3_lut_4_lut (.A(n12212), .B(clk1_enable_86), .C(reg_data[12]), 
            .D(\xdac_data[13] ), .Z(n6346)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_4335_i14_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 mux_4335_i13_3_lut_4_lut (.A(n12212), .B(clk1_enable_86), .C(reg_data[11]), 
            .D(\xdac_data[12] ), .Z(n6345)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_4335_i13_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 mux_4335_i12_3_lut_4_lut (.A(n12212), .B(clk1_enable_86), .C(reg_data[10]), 
            .D(\xdac_data[11] ), .Z(n6344)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_4335_i12_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 mux_4335_i11_3_lut_4_lut (.A(n12212), .B(clk1_enable_86), .C(reg_data[9]), 
            .D(\xdac_data[10] ), .Z(n6343)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_4335_i11_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 mux_4335_i10_3_lut_4_lut (.A(n12212), .B(clk1_enable_86), .C(reg_data[8]), 
            .D(\xdac_data[9] ), .Z(n6342)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_4335_i10_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 mux_4335_i9_3_lut_4_lut (.A(n12212), .B(clk1_enable_86), .C(reg_data[7]), 
            .D(\xdac_data[8] ), .Z(n6341)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_4335_i9_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 mux_4335_i8_3_lut_4_lut (.A(n12212), .B(clk1_enable_86), .C(reg_data[6]), 
            .D(\xdac_data[7] ), .Z(n6340)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_4335_i8_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 mux_4335_i7_3_lut_4_lut (.A(n12212), .B(clk1_enable_86), .C(reg_data[5]), 
            .D(\xdac_data[6] ), .Z(n6339)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_4335_i7_3_lut_4_lut.init = 16'hfb40;
    FD1P3AY reg_csn__i1 (.D(n17022), .SP(clk1_enable_145), .CK(clk1), 
            .Q(xdac_cs_c_0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=167, LSE_RLINE=179 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(41[10] 43[8])
    defparam reg_csn__i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module pos_pid
//

module pos_pid (GND_net, VCC_net, \xdac_data[11] , \xdac_data[12] , 
            \xdac_data[9] , \xdac_data[10] , \xdac_data[7] , \xdac_data[8] , 
            \xdac_data[5] , \xdac_data[6] , \xdac_data[3] , \xdac_data[4] , 
            \xdac_data[1] , \xdac_data[2] , \xdac_data[0] , \xdac_data[13] , 
            \xdac_data[14] ) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input VCC_net;
    output \xdac_data[11] ;
    output \xdac_data[12] ;
    output \xdac_data[9] ;
    output \xdac_data[10] ;
    output \xdac_data[7] ;
    output \xdac_data[8] ;
    output \xdac_data[5] ;
    output \xdac_data[6] ;
    output \xdac_data[3] ;
    output \xdac_data[4] ;
    output \xdac_data[1] ;
    output \xdac_data[2] ;
    output \xdac_data[0] ;
    output \xdac_data[13] ;
    output \xdac_data[14] ;
    
    
    wire n13673;
    wire [15:0]sum2;   // c:/#work/galvano/design/app/fpga/implementation/source/pos_pid.v(50[13:17])
    wire [31:0]mp_delta_e1;   // c:/#work/galvano/design/app/fpga/implementation/source/pos_pid.v(45[13:24])
    
    wire n13674, n13672, n13671, n13670, n13669, n13668;
    wire [31:0]mi_e;   // c:/#work/galvano/design/app/fpga/implementation/source/pos_pid.v(46[13:17])
    wire [31:0]md_delta_e12;   // c:/#work/galvano/design/app/fpga/implementation/source/pos_pid.v(47[13:25])
    
    wire n13612, n13611, n13610, n13609, n13608;
    
    CCU2B add_5244_add_4_13 (.A0(sum2[11]), .B0(mp_delta_e1[27]), .C0(GND_net), 
          .D0(VCC_net), .A1(mp_delta_e1[28]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13673), .COUT(n13674), .S0(\xdac_data[11] ), 
          .S1(\xdac_data[12] ));   // c:/#work/galvano/design/app/fpga/implementation/source/pos_pid.v(68[22:33])
    defparam add_5244_add_4_13.INIT0 = 16'h666a;
    defparam add_5244_add_4_13.INIT1 = 16'haaa0;
    defparam add_5244_add_4_13.INJECT1_0 = "NO";
    defparam add_5244_add_4_13.INJECT1_1 = "NO";
    CCU2B add_5244_add_4_11 (.A0(sum2[9]), .B0(mp_delta_e1[25]), .C0(GND_net), 
          .D0(VCC_net), .A1(sum2[10]), .B1(mp_delta_e1[26]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13672), .COUT(n13673), .S0(\xdac_data[9] ), 
          .S1(\xdac_data[10] ));   // c:/#work/galvano/design/app/fpga/implementation/source/pos_pid.v(68[22:33])
    defparam add_5244_add_4_11.INIT0 = 16'h666a;
    defparam add_5244_add_4_11.INIT1 = 16'h666a;
    defparam add_5244_add_4_11.INJECT1_0 = "NO";
    defparam add_5244_add_4_11.INJECT1_1 = "NO";
    CCU2B add_5244_add_4_9 (.A0(sum2[7]), .B0(mp_delta_e1[23]), .C0(GND_net), 
          .D0(VCC_net), .A1(sum2[8]), .B1(mp_delta_e1[24]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13671), .COUT(n13672), .S0(\xdac_data[7] ), 
          .S1(\xdac_data[8] ));   // c:/#work/galvano/design/app/fpga/implementation/source/pos_pid.v(68[22:33])
    defparam add_5244_add_4_9.INIT0 = 16'h666a;
    defparam add_5244_add_4_9.INIT1 = 16'h666a;
    defparam add_5244_add_4_9.INJECT1_0 = "NO";
    defparam add_5244_add_4_9.INJECT1_1 = "NO";
    CCU2B add_5244_add_4_7 (.A0(sum2[5]), .B0(mp_delta_e1[21]), .C0(GND_net), 
          .D0(VCC_net), .A1(sum2[6]), .B1(mp_delta_e1[22]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13670), .COUT(n13671), .S0(\xdac_data[5] ), 
          .S1(\xdac_data[6] ));   // c:/#work/galvano/design/app/fpga/implementation/source/pos_pid.v(68[22:33])
    defparam add_5244_add_4_7.INIT0 = 16'h666a;
    defparam add_5244_add_4_7.INIT1 = 16'h666a;
    defparam add_5244_add_4_7.INJECT1_0 = "NO";
    defparam add_5244_add_4_7.INJECT1_1 = "NO";
    CCU2B add_5244_add_4_5 (.A0(sum2[3]), .B0(mp_delta_e1[19]), .C0(GND_net), 
          .D0(VCC_net), .A1(sum2[4]), .B1(mp_delta_e1[20]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13669), .COUT(n13670), .S0(\xdac_data[3] ), 
          .S1(\xdac_data[4] ));   // c:/#work/galvano/design/app/fpga/implementation/source/pos_pid.v(68[22:33])
    defparam add_5244_add_4_5.INIT0 = 16'h666a;
    defparam add_5244_add_4_5.INIT1 = 16'h666a;
    defparam add_5244_add_4_5.INJECT1_0 = "NO";
    defparam add_5244_add_4_5.INJECT1_1 = "NO";
    CCU2B add_5244_add_4_3 (.A0(sum2[1]), .B0(mp_delta_e1[17]), .C0(GND_net), 
          .D0(VCC_net), .A1(sum2[2]), .B1(mp_delta_e1[18]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13668), .COUT(n13669), .S0(\xdac_data[1] ), 
          .S1(\xdac_data[2] ));   // c:/#work/galvano/design/app/fpga/implementation/source/pos_pid.v(68[22:33])
    defparam add_5244_add_4_3.INIT0 = 16'h666a;
    defparam add_5244_add_4_3.INIT1 = 16'h666a;
    defparam add_5244_add_4_3.INJECT1_0 = "NO";
    defparam add_5244_add_4_3.INJECT1_1 = "NO";
    CCU2B add_5244_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(mi_e[16]), .B1(md_delta_e12[16]), .C1(mp_delta_e1[16]), 
          .D1(VCC_net), .COUT(n13668), .S1(\xdac_data[0] ));   // c:/#work/galvano/design/app/fpga/implementation/source/pos_pid.v(68[22:33])
    defparam add_5244_add_4_1.INIT0 = 16'h0000;
    defparam add_5244_add_4_1.INIT1 = 16'h9696;
    defparam add_5244_add_4_1.INJECT1_0 = "NO";
    defparam add_5244_add_4_1.INJECT1_1 = "NO";
    CCU2B add_4652_add_4_12 (.A0(mi_e[26]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13612), .S0(sum2[10]), .S1(sum2[11]));   // c:/#work/galvano/design/app/fpga/implementation/source/pos_pid.v(67[15:48])
    defparam add_4652_add_4_12.INIT0 = 16'haaaa;
    defparam add_4652_add_4_12.INIT1 = 16'h0000;
    defparam add_4652_add_4_12.INJECT1_0 = "NO";
    defparam add_4652_add_4_12.INJECT1_1 = "NO";
    CCU2B add_4652_add_4_10 (.A0(mi_e[24]), .B0(md_delta_e12[24]), .C0(GND_net), 
          .D0(VCC_net), .A1(mi_e[25]), .B1(md_delta_e12[25]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13611), .COUT(n13612), .S0(sum2[8]), .S1(sum2[9]));   // c:/#work/galvano/design/app/fpga/implementation/source/pos_pid.v(67[15:48])
    defparam add_4652_add_4_10.INIT0 = 16'h666a;
    defparam add_4652_add_4_10.INIT1 = 16'h666a;
    defparam add_4652_add_4_10.INJECT1_0 = "NO";
    defparam add_4652_add_4_10.INJECT1_1 = "NO";
    CCU2B add_4652_add_4_8 (.A0(mi_e[22]), .B0(md_delta_e12[22]), .C0(GND_net), 
          .D0(VCC_net), .A1(mi_e[23]), .B1(md_delta_e12[23]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13610), .COUT(n13611), .S0(sum2[6]), .S1(sum2[7]));   // c:/#work/galvano/design/app/fpga/implementation/source/pos_pid.v(67[15:48])
    defparam add_4652_add_4_8.INIT0 = 16'h666a;
    defparam add_4652_add_4_8.INIT1 = 16'h666a;
    defparam add_4652_add_4_8.INJECT1_0 = "NO";
    defparam add_4652_add_4_8.INJECT1_1 = "NO";
    CCU2B add_4652_add_4_6 (.A0(mi_e[20]), .B0(md_delta_e12[20]), .C0(GND_net), 
          .D0(VCC_net), .A1(mi_e[21]), .B1(md_delta_e12[21]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13609), .COUT(n13610), .S0(sum2[4]), .S1(sum2[5]));   // c:/#work/galvano/design/app/fpga/implementation/source/pos_pid.v(67[15:48])
    defparam add_4652_add_4_6.INIT0 = 16'h666a;
    defparam add_4652_add_4_6.INIT1 = 16'h666a;
    defparam add_4652_add_4_6.INJECT1_0 = "NO";
    defparam add_4652_add_4_6.INJECT1_1 = "NO";
    CCU2B add_4652_add_4_4 (.A0(mi_e[18]), .B0(md_delta_e12[18]), .C0(GND_net), 
          .D0(VCC_net), .A1(mi_e[19]), .B1(md_delta_e12[19]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13608), .COUT(n13609), .S0(sum2[2]), .S1(sum2[3]));   // c:/#work/galvano/design/app/fpga/implementation/source/pos_pid.v(67[15:48])
    defparam add_4652_add_4_4.INIT0 = 16'h666a;
    defparam add_4652_add_4_4.INIT1 = 16'h666a;
    defparam add_4652_add_4_4.INJECT1_0 = "NO";
    defparam add_4652_add_4_4.INJECT1_1 = "NO";
    CCU2B add_4652_add_4_2 (.A0(mi_e[16]), .B0(md_delta_e12[16]), .C0(GND_net), 
          .D0(VCC_net), .A1(mi_e[17]), .B1(md_delta_e12[17]), .C1(GND_net), 
          .D1(VCC_net), .COUT(n13608), .S1(sum2[1]));   // c:/#work/galvano/design/app/fpga/implementation/source/pos_pid.v(67[15:48])
    defparam add_4652_add_4_2.INIT0 = 16'h0008;
    defparam add_4652_add_4_2.INIT1 = 16'h666a;
    defparam add_4652_add_4_2.INJECT1_0 = "NO";
    defparam add_4652_add_4_2.INJECT1_1 = "NO";
    CCU2B add_5244_add_4_15 (.A0(mp_delta_e1[29]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13674), .S0(\xdac_data[13] ), .S1(\xdac_data[14] ));   // c:/#work/galvano/design/app/fpga/implementation/source/pos_pid.v(68[22:33])
    defparam add_5244_add_4_15.INIT0 = 16'haaa0;
    defparam add_5244_add_4_15.INIT1 = 16'h0000;
    defparam add_5244_add_4_15.INJECT1_0 = "NO";
    defparam add_5244_add_4_15.INJECT1_1 = "NO";
    MULT18X18B mult_137 (.P17(md_delta_e12[25]), .P16(md_delta_e12[24]), 
            .P15(md_delta_e12[23]), .P14(md_delta_e12[22]), .P13(md_delta_e12[21]), 
            .P12(md_delta_e12[20]), .P11(md_delta_e12[19]), .P10(md_delta_e12[18]), 
            .P9(md_delta_e12[17]), .P8(md_delta_e12[16]), .A17(GND_net), 
            .A16(GND_net), .A15(GND_net), .A14(GND_net), .A13(GND_net), 
            .A12(GND_net), .A11(GND_net), .A10(GND_net), .A9(GND_net), 
            .A8(GND_net), .A7(GND_net), .A6(GND_net), .A5(GND_net), 
            .A4(GND_net), .A3(GND_net), .A2(GND_net), .A1(VCC_net), 
            .A0(VCC_net), .B17(GND_net), .B16(GND_net), .B15(GND_net), 
            .B14(GND_net), .B13(GND_net), .B12(GND_net), .B11(GND_net), 
            .B10(GND_net), .B9(GND_net), .B8(GND_net), .B7(GND_net), 
            .B6(GND_net), .B5(GND_net), .B4(GND_net), .B3(GND_net), 
            .B2(GND_net), .B1(GND_net), .B0(GND_net), .SRIA17(GND_net), 
            .SRIA16(GND_net), .SRIA15(GND_net), .SRIA14(GND_net), .SRIA13(GND_net), 
            .SRIA12(GND_net), .SRIA11(GND_net), .SRIA10(GND_net), .SRIA9(GND_net), 
            .SRIA8(GND_net), .SRIA7(GND_net), .SRIA6(GND_net), .SRIA5(GND_net), 
            .SRIA4(GND_net), .SRIA3(GND_net), .SRIA2(GND_net), .SRIA1(GND_net), 
            .SRIA0(GND_net), .SRIB17(GND_net), .SRIB16(GND_net), .SRIB15(GND_net), 
            .SRIB14(GND_net), .SRIB13(GND_net), .SRIB12(GND_net), .SRIB11(GND_net), 
            .SRIB10(GND_net), .SRIB9(GND_net), .SRIB8(GND_net), .SRIB7(GND_net), 
            .SRIB6(GND_net), .SRIB5(GND_net), .SRIB4(GND_net), .SRIB3(GND_net), 
            .SRIB2(GND_net), .SRIB1(GND_net), .SRIB0(GND_net), .SIGNEDA(GND_net), 
            .SIGNEDB(GND_net), .CE0(VCC_net), .CE1(GND_net), .CE2(GND_net), 
            .CE3(GND_net), .CLK0(GND_net), .CLK1(GND_net), .CLK2(GND_net), 
            .CLK3(GND_net), .RST0(GND_net), .RST1(GND_net), .RST2(GND_net), 
            .RST3(GND_net), .SOURCEA(GND_net), .SOURCEB(GND_net));   // c:/#work/galvano/design/app/fpga/implementation/source/pos_pid.v(64[23:30])
    defparam mult_137.REG_INPUTA_CLK = "NONE";
    defparam mult_137.REG_INPUTA_CE = "CE0";
    defparam mult_137.REG_INPUTA_RST = "RST0";
    defparam mult_137.REG_INPUTB_CLK = "NONE";
    defparam mult_137.REG_INPUTB_CE = "CE0";
    defparam mult_137.REG_INPUTB_RST = "RST0";
    defparam mult_137.REG_PIPELINE_CLK = "NONE";
    defparam mult_137.REG_PIPELINE_CE = "CE0";
    defparam mult_137.REG_PIPELINE_RST = "RST0";
    defparam mult_137.REG_OUTPUT_CLK = "NONE";
    defparam mult_137.REG_OUTPUT_CE = "CE0";
    defparam mult_137.REG_OUTPUT_RST = "RST0";
    defparam mult_137.REG_SIGNEDA_CLK = "NONE";
    defparam mult_137.REG_SIGNEDA_CE = "CE0";
    defparam mult_137.REG_SIGNEDA_RST = "RST0";
    defparam mult_137.REG_SIGNEDB_CLK = "NONE";
    defparam mult_137.REG_SIGNEDB_CE = "CE0";
    defparam mult_137.REG_SIGNEDB_RST = "RST0";
    defparam mult_137.GSR = "DISABLED";
    MULT18X18B mult_136 (.P18(mi_e[26]), .P17(mi_e[25]), .P16(mi_e[24]), 
            .P15(mi_e[23]), .P14(mi_e[22]), .P13(mi_e[21]), .P12(mi_e[20]), 
            .P11(mi_e[19]), .P10(mi_e[18]), .P9(mi_e[17]), .P8(mi_e[16]), 
            .A17(GND_net), .A16(GND_net), .A15(GND_net), .A14(GND_net), 
            .A13(GND_net), .A12(GND_net), .A11(GND_net), .A10(GND_net), 
            .A9(GND_net), .A8(GND_net), .A7(GND_net), .A6(GND_net), 
            .A5(GND_net), .A4(GND_net), .A3(GND_net), .A2(VCC_net), 
            .A1(GND_net), .A0(VCC_net), .B17(GND_net), .B16(GND_net), 
            .B15(GND_net), .B14(GND_net), .B13(GND_net), .B12(GND_net), 
            .B11(GND_net), .B10(GND_net), .B9(GND_net), .B8(GND_net), 
            .B7(GND_net), .B6(GND_net), .B5(GND_net), .B4(GND_net), 
            .B3(GND_net), .B2(GND_net), .B1(GND_net), .B0(GND_net), 
            .SRIA17(GND_net), .SRIA16(GND_net), .SRIA15(GND_net), .SRIA14(GND_net), 
            .SRIA13(GND_net), .SRIA12(GND_net), .SRIA11(GND_net), .SRIA10(GND_net), 
            .SRIA9(GND_net), .SRIA8(GND_net), .SRIA7(GND_net), .SRIA6(GND_net), 
            .SRIA5(GND_net), .SRIA4(GND_net), .SRIA3(GND_net), .SRIA2(GND_net), 
            .SRIA1(GND_net), .SRIA0(GND_net), .SRIB17(GND_net), .SRIB16(GND_net), 
            .SRIB15(GND_net), .SRIB14(GND_net), .SRIB13(GND_net), .SRIB12(GND_net), 
            .SRIB11(GND_net), .SRIB10(GND_net), .SRIB9(GND_net), .SRIB8(GND_net), 
            .SRIB7(GND_net), .SRIB6(GND_net), .SRIB5(GND_net), .SRIB4(GND_net), 
            .SRIB3(GND_net), .SRIB2(GND_net), .SRIB1(GND_net), .SRIB0(GND_net), 
            .SIGNEDA(GND_net), .SIGNEDB(GND_net), .CE0(VCC_net), .CE1(GND_net), 
            .CE2(GND_net), .CE3(GND_net), .CLK0(GND_net), .CLK1(GND_net), 
            .CLK2(GND_net), .CLK3(GND_net), .RST0(GND_net), .RST1(GND_net), 
            .RST2(GND_net), .RST3(GND_net), .SOURCEA(GND_net), .SOURCEB(GND_net));   // c:/#work/galvano/design/app/fpga/implementation/source/pos_pid.v(63[23:30])
    defparam mult_136.REG_INPUTA_CLK = "NONE";
    defparam mult_136.REG_INPUTA_CE = "CE0";
    defparam mult_136.REG_INPUTA_RST = "RST0";
    defparam mult_136.REG_INPUTB_CLK = "NONE";
    defparam mult_136.REG_INPUTB_CE = "CE0";
    defparam mult_136.REG_INPUTB_RST = "RST0";
    defparam mult_136.REG_PIPELINE_CLK = "NONE";
    defparam mult_136.REG_PIPELINE_CE = "CE0";
    defparam mult_136.REG_PIPELINE_RST = "RST0";
    defparam mult_136.REG_OUTPUT_CLK = "NONE";
    defparam mult_136.REG_OUTPUT_CE = "CE0";
    defparam mult_136.REG_OUTPUT_RST = "RST0";
    defparam mult_136.REG_SIGNEDA_CLK = "NONE";
    defparam mult_136.REG_SIGNEDA_CE = "CE0";
    defparam mult_136.REG_SIGNEDA_RST = "RST0";
    defparam mult_136.REG_SIGNEDB_CLK = "NONE";
    defparam mult_136.REG_SIGNEDB_CE = "CE0";
    defparam mult_136.REG_SIGNEDB_RST = "RST0";
    defparam mult_136.GSR = "DISABLED";
    MULT18X18B mult_138 (.P20(mp_delta_e1[29]), .P19(mp_delta_e1[28]), .P18(mp_delta_e1[27]), 
            .P17(mp_delta_e1[26]), .P16(mp_delta_e1[25]), .P15(mp_delta_e1[24]), 
            .P14(mp_delta_e1[23]), .P13(mp_delta_e1[22]), .P12(mp_delta_e1[21]), 
            .P11(mp_delta_e1[20]), .P10(mp_delta_e1[19]), .P9(mp_delta_e1[18]), 
            .P8(mp_delta_e1[17]), .P7(mp_delta_e1[16]), .A17(GND_net), 
            .A16(GND_net), .A15(GND_net), .A14(GND_net), .A13(GND_net), 
            .A12(GND_net), .A11(GND_net), .A10(GND_net), .A9(GND_net), 
            .A8(GND_net), .A7(GND_net), .A6(GND_net), .A5(GND_net), 
            .A4(VCC_net), .A3(VCC_net), .A2(GND_net), .A1(GND_net), 
            .A0(VCC_net), .B17(GND_net), .B16(GND_net), .B15(GND_net), 
            .B14(GND_net), .B13(GND_net), .B12(GND_net), .B11(GND_net), 
            .B10(GND_net), .B9(GND_net), .B8(GND_net), .B7(GND_net), 
            .B6(GND_net), .B5(GND_net), .B4(GND_net), .B3(GND_net), 
            .B2(GND_net), .B1(GND_net), .B0(GND_net), .SRIA17(GND_net), 
            .SRIA16(GND_net), .SRIA15(GND_net), .SRIA14(GND_net), .SRIA13(GND_net), 
            .SRIA12(GND_net), .SRIA11(GND_net), .SRIA10(GND_net), .SRIA9(GND_net), 
            .SRIA8(GND_net), .SRIA7(GND_net), .SRIA6(GND_net), .SRIA5(GND_net), 
            .SRIA4(GND_net), .SRIA3(GND_net), .SRIA2(GND_net), .SRIA1(GND_net), 
            .SRIA0(GND_net), .SRIB17(GND_net), .SRIB16(GND_net), .SRIB15(GND_net), 
            .SRIB14(GND_net), .SRIB13(GND_net), .SRIB12(GND_net), .SRIB11(GND_net), 
            .SRIB10(GND_net), .SRIB9(GND_net), .SRIB8(GND_net), .SRIB7(GND_net), 
            .SRIB6(GND_net), .SRIB5(GND_net), .SRIB4(GND_net), .SRIB3(GND_net), 
            .SRIB2(GND_net), .SRIB1(GND_net), .SRIB0(GND_net), .SIGNEDA(GND_net), 
            .SIGNEDB(GND_net), .CE0(VCC_net), .CE1(GND_net), .CE2(GND_net), 
            .CE3(GND_net), .CLK0(GND_net), .CLK1(GND_net), .CLK2(GND_net), 
            .CLK3(GND_net), .RST0(GND_net), .RST1(GND_net), .RST2(GND_net), 
            .RST3(GND_net), .SOURCEA(GND_net), .SOURCEB(GND_net));   // c:/#work/galvano/design/app/fpga/implementation/source/pos_pid.v(62[23:36])
    defparam mult_138.REG_INPUTA_CLK = "NONE";
    defparam mult_138.REG_INPUTA_CE = "CE0";
    defparam mult_138.REG_INPUTA_RST = "RST0";
    defparam mult_138.REG_INPUTB_CLK = "NONE";
    defparam mult_138.REG_INPUTB_CE = "CE0";
    defparam mult_138.REG_INPUTB_RST = "RST0";
    defparam mult_138.REG_PIPELINE_CLK = "NONE";
    defparam mult_138.REG_PIPELINE_CE = "CE0";
    defparam mult_138.REG_PIPELINE_RST = "RST0";
    defparam mult_138.REG_OUTPUT_CLK = "NONE";
    defparam mult_138.REG_OUTPUT_CE = "CE0";
    defparam mult_138.REG_OUTPUT_RST = "RST0";
    defparam mult_138.REG_SIGNEDA_CLK = "NONE";
    defparam mult_138.REG_SIGNEDA_CE = "CE0";
    defparam mult_138.REG_SIGNEDA_RST = "RST0";
    defparam mult_138.REG_SIGNEDB_CLK = "NONE";
    defparam mult_138.REG_SIGNEDB_CE = "CE0";
    defparam mult_138.REG_SIGNEDB_RST = "RST0";
    defparam mult_138.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module dac7731if
//

module dac7731if (clk1, ydac_ldac_c, ydac_sdi_c_15, ydac_sck_c_1, n17031, 
            n17022, ydac_cs_c_0) /* synthesis syn_module_defined=1 */ ;
    input clk1;
    output ydac_ldac_c;
    output ydac_sdi_c_15;
    output ydac_sck_c_1;
    input n17031;
    input n17022;
    output ydac_cs_c_0;
    
    wire clk1 /* synthesis SET_AS_NETWORK=clk1, is_clock=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(65[6:10])
    
    wire n16679;
    wire [15:0]reg_data;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(24[12:20])
    
    wire n12084;
    wire [15:0]n50;
    
    wire bit_cnt_3__N_1117, dac_lr_N_1161, clk1_enable_143, n10843, 
        n10845, n10847, n10841;
    wire [3:0]bit_cnt;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(22[12:19])
    
    wire n13959;
    wire [1:0]refclk_cnt;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(23[12:22])
    
    wire n1, n16635;
    wire [3:0]n21;
    wire [1:0]n13;
    wire [2:0]reg_csn;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(21[12:19])
    
    wire n10839, n10835, n10831, n10833, n10837, clk1_enable_144;
    
    ORCALUT4 i8919_2_lut_3_lut_4_lut (.A(n16679), .B(clk1), .C(reg_data[10]), 
            .D(n12084), .Z(n50[11])) /* synthesis lut_function=(A (C)+!A !(B ((D)+!C)+!B !(C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam i8919_2_lut_3_lut_4_lut.init = 16'hb0f0;
    FD1S3BX reg_lr_42 (.D(dac_lr_N_1161), .CK(clk1), .PD(bit_cnt_3__N_1117), 
            .Q(ydac_ldac_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=183, LSE_RLINE=195 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam reg_lr_42.GSR = "DISABLED";
    FD1P3DX reg_data__i0 (.D(n50[0]), .SP(clk1_enable_143), .CK(clk1), 
            .CD(bit_cnt_3__N_1117), .Q(reg_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=183, LSE_RLINE=195 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam reg_data__i0.GSR = "DISABLED";
    ORCALUT4 i8876_2_lut_3_lut_4_lut (.A(n16679), .B(clk1), .C(ydac_sdi_c_15), 
            .D(n12084), .Z(n50[0])) /* synthesis lut_function=(A (C)+!A !(B ((D)+!C)+!B !(C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam i8876_2_lut_3_lut_4_lut.init = 16'hb0f0;
    ORCALUT4 i8916_2_lut_3_lut_4_lut (.A(n16679), .B(clk1), .C(reg_data[13]), 
            .D(n12084), .Z(n50[14])) /* synthesis lut_function=(A (C)+!A !(B ((D)+!C)+!B !(C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam i8916_2_lut_3_lut_4_lut.init = 16'hb0f0;
    ORCALUT4 i8915_2_lut_3_lut_4_lut (.A(n16679), .B(clk1), .C(reg_data[14]), 
            .D(n12084), .Z(n50[15])) /* synthesis lut_function=(A (C)+!A !(B ((D)+!C)+!B !(C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam i8915_2_lut_3_lut_4_lut.init = 16'hb0f0;
    ORCALUT4 i8993_2_lut_3_lut_4_lut (.A(n16679), .B(clk1), .C(reg_data[2]), 
            .D(n12084), .Z(n10843)) /* synthesis lut_function=(A (C)+!A !(B ((D)+!C)+!B !(C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam i8993_2_lut_3_lut_4_lut.init = 16'hb0f0;
    ORCALUT4 i8994_2_lut_3_lut_4_lut (.A(n16679), .B(clk1), .C(reg_data[1]), 
            .D(n12084), .Z(n10845)) /* synthesis lut_function=(A (C)+!A !(B ((D)+!C)+!B !(C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam i8994_2_lut_3_lut_4_lut.init = 16'hb0f0;
    ORCALUT4 i8995_2_lut_3_lut_4_lut (.A(n16679), .B(clk1), .C(reg_data[0]), 
            .D(n12084), .Z(n10847)) /* synthesis lut_function=(A (C)+!A !(B ((D)+!C)+!B !(C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam i8995_2_lut_3_lut_4_lut.init = 16'hb0f0;
    ORCALUT4 i8992_2_lut_3_lut_4_lut (.A(n16679), .B(clk1), .C(reg_data[3]), 
            .D(n12084), .Z(n10841)) /* synthesis lut_function=(A (C)+!A !(B ((D)+!C)+!B !(C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam i8992_2_lut_3_lut_4_lut.init = 16'hb0f0;
    ORCALUT4 i8918_2_lut_3_lut_4_lut (.A(n16679), .B(clk1), .C(reg_data[11]), 
            .D(n12084), .Z(n50[12])) /* synthesis lut_function=(A (C)+!A !(B ((D)+!C)+!B !(C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam i8918_2_lut_3_lut_4_lut.init = 16'hb0f0;
    FD1S3DX bit_cnt_5259__i0 (.D(n13959), .CK(clk1), .CD(bit_cnt_3__N_1117), 
            .Q(bit_cnt[0]));   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(63[28:39])
    defparam bit_cnt_5259__i0.GSR = "DISABLED";
    ORCALUT4 i8917_2_lut_3_lut_4_lut (.A(n16679), .B(clk1), .C(reg_data[12]), 
            .D(n12084), .Z(n50[13])) /* synthesis lut_function=(A (C)+!A !(B ((D)+!C)+!B !(C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam i8917_2_lut_3_lut_4_lut.init = 16'hb0f0;
    FD1S3AX refclk_cnt_5260__i0 (.D(n1), .CK(clk1), .Q(refclk_cnt[0]));   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(32[23:37])
    defparam refclk_cnt_5260__i0.GSR = "ENABLED";
    ORCALUT4 equal_104_i3_2_lut_rep_238 (.A(refclk_cnt[0]), .B(ydac_sck_c_1), 
            .Z(n16679)) /* synthesis lut_function=((B)+!A) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(62[17:32])
    defparam equal_104_i3_2_lut_rep_238.init = 16'hdddd;
    ORCALUT4 i4353_2_lut_rep_189_3_lut (.A(refclk_cnt[0]), .B(ydac_sck_c_1), 
            .C(clk1), .Z(clk1_enable_143)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(62[17:32])
    defparam i4353_2_lut_rep_189_3_lut.init = 16'h2020;
    ORCALUT4 i1_2_lut_3_lut (.A(refclk_cnt[0]), .B(ydac_sck_c_1), .C(bit_cnt[0]), 
            .Z(n13959)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (C)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(62[17:32])
    defparam i1_2_lut_3_lut.init = 16'hd2d2;
    ORCALUT4 i10288_3_lut_4_lut (.A(bit_cnt[1]), .B(n16635), .C(bit_cnt[2]), 
            .D(bit_cnt[3]), .Z(n21[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(63[28:39])
    defparam i10288_3_lut_4_lut.init = 16'h7f80;
    ORCALUT4 i10268_2_lut_rep_194_3_lut (.A(refclk_cnt[0]), .B(ydac_sck_c_1), 
            .C(bit_cnt[0]), .Z(n16635)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(62[17:32])
    defparam i10268_2_lut_rep_194_3_lut.init = 16'h2020;
    ORCALUT4 i10274_2_lut_3_lut_4_lut (.A(refclk_cnt[0]), .B(ydac_sck_c_1), 
            .C(bit_cnt[1]), .D(bit_cnt[0]), .Z(n21[1])) /* synthesis lut_function=(A (B (C)+!B !(C (D)+!C !(D)))+!A (C)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(62[17:32])
    defparam i10274_2_lut_3_lut_4_lut.init = 16'hd2f0;
    FD1P3DX reg_data__i1 (.D(n10847), .SP(clk1_enable_143), .CK(clk1), 
            .CD(bit_cnt_3__N_1117), .Q(reg_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=183, LSE_RLINE=195 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam reg_data__i1.GSR = "DISABLED";
    ORCALUT4 i5629_1_lut (.A(refclk_cnt[0]), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(42[45:62])
    defparam i5629_1_lut.init = 16'h5555;
    FD1S3AX refclk_cnt_5260__i1 (.D(n13[1]), .CK(clk1), .Q(ydac_sck_c_1));   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(32[23:37])
    defparam refclk_cnt_5260__i1.GSR = "ENABLED";
    FD1S3DX bit_cnt_5259__i3 (.D(n21[3]), .CK(clk1), .CD(bit_cnt_3__N_1117), 
            .Q(bit_cnt[3]));   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(63[28:39])
    defparam bit_cnt_5259__i3.GSR = "DISABLED";
    FD1S3DX bit_cnt_5259__i2 (.D(n21[2]), .CK(clk1), .CD(bit_cnt_3__N_1117), 
            .Q(bit_cnt[2]));   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(63[28:39])
    defparam bit_cnt_5259__i2.GSR = "DISABLED";
    FD1S3DX bit_cnt_5259__i1 (.D(n21[1]), .CK(clk1), .CD(bit_cnt_3__N_1117), 
            .Q(bit_cnt[1]));   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(63[28:39])
    defparam bit_cnt_5259__i1.GSR = "DISABLED";
    ORCALUT4 sys_rstn_N_1112_I_0_2_lut (.A(n17031), .B(reg_csn[2]), .Z(bit_cnt_3__N_1117)) /* synthesis lut_function=((B)+!A) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(48[9:34])
    defparam sys_rstn_N_1112_I_0_2_lut.init = 16'hdddd;
    ORCALUT4 i12863_3_lut (.A(ydac_sck_c_1), .B(refclk_cnt[0]), .C(n12084), 
            .Z(dac_lr_N_1161)) /* synthesis lut_function=(!(A (B (C)))) */ ;
    defparam i12863_3_lut.init = 16'h7f7f;
    ORCALUT4 i3_4_lut (.A(bit_cnt[0]), .B(bit_cnt[2]), .C(bit_cnt[1]), 
            .D(bit_cnt[3]), .Z(n12084)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    FD1P3DX reg_data__i2 (.D(n10845), .SP(clk1_enable_143), .CK(clk1), 
            .CD(bit_cnt_3__N_1117), .Q(reg_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=183, LSE_RLINE=195 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam reg_data__i2.GSR = "DISABLED";
    ORCALUT4 i8989_2_lut_3_lut_4_lut (.A(n16679), .B(clk1), .C(reg_data[4]), 
            .D(n12084), .Z(n10839)) /* synthesis lut_function=(A (C)+!A !(B ((D)+!C)+!B !(C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam i8989_2_lut_3_lut_4_lut.init = 16'hb0f0;
    FD1S3AY reg_csn__i2 (.D(n17022), .CK(clk1), .Q(reg_csn[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=183, LSE_RLINE=195 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(41[10] 43[8])
    defparam reg_csn__i2.GSR = "ENABLED";
    FD1P3DX reg_data__i3 (.D(n10843), .SP(clk1_enable_143), .CK(clk1), 
            .CD(bit_cnt_3__N_1117), .Q(reg_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=183, LSE_RLINE=195 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam reg_data__i3.GSR = "DISABLED";
    FD1P3BX reg_data__i15 (.D(n50[15]), .SP(clk1_enable_143), .CK(clk1), 
            .PD(bit_cnt_3__N_1117), .Q(ydac_sdi_c_15)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=183, LSE_RLINE=195 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam reg_data__i15.GSR = "DISABLED";
    FD1P3DX reg_data__i4 (.D(n10841), .SP(clk1_enable_143), .CK(clk1), 
            .CD(bit_cnt_3__N_1117), .Q(reg_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=183, LSE_RLINE=195 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam reg_data__i4.GSR = "DISABLED";
    FD1P3DX reg_data__i14 (.D(n50[14]), .SP(clk1_enable_143), .CK(clk1), 
            .CD(bit_cnt_3__N_1117), .Q(reg_data[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=183, LSE_RLINE=195 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam reg_data__i14.GSR = "DISABLED";
    FD1P3DX reg_data__i13 (.D(n50[13]), .SP(clk1_enable_143), .CK(clk1), 
            .CD(bit_cnt_3__N_1117), .Q(reg_data[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=183, LSE_RLINE=195 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam reg_data__i13.GSR = "DISABLED";
    FD1P3DX reg_data__i12 (.D(n50[12]), .SP(clk1_enable_143), .CK(clk1), 
            .CD(bit_cnt_3__N_1117), .Q(reg_data[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=183, LSE_RLINE=195 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam reg_data__i12.GSR = "DISABLED";
    FD1P3DX reg_data__i11 (.D(n50[11]), .SP(clk1_enable_143), .CK(clk1), 
            .CD(bit_cnt_3__N_1117), .Q(reg_data[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=183, LSE_RLINE=195 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam reg_data__i11.GSR = "DISABLED";
    FD1P3DX reg_data__i10 (.D(n50[10]), .SP(clk1_enable_143), .CK(clk1), 
            .CD(bit_cnt_3__N_1117), .Q(reg_data[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=183, LSE_RLINE=195 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam reg_data__i10.GSR = "DISABLED";
    ORCALUT4 i8920_2_lut_3_lut_4_lut (.A(n16679), .B(clk1), .C(reg_data[9]), 
            .D(n12084), .Z(n50[10])) /* synthesis lut_function=(A (C)+!A !(B ((D)+!C)+!B !(C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam i8920_2_lut_3_lut_4_lut.init = 16'hb0f0;
    ORCALUT4 i8979_2_lut_3_lut_4_lut (.A(n16679), .B(clk1), .C(reg_data[6]), 
            .D(n12084), .Z(n10835)) /* synthesis lut_function=(A (C)+!A !(B ((D)+!C)+!B !(C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam i8979_2_lut_3_lut_4_lut.init = 16'hb0f0;
    ORCALUT4 i8973_2_lut_3_lut_4_lut (.A(n16679), .B(clk1), .C(reg_data[8]), 
            .D(n12084), .Z(n10831)) /* synthesis lut_function=(A (C)+!A !(B ((D)+!C)+!B !(C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam i8973_2_lut_3_lut_4_lut.init = 16'hb0f0;
    ORCALUT4 i8978_2_lut_3_lut_4_lut (.A(n16679), .B(clk1), .C(reg_data[7]), 
            .D(n12084), .Z(n10833)) /* synthesis lut_function=(A (C)+!A !(B ((D)+!C)+!B !(C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam i8978_2_lut_3_lut_4_lut.init = 16'hb0f0;
    ORCALUT4 i8984_2_lut_3_lut_4_lut (.A(n16679), .B(clk1), .C(reg_data[5]), 
            .D(n12084), .Z(n10837)) /* synthesis lut_function=(A (C)+!A !(B ((D)+!C)+!B !(C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam i8984_2_lut_3_lut_4_lut.init = 16'hb0f0;
    FD1P3DX reg_data__i5 (.D(n10839), .SP(clk1_enable_143), .CK(clk1), 
            .CD(bit_cnt_3__N_1117), .Q(reg_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=183, LSE_RLINE=195 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam reg_data__i5.GSR = "DISABLED";
    FD1P3DX reg_data__i6 (.D(n10837), .SP(clk1_enable_143), .CK(clk1), 
            .CD(bit_cnt_3__N_1117), .Q(reg_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=183, LSE_RLINE=195 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam reg_data__i6.GSR = "DISABLED";
    FD1P3DX reg_data__i7 (.D(n10835), .SP(clk1_enable_143), .CK(clk1), 
            .CD(bit_cnt_3__N_1117), .Q(reg_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=183, LSE_RLINE=195 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam reg_data__i7.GSR = "DISABLED";
    FD1P3DX reg_data__i8 (.D(n10833), .SP(clk1_enable_143), .CK(clk1), 
            .CD(bit_cnt_3__N_1117), .Q(reg_data[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=183, LSE_RLINE=195 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam reg_data__i8.GSR = "DISABLED";
    FD1P3DX reg_data__i9 (.D(n10831), .SP(clk1_enable_143), .CK(clk1), 
            .CD(bit_cnt_3__N_1117), .Q(reg_data[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=183, LSE_RLINE=195 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(53[10] 72[8])
    defparam reg_data__i9.GSR = "DISABLED";
    ORCALUT4 i10281_2_lut_3_lut_4_lut (.A(n16679), .B(bit_cnt[0]), .C(bit_cnt[2]), 
            .D(bit_cnt[1]), .Z(n21[2])) /* synthesis lut_function=(A (C)+!A !(B (C (D)+!C !(D))+!B !(C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(63[28:39])
    defparam i10281_2_lut_3_lut_4_lut.init = 16'hb4f0;
    ORCALUT4 i10303_2_lut (.A(ydac_sck_c_1), .B(refclk_cnt[0]), .Z(n13[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(32[23:37])
    defparam i10303_2_lut.init = 16'h6666;
    ORCALUT4 i8768_2_lut (.A(refclk_cnt[0]), .B(ydac_sck_c_1), .Z(clk1_enable_144)) /* synthesis lut_function=(A (B)) */ ;
    defparam i8768_2_lut.init = 16'h8888;
    FD1P3AY reg_csn__i1 (.D(n17022), .SP(clk1_enable_144), .CK(clk1), 
            .Q(ydac_cs_c_0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=183, LSE_RLINE=195 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dac7731.v(41[10] 43[8])
    defparam reg_csn__i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module uart
//

module uart (clk2, GND_net, VCC_net, uart_rx1_c, \u_ack[0] , n16685, 
            ydac_rst_c, clk1_enable_115, u_state_3__N_1889, \u1_msg[39] , 
            \u_req[1] , rx_req, \u_req[0] , n16655, \u0_msg[38] , 
            \u1_msg[38] , \u0_msg[37] , \u1_msg[37] , \u0_msg[36] , 
            \u1_msg[36] , \u0_msg[35] , \u1_msg[24] , \u1_msg[35] , 
            \u0_msg[34] , \u1_msg[34] , \u0_msg[33] , \u1_msg[33] , 
            n17031, \u_state[0] , \u0_msg[32] , \u1_msg[32] , \u0_msg[24] , 
            n16654, n26, n8984, \u_ack[1] , \u1_msg[26] , \u0_msg[26] , 
            \u1_msg[27] , \u0_msg[27] , \u1_msg[28] , \u0_msg[28] , 
            \u1_msg[29] , \u0_msg[29] , \u1_msg[30] , \u0_msg[30] , 
            \u1_msg[31] , \u0_msg[31] , \u0_msg[39] , \u1_msg[25] , 
            \u0_msg[25] , uart_tx1_c) /* synthesis syn_module_defined=1 */ ;
    input clk2;
    input GND_net;
    input VCC_net;
    input uart_rx1_c;
    output \u_ack[0] ;
    input n16685;
    input ydac_rst_c;
    input clk1_enable_115;
    output u_state_3__N_1889;
    input \u1_msg[39] ;
    input \u_req[1] ;
    output rx_req;
    input \u_req[0] ;
    output n16655;
    input \u0_msg[38] ;
    input \u1_msg[38] ;
    input \u0_msg[37] ;
    input \u1_msg[37] ;
    input \u0_msg[36] ;
    input \u1_msg[36] ;
    input \u0_msg[35] ;
    input \u1_msg[24] ;
    input \u1_msg[35] ;
    input \u0_msg[34] ;
    input \u1_msg[34] ;
    input \u0_msg[33] ;
    input \u1_msg[33] ;
    input n17031;
    output \u_state[0] ;
    input \u0_msg[32] ;
    input \u1_msg[32] ;
    input \u0_msg[24] ;
    input n16654;
    input n26;
    input n8984;
    output \u_ack[1] ;
    input \u1_msg[26] ;
    input \u0_msg[26] ;
    input \u1_msg[27] ;
    input \u0_msg[27] ;
    input \u1_msg[28] ;
    input \u0_msg[28] ;
    input \u1_msg[29] ;
    input \u0_msg[29] ;
    input \u1_msg[30] ;
    input \u0_msg[30] ;
    input \u1_msg[31] ;
    input \u0_msg[31] ;
    input \u0_msg[39] ;
    input \u1_msg[25] ;
    input \u0_msg[25] ;
    output uart_tx1_c;
    
    wire clk2 /* synthesis SET_AS_NETWORK=clk2, is_clock=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(65[12:16])
    wire [255:0]regs;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(23[29:33])
    
    wire clk2_enable_238;
    wire [7:0]rx_reg_data;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(216[11:22])
    wire [63:0]rx_msg;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(61[17:23])
    
    wire clk2_enable_263, rx_msg_25__N_1675;
    wire [7:0]rx_msg_31__N_1574;
    wire [7:0]rx_bit_cnt;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(219[11:21])
    
    wire n13;
    wire [4:0]n25;
    
    wire n13600, n13599;
    wire [7:0]rx_byte_cnt;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(218[11:22])
    wire [1:0]n1;
    
    wire rx_msg_27__N_1643, rx_msg_30__N_1595, n15853, n15854, n15857, 
        n15855, n15856, n15858, n15884, n15885, n15888, clk2_enable_21, 
        n15886, n15887, n15889, clk2_enable_34, n15907, n15908, 
        n15915, n15909, n15910, n15916, n15911, n15912, n15917, 
        clk2_enable_28;
    wire [63:0]msg;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(30[18:21])
    wire [63:0]msg_63__N_1904;
    
    wire n15913, n15914, n15918, n15938, n15939, n15946, n15940, 
        n15941, n15947;
    wire [63:0]tx_data;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(147[17:24])
    
    wire clk2_enable_366;
    wire [63:0]data;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(35[18:22])
    
    wire wr, wr_N_2486, rx_ack, rx_ack_N_2504;
    wire [7:0]tx_byte_cnt;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(149[11:22])
    wire [7:0]tx_byte_cnt_7__N_2092;
    
    wire rd, rd_N_2490, n15942, n15943, n15948, clk2_enable_45;
    wire [7:0]tx_bit_cnt;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(150[11:21])
    wire [7:0]tx_bit_cnt_7__N_2100;
    
    wire n13598;
    wire [7:0]n37;
    
    wire rx_state_3__N_2108, n9278, rx_state_3__N_2109, n9280, rx_msg_31__N_1587, 
        n9282, n15944, n15945, n15949, clk2_enable_291, tx_state_2__N_2008, 
        n9274, n15969, n15970, n15977;
    wire [3:0]u_state;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(57[12:19])
    
    wire n10287, n15971, n15972, n15978, clk2_enable_53, n15973, 
        n15974, n15979, clk2_enable_61, clk2_enable_69, clk2_enable_77, 
        clk2_enable_85, clk2_enable_93, clk2_enable_101, clk2_enable_109, 
        clk2_enable_117, clk2_enable_125, n13597, n15975, n15976, 
        n15980, n16670, n15354, n16623, clk2_enable_249, n16000, 
        n16001, n16008, n16002, n16003, n16009, n4, n16653, n15372, 
        n15727, n15743, n15725, n15660, n16004, n16005, n16010, 
        n15783, n15784, n15791, n16006, n16007, n16011;
    wire [2:0]tx_state;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(146[11:19])
    wire [7:0]n2;
    
    wire n6, n16622, n16647, n15785, n15786, n15792, n15787, n15788, 
        n15793, n9193, n15843, n16672, clk2_enable_206, n15789, 
        n15790, n15794, n16012, n16013, rx_msg_29__N_1611, n16031, 
        n16032;
    wire [31:0]tx_N_2479;
    
    wire n16039;
    wire [7:0]rx_cmd;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(215[11:17])
    
    wire n9196, n16657, n16668, clk2_enable_173, n16033, n16034, 
        n16040, n9195, n16035, n16036, n16041, n16037, n16038, 
        n16042, n5, n9198, n9197, n13596, n13595, n16671, clk2_enable_141, 
        n9200, n9199, n16062, n16063, n16070, n16064, n16065, 
        n16071, n15844, n15814, n15815, n15822, n16066, n16067, 
        n16072, n9202, n16646, n15816, n15817, n15823, n9201, 
        n15865, n16017, n16645, clk2_enable_157, n9223, n16018, 
        n12286, n16660, n16396, n4_adj_2555, n16628;
    wire [9:0]rx_freq_cnt;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(217[11:22])
    
    wire n11164, n16665, n13594;
    wire [9:0]n3;
    
    wire n9204, n9203, n16019, n16644, clk2_enable_189, n16020, 
        n16068, n16069, n16073, n16676, n16677, n16678, n14690, 
        n9206, rx_req_N_2497, n15133, n15095, rx_req_N_2495, n15818, 
        n15819, n15824, n16621, n16643, clk2_enable_230, n9205, 
        n9208, n16663, n15202, full, n9207, n14678, n15820, n15821, 
        n15825;
    wire [63:0]n783;
    
    wire n16021, n16022, n16023, n15845, n15846, n16024, n16437, 
        n16434, n15847, n15848, n15849, n15850, n15851, n15852, 
        n15876, n15877, n15878, n15879, empty, n6_adj_2558, n16450, 
        n15880, n15881, n16025, n15882, n15883, n16026, n38_adj_2559, 
        n16680, n16444, n15903, n15904, n15905, n15906, n16027, 
        n15922, n15923, n9224, n16028, n16447, n15795, n15796, 
        rx_msg_28__N_1627;
    wire [7:0]n1509;
    
    wire clk2_enable_133, n16648, n15810;
    wire [7:0]n7;
    
    wire n12086, n13593, n13592, n6_adj_2561, n13591, n15924, n15925, 
        n16675, n15926, n15927, n15928, n15929, sys_rstn_N_889, 
        n15930, n15931, n16433, n15932, n15933, clk2_enable_149, 
        n16681, clk2_enable_369, n16029, n15934, n15935, clk2_enable_165, 
        n16030, n15936, n15937, rx_state_3__N_2110, n40_adj_2563, 
        n15953, n15954, n16649, clk2_enable_266;
    wire [1:0]rx_dly;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(213[11:17])
    
    wire clk2_enable_274, n15798, n15799, n15800, n15801, n5_adj_2564, 
        n15070, clk2_enable_181, n16046, n15955, n15956, n15957, 
        n15958, n15959, n15960, n16047, n16673, n11642, n4_adj_2565, 
        n15961, n15962, clk2_enable_198, rx_msg_31__N_1573, n13590, 
        clk2_enable_215, n15963, n15964, clk2_enable_257, clk2_enable_426, 
        n14992, n16650, n15636, n15965, n15966, n15967, n15968, 
        n15891, n15892, n15893, n15894, n15767, n15768, n15769, 
        n15770, n15895, n15896;
    wire [9:0]n79;
    
    wire n15984, n15985, n15771, n15772, n16640, clk2_enable_422, 
        n13589, n16625, clk2_enable_425, n16664, n15986, n15987, 
        n15552, n15988, n15989, n15990, n15991, n15992, n15993, 
        n15773, n15774, n15775, n15776, n15994, n15995, n15777, 
        n15778, n15996, n15997, n15998, n15999, n15779, n15780, 
        n16436, n15642, n9284, n16443, n16446, n16669, n16449, 
        clk2_enable_427, n15248, n16634, tx_N_2478;
    wire [0:0]n7477;
    
    wire n16652, n15741, n15262, n15781, n15782, n16015, n16016, 
        n16651, n10786, n11168, clk2_enable_421;
    wire [1:0]rx_dly_1__N_1837;
    
    wire n16048, clk2_enable_240, n9276, n16049, n15658, n16050, 
        n16051, clk2_enable_428, n16052, n16053, n15802, n15803, 
        n16054, n16055, rx_msg_26__N_1659, n15256, n1345, n10814, 
        n15804, n15805, n16056, n16057;
    wire [9:0]tx_freq_cnt;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(148[11:22])
    
    wire n14_adj_2566, n16058, n16059, n15806, n15807, n15210, n15208, 
        n16060, n16061, n15808, n15809, n15811, rx_msg_24__N_1691, 
        n15812, n15813, n15897, n15898, n13588, n15829, n15830, 
        n15831, n15832, n15833, n15834, n15835, n15836, n15837, 
        n15838, n15839, n15840, n15950, n15951, n15841, n15842, 
        n15919, n15920, n15656, n15618, n13587, n13656, n13655;
    wire [9:0]n8;
    
    wire n13586, n15086, n4_adj_2571, n13654, n13653, n9219, n9220, 
        n15766, n9217, n9218, n9215, n9216, n9213, n9214, n9211, 
        n9212, n9209, n9210, n15899, n15900, n15860, n13585, n15861, 
        n13584, n15866, n13583, n15867, n15864, n15868, n13582, 
        n15869, n13214, n13581, n15862, n9194;
    wire [9:0]n79_adj_2606;
    
    wire n13112;
    wire [7:0]n37_adj_2607;
    
    wire n15826, n15827, n15870, n15871, n50_adj_2593, n11, n15981, 
        n15982, n4_adj_2594, n15872, n15873, n15874, n15863, n15875, 
        n15901, n15902, n16043, n16044, n10171, n16045, n16074, 
        n16075, n16076, n15224, n9849, n15598, n15119, n16327, 
        n15222;
    wire [2:0]n8035;
    
    wire clk2_enable_423;
    wire [0:0]n7466;
    
    wire tx_N_2464, n10776, empty_N_2494, n9221, n9222, n13606;
    wire [7:0]n37_adj_2608;
    
    wire n13678, n13677, n13676, n13605, n13675, n13604, clk2_enable_424, 
        n13603, n13601;
    
    FD1P3AX regs_i0_i253 (.D(rx_reg_data[5]), .SP(clk2_enable_238), .CK(clk2), 
            .Q(regs[253])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i253.GSR = "DISABLED";
    FD1P3AX rx_msg_25__2409 (.D(rx_msg_25__N_1675), .SP(clk2_enable_263), 
            .CK(clk2), .Q(rx_msg[25]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam rx_msg_25__2409.GSR = "DISABLED";
    CCU2B rx_reg_addr_5266_5390_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(rx_msg_31__N_1574[3]), .B1(rx_bit_cnt[1]), 
          .C1(n13), .D1(uart_rx1_c), .COUT(n13600), .S1(n25[0]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(282[44:76])
    defparam rx_reg_addr_5266_5390_add_4_1.INIT0 = 16'h0000;
    defparam rx_reg_addr_5266_5390_add_4_1.INIT1 = 16'ha9aa;
    defparam rx_reg_addr_5266_5390_add_4_1.INJECT1_0 = "NO";
    defparam rx_reg_addr_5266_5390_add_4_1.INJECT1_1 = "NO";
    CCU2B rx_byte_cnt_5264_5265_add_4_3 (.A0(rx_byte_cnt[1]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n13599), .S0(n1[1]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(259[40:55])
    defparam rx_byte_cnt_5264_5265_add_4_3.INIT0 = 16'haaa0;
    defparam rx_byte_cnt_5264_5265_add_4_3.INIT1 = 16'h0000;
    defparam rx_byte_cnt_5264_5265_add_4_3.INJECT1_0 = "NO";
    defparam rx_byte_cnt_5264_5265_add_4_3.INJECT1_1 = "NO";
    FD1P3AX regs_i0_i252 (.D(rx_reg_data[4]), .SP(clk2_enable_238), .CK(clk2), 
            .Q(regs[252])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i252.GSR = "DISABLED";
    FD1P3AX rx_msg_27__2407 (.D(rx_msg_27__N_1643), .SP(clk2_enable_263), 
            .CK(clk2), .Q(rx_msg[27]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam rx_msg_27__2407.GSR = "DISABLED";
    FD1P3AX regs_i0_i251 (.D(rx_reg_data[3]), .SP(clk2_enable_238), .CK(clk2), 
            .Q(regs[251])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i251.GSR = "DISABLED";
    FD1P3AX rx_msg_30__2404 (.D(rx_msg_30__N_1595), .SP(clk2_enable_263), 
            .CK(clk2), .Q(rx_msg[30]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam rx_msg_30__2404.GSR = "DISABLED";
    FD1P3AX regs_i0_i250 (.D(rx_reg_data[2]), .SP(clk2_enable_238), .CK(clk2), 
            .Q(regs[250])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i250.GSR = "DISABLED";
    L6MUX21 i12447 (.D0(n15853), .D1(n15854), .SD(rx_msg_31__N_1574[6]), 
            .Z(n15857));
    FD1P3AX regs_i0_i249 (.D(rx_reg_data[1]), .SP(clk2_enable_238), .CK(clk2), 
            .Q(regs[249])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i249.GSR = "DISABLED";
    L6MUX21 i12448 (.D0(n15855), .D1(n15856), .SD(rx_msg_31__N_1574[6]), 
            .Z(n15858));
    FD1P3AX regs_i0_i248 (.D(rx_reg_data[0]), .SP(clk2_enable_238), .CK(clk2), 
            .Q(regs[248])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i248.GSR = "DISABLED";
    L6MUX21 i12478 (.D0(n15884), .D1(n15885), .SD(rx_msg_31__N_1574[6]), 
            .Z(n15888));
    FD1P3AX regs_i0_i247 (.D(rx_reg_data[7]), .SP(clk2_enable_21), .CK(clk2), 
            .Q(regs[247])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i247.GSR = "DISABLED";
    FD1P3AX regs_i0_i246 (.D(rx_reg_data[6]), .SP(clk2_enable_21), .CK(clk2), 
            .Q(regs[246])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i246.GSR = "DISABLED";
    FD1P3AX regs_i0_i245 (.D(rx_reg_data[5]), .SP(clk2_enable_21), .CK(clk2), 
            .Q(regs[245])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i245.GSR = "DISABLED";
    FD1P3AX regs_i0_i244 (.D(rx_reg_data[4]), .SP(clk2_enable_21), .CK(clk2), 
            .Q(regs[244])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i244.GSR = "DISABLED";
    FD1P3AX regs_i0_i243 (.D(rx_reg_data[3]), .SP(clk2_enable_21), .CK(clk2), 
            .Q(regs[243])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i243.GSR = "DISABLED";
    L6MUX21 i12479 (.D0(n15886), .D1(n15887), .SD(rx_msg_31__N_1574[6]), 
            .Z(n15889));
    FD1P3AX regs_i0_i242 (.D(rx_reg_data[2]), .SP(clk2_enable_21), .CK(clk2), 
            .Q(regs[242])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i242.GSR = "DISABLED";
    FD1P3AX regs_i0_i241 (.D(rx_reg_data[1]), .SP(clk2_enable_21), .CK(clk2), 
            .Q(regs[241])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i241.GSR = "DISABLED";
    FD1P3AX regs_i0_i240 (.D(rx_reg_data[0]), .SP(clk2_enable_21), .CK(clk2), 
            .Q(regs[240])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i240.GSR = "DISABLED";
    FD1P3AX regs_i0_i239 (.D(rx_reg_data[7]), .SP(clk2_enable_34), .CK(clk2), 
            .Q(regs[239])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i239.GSR = "DISABLED";
    L6MUX21 i12505 (.D0(n15907), .D1(n15908), .SD(rx_msg_31__N_1574[5]), 
            .Z(n15915));
    L6MUX21 i12506 (.D0(n15909), .D1(n15910), .SD(rx_msg_31__N_1574[5]), 
            .Z(n15916));
    FD1P3AX regs_i0_i238 (.D(rx_reg_data[6]), .SP(clk2_enable_34), .CK(clk2), 
            .Q(regs[238])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i238.GSR = "DISABLED";
    FD1P3AX regs_i0_i237 (.D(rx_reg_data[5]), .SP(clk2_enable_34), .CK(clk2), 
            .Q(regs[237])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i237.GSR = "DISABLED";
    L6MUX21 i12507 (.D0(n15911), .D1(n15912), .SD(rx_msg_31__N_1574[5]), 
            .Z(n15917));
    FD1P3AX regs_i0_i255 (.D(rx_reg_data[7]), .SP(clk2_enable_238), .CK(clk2), 
            .Q(regs[255])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i255.GSR = "DISABLED";
    FD1P3AX regs_i0_i236 (.D(rx_reg_data[4]), .SP(clk2_enable_34), .CK(clk2), 
            .Q(regs[236])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i236.GSR = "DISABLED";
    FD1P3AX u_ack_i0_i0 (.D(n16685), .SP(clk2_enable_28), .CK(clk2), .Q(\u_ack[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(73[10] 139[8])
    defparam u_ack_i0_i0.GSR = "ENABLED";
    FD1P3AX msg_i0_i0 (.D(msg_63__N_1904[0]), .SP(ydac_rst_c), .CK(clk2), 
            .Q(msg[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(73[10] 139[8])
    defparam msg_i0_i0.GSR = "DISABLED";
    L6MUX21 i12508 (.D0(n15913), .D1(n15914), .SD(rx_msg_31__N_1574[5]), 
            .Z(n15918));
    FD1P3AX regs_i0_i235 (.D(rx_reg_data[3]), .SP(clk2_enable_34), .CK(clk2), 
            .Q(regs[235])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i235.GSR = "DISABLED";
    FD1P3AX regs_i0_i234 (.D(rx_reg_data[2]), .SP(clk2_enable_34), .CK(clk2), 
            .Q(regs[234])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i234.GSR = "DISABLED";
    FD1P3AX regs_i0_i233 (.D(rx_reg_data[1]), .SP(clk2_enable_34), .CK(clk2), 
            .Q(regs[233])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i233.GSR = "DISABLED";
    L6MUX21 i12536 (.D0(n15938), .D1(n15939), .SD(rx_msg_31__N_1574[5]), 
            .Z(n15946));
    L6MUX21 i12537 (.D0(n15940), .D1(n15941), .SD(rx_msg_31__N_1574[5]), 
            .Z(n15947));
    FD1P3AX tx_data_i0_i0 (.D(data[0]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i0.GSR = "DISABLED";
    FD1S3AX wr_2380 (.D(wr_N_2486), .CK(clk2), .Q(wr)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(73[10] 139[8])
    defparam wr_2380.GSR = "ENABLED";
    FD1S3AX rx_ack_2381 (.D(rx_ack_N_2504), .CK(clk2), .Q(rx_ack)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(73[10] 139[8])
    defparam rx_ack_2381.GSR = "ENABLED";
    FD1P3AX tx_byte_cnt_i0_i0 (.D(tx_byte_cnt_7__N_2092[0]), .SP(clk1_enable_115), 
            .CK(clk2), .Q(tx_byte_cnt[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_byte_cnt_i0_i0.GSR = "DISABLED";
    FD1S3AX rd_2385 (.D(rd_N_2490), .CK(clk2), .Q(rd)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam rd_2385.GSR = "ENABLED";
    L6MUX21 i12538 (.D0(n15942), .D1(n15943), .SD(rx_msg_31__N_1574[5]), 
            .Z(n15948));
    FD1P3AX regs_i0_i232 (.D(rx_reg_data[0]), .SP(clk2_enable_34), .CK(clk2), 
            .Q(regs[232])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i232.GSR = "DISABLED";
    FD1P3AX regs_i0_i231 (.D(rx_reg_data[7]), .SP(clk2_enable_45), .CK(clk2), 
            .Q(regs[231])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i231.GSR = "DISABLED";
    FD1P3AX regs_i0_i230 (.D(rx_reg_data[6]), .SP(clk2_enable_45), .CK(clk2), 
            .Q(regs[230])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i230.GSR = "DISABLED";
    FD1P3AX tx_bit_cnt_i0_i0 (.D(tx_bit_cnt_7__N_2100[0]), .SP(clk1_enable_115), 
            .CK(clk2), .Q(tx_bit_cnt[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_bit_cnt_i0_i0.GSR = "DISABLED";
    CCU2B rx_byte_cnt_5264_5265_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(rx_byte_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n13599), .S1(n1[0]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(259[40:55])
    defparam rx_byte_cnt_5264_5265_add_4_1.INIT0 = 16'h0000;
    defparam rx_byte_cnt_5264_5265_add_4_1.INIT1 = 16'h555f;
    defparam rx_byte_cnt_5264_5265_add_4_1.INJECT1_0 = "NO";
    defparam rx_byte_cnt_5264_5265_add_4_1.INJECT1_1 = "NO";
    CCU2B rx_bit_cnt_5263_add_4_9 (.A0(rx_bit_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13598), .S0(n37[7]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(256[35:49])
    defparam rx_bit_cnt_5263_add_4_9.INIT0 = 16'haaa0;
    defparam rx_bit_cnt_5263_add_4_9.INIT1 = 16'h0000;
    defparam rx_bit_cnt_5263_add_4_9.INJECT1_0 = "NO";
    defparam rx_bit_cnt_5263_add_4_9.INJECT1_1 = "NO";
    FD1S3AY rx_state_FSM_i4 (.D(n9278), .CK(clk2), .Q(rx_state_3__N_2108));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(237[9] 308[16])
    defparam rx_state_FSM_i4.GSR = "ENABLED";
    FD1S3AX rx_state_FSM_i3 (.D(n9280), .CK(clk2), .Q(rx_state_3__N_2109));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(237[9] 308[16])
    defparam rx_state_FSM_i3.GSR = "ENABLED";
    FD1S3AX rx_state_FSM_i2 (.D(n9282), .CK(clk2), .Q(rx_msg_31__N_1587));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(237[9] 308[16])
    defparam rx_state_FSM_i2.GSR = "ENABLED";
    FD1P3AX regs_i0_i229 (.D(rx_reg_data[5]), .SP(clk2_enable_45), .CK(clk2), 
            .Q(regs[229])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i229.GSR = "DISABLED";
    L6MUX21 i12539 (.D0(n15944), .D1(n15945), .SD(rx_msg_31__N_1574[5]), 
            .Z(n15949));
    FD1P3AX regs_i0_i0 (.D(rx_reg_data[0]), .SP(clk2_enable_291), .CK(clk2), 
            .Q(regs[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i0.GSR = "DISABLED";
    FD1S3AY tx_state_FSM_i2 (.D(n9274), .CK(clk2), .Q(tx_state_2__N_2008));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(159[9] 203[16])
    defparam tx_state_FSM_i2.GSR = "ENABLED";
    FD1P3AX regs_i0_i228 (.D(rx_reg_data[4]), .SP(clk2_enable_45), .CK(clk2), 
            .Q(regs[228])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i228.GSR = "DISABLED";
    L6MUX21 i12567 (.D0(n15969), .D1(n15970), .SD(rx_msg_31__N_1574[5]), 
            .Z(n15977));
    FD1P3AX regs_i0_i227 (.D(rx_reg_data[3]), .SP(clk2_enable_45), .CK(clk2), 
            .Q(regs[227])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i227.GSR = "DISABLED";
    FD1S3JX u_state_FSM_i3 (.D(n10287), .CK(clk2), .PD(u_state[1]), .Q(u_state_3__N_1889));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(74[9] 138[16])
    defparam u_state_FSM_i3.GSR = "ENABLED";
    FD1P3AX regs_i0_i226 (.D(rx_reg_data[2]), .SP(clk2_enable_45), .CK(clk2), 
            .Q(regs[226])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i226.GSR = "DISABLED";
    L6MUX21 i12568 (.D0(n15971), .D1(n15972), .SD(rx_msg_31__N_1574[5]), 
            .Z(n15978));
    FD1P3AX regs_i0_i225 (.D(rx_reg_data[1]), .SP(clk2_enable_45), .CK(clk2), 
            .Q(regs[225])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i225.GSR = "DISABLED";
    FD1P3AX regs_i0_i224 (.D(rx_reg_data[0]), .SP(clk2_enable_45), .CK(clk2), 
            .Q(regs[224])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i224.GSR = "DISABLED";
    FD1P3AX regs_i0_i223 (.D(rx_reg_data[7]), .SP(clk2_enable_53), .CK(clk2), 
            .Q(regs[223])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i223.GSR = "DISABLED";
    FD1P3AX regs_i0_i222 (.D(rx_reg_data[6]), .SP(clk2_enable_53), .CK(clk2), 
            .Q(regs[222])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i222.GSR = "DISABLED";
    FD1P3AX regs_i0_i221 (.D(rx_reg_data[5]), .SP(clk2_enable_53), .CK(clk2), 
            .Q(regs[221])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i221.GSR = "DISABLED";
    FD1P3AX regs_i0_i220 (.D(rx_reg_data[4]), .SP(clk2_enable_53), .CK(clk2), 
            .Q(regs[220])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i220.GSR = "DISABLED";
    FD1P3AX regs_i0_i219 (.D(rx_reg_data[3]), .SP(clk2_enable_53), .CK(clk2), 
            .Q(regs[219])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i219.GSR = "DISABLED";
    L6MUX21 i12569 (.D0(n15973), .D1(n15974), .SD(rx_msg_31__N_1574[5]), 
            .Z(n15979));
    FD1P3AX regs_i0_i218 (.D(rx_reg_data[2]), .SP(clk2_enable_53), .CK(clk2), 
            .Q(regs[218])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i218.GSR = "DISABLED";
    FD1P3AX regs_i0_i217 (.D(rx_reg_data[1]), .SP(clk2_enable_53), .CK(clk2), 
            .Q(regs[217])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i217.GSR = "DISABLED";
    FD1P3AX regs_i0_i216 (.D(rx_reg_data[0]), .SP(clk2_enable_53), .CK(clk2), 
            .Q(regs[216])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i216.GSR = "DISABLED";
    FD1P3AX regs_i0_i215 (.D(rx_reg_data[7]), .SP(clk2_enable_61), .CK(clk2), 
            .Q(regs[215])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i215.GSR = "DISABLED";
    FD1P3AX regs_i0_i214 (.D(rx_reg_data[6]), .SP(clk2_enable_61), .CK(clk2), 
            .Q(regs[214])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i214.GSR = "DISABLED";
    FD1P3AX regs_i0_i213 (.D(rx_reg_data[5]), .SP(clk2_enable_61), .CK(clk2), 
            .Q(regs[213])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i213.GSR = "DISABLED";
    FD1P3AX regs_i0_i212 (.D(rx_reg_data[4]), .SP(clk2_enable_61), .CK(clk2), 
            .Q(regs[212])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i212.GSR = "DISABLED";
    FD1P3AX regs_i0_i211 (.D(rx_reg_data[3]), .SP(clk2_enable_61), .CK(clk2), 
            .Q(regs[211])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i211.GSR = "DISABLED";
    FD1P3AX regs_i0_i210 (.D(rx_reg_data[2]), .SP(clk2_enable_61), .CK(clk2), 
            .Q(regs[210])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i210.GSR = "DISABLED";
    FD1P3AX regs_i0_i209 (.D(rx_reg_data[1]), .SP(clk2_enable_61), .CK(clk2), 
            .Q(regs[209])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i209.GSR = "DISABLED";
    FD1P3AX regs_i0_i208 (.D(rx_reg_data[0]), .SP(clk2_enable_61), .CK(clk2), 
            .Q(regs[208])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i208.GSR = "DISABLED";
    FD1P3AX regs_i0_i207 (.D(rx_reg_data[7]), .SP(clk2_enable_69), .CK(clk2), 
            .Q(regs[207])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i207.GSR = "DISABLED";
    FD1P3AX regs_i0_i206 (.D(rx_reg_data[6]), .SP(clk2_enable_69), .CK(clk2), 
            .Q(regs[206])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i206.GSR = "DISABLED";
    FD1P3AX regs_i0_i205 (.D(rx_reg_data[5]), .SP(clk2_enable_69), .CK(clk2), 
            .Q(regs[205])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i205.GSR = "DISABLED";
    FD1P3AX regs_i0_i204 (.D(rx_reg_data[4]), .SP(clk2_enable_69), .CK(clk2), 
            .Q(regs[204])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i204.GSR = "DISABLED";
    FD1P3AX regs_i0_i203 (.D(rx_reg_data[3]), .SP(clk2_enable_69), .CK(clk2), 
            .Q(regs[203])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i203.GSR = "DISABLED";
    FD1P3AX regs_i0_i202 (.D(rx_reg_data[2]), .SP(clk2_enable_69), .CK(clk2), 
            .Q(regs[202])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i202.GSR = "DISABLED";
    FD1P3AX regs_i0_i201 (.D(rx_reg_data[1]), .SP(clk2_enable_69), .CK(clk2), 
            .Q(regs[201])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i201.GSR = "DISABLED";
    FD1P3AX regs_i0_i200 (.D(rx_reg_data[0]), .SP(clk2_enable_69), .CK(clk2), 
            .Q(regs[200])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i200.GSR = "DISABLED";
    FD1P3AX regs_i0_i199 (.D(rx_reg_data[7]), .SP(clk2_enable_77), .CK(clk2), 
            .Q(regs[199])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i199.GSR = "DISABLED";
    FD1P3AX regs_i0_i198 (.D(rx_reg_data[6]), .SP(clk2_enable_77), .CK(clk2), 
            .Q(regs[198])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i198.GSR = "DISABLED";
    FD1P3AX regs_i0_i197 (.D(rx_reg_data[5]), .SP(clk2_enable_77), .CK(clk2), 
            .Q(regs[197])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i197.GSR = "DISABLED";
    FD1P3AX regs_i0_i196 (.D(rx_reg_data[4]), .SP(clk2_enable_77), .CK(clk2), 
            .Q(regs[196])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i196.GSR = "DISABLED";
    FD1P3AX regs_i0_i195 (.D(rx_reg_data[3]), .SP(clk2_enable_77), .CK(clk2), 
            .Q(regs[195])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i195.GSR = "DISABLED";
    FD1P3AX regs_i0_i194 (.D(rx_reg_data[2]), .SP(clk2_enable_77), .CK(clk2), 
            .Q(regs[194])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i194.GSR = "DISABLED";
    FD1P3AX regs_i0_i193 (.D(rx_reg_data[1]), .SP(clk2_enable_77), .CK(clk2), 
            .Q(regs[193])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i193.GSR = "DISABLED";
    FD1P3AX regs_i0_i192 (.D(rx_reg_data[0]), .SP(clk2_enable_77), .CK(clk2), 
            .Q(regs[192])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i192.GSR = "DISABLED";
    FD1P3AX regs_i0_i191 (.D(rx_reg_data[7]), .SP(clk2_enable_85), .CK(clk2), 
            .Q(regs[191])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i191.GSR = "DISABLED";
    FD1P3AX regs_i0_i190 (.D(rx_reg_data[6]), .SP(clk2_enable_85), .CK(clk2), 
            .Q(regs[190])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i190.GSR = "DISABLED";
    FD1P3AX regs_i0_i189 (.D(rx_reg_data[5]), .SP(clk2_enable_85), .CK(clk2), 
            .Q(regs[189])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i189.GSR = "DISABLED";
    FD1P3AX regs_i0_i188 (.D(rx_reg_data[4]), .SP(clk2_enable_85), .CK(clk2), 
            .Q(regs[188])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i188.GSR = "DISABLED";
    FD1P3AX regs_i0_i187 (.D(rx_reg_data[3]), .SP(clk2_enable_85), .CK(clk2), 
            .Q(regs[187])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i187.GSR = "DISABLED";
    FD1P3AX regs_i0_i186 (.D(rx_reg_data[2]), .SP(clk2_enable_85), .CK(clk2), 
            .Q(regs[186])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i186.GSR = "DISABLED";
    FD1P3AX regs_i0_i185 (.D(rx_reg_data[1]), .SP(clk2_enable_85), .CK(clk2), 
            .Q(regs[185])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i185.GSR = "DISABLED";
    FD1P3AX regs_i0_i184 (.D(rx_reg_data[0]), .SP(clk2_enable_85), .CK(clk2), 
            .Q(regs[184])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i184.GSR = "DISABLED";
    FD1P3AX regs_i0_i183 (.D(rx_reg_data[7]), .SP(clk2_enable_93), .CK(clk2), 
            .Q(regs[183])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i183.GSR = "DISABLED";
    FD1P3AX regs_i0_i182 (.D(rx_reg_data[6]), .SP(clk2_enable_93), .CK(clk2), 
            .Q(regs[182])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i182.GSR = "DISABLED";
    FD1P3AX regs_i0_i181 (.D(rx_reg_data[5]), .SP(clk2_enable_93), .CK(clk2), 
            .Q(regs[181])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i181.GSR = "DISABLED";
    FD1P3AX regs_i0_i180 (.D(rx_reg_data[4]), .SP(clk2_enable_93), .CK(clk2), 
            .Q(regs[180])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i180.GSR = "DISABLED";
    FD1P3AX regs_i0_i179 (.D(rx_reg_data[3]), .SP(clk2_enable_93), .CK(clk2), 
            .Q(regs[179])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i179.GSR = "DISABLED";
    FD1P3AX regs_i0_i178 (.D(rx_reg_data[2]), .SP(clk2_enable_93), .CK(clk2), 
            .Q(regs[178])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i178.GSR = "DISABLED";
    FD1P3AX regs_i0_i177 (.D(rx_reg_data[1]), .SP(clk2_enable_93), .CK(clk2), 
            .Q(regs[177])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i177.GSR = "DISABLED";
    FD1P3AX regs_i0_i176 (.D(rx_reg_data[0]), .SP(clk2_enable_93), .CK(clk2), 
            .Q(regs[176])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i176.GSR = "DISABLED";
    FD1P3AX regs_i0_i175 (.D(rx_reg_data[7]), .SP(clk2_enable_101), .CK(clk2), 
            .Q(regs[175])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i175.GSR = "DISABLED";
    FD1P3AX regs_i0_i174 (.D(rx_reg_data[6]), .SP(clk2_enable_101), .CK(clk2), 
            .Q(regs[174])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i174.GSR = "DISABLED";
    FD1P3AX regs_i0_i173 (.D(rx_reg_data[5]), .SP(clk2_enable_101), .CK(clk2), 
            .Q(regs[173])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i173.GSR = "DISABLED";
    FD1P3AX regs_i0_i172 (.D(rx_reg_data[4]), .SP(clk2_enable_101), .CK(clk2), 
            .Q(regs[172])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i172.GSR = "DISABLED";
    FD1P3AX regs_i0_i171 (.D(rx_reg_data[3]), .SP(clk2_enable_101), .CK(clk2), 
            .Q(regs[171])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i171.GSR = "DISABLED";
    FD1P3AX regs_i0_i170 (.D(rx_reg_data[2]), .SP(clk2_enable_101), .CK(clk2), 
            .Q(regs[170])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i170.GSR = "DISABLED";
    FD1P3AX regs_i0_i169 (.D(rx_reg_data[1]), .SP(clk2_enable_101), .CK(clk2), 
            .Q(regs[169])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i169.GSR = "DISABLED";
    FD1P3AX regs_i0_i168 (.D(rx_reg_data[0]), .SP(clk2_enable_101), .CK(clk2), 
            .Q(regs[168])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i168.GSR = "DISABLED";
    FD1P3AX regs_i0_i167 (.D(rx_reg_data[7]), .SP(clk2_enable_109), .CK(clk2), 
            .Q(regs[167])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i167.GSR = "DISABLED";
    FD1P3AX regs_i0_i166 (.D(rx_reg_data[6]), .SP(clk2_enable_109), .CK(clk2), 
            .Q(regs[166])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i166.GSR = "DISABLED";
    FD1P3AX regs_i0_i165 (.D(rx_reg_data[5]), .SP(clk2_enable_109), .CK(clk2), 
            .Q(regs[165])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i165.GSR = "DISABLED";
    FD1P3AX regs_i0_i164 (.D(rx_reg_data[4]), .SP(clk2_enable_109), .CK(clk2), 
            .Q(regs[164])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i164.GSR = "DISABLED";
    FD1P3AX regs_i0_i163 (.D(rx_reg_data[3]), .SP(clk2_enable_109), .CK(clk2), 
            .Q(regs[163])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i163.GSR = "DISABLED";
    FD1P3AX regs_i0_i162 (.D(rx_reg_data[2]), .SP(clk2_enable_109), .CK(clk2), 
            .Q(regs[162])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i162.GSR = "DISABLED";
    FD1P3AX regs_i0_i161 (.D(rx_reg_data[1]), .SP(clk2_enable_109), .CK(clk2), 
            .Q(regs[161])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i161.GSR = "DISABLED";
    FD1P3AX regs_i0_i160 (.D(rx_reg_data[0]), .SP(clk2_enable_109), .CK(clk2), 
            .Q(regs[160])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i160.GSR = "DISABLED";
    FD1P3AX regs_i0_i159 (.D(rx_reg_data[7]), .SP(clk2_enable_117), .CK(clk2), 
            .Q(regs[159])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i159.GSR = "DISABLED";
    FD1P3AX regs_i0_i158 (.D(rx_reg_data[6]), .SP(clk2_enable_117), .CK(clk2), 
            .Q(regs[158])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i158.GSR = "DISABLED";
    FD1P3AX regs_i0_i157 (.D(rx_reg_data[5]), .SP(clk2_enable_117), .CK(clk2), 
            .Q(regs[157])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i157.GSR = "DISABLED";
    FD1P3AX regs_i0_i156 (.D(rx_reg_data[4]), .SP(clk2_enable_117), .CK(clk2), 
            .Q(regs[156])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i156.GSR = "DISABLED";
    FD1P3AX regs_i0_i155 (.D(rx_reg_data[3]), .SP(clk2_enable_117), .CK(clk2), 
            .Q(regs[155])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i155.GSR = "DISABLED";
    FD1P3AX regs_i0_i154 (.D(rx_reg_data[2]), .SP(clk2_enable_117), .CK(clk2), 
            .Q(regs[154])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i154.GSR = "DISABLED";
    FD1P3AX regs_i0_i153 (.D(rx_reg_data[1]), .SP(clk2_enable_117), .CK(clk2), 
            .Q(regs[153])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i153.GSR = "DISABLED";
    FD1P3AX regs_i0_i152 (.D(rx_reg_data[0]), .SP(clk2_enable_117), .CK(clk2), 
            .Q(regs[152])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i152.GSR = "DISABLED";
    FD1P3AX regs_i0_i151 (.D(rx_reg_data[7]), .SP(clk2_enable_125), .CK(clk2), 
            .Q(regs[151])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i151.GSR = "DISABLED";
    FD1P3AX regs_i0_i150 (.D(rx_reg_data[6]), .SP(clk2_enable_125), .CK(clk2), 
            .Q(regs[150])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i150.GSR = "DISABLED";
    FD1P3AX regs_i0_i149 (.D(rx_reg_data[5]), .SP(clk2_enable_125), .CK(clk2), 
            .Q(regs[149])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i149.GSR = "DISABLED";
    FD1P3AX regs_i0_i148 (.D(rx_reg_data[4]), .SP(clk2_enable_125), .CK(clk2), 
            .Q(regs[148])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i148.GSR = "DISABLED";
    CCU2B rx_bit_cnt_5263_add_4_7 (.A0(rx_bit_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(rx_bit_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13597), .COUT(n13598), .S0(n37[5]), .S1(n37[6]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(256[35:49])
    defparam rx_bit_cnt_5263_add_4_7.INIT0 = 16'haaa0;
    defparam rx_bit_cnt_5263_add_4_7.INIT1 = 16'haaa0;
    defparam rx_bit_cnt_5263_add_4_7.INJECT1_0 = "NO";
    defparam rx_bit_cnt_5263_add_4_7.INJECT1_1 = "NO";
    L6MUX21 i12570 (.D0(n15975), .D1(n15976), .SD(rx_msg_31__N_1574[5]), 
            .Z(n15980));
    ORCALUT4 i1_3_lut_4_lut (.A(rx_msg_31__N_1574[7]), .B(n16670), .C(n15354), 
            .D(n16623), .Z(clk2_enable_249)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(263[37:65])
    defparam i1_3_lut_4_lut.init = 16'h1000;
    L6MUX21 i12598 (.D0(n16000), .D1(n16001), .SD(rx_msg_31__N_1574[5]), 
            .Z(n16008));
    FD1P3AX regs_i0_i147 (.D(rx_reg_data[3]), .SP(clk2_enable_125), .CK(clk2), 
            .Q(regs[147])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i147.GSR = "DISABLED";
    L6MUX21 i12599 (.D0(n16002), .D1(n16003), .SD(rx_msg_31__N_1574[5]), 
            .Z(n16009));
    ORCALUT4 i1_4_lut (.A(n4), .B(n16623), .C(n16653), .D(n15372), .Z(clk2_enable_238)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(217[11:22])
    defparam i1_4_lut.init = 16'h8000;
    ORCALUT4 i1_4_lut_adj_80 (.A(n15727), .B(n15743), .C(n15725), .D(n15660), 
            .Z(n4)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_80.init = 16'h0100;
    L6MUX21 i12600 (.D0(n16004), .D1(n16005), .SD(rx_msg_31__N_1574[5]), 
            .Z(n16010));
    L6MUX21 i12381 (.D0(n15783), .D1(n15784), .SD(rx_msg_31__N_1574[5]), 
            .Z(n15791));
    L6MUX21 i12601 (.D0(n16006), .D1(n16007), .SD(rx_msg_31__N_1574[5]), 
            .Z(n16011));
    ORCALUT4 i56_4_lut (.A(tx_state[1]), .B(tx_state_2__N_2008), .C(n2[7]), 
            .D(tx_byte_cnt[7]), .Z(tx_byte_cnt_7__N_2092[7])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(146[11:19])
    defparam i56_4_lut.init = 16'heca0;
    ORCALUT4 i1_3_lut_4_lut_adj_81 (.A(n6), .B(n16622), .C(n16623), .D(n16647), 
            .Z(clk2_enable_93)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(217[11:22])
    defparam i1_3_lut_4_lut_adj_81.init = 16'h0040;
    L6MUX21 i12382 (.D0(n15785), .D1(n15786), .SD(rx_msg_31__N_1574[5]), 
            .Z(n15792));
    L6MUX21 i12383 (.D0(n15787), .D1(n15788), .SD(rx_msg_31__N_1574[5]), 
            .Z(n15793));
    ORCALUT4 i6113_3_lut (.A(msg[39]), .B(\u1_msg[39] ), .C(\u_req[1] ), 
            .Z(n9193)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(112[22] 120[20])
    defparam i6113_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_4_lut (.A(\u_req[1] ), .B(u_state_3__N_1889), .C(rx_req), 
            .D(\u_req[0] ), .Z(clk2_enable_28)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i1_4_lut_4_lut.init = 16'hfff7;
    ORCALUT4 i12433_3_lut (.A(regs[226]), .B(regs[234]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15843)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12433_3_lut.init = 16'hcaca;
    ORCALUT4 i1_3_lut_4_lut_adj_82 (.A(rx_msg_31__N_1574[6]), .B(n16672), 
            .C(n15354), .D(n16623), .Z(clk2_enable_206)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(263[37:65])
    defparam i1_3_lut_4_lut_adj_82.init = 16'h2000;
    L6MUX21 i12384 (.D0(n15789), .D1(n15790), .SD(rx_msg_31__N_1574[5]), 
            .Z(n15794));
    ORCALUT4 i12604_3_lut (.A(n16012), .B(n16013), .C(rx_msg_31__N_1574[7]), 
            .Z(rx_msg_29__N_1611)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12604_3_lut.init = 16'hcaca;
    L6MUX21 i12629 (.D0(n16031), .D1(n16032), .SD(tx_N_2479[2]), .Z(n16039));
    ORCALUT4 i12318_2_lut (.A(rx_cmd[0]), .B(rx_cmd[2]), .Z(n15727)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i12318_2_lut.init = 16'heeee;
    ORCALUT4 i1_4_lut_adj_83 (.A(n9196), .B(msg[38]), .C(n16657), .D(n16655), 
            .Z(msg_63__N_1904[38])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(74[9] 138[16])
    defparam i1_4_lut_adj_83.init = 16'heca0;
    ORCALUT4 i1_3_lut_4_lut_adj_84 (.A(rx_msg_31__N_1574[7]), .B(n16668), 
            .C(n15354), .D(n16623), .Z(clk2_enable_173)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(263[37:65])
    defparam i1_3_lut_4_lut_adj_84.init = 16'h4000;
    L6MUX21 i12630 (.D0(n16033), .D1(n16034), .SD(tx_N_2479[2]), .Z(n16040));
    ORCALUT4 i6116_3_lut (.A(n9195), .B(\u0_msg[38] ), .C(\u_req[0] ), 
            .Z(n9196)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(112[22] 120[20])
    defparam i6116_3_lut.init = 16'hcaca;
    L6MUX21 i12631 (.D0(n16035), .D1(n16036), .SD(tx_N_2479[2]), .Z(n16041));
    L6MUX21 i12632 (.D0(n16037), .D1(n16038), .SD(tx_N_2479[2]), .Z(n16042));
    ORCALUT4 i6115_3_lut (.A(msg[38]), .B(\u1_msg[38] ), .C(\u_req[1] ), 
            .Z(n9195)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(112[22] 120[20])
    defparam i6115_3_lut.init = 16'hcaca;
    ORCALUT4 i5_1_lut (.A(u_state_3__N_1889), .Z(n5)) /* synthesis lut_function=(!(A)) */ ;
    defparam i5_1_lut.init = 16'h5555;
    ORCALUT4 i1_4_lut_adj_85 (.A(n9198), .B(msg[37]), .C(n16657), .D(n16655), 
            .Z(msg_63__N_1904[37])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(74[9] 138[16])
    defparam i1_4_lut_adj_85.init = 16'heca0;
    ORCALUT4 i6118_3_lut (.A(n9197), .B(\u0_msg[37] ), .C(\u_req[0] ), 
            .Z(n9198)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(112[22] 120[20])
    defparam i6118_3_lut.init = 16'hcaca;
    ORCALUT4 i6117_3_lut (.A(msg[37]), .B(\u1_msg[37] ), .C(\u_req[1] ), 
            .Z(n9197)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(112[22] 120[20])
    defparam i6117_3_lut.init = 16'hcaca;
    CCU2B rx_bit_cnt_5263_add_4_5 (.A0(rx_bit_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(rx_bit_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13596), .COUT(n13597), .S0(n37[3]), .S1(n37[4]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(256[35:49])
    defparam rx_bit_cnt_5263_add_4_5.INIT0 = 16'haaa0;
    defparam rx_bit_cnt_5263_add_4_5.INIT1 = 16'haaa0;
    defparam rx_bit_cnt_5263_add_4_5.INJECT1_0 = "NO";
    defparam rx_bit_cnt_5263_add_4_5.INJECT1_1 = "NO";
    CCU2B rx_bit_cnt_5263_add_4_3 (.A0(rx_bit_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(rx_bit_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13595), .COUT(n13596), .S0(n37[1]), .S1(n37[2]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(256[35:49])
    defparam rx_bit_cnt_5263_add_4_3.INIT0 = 16'haaa0;
    defparam rx_bit_cnt_5263_add_4_3.INIT1 = 16'haaa0;
    defparam rx_bit_cnt_5263_add_4_3.INJECT1_0 = "NO";
    defparam rx_bit_cnt_5263_add_4_3.INJECT1_1 = "NO";
    ORCALUT4 i1_3_lut_4_lut_adj_86 (.A(rx_msg_31__N_1574[6]), .B(n16671), 
            .C(n15354), .D(n16623), .Z(clk2_enable_141)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(263[37:65])
    defparam i1_3_lut_4_lut_adj_86.init = 16'h1000;
    ORCALUT4 i1_4_lut_adj_87 (.A(n9200), .B(msg[36]), .C(n16657), .D(n16655), 
            .Z(msg_63__N_1904[36])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(74[9] 138[16])
    defparam i1_4_lut_adj_87.init = 16'heca0;
    ORCALUT4 i6120_3_lut (.A(n9199), .B(\u0_msg[36] ), .C(\u_req[0] ), 
            .Z(n9200)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(112[22] 120[20])
    defparam i6120_3_lut.init = 16'hcaca;
    L6MUX21 i12660 (.D0(n16062), .D1(n16063), .SD(tx_N_2479[2]), .Z(n16070));
    ORCALUT4 i12316_2_lut (.A(rx_byte_cnt[0]), .B(rx_cmd[7]), .Z(n15725)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i12316_2_lut.init = 16'heeee;
    L6MUX21 i12661 (.D0(n16064), .D1(n16065), .SD(tx_N_2479[2]), .Z(n16071));
    ORCALUT4 i1_2_lut (.A(rx_cmd[5]), .B(rx_byte_cnt[1]), .Z(n15660)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut.init = 16'h4444;
    ORCALUT4 i12434_3_lut (.A(regs[242]), .B(regs[250]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15844)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12434_3_lut.init = 16'hcaca;
    L6MUX21 i12412 (.D0(n15814), .D1(n15815), .SD(rx_msg_31__N_1574[5]), 
            .Z(n15822));
    ORCALUT4 i1_3_lut_4_lut_adj_88 (.A(rx_msg_31__N_1574[7]), .B(n16670), 
            .C(n15354), .D(n16623), .Z(clk2_enable_109)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(263[37:65])
    defparam i1_3_lut_4_lut_adj_88.init = 16'h2000;
    L6MUX21 i12662 (.D0(n16066), .D1(n16067), .SD(tx_N_2479[2]), .Z(n16072));
    ORCALUT4 i6119_3_lut (.A(msg[36]), .B(\u1_msg[36] ), .C(\u_req[1] ), 
            .Z(n9199)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(112[22] 120[20])
    defparam i6119_3_lut.init = 16'hcaca;
    ORCALUT4 i1_3_lut_4_lut_adj_89 (.A(rx_msg_31__N_1574[6]), .B(n16671), 
            .C(n15354), .D(n16623), .Z(clk2_enable_77)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(263[37:65])
    defparam i1_3_lut_4_lut_adj_89.init = 16'h2000;
    ORCALUT4 i1_4_lut_adj_90 (.A(n9202), .B(msg[35]), .C(n16657), .D(n16655), 
            .Z(msg_63__N_1904[35])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(74[9] 138[16])
    defparam i1_4_lut_adj_90.init = 16'heca0;
    ORCALUT4 i1_3_lut_4_lut_adj_91 (.A(n6), .B(n16622), .C(n16623), .D(n16646), 
            .Z(clk2_enable_125)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(217[11:22])
    defparam i1_3_lut_4_lut_adj_91.init = 16'h0040;
    L6MUX21 i12413 (.D0(n15816), .D1(n15817), .SD(rx_msg_31__N_1574[5]), 
            .Z(n15823));
    ORCALUT4 i6122_3_lut (.A(n9201), .B(\u0_msg[35] ), .C(\u_req[0] ), 
            .Z(n9202)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(112[22] 120[20])
    defparam i6122_3_lut.init = 16'hcaca;
    ORCALUT4 i12455_3_lut (.A(regs[80]), .B(regs[88]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15865)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12455_3_lut.init = 16'hcaca;
    ORCALUT4 i1_3_lut_4_lut_adj_92 (.A(rx_msg_31__N_1574[6]), .B(n16672), 
            .C(n16623), .D(n15354), .Z(clk2_enable_291)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(263[37:65])
    defparam i1_3_lut_4_lut_adj_92.init = 16'h1000;
    ORCALUT4 i12607_3_lut (.A(tx_data[36]), .B(tx_data[37]), .C(tx_bit_cnt[0]), 
            .Z(n16017)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i12607_3_lut.init = 16'hacac;
    ORCALUT4 i1_3_lut_4_lut_adj_93 (.A(n6), .B(n16622), .C(n16623), .D(n16645), 
            .Z(clk2_enable_157)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(217[11:22])
    defparam i1_3_lut_4_lut_adj_93.init = 16'h0040;
    ORCALUT4 i6143_3_lut (.A(msg[24]), .B(\u1_msg[24] ), .C(\u_req[1] ), 
            .Z(n9223)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(112[22] 120[20])
    defparam i6143_3_lut.init = 16'hcaca;
    ORCALUT4 i52_4_lut (.A(tx_state[1]), .B(tx_state_2__N_2008), .C(n2[6]), 
            .D(tx_byte_cnt[6]), .Z(tx_byte_cnt_7__N_2092[6])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(146[11:19])
    defparam i52_4_lut.init = 16'heca0;
    ORCALUT4 i12608_3_lut (.A(tx_data[38]), .B(tx_data[39]), .C(tx_bit_cnt[0]), 
            .Z(n16018)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i12608_3_lut.init = 16'hacac;
    ORCALUT4 rx_msg_31__N_1586_bdd_4_lut (.A(n16623), .B(n12286), .C(n16660), 
            .D(rx_msg_31__N_1587), .Z(n16396)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (B (C))) */ ;
    defparam rx_msg_31__N_1586_bdd_4_lut.init = 16'heac0;
    ORCALUT4 i6121_3_lut (.A(msg[35]), .B(\u1_msg[35] ), .C(\u_req[1] ), 
            .Z(n9201)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(112[22] 120[20])
    defparam i6121_3_lut.init = 16'hcaca;
    CCU2B rx_bit_cnt_5263_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(rx_bit_cnt[0]), .B1(n4_adj_2555), .C1(n16628), 
          .D1(rx_freq_cnt[9]), .COUT(n13595), .S1(n37[0]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(256[35:49])
    defparam rx_bit_cnt_5263_add_4_1.INIT0 = 16'h0000;
    defparam rx_bit_cnt_5263_add_4_1.INIT1 = 16'h556a;
    defparam rx_bit_cnt_5263_add_4_1.INJECT1_0 = "NO";
    defparam rx_bit_cnt_5263_add_4_1.INJECT1_1 = "NO";
    ORCALUT4 i1_4_lut_adj_94 (.A(rx_msg_31__N_1574[3]), .B(n11164), .C(n16665), 
            .D(rx_msg_31__N_1574[4]), .Z(n15372)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(217[11:22])
    defparam i1_4_lut_adj_94.init = 16'h8000;
    CCU2B rx_freq_cnt_5262_add_4_11 (.A0(rx_freq_cnt[9]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n13594), .S0(n3[9]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(246[32:47])
    defparam rx_freq_cnt_5262_add_4_11.INIT0 = 16'haaa0;
    defparam rx_freq_cnt_5262_add_4_11.INIT1 = 16'h0000;
    defparam rx_freq_cnt_5262_add_4_11.INJECT1_0 = "NO";
    defparam rx_freq_cnt_5262_add_4_11.INJECT1_1 = "NO";
    ORCALUT4 i1_4_lut_adj_95 (.A(n9204), .B(msg[34]), .C(n16657), .D(n16655), 
            .Z(msg_63__N_1904[34])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(74[9] 138[16])
    defparam i1_4_lut_adj_95.init = 16'heca0;
    ORCALUT4 i6124_3_lut (.A(n9203), .B(\u0_msg[34] ), .C(\u_req[0] ), 
            .Z(n9204)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(112[22] 120[20])
    defparam i6124_3_lut.init = 16'hcaca;
    ORCALUT4 i12609_3_lut (.A(tx_data[40]), .B(tx_data[41]), .C(tx_bit_cnt[0]), 
            .Z(n16019)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i12609_3_lut.init = 16'hacac;
    ORCALUT4 i1_3_lut_4_lut_adj_96 (.A(n6), .B(n16622), .C(n16644), .D(n16623), 
            .Z(clk2_enable_189)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(217[11:22])
    defparam i1_3_lut_4_lut_adj_96.init = 16'h0400;
    ORCALUT4 i58_4_lut (.A(tx_state[1]), .B(tx_state_2__N_2008), .C(n2[5]), 
            .D(tx_byte_cnt[5]), .Z(tx_byte_cnt_7__N_2092[5])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(146[11:19])
    defparam i58_4_lut.init = 16'heca0;
    ORCALUT4 i54_4_lut (.A(tx_state[1]), .B(tx_state_2__N_2008), .C(n2[4]), 
            .D(tx_byte_cnt[4]), .Z(tx_byte_cnt_7__N_2092[4])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(146[11:19])
    defparam i54_4_lut.init = 16'heca0;
    ORCALUT4 i6123_3_lut (.A(msg[34]), .B(\u1_msg[34] ), .C(\u_req[1] ), 
            .Z(n9203)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(112[22] 120[20])
    defparam i6123_3_lut.init = 16'hcaca;
    ORCALUT4 i12610_3_lut (.A(tx_data[42]), .B(tx_data[43]), .C(tx_bit_cnt[0]), 
            .Z(n16020)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i12610_3_lut.init = 16'hacac;
    L6MUX21 i12663 (.D0(n16068), .D1(n16069), .SD(tx_N_2479[2]), .Z(n16073));
    ORCALUT4 i1_2_lut_3_lut_4_lut (.A(tx_bit_cnt[3]), .B(n16676), .C(n16677), 
            .D(n16678), .Z(n14690)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfff8;
    ORCALUT4 i1_4_lut_adj_97 (.A(n9206), .B(msg[33]), .C(n16657), .D(n16655), 
            .Z(msg_63__N_1904[33])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(74[9] 138[16])
    defparam i1_4_lut_adj_97.init = 16'heca0;
    ORCALUT4 i1_4_lut_adj_98 (.A(rx_msg_31__N_1587), .B(rx_req_N_2497), 
            .C(n15133), .D(n15095), .Z(rx_req_N_2495)) /* synthesis lut_function=(A (B+(C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(237[9] 308[16])
    defparam i1_4_lut_adj_98.init = 16'heca8;
    ORCALUT4 select_2300_Select_3_i5_4_lut (.A(n2[3]), .B(tx_byte_cnt[3]), 
            .C(tx_state[1]), .D(tx_state_2__N_2008), .Z(tx_byte_cnt_7__N_2092[3])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(159[9] 203[16])
    defparam select_2300_Select_3_i5_4_lut.init = 16'heca0;
    ORCALUT4 select_2300_Select_2_i5_4_lut (.A(n2[2]), .B(tx_byte_cnt[2]), 
            .C(tx_state[1]), .D(tx_state_2__N_2008), .Z(tx_byte_cnt_7__N_2092[2])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(159[9] 203[16])
    defparam select_2300_Select_2_i5_4_lut.init = 16'heca0;
    L6MUX21 i12414 (.D0(n15818), .D1(n15819), .SD(rx_msg_31__N_1574[5]), 
            .Z(n15824));
    ORCALUT4 i1_2_lut_rep_180_3_lut_4_lut (.A(rx_msg_31__N_1574[7]), .B(n16668), 
            .C(n16665), .D(n11164), .Z(n16621)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_180_3_lut_4_lut.init = 16'h8000;
    ORCALUT4 i1_3_lut_4_lut_adj_99 (.A(n6), .B(n16622), .C(n16623), .D(n16643), 
            .Z(clk2_enable_230)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(217[11:22])
    defparam i1_3_lut_4_lut_adj_99.init = 16'h0040;
    ORCALUT4 i6126_3_lut (.A(n9205), .B(\u0_msg[33] ), .C(\u_req[0] ), 
            .Z(n9206)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(112[22] 120[20])
    defparam i6126_3_lut.init = 16'hcaca;
    ORCALUT4 select_2300_Select_1_i5_4_lut (.A(n2[1]), .B(tx_byte_cnt[1]), 
            .C(tx_state[1]), .D(tx_state_2__N_2008), .Z(tx_byte_cnt_7__N_2092[1])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(159[9] 203[16])
    defparam select_2300_Select_1_i5_4_lut.init = 16'heca0;
    ORCALUT4 i6125_3_lut (.A(msg[33]), .B(\u1_msg[33] ), .C(\u_req[1] ), 
            .Z(n9205)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(112[22] 120[20])
    defparam i6125_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_100 (.A(n9208), .B(msg[32]), .C(n16657), .D(n16655), 
            .Z(msg_63__N_1904[32])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(74[9] 138[16])
    defparam i1_4_lut_adj_100.init = 16'heca0;
    ORCALUT4 i1_4_lut_adj_101 (.A(n16663), .B(n16623), .C(n15202), .D(n11164), 
            .Z(n15133)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam i1_4_lut_adj_101.init = 16'h8000;
    ORCALUT4 i8982_2_lut (.A(tx_state[0]), .B(n17031), .Z(clk2_enable_366)) /* synthesis lut_function=(A (B)) */ ;
    defparam i8982_2_lut.init = 16'h8888;
    ORCALUT4 select_5043_Select_0_i4_4_lut (.A(full), .B(wr), .C(\u_state[0] ), 
            .D(u_state_3__N_1889), .Z(wr_N_2486)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(74[9] 138[16])
    defparam select_5043_Select_0_i4_4_lut.init = 16'hdc50;
    ORCALUT4 i6128_3_lut (.A(n9207), .B(\u0_msg[32] ), .C(\u_req[0] ), 
            .Z(n9208)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(112[22] 120[20])
    defparam i6128_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_adj_102 (.A(rx_req), .B(n14678), .Z(n15202)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam i1_2_lut_adj_102.init = 16'h4444;
    ORCALUT4 i6127_3_lut (.A(msg[32]), .B(\u1_msg[32] ), .C(\u_req[1] ), 
            .Z(n9207)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(112[22] 120[20])
    defparam i6127_3_lut.init = 16'hcaca;
    L6MUX21 i12415 (.D0(n15820), .D1(n15821), .SD(rx_msg_31__N_1574[5]), 
            .Z(n15825));
    ORCALUT4 i8747_2_lut (.A(rx_req), .B(rx_ack), .Z(rx_req_N_2497)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(235[9] 236[25])
    defparam i8747_2_lut.init = 16'h2222;
    ORCALUT4 i1_4_lut_adj_103 (.A(n783[31]), .B(msg[31]), .C(u_state_3__N_1889), 
            .D(n16655), .Z(msg_63__N_1904[31])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(74[9] 138[16])
    defparam i1_4_lut_adj_103.init = 16'heca0;
    ORCALUT4 select_5044_Select_0_i4_4_lut (.A(rx_ack), .B(rx_req), .C(\u_state[0] ), 
            .D(u_state_3__N_1889), .Z(rx_ack_N_2504)) /* synthesis lut_function=(A (C+(D))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(74[9] 138[16])
    defparam select_5044_Select_0_i4_4_lut.init = 16'heea0;
    ORCALUT4 i12611_3_lut (.A(tx_data[44]), .B(tx_data[45]), .C(tx_bit_cnt[0]), 
            .Z(n16021)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i12611_3_lut.init = 16'hacac;
    ORCALUT4 i1_4_lut_adj_104 (.A(n783[30]), .B(msg[30]), .C(u_state_3__N_1889), 
            .D(n16655), .Z(msg_63__N_1904[30])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(74[9] 138[16])
    defparam i1_4_lut_adj_104.init = 16'heca0;
    ORCALUT4 i1_4_lut_adj_105 (.A(n783[29]), .B(msg[29]), .C(u_state_3__N_1889), 
            .D(n16655), .Z(msg_63__N_1904[29])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(74[9] 138[16])
    defparam i1_4_lut_adj_105.init = 16'heca0;
    ORCALUT4 i12612_3_lut (.A(tx_data[46]), .B(tx_data[47]), .C(tx_bit_cnt[0]), 
            .Z(n16022)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i12612_3_lut.init = 16'hacac;
    ORCALUT4 select_2300_Select_0_i5_4_lut (.A(n2[0]), .B(tx_byte_cnt[0]), 
            .C(tx_state[1]), .D(tx_state_2__N_2008), .Z(tx_byte_cnt_7__N_2092[0])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(159[9] 203[16])
    defparam select_2300_Select_0_i5_4_lut.init = 16'heca0;
    ORCALUT4 i1_2_lut_rep_214 (.A(u_state[1]), .B(\u_state[0] ), .Z(n16655)) /* synthesis lut_function=(A+(B)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(74[9] 138[16])
    defparam i1_2_lut_rep_214.init = 16'heeee;
    ORCALUT4 i1_4_lut_adj_106 (.A(n783[28]), .B(msg[28]), .C(u_state_3__N_1889), 
            .D(n16655), .Z(msg_63__N_1904[28])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(74[9] 138[16])
    defparam i1_4_lut_adj_106.init = 16'heca0;
    ORCALUT4 i1_4_lut_adj_107 (.A(n783[27]), .B(msg[27]), .C(u_state_3__N_1889), 
            .D(n16655), .Z(msg_63__N_1904[27])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(74[9] 138[16])
    defparam i1_4_lut_adj_107.init = 16'heca0;
    ORCALUT4 i12613_3_lut (.A(tx_data[48]), .B(tx_data[49]), .C(tx_bit_cnt[0]), 
            .Z(n16023)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i12613_3_lut.init = 16'hacac;
    L6MUX21 i12443 (.D0(n15845), .D1(n15846), .SD(rx_msg_31__N_1574[5]), 
            .Z(n15853));
    ORCALUT4 i12614_3_lut (.A(tx_data[50]), .B(tx_data[51]), .C(tx_bit_cnt[0]), 
            .Z(n16024)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i12614_3_lut.init = 16'hacac;
    ORCALUT4 n23_bdd_2_lut_12970_3_lut (.A(u_state[1]), .B(\u_state[0] ), 
            .C(msg[20]), .Z(n16437)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(74[9] 138[16])
    defparam n23_bdd_2_lut_12970_3_lut.init = 16'he0e0;
    ORCALUT4 i1_4_lut_adj_108 (.A(n783[26]), .B(msg[26]), .C(u_state_3__N_1889), 
            .D(n16655), .Z(msg_63__N_1904[26])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(74[9] 138[16])
    defparam i1_4_lut_adj_108.init = 16'heca0;
    ORCALUT4 n23_bdd_2_lut_12966_3_lut (.A(u_state[1]), .B(\u_state[0] ), 
            .C(msg[19]), .Z(n16434)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(74[9] 138[16])
    defparam n23_bdd_2_lut_12966_3_lut.init = 16'he0e0;
    L6MUX21 i12444 (.D0(n15847), .D1(n15848), .SD(rx_msg_31__N_1574[5]), 
            .Z(n15854));
    L6MUX21 i12445 (.D0(n15849), .D1(n15850), .SD(rx_msg_31__N_1574[5]), 
            .Z(n15855));
    L6MUX21 i12446 (.D0(n15851), .D1(n15852), .SD(rx_msg_31__N_1574[5]), 
            .Z(n15856));
    L6MUX21 i12474 (.D0(n15876), .D1(n15877), .SD(rx_msg_31__N_1574[5]), 
            .Z(n15884));
    ORCALUT4 i1_4_lut_adj_109 (.A(n783[25]), .B(msg[25]), .C(u_state_3__N_1889), 
            .D(n16655), .Z(msg_63__N_1904[25])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(74[9] 138[16])
    defparam i1_4_lut_adj_109.init = 16'heca0;
    L6MUX21 i12475 (.D0(n15878), .D1(n15879), .SD(rx_msg_31__N_1574[5]), 
            .Z(n15885));
    ORCALUT4 i1_4_lut_adj_110 (.A(n783[24]), .B(msg[24]), .C(u_state_3__N_1889), 
            .D(n16655), .Z(msg_63__N_1904[24])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(74[9] 138[16])
    defparam i1_4_lut_adj_110.init = 16'heca0;
    ORCALUT4 select_5040_Select_0_i5_4_lut (.A(rd), .B(empty), .C(tx_state[1]), 
            .D(tx_state_2__N_2008), .Z(rd_N_2490)) /* synthesis lut_function=(A (C+(D))+!A !(B+!(D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(159[9] 203[16])
    defparam select_5040_Select_0_i5_4_lut.init = 16'hbba0;
    ORCALUT4 i1_4_lut_adj_111 (.A(n16621), .B(n16623), .C(n4), .D(n6_adj_2558), 
            .Z(clk2_enable_45)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(217[11:22])
    defparam i1_4_lut_adj_111.init = 16'h0080;
    ORCALUT4 equal_5012_i6_2_lut (.A(rx_msg_31__N_1574[3]), .B(rx_msg_31__N_1574[4]), 
            .Z(n6_adj_2558)) /* synthesis lut_function=(A+(B)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(263[37:65])
    defparam equal_5012_i6_2_lut.init = 16'heeee;
    ORCALUT4 n23_bdd_2_lut_3_lut (.A(u_state[1]), .B(\u_state[0] ), .C(msg[23]), 
            .Z(n16450)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(74[9] 138[16])
    defparam n23_bdd_2_lut_3_lut.init = 16'he0e0;
    L6MUX21 i12476 (.D0(n15880), .D1(n15881), .SD(rx_msg_31__N_1574[5]), 
            .Z(n15886));
    ORCALUT4 i12615_3_lut (.A(tx_data[52]), .B(tx_data[53]), .C(tx_bit_cnt[0]), 
            .Z(n16025)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i12615_3_lut.init = 16'hacac;
    L6MUX21 i12477 (.D0(n15882), .D1(n15883), .SD(rx_msg_31__N_1574[5]), 
            .Z(n15887));
    ORCALUT4 i12616_3_lut (.A(tx_data[54]), .B(tx_data[55]), .C(tx_bit_cnt[0]), 
            .Z(n16026)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i12616_3_lut.init = 16'hacac;
    ORCALUT4 rx_msg_31__N_1586_bdd_4_lut_12944 (.A(n16623), .B(n11164), 
            .C(rx_byte_cnt[1]), .D(rx_byte_cnt[0]), .Z(n38_adj_2559)) /* synthesis lut_function=(!((B ((D)+!C)+!B (C+!(D)))+!A)) */ ;
    defparam rx_msg_31__N_1586_bdd_4_lut_12944.init = 16'h0280;
    ORCALUT4 i1_4_lut_else_4_lut (.A(rx_msg_31__N_1587), .B(n16623), .C(rx_byte_cnt[0]), 
            .D(n11164), .Z(n16680)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_4_lut_else_4_lut.init = 16'h0008;
    ORCALUT4 n23_bdd_2_lut_12974_3_lut (.A(u_state[1]), .B(\u_state[0] ), 
            .C(msg[21]), .Z(n16444)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(74[9] 138[16])
    defparam n23_bdd_2_lut_12974_3_lut.init = 16'he0e0;
    PFUMX i12503 (.BLUT(n15903), .ALUT(n15904), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15913));
    PFUMX i12504 (.BLUT(n15905), .ALUT(n15906), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15914));
    ORCALUT4 i12617_3_lut (.A(tx_data[56]), .B(tx_data[57]), .C(tx_bit_cnt[0]), 
            .Z(n16027)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i12617_3_lut.init = 16'hacac;
    PFUMX i12528 (.BLUT(n15922), .ALUT(n15923), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15938));
    ORCALUT4 i6144_3_lut (.A(\u0_msg[24] ), .B(rx_msg[24]), .C(rx_req), 
            .Z(n9224)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(112[22] 120[20])
    defparam i6144_3_lut.init = 16'hcaca;
    ORCALUT4 i12618_3_lut (.A(tx_data[58]), .B(tx_data[59]), .C(tx_bit_cnt[0]), 
            .Z(n16028)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i12618_3_lut.init = 16'hacac;
    ORCALUT4 n23_bdd_2_lut_12978_3_lut (.A(u_state[1]), .B(\u_state[0] ), 
            .C(msg[22]), .Z(n16447)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(74[9] 138[16])
    defparam n23_bdd_2_lut_12978_3_lut.init = 16'he0e0;
    FD1P3AX regs_i0_i146 (.D(rx_reg_data[2]), .SP(clk2_enable_125), .CK(clk2), 
            .Q(regs[146])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i146.GSR = "DISABLED";
    FD1P3AX regs_i0_i145 (.D(rx_reg_data[1]), .SP(clk2_enable_125), .CK(clk2), 
            .Q(regs[145])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i145.GSR = "DISABLED";
    FD1P3AX regs_i0_i144 (.D(rx_reg_data[0]), .SP(clk2_enable_125), .CK(clk2), 
            .Q(regs[144])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i144.GSR = "DISABLED";
    ORCALUT4 i12387_3_lut (.A(n15795), .B(n15796), .C(rx_msg_31__N_1574[7]), 
            .Z(rx_msg_28__N_1627)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12387_3_lut.init = 16'hcaca;
    ORCALUT4 select_2301_Select_0_i5_4_lut (.A(n1509[0]), .B(tx_bit_cnt[0]), 
            .C(tx_state[1]), .D(tx_state_2__N_2008), .Z(tx_bit_cnt_7__N_2100[0])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(159[9] 203[16])
    defparam select_2301_Select_0_i5_4_lut.init = 16'heca0;
    FD1P3AX regs_i0_i143 (.D(rx_reg_data[7]), .SP(clk2_enable_133), .CK(clk2), 
            .Q(regs[143])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i143.GSR = "DISABLED";
    ORCALUT4 i1_3_lut_4_lut_adj_112 (.A(n4), .B(n15372), .C(n16623), .D(n16648), 
            .Z(clk2_enable_53)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(217[11:22])
    defparam i1_3_lut_4_lut_adj_112.init = 16'h0080;
    FD1P3AX regs_i0_i142 (.D(rx_reg_data[6]), .SP(clk2_enable_133), .CK(clk2), 
            .Q(regs[142])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i142.GSR = "DISABLED";
    ORCALUT4 i12400_3_lut (.A(regs[195]), .B(regs[203]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15810)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12400_3_lut.init = 16'hcaca;
    ORCALUT4 mux_5247_i1_4_lut (.A(tx_bit_cnt[0]), .B(n7[0]), .C(n12086), 
            .D(n14690), .Z(n1509[0])) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((C+(D))+!B)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(194[26] 197[24])
    defparam mux_5247_i1_4_lut.init = 16'ha0ac;
    CCU2B rx_freq_cnt_5262_add_4_9 (.A0(rx_freq_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(rx_freq_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13593), .COUT(n13594), .S0(n3[7]), .S1(n3[8]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(246[32:47])
    defparam rx_freq_cnt_5262_add_4_9.INIT0 = 16'haaa0;
    defparam rx_freq_cnt_5262_add_4_9.INIT1 = 16'haaa0;
    defparam rx_freq_cnt_5262_add_4_9.INJECT1_0 = "NO";
    defparam rx_freq_cnt_5262_add_4_9.INJECT1_1 = "NO";
    FD1P3AX regs_i0_i141 (.D(rx_reg_data[5]), .SP(clk2_enable_133), .CK(clk2), 
            .Q(regs[141])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i141.GSR = "DISABLED";
    CCU2B rx_freq_cnt_5262_add_4_7 (.A0(rx_freq_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(rx_freq_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13592), .COUT(n13593), .S0(n3[5]), .S1(n3[6]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(246[32:47])
    defparam rx_freq_cnt_5262_add_4_7.INIT0 = 16'haaa0;
    defparam rx_freq_cnt_5262_add_4_7.INIT1 = 16'haaa0;
    defparam rx_freq_cnt_5262_add_4_7.INJECT1_0 = "NO";
    defparam rx_freq_cnt_5262_add_4_7.INJECT1_1 = "NO";
    ORCALUT4 i1_3_lut_4_lut_adj_113 (.A(n4), .B(n16621), .C(n16623), .D(n6), 
            .Z(clk2_enable_21)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(217[11:22])
    defparam i1_3_lut_4_lut_adj_113.init = 16'h0080;
    FD1P3AX regs_i0_i140 (.D(rx_reg_data[4]), .SP(clk2_enable_133), .CK(clk2), 
            .Q(regs[140])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i140.GSR = "DISABLED";
    ORCALUT4 i1_3_lut_4_lut_adj_114 (.A(n4), .B(n16621), .C(n16623), .D(n6_adj_2561), 
            .Z(clk2_enable_34)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(217[11:22])
    defparam i1_3_lut_4_lut_adj_114.init = 16'h0080;
    CCU2B rx_freq_cnt_5262_add_4_5 (.A0(rx_freq_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(rx_freq_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13591), .COUT(n13592), .S0(n3[3]), .S1(n3[4]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(246[32:47])
    defparam rx_freq_cnt_5262_add_4_5.INIT0 = 16'haaa0;
    defparam rx_freq_cnt_5262_add_4_5.INIT1 = 16'haaa0;
    defparam rx_freq_cnt_5262_add_4_5.INJECT1_0 = "NO";
    defparam rx_freq_cnt_5262_add_4_5.INJECT1_1 = "NO";
    PFUMX i12529 (.BLUT(n15924), .ALUT(n15925), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15939));
    ORCALUT4 i1_3_lut_4_lut_adj_115 (.A(n4), .B(n15372), .C(n16623), .D(n16647), 
            .Z(clk2_enable_85)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(217[11:22])
    defparam i1_3_lut_4_lut_adj_115.init = 16'h0080;
    FD1P3AX regs_i0_i139 (.D(rx_reg_data[3]), .SP(clk2_enable_133), .CK(clk2), 
            .Q(regs[139])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i139.GSR = "DISABLED";
    FD1P3AX regs_i0_i138 (.D(rx_reg_data[2]), .SP(clk2_enable_133), .CK(clk2), 
            .Q(regs[138])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i138.GSR = "DISABLED";
    FD1P3AX regs_i0_i137 (.D(rx_reg_data[1]), .SP(clk2_enable_133), .CK(clk2), 
            .Q(regs[137])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i137.GSR = "DISABLED";
    FD1P3AX regs_i0_i136 (.D(rx_reg_data[0]), .SP(clk2_enable_133), .CK(clk2), 
            .Q(regs[136])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i136.GSR = "DISABLED";
    FD1P3AX regs_i0_i135 (.D(rx_reg_data[7]), .SP(clk2_enable_141), .CK(clk2), 
            .Q(regs[135])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i135.GSR = "DISABLED";
    FD1P3AX regs_i0_i134 (.D(rx_reg_data[6]), .SP(clk2_enable_141), .CK(clk2), 
            .Q(regs[134])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i134.GSR = "DISABLED";
    FD1P3AX regs_i0_i133 (.D(rx_reg_data[5]), .SP(clk2_enable_141), .CK(clk2), 
            .Q(regs[133])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i133.GSR = "DISABLED";
    FD1P3AX regs_i0_i132 (.D(rx_reg_data[4]), .SP(clk2_enable_141), .CK(clk2), 
            .Q(regs[132])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i132.GSR = "DISABLED";
    ORCALUT4 i1_4_lut_adj_116 (.A(tx_byte_cnt[6]), .B(n16675), .C(tx_byte_cnt[7]), 
            .D(tx_byte_cnt[5]), .Z(n12086)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam i1_4_lut_adj_116.init = 16'hfffe;
    PFUMX i12530 (.BLUT(n15926), .ALUT(n15927), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15940));
    ORCALUT4 i1_rep_26_2_lut_3_lut_4_lut (.A(tx_byte_cnt[0]), .B(tx_bit_cnt[3]), 
            .C(tx_bit_cnt[0]), .D(n16676), .Z(tx_N_2479[3])) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+(D))))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(180[43:74])
    defparam i1_rep_26_2_lut_3_lut_4_lut.init = 16'h6669;
    PFUMX i12531 (.BLUT(n15928), .ALUT(n15929), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15941));
    ORCALUT4 sys_rstn_I_0_1_lut (.A(n17031), .Z(sys_rstn_N_889)) /* synthesis lut_function=(!(A)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(69[9:18])
    defparam sys_rstn_I_0_1_lut.init = 16'h5555;
    ORCALUT4 i1_2_lut_rep_216 (.A(u_state_3__N_1889), .B(rx_req), .Z(n16657)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(74[9] 138[16])
    defparam i1_2_lut_rep_216.init = 16'h2222;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_117 (.A(u_state_3__N_1889), .B(rx_req), 
            .C(\u_req[0] ), .D(\u_req[1] ), .Z(n10287)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(74[9] 138[16])
    defparam i1_2_lut_3_lut_4_lut_adj_117.init = 16'h0002;
    FD1P3AX regs_i0_i131 (.D(rx_reg_data[3]), .SP(clk2_enable_141), .CK(clk2), 
            .Q(regs[131])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i131.GSR = "DISABLED";
    FD1P3AX regs_i0_i130 (.D(rx_reg_data[2]), .SP(clk2_enable_141), .CK(clk2), 
            .Q(regs[130])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i130.GSR = "DISABLED";
    FD1P3AX regs_i0_i129 (.D(rx_reg_data[1]), .SP(clk2_enable_141), .CK(clk2), 
            .Q(regs[129])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i129.GSR = "DISABLED";
    PFUMX i12532 (.BLUT(n15930), .ALUT(n15931), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15942));
    ORCALUT4 n23_bdd_4_lut_12965 (.A(n16654), .B(n16655), .C(rx_req), 
            .D(msg[19]), .Z(n16433)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C+(D))) */ ;
    defparam n23_bdd_4_lut_12965.init = 16'hfdf0;
    PFUMX i12533 (.BLUT(n15932), .ALUT(n15933), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15943));
    FD1P3AX regs_i0_i128 (.D(rx_reg_data[0]), .SP(clk2_enable_141), .CK(clk2), 
            .Q(regs[128])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i128.GSR = "DISABLED";
    FD1P3AX regs_i0_i127 (.D(rx_reg_data[7]), .SP(clk2_enable_149), .CK(clk2), 
            .Q(regs[127])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i127.GSR = "DISABLED";
    FD1P3AX regs_i0_i126 (.D(rx_reg_data[6]), .SP(clk2_enable_149), .CK(clk2), 
            .Q(regs[126])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i126.GSR = "DISABLED";
    FD1P3AX regs_i0_i125 (.D(rx_reg_data[5]), .SP(clk2_enable_149), .CK(clk2), 
            .Q(regs[125])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i125.GSR = "DISABLED";
    ORCALUT4 i1_3_lut_4_lut_adj_118 (.A(n4), .B(n15372), .C(n16623), .D(n16646), 
            .Z(clk2_enable_117)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(217[11:22])
    defparam i1_3_lut_4_lut_adj_118.init = 16'h0080;
    FD1P3AX regs_i0_i124 (.D(rx_reg_data[4]), .SP(clk2_enable_149), .CK(clk2), 
            .Q(regs[124])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i124.GSR = "DISABLED";
    FD1P3AX regs_i0_i123 (.D(rx_reg_data[3]), .SP(clk2_enable_149), .CK(clk2), 
            .Q(regs[123])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i123.GSR = "DISABLED";
    FD1P3AX regs_i0_i122 (.D(rx_reg_data[2]), .SP(clk2_enable_149), .CK(clk2), 
            .Q(regs[122])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i122.GSR = "DISABLED";
    FD1P3AX regs_i0_i121 (.D(rx_reg_data[1]), .SP(clk2_enable_149), .CK(clk2), 
            .Q(regs[121])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i121.GSR = "DISABLED";
    FD1P3AX regs_i0_i120 (.D(rx_reg_data[0]), .SP(clk2_enable_149), .CK(clk2), 
            .Q(regs[120])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i120.GSR = "DISABLED";
    FD1P3AX regs_i0_i119 (.D(rx_reg_data[7]), .SP(clk2_enable_157), .CK(clk2), 
            .Q(regs[119])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i119.GSR = "DISABLED";
    ORCALUT4 i1_4_lut_then_4_lut (.A(rx_msg_31__N_1587), .B(n16623), .C(rx_byte_cnt[0]), 
            .D(n11164), .Z(n16681)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_4_lut_then_4_lut.init = 16'h0800;
    ORCALUT4 i12887_3_lut_4_lut (.A(rx_req), .B(\u_req[0] ), .C(u_state_3__N_1889), 
            .D(\u_state[0] ), .Z(clk2_enable_369)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B (D)))) */ ;
    defparam i12887_3_lut_4_lut.init = 16'h001f;
    FD1P3AX regs_i0_i118 (.D(rx_reg_data[6]), .SP(clk2_enable_157), .CK(clk2), 
            .Q(regs[118])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i118.GSR = "DISABLED";
    ORCALUT4 i12619_3_lut (.A(tx_data[60]), .B(tx_data[61]), .C(tx_bit_cnt[0]), 
            .Z(n16029)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i12619_3_lut.init = 16'hacac;
    FD1P3AX regs_i0_i117 (.D(rx_reg_data[5]), .SP(clk2_enable_157), .CK(clk2), 
            .Q(regs[117])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i117.GSR = "DISABLED";
    FD1P3AX regs_i0_i116 (.D(rx_reg_data[4]), .SP(clk2_enable_157), .CK(clk2), 
            .Q(regs[116])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i116.GSR = "DISABLED";
    FD1P3AX regs_i0_i115 (.D(rx_reg_data[3]), .SP(clk2_enable_157), .CK(clk2), 
            .Q(regs[115])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i115.GSR = "DISABLED";
    PFUMX i12534 (.BLUT(n15934), .ALUT(n15935), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15944));
    FD1P3AX regs_i0_i114 (.D(rx_reg_data[2]), .SP(clk2_enable_157), .CK(clk2), 
            .Q(regs[114])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i114.GSR = "DISABLED";
    FD1P3AX regs_i0_i113 (.D(rx_reg_data[1]), .SP(clk2_enable_157), .CK(clk2), 
            .Q(regs[113])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i113.GSR = "DISABLED";
    FD1P3AX regs_i0_i112 (.D(rx_reg_data[0]), .SP(clk2_enable_157), .CK(clk2), 
            .Q(regs[112])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i112.GSR = "DISABLED";
    ORCALUT4 i1_3_lut_4_lut_adj_119 (.A(u_state_3__N_1889), .B(rx_req), 
            .C(n26), .D(msg[18]), .Z(msg_63__N_1904[18])) /* synthesis lut_function=(A (B+(C (D)))+!A (C (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(74[9] 138[16])
    defparam i1_3_lut_4_lut_adj_119.init = 16'hf888;
    FD1P3AX regs_i0_i111 (.D(rx_reg_data[7]), .SP(clk2_enable_165), .CK(clk2), 
            .Q(regs[111])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i111.GSR = "DISABLED";
    ORCALUT4 i12620_3_lut (.A(tx_data[62]), .B(tx_data[63]), .C(tx_bit_cnt[0]), 
            .Z(n16030)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i12620_3_lut.init = 16'hacac;
    ORCALUT4 i1_3_lut_4_lut_adj_120 (.A(u_state_3__N_1889), .B(rx_req), 
            .C(n26), .D(msg[17]), .Z(msg_63__N_1904[17])) /* synthesis lut_function=(A (B+(C (D)))+!A (C (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(74[9] 138[16])
    defparam i1_3_lut_4_lut_adj_120.init = 16'hf888;
    FD1P3AX regs_i0_i110 (.D(rx_reg_data[6]), .SP(clk2_enable_165), .CK(clk2), 
            .Q(regs[110])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i110.GSR = "DISABLED";
    FD1P3AX regs_i0_i109 (.D(rx_reg_data[5]), .SP(clk2_enable_165), .CK(clk2), 
            .Q(regs[109])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i109.GSR = "DISABLED";
    PFUMX i12535 (.BLUT(n15936), .ALUT(n15937), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15945));
    FD1P3AX regs_i0_i108 (.D(rx_reg_data[4]), .SP(clk2_enable_165), .CK(clk2), 
            .Q(regs[108])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i108.GSR = "DISABLED";
    FD1P3AX regs_i0_i107 (.D(rx_reg_data[3]), .SP(clk2_enable_165), .CK(clk2), 
            .Q(regs[107])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i107.GSR = "DISABLED";
    ORCALUT4 i1_4_lut_adj_121 (.A(n12286), .B(rx_state_3__N_2108), .C(rx_state_3__N_2110), 
            .D(n40_adj_2563), .Z(n9278)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_121.init = 16'heca0;
    PFUMX i12559 (.BLUT(n15953), .ALUT(n15954), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15969));
    ORCALUT4 i1_3_lut_4_lut_adj_122 (.A(n16622), .B(n16649), .C(n6), .D(n16623), 
            .Z(clk2_enable_266)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(217[11:22])
    defparam i1_3_lut_4_lut_adj_122.init = 16'h0200;
    FD1P3AX regs_i0_i106 (.D(rx_reg_data[2]), .SP(clk2_enable_165), .CK(clk2), 
            .Q(regs[106])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i106.GSR = "DISABLED";
    FD1P3AX regs_i0_i105 (.D(rx_reg_data[1]), .SP(clk2_enable_165), .CK(clk2), 
            .Q(regs[105])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i105.GSR = "DISABLED";
    FD1P3AX regs_i0_i104 (.D(rx_reg_data[0]), .SP(clk2_enable_165), .CK(clk2), 
            .Q(regs[104])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i104.GSR = "DISABLED";
    ORCALUT4 i1_2_lut_adj_123 (.A(rx_dly[1]), .B(rx_dly[0]), .Z(n40_adj_2563)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_adj_123.init = 16'hdddd;
    FD1P3AX regs_i0_i103 (.D(rx_reg_data[7]), .SP(clk2_enable_173), .CK(clk2), 
            .Q(regs[103])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i103.GSR = "DISABLED";
    FD1P3AX regs_i0_i102 (.D(rx_reg_data[6]), .SP(clk2_enable_173), .CK(clk2), 
            .Q(regs[102])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i102.GSR = "DISABLED";
    ORCALUT4 i1_3_lut_4_lut_adj_124 (.A(n16622), .B(n16649), .C(n6_adj_2561), 
            .D(n16623), .Z(clk2_enable_274)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(217[11:22])
    defparam i1_3_lut_4_lut_adj_124.init = 16'h0200;
    ORCALUT4 i12388_3_lut (.A(regs[3]), .B(regs[11]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15798)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12388_3_lut.init = 16'hcaca;
    ORCALUT4 i1_3_lut_4_lut_adj_125 (.A(n4), .B(n15372), .C(n16623), .D(n16645), 
            .Z(clk2_enable_149)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(217[11:22])
    defparam i1_3_lut_4_lut_adj_125.init = 16'h0080;
    ORCALUT4 i12389_3_lut (.A(regs[19]), .B(regs[27]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15799)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12389_3_lut.init = 16'hcaca;
    FD1P3AX regs_i0_i101 (.D(rx_reg_data[5]), .SP(clk2_enable_173), .CK(clk2), 
            .Q(regs[101])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i101.GSR = "DISABLED";
    ORCALUT4 i12390_3_lut (.A(regs[35]), .B(regs[43]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15800)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12390_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_rep_219 (.A(rx_state_3__N_2109), .B(rx_state_3__N_2110), 
            .Z(n16660)) /* synthesis lut_function=(A+(B)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(212[11:19])
    defparam i1_2_lut_rep_219.init = 16'heeee;
    FD1P3AX regs_i0_i100 (.D(rx_reg_data[4]), .SP(clk2_enable_173), .CK(clk2), 
            .Q(regs[100])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i100.GSR = "DISABLED";
    FD1P3AX regs_i0_i99 (.D(rx_reg_data[3]), .SP(clk2_enable_173), .CK(clk2), 
            .Q(regs[99])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i99.GSR = "DISABLED";
    FD1P3AX regs_i0_i98 (.D(rx_reg_data[2]), .SP(clk2_enable_173), .CK(clk2), 
            .Q(regs[98])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i98.GSR = "DISABLED";
    FD1P3AX regs_i0_i97 (.D(rx_reg_data[1]), .SP(clk2_enable_173), .CK(clk2), 
            .Q(regs[97])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i97.GSR = "DISABLED";
    ORCALUT4 i12391_3_lut (.A(regs[51]), .B(regs[59]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15801)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12391_3_lut.init = 16'hcaca;
    FD1P3AX regs_i0_i96 (.D(rx_reg_data[0]), .SP(clk2_enable_173), .CK(clk2), 
            .Q(regs[96])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i96.GSR = "DISABLED";
    ORCALUT4 i1_3_lut_4_lut_adj_126 (.A(n6_adj_2561), .B(n16622), .C(n16623), 
            .D(n16648), .Z(clk2_enable_69)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(217[11:22])
    defparam i1_3_lut_4_lut_adj_126.init = 16'h0040;
    ORCALUT4 i1_4_lut_adj_127 (.A(n5_adj_2564), .B(n15070), .C(rx_freq_cnt[8]), 
            .D(rx_freq_cnt[6]), .Z(n12286)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(217[11:22])
    defparam i1_4_lut_adj_127.init = 16'hfffe;
    FD1P3AX regs_i0_i95 (.D(rx_reg_data[7]), .SP(clk2_enable_181), .CK(clk2), 
            .Q(regs[95])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i95.GSR = "DISABLED";
    FD1P3AX regs_i0_i94 (.D(rx_reg_data[6]), .SP(clk2_enable_181), .CK(clk2), 
            .Q(regs[94])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i94.GSR = "DISABLED";
    FD1P3AX regs_i0_i93 (.D(rx_reg_data[5]), .SP(clk2_enable_181), .CK(clk2), 
            .Q(regs[93])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i93.GSR = "DISABLED";
    ORCALUT4 i1_3_lut_4_lut_adj_128 (.A(n6_adj_2561), .B(n16622), .C(n16623), 
            .D(n16647), .Z(clk2_enable_101)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(217[11:22])
    defparam i1_3_lut_4_lut_adj_128.init = 16'h0040;
    FD1P3AX regs_i0_i92 (.D(rx_reg_data[4]), .SP(clk2_enable_181), .CK(clk2), 
            .Q(regs[92])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i92.GSR = "DISABLED";
    FD1P3AX regs_i0_i91 (.D(rx_reg_data[3]), .SP(clk2_enable_181), .CK(clk2), 
            .Q(regs[91])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i91.GSR = "DISABLED";
    ORCALUT4 i12636_3_lut (.A(tx_data[0]), .B(tx_data[1]), .C(tx_bit_cnt[0]), 
            .Z(n16046)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i12636_3_lut.init = 16'hacac;
    FD1P3AX regs_i0_i90 (.D(rx_reg_data[2]), .SP(clk2_enable_181), .CK(clk2), 
            .Q(regs[90])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i90.GSR = "DISABLED";
    PFUMX i12560 (.BLUT(n15955), .ALUT(n15956), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15970));
    PFUMX i12561 (.BLUT(n15957), .ALUT(n15958), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15971));
    FD1P3AX regs_i0_i89 (.D(rx_reg_data[1]), .SP(clk2_enable_181), .CK(clk2), 
            .Q(regs[89])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i89.GSR = "DISABLED";
    FD1P3AX regs_i0_i88 (.D(rx_reg_data[0]), .SP(clk2_enable_181), .CK(clk2), 
            .Q(regs[88])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i88.GSR = "DISABLED";
    PFUMX i12562 (.BLUT(n15959), .ALUT(n15960), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15972));
    ORCALUT4 i1_3_lut_4_lut_adj_129 (.A(n6_adj_2561), .B(n16622), .C(n16623), 
            .D(n16646), .Z(clk2_enable_133)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(217[11:22])
    defparam i1_3_lut_4_lut_adj_129.init = 16'h0040;
    ORCALUT4 i1_2_lut_adj_130 (.A(rx_freq_cnt[9]), .B(rx_freq_cnt[7]), .Z(n5_adj_2564)) /* synthesis lut_function=(A+(B)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(246[32:47])
    defparam i1_2_lut_adj_130.init = 16'heeee;
    ORCALUT4 i1_3_lut_4_lut_adj_131 (.A(n6_adj_2561), .B(n16622), .C(n16623), 
            .D(n16645), .Z(clk2_enable_165)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(217[11:22])
    defparam i1_3_lut_4_lut_adj_131.init = 16'h0040;
    ORCALUT4 i12637_3_lut (.A(tx_data[2]), .B(tx_data[3]), .C(tx_bit_cnt[0]), 
            .Z(n16047)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i12637_3_lut.init = 16'hacac;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_132 (.A(rx_state_3__N_2109), .B(rx_state_3__N_2110), 
            .C(rx_state_3__N_2108), .D(n16673), .Z(n11642)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(212[11:19])
    defparam i1_2_lut_3_lut_4_lut_adj_132.init = 16'h1000;
    ORCALUT4 i2_rep_11_4_lut (.A(rx_freq_cnt[2]), .B(n4_adj_2565), .C(rx_freq_cnt[1]), 
            .D(rx_freq_cnt[3]), .Z(n15070)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(217[11:22])
    defparam i2_rep_11_4_lut.init = 16'hccc8;
    FD1P3AX regs_i0_i87 (.D(rx_reg_data[7]), .SP(clk2_enable_189), .CK(clk2), 
            .Q(regs[87])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i87.GSR = "DISABLED";
    FD1P3AX regs_i0_i86 (.D(rx_reg_data[6]), .SP(clk2_enable_189), .CK(clk2), 
            .Q(regs[86])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i86.GSR = "DISABLED";
    PFUMX i12563 (.BLUT(n15961), .ALUT(n15962), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15973));
    FD1P3AX regs_i0_i85 (.D(rx_reg_data[5]), .SP(clk2_enable_189), .CK(clk2), 
            .Q(regs[85])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i85.GSR = "DISABLED";
    FD1P3AX regs_i0_i84 (.D(rx_reg_data[4]), .SP(clk2_enable_189), .CK(clk2), 
            .Q(regs[84])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i84.GSR = "DISABLED";
    FD1P3AX regs_i0_i83 (.D(rx_reg_data[3]), .SP(clk2_enable_189), .CK(clk2), 
            .Q(regs[83])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i83.GSR = "DISABLED";
    FD1P3AX regs_i0_i82 (.D(rx_reg_data[2]), .SP(clk2_enable_189), .CK(clk2), 
            .Q(regs[82])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i82.GSR = "DISABLED";
    FD1P3AX regs_i0_i81 (.D(rx_reg_data[1]), .SP(clk2_enable_189), .CK(clk2), 
            .Q(regs[81])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i81.GSR = "DISABLED";
    ORCALUT4 i1_2_lut_adj_133 (.A(rx_freq_cnt[5]), .B(rx_freq_cnt[4]), .Z(n4_adj_2565)) /* synthesis lut_function=(A (B)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(217[11:22])
    defparam i1_2_lut_adj_133.init = 16'h8888;
    FD1P3AX regs_i0_i80 (.D(rx_reg_data[0]), .SP(clk2_enable_189), .CK(clk2), 
            .Q(regs[80])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i80.GSR = "DISABLED";
    ORCALUT4 i1_2_lut_3_lut (.A(rx_state_3__N_2109), .B(rx_state_3__N_2110), 
            .C(rx_state_3__N_2108), .Z(n15095)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(212[11:19])
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    FD1P3AX regs_i0_i79 (.D(rx_reg_data[7]), .SP(clk2_enable_198), .CK(clk2), 
            .Q(regs[79])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i79.GSR = "DISABLED";
    FD1P3AX regs_i0_i78 (.D(rx_reg_data[6]), .SP(clk2_enable_198), .CK(clk2), 
            .Q(regs[78])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i78.GSR = "DISABLED";
    FD1P3AX rx_msg_31__2403 (.D(rx_msg_31__N_1573), .SP(clk2_enable_263), 
            .CK(clk2), .Q(rx_msg[31]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam rx_msg_31__2403.GSR = "DISABLED";
    ORCALUT4 i1_3_lut_4_lut_adj_134 (.A(n4), .B(n15372), .C(n16623), .D(n16644), 
            .Z(clk2_enable_181)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(217[11:22])
    defparam i1_3_lut_4_lut_adj_134.init = 16'h0080;
    CCU2B rx_freq_cnt_5262_add_4_3 (.A0(rx_freq_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(rx_freq_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13590), .COUT(n13591), .S0(n3[1]), .S1(n3[2]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(246[32:47])
    defparam rx_freq_cnt_5262_add_4_3.INIT0 = 16'haaa0;
    defparam rx_freq_cnt_5262_add_4_3.INIT1 = 16'haaa0;
    defparam rx_freq_cnt_5262_add_4_3.INJECT1_0 = "NO";
    defparam rx_freq_cnt_5262_add_4_3.INJECT1_1 = "NO";
    ORCALUT4 i1_3_lut_4_lut_adj_135 (.A(n4), .B(n15372), .C(n16623), .D(n16643), 
            .Z(clk2_enable_215)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(217[11:22])
    defparam i1_3_lut_4_lut_adj_135.init = 16'h0080;
    FD1P3AX regs_i0_i77 (.D(rx_reg_data[5]), .SP(clk2_enable_198), .CK(clk2), 
            .Q(regs[77])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i77.GSR = "DISABLED";
    PFUMX i12564 (.BLUT(n15963), .ALUT(n15964), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15974));
    ORCALUT4 i1_3_lut_4_lut_adj_136 (.A(n4), .B(n15372), .C(n16649), .D(n16623), 
            .Z(clk2_enable_257)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(217[11:22])
    defparam i1_3_lut_4_lut_adj_136.init = 16'h0800;
    FD1P3AX regs_i0_i76 (.D(rx_reg_data[4]), .SP(clk2_enable_198), .CK(clk2), 
            .Q(regs[76])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i76.GSR = "DISABLED";
    ORCALUT4 i57_2_lut_3_lut_4_lut (.A(rx_state_3__N_2109), .B(rx_state_3__N_2110), 
            .C(n16673), .D(rx_state_3__N_2108), .Z(clk2_enable_426)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(212[11:19])
    defparam i57_2_lut_3_lut_4_lut.init = 16'h1011;
    FD1P3AX regs_i0_i75 (.D(rx_reg_data[3]), .SP(clk2_enable_198), .CK(clk2), 
            .Q(regs[75])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i75.GSR = "DISABLED";
    FD1P3AX regs_i0_i74 (.D(rx_reg_data[2]), .SP(clk2_enable_198), .CK(clk2), 
            .Q(regs[74])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i74.GSR = "DISABLED";
    ORCALUT4 i77_rep_2_2_lut_4_lut (.A(rx_freq_cnt[9]), .B(n4_adj_2555), 
            .C(n16628), .D(n11164), .Z(n14992)) /* synthesis lut_function=(A (D)+!A (B (C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(217[11:22])
    defparam i77_rep_2_2_lut_4_lut.init = 16'hea00;
    ORCALUT4 i1_4_lut_adj_137 (.A(n5_adj_2564), .B(n16650), .C(n15070), 
            .D(n15636), .Z(n9280)) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;
    defparam i1_4_lut_adj_137.init = 16'hcdcc;
    PFUMX i12565 (.BLUT(n15965), .ALUT(n15966), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15975));
    ORCALUT4 i1_3_lut (.A(rx_freq_cnt[6]), .B(rx_freq_cnt[8]), .C(rx_state_3__N_2109), 
            .Z(n15636)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_3_lut.init = 16'h1010;
    PFUMX i12566 (.BLUT(n15967), .ALUT(n15968), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15976));
    FD1P3AX regs_i0_i73 (.D(rx_reg_data[1]), .SP(clk2_enable_198), .CK(clk2), 
            .Q(regs[73])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i73.GSR = "DISABLED";
    FD1P3AX regs_i0_i72 (.D(rx_reg_data[0]), .SP(clk2_enable_198), .CK(clk2), 
            .Q(regs[72])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i72.GSR = "DISABLED";
    FD1P3AX regs_i0_i71 (.D(rx_reg_data[7]), .SP(clk2_enable_206), .CK(clk2), 
            .Q(regs[71])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i71.GSR = "DISABLED";
    FD1P3AX regs_i0_i70 (.D(rx_reg_data[6]), .SP(clk2_enable_206), .CK(clk2), 
            .Q(regs[70])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i70.GSR = "DISABLED";
    FD1P3AX regs_i0_i69 (.D(rx_reg_data[5]), .SP(clk2_enable_206), .CK(clk2), 
            .Q(regs[69])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i69.GSR = "DISABLED";
    FD1P3AX regs_i0_i68 (.D(rx_reg_data[4]), .SP(clk2_enable_206), .CK(clk2), 
            .Q(regs[68])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i68.GSR = "DISABLED";
    PFUMX i12497 (.BLUT(n15891), .ALUT(n15892), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15907));
    FD1P3AX regs_i0_i67 (.D(rx_reg_data[3]), .SP(clk2_enable_206), .CK(clk2), 
            .Q(regs[67])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i67.GSR = "DISABLED";
    PFUMX i12498 (.BLUT(n15893), .ALUT(n15894), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15908));
    PFUMX i12373 (.BLUT(n15767), .ALUT(n15768), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15783));
    ORCALUT4 i1_4_lut_adj_138 (.A(rx_msg_31__N_1587), .B(n12286), .C(n14992), 
            .D(rx_state_3__N_2109), .Z(n9282)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(61[17:23])
    defparam i1_4_lut_adj_138.init = 16'hce0a;
    PFUMX i12374 (.BLUT(n15769), .ALUT(n15770), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15784));
    PFUMX i12499 (.BLUT(n15895), .ALUT(n15896), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15909));
    CCU2B rx_freq_cnt_5262_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n79[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n13590), .S1(n3[0]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(246[32:47])
    defparam rx_freq_cnt_5262_add_4_1.INIT0 = 16'h0000;
    defparam rx_freq_cnt_5262_add_4_1.INIT1 = 16'h555f;
    defparam rx_freq_cnt_5262_add_4_1.INJECT1_0 = "NO";
    defparam rx_freq_cnt_5262_add_4_1.INJECT1_1 = "NO";
    FD1P3AX regs_i0_i66 (.D(rx_reg_data[2]), .SP(clk2_enable_206), .CK(clk2), 
            .Q(regs[66])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i66.GSR = "DISABLED";
    FD1P3AX regs_i0_i65 (.D(rx_reg_data[1]), .SP(clk2_enable_206), .CK(clk2), 
            .Q(regs[65])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i65.GSR = "DISABLED";
    PFUMX i12590 (.BLUT(n15984), .ALUT(n15985), .C0(rx_msg_31__N_1574[4]), 
          .Z(n16000));
    FD1P3AX regs_i0_i64 (.D(rx_reg_data[0]), .SP(clk2_enable_206), .CK(clk2), 
            .Q(regs[64])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i64.GSR = "DISABLED";
    FD1P3AX regs_i0_i63 (.D(rx_reg_data[7]), .SP(clk2_enable_215), .CK(clk2), 
            .Q(regs[63])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i63.GSR = "DISABLED";
    FD1P3AX regs_i0_i62 (.D(rx_reg_data[6]), .SP(clk2_enable_215), .CK(clk2), 
            .Q(regs[62])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i62.GSR = "DISABLED";
    PFUMX i12375 (.BLUT(n15771), .ALUT(n15772), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15785));
    FD1P3AX regs_i0_i61 (.D(rx_reg_data[5]), .SP(clk2_enable_215), .CK(clk2), 
            .Q(regs[61])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i61.GSR = "DISABLED";
    FD1P3AX regs_i0_i60 (.D(rx_reg_data[4]), .SP(clk2_enable_215), .CK(clk2), 
            .Q(regs[60])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i60.GSR = "DISABLED";
    FD1P3AX regs_i0_i59 (.D(rx_reg_data[3]), .SP(clk2_enable_215), .CK(clk2), 
            .Q(regs[59])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i59.GSR = "DISABLED";
    FD1P3AX regs_i0_i58 (.D(rx_reg_data[2]), .SP(clk2_enable_215), .CK(clk2), 
            .Q(regs[58])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i58.GSR = "DISABLED";
    ORCALUT4 i2_2_lut_4_lut (.A(rx_freq_cnt[9]), .B(n4_adj_2555), .C(n16628), 
            .D(n16640), .Z(clk2_enable_422)) /* synthesis lut_function=(A (D)+!A (B (C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(217[11:22])
    defparam i2_2_lut_4_lut.init = 16'hea00;
    ORCALUT4 i1_2_lut_rep_222 (.A(rx_byte_cnt[0]), .B(rx_byte_cnt[1]), .Z(n16663)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(259[40:55])
    defparam i1_2_lut_rep_222.init = 16'h4444;
    ORCALUT4 i1_2_lut_rep_199_3_lut (.A(rx_byte_cnt[0]), .B(rx_byte_cnt[1]), 
            .C(rx_msg_31__N_1587), .Z(n16640)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(259[40:55])
    defparam i1_2_lut_rep_199_3_lut.init = 16'h4040;
    CCU2B add_4700_add_4_9 (.A0(tx_byte_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13589), .S0(n2[7]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(194[26] 197[24])
    defparam add_4700_add_4_9.INIT0 = 16'haaaa;
    defparam add_4700_add_4_9.INIT1 = 16'h0000;
    defparam add_4700_add_4_9.INJECT1_0 = "NO";
    defparam add_4700_add_4_9.INJECT1_1 = "NO";
    ORCALUT4 i1_2_lut_4_lut (.A(rx_freq_cnt[9]), .B(n4_adj_2555), .C(n16628), 
            .D(n16625), .Z(clk2_enable_425)) /* synthesis lut_function=(A (D)+!A (B (C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(217[11:22])
    defparam i1_2_lut_4_lut.init = 16'hea00;
    ORCALUT4 i1_2_lut_rep_223 (.A(rx_cmd[6]), .B(rx_cmd[1]), .Z(n16664)) /* synthesis lut_function=(A+(B)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(261[33:44])
    defparam i1_2_lut_rep_223.init = 16'heeee;
    ORCALUT4 i12334_3_lut_4_lut (.A(rx_cmd[6]), .B(rx_cmd[1]), .C(rx_cmd[4]), 
            .D(rx_cmd[3]), .Z(n15743)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(261[33:44])
    defparam i12334_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 i1_2_lut_rep_224 (.A(rx_msg_31__N_1587), .B(clk1_enable_115), 
            .Z(n16665)) /* synthesis lut_function=(A (B)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(217[11:22])
    defparam i1_2_lut_rep_224.init = 16'h8888;
    ORCALUT4 i6193_4_lut (.A(tx_state_2__N_2008), .B(n12086), .C(empty), 
            .D(tx_state[1]), .Z(n9274)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(159[9] 203[16])
    defparam i6193_4_lut.init = 16'heca0;
    PFUMX i12591 (.BLUT(n15986), .ALUT(n15987), .C0(rx_msg_31__N_1574[4]), 
          .Z(n16001));
    ORCALUT4 i1_2_lut_rep_181_3_lut_4_lut (.A(rx_msg_31__N_1587), .B(clk1_enable_115), 
            .C(n4), .D(n11164), .Z(n16622)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(217[11:22])
    defparam i1_2_lut_rep_181_3_lut_4_lut.init = 16'h8000;
    ORCALUT4 i1_3_lut_4_lut_adj_139 (.A(rx_msg_31__N_1587), .B(n17031), 
            .C(rx_req), .D(n14678), .Z(n15552)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(217[11:22])
    defparam i1_3_lut_4_lut_adj_139.init = 16'h0800;
    PFUMX i12592 (.BLUT(n15988), .ALUT(n15989), .C0(rx_msg_31__N_1574[4]), 
          .Z(n16002));
    PFUMX i12593 (.BLUT(n15990), .ALUT(n15991), .C0(rx_msg_31__N_1574[4]), 
          .Z(n16003));
    PFUMX i12594 (.BLUT(n15992), .ALUT(n15993), .C0(rx_msg_31__N_1574[4]), 
          .Z(n16004));
    PFUMX i12376 (.BLUT(n15773), .ALUT(n15774), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15786));
    PFUMX i12377 (.BLUT(n15775), .ALUT(n15776), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15787));
    PFUMX i12595 (.BLUT(n15994), .ALUT(n15995), .C0(rx_msg_31__N_1574[4]), 
          .Z(n16005));
    PFUMX i12378 (.BLUT(n15777), .ALUT(n15778), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15788));
    PFUMX i12596 (.BLUT(n15996), .ALUT(n15997), .C0(rx_msg_31__N_1574[4]), 
          .Z(n16006));
    PFUMX i12597 (.BLUT(n15998), .ALUT(n15999), .C0(rx_msg_31__N_1574[4]), 
          .Z(n16007));
    PFUMX i12379 (.BLUT(n15779), .ALUT(n15780), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15789));
    ORCALUT4 i1_3_lut_4_lut_adj_140 (.A(n11164), .B(n16665), .C(n6_adj_2558), 
            .D(n4), .Z(n15354)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(217[11:22])
    defparam i1_3_lut_4_lut_adj_140.init = 16'h0800;
    ORCALUT4 n23_bdd_4_lut_12969 (.A(n16654), .B(n16655), .C(rx_req), 
            .D(msg[20]), .Z(n16436)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C+(D))) */ ;
    defparam n23_bdd_4_lut_12969.init = 16'hfdf0;
    ORCALUT4 i1_4_lut_adj_141 (.A(n5_adj_2564), .B(clk2_enable_425), .C(n15070), 
            .D(n15642), .Z(n9284)) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;
    defparam i1_4_lut_adj_141.init = 16'hcdcc;
    ORCALUT4 i8935_2_lut_rep_227 (.A(rx_msg_31__N_1574[6]), .B(rx_msg_31__N_1574[5]), 
            .Z(n16668)) /* synthesis lut_function=(A (B)) */ ;
    defparam i8935_2_lut_rep_227.init = 16'h8888;
    ORCALUT4 i1_2_lut_rep_204_3_lut (.A(rx_msg_31__N_1574[6]), .B(rx_msg_31__N_1574[5]), 
            .C(rx_msg_31__N_1574[7]), .Z(n16645)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_2_lut_rep_204_3_lut.init = 16'hf7f7;
    ORCALUT4 i1_3_lut_adj_142 (.A(rx_freq_cnt[6]), .B(rx_freq_cnt[8]), .C(rx_state_3__N_2110), 
            .Z(n15642)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_3_lut_adj_142.init = 16'h1010;
    ORCALUT4 i9047_2_lut_rep_212_3_lut (.A(rx_msg_31__N_1574[6]), .B(rx_msg_31__N_1574[5]), 
            .C(rx_msg_31__N_1574[7]), .Z(n16653)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9047_2_lut_rep_212_3_lut.init = 16'h8080;
    ORCALUT4 n23_bdd_4_lut_12973 (.A(n16654), .B(n16655), .C(rx_req), 
            .D(msg[21]), .Z(n16443)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C+(D))) */ ;
    defparam n23_bdd_4_lut_12973.init = 16'hfdf0;
    ORCALUT4 n23_bdd_4_lut_12977 (.A(n16654), .B(n16655), .C(rx_req), 
            .D(msg[22]), .Z(n16446)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C+(D))) */ ;
    defparam n23_bdd_4_lut_12977.init = 16'hfdf0;
    ORCALUT4 i5552_2_lut_rep_228 (.A(tx_bit_cnt[1]), .B(tx_bit_cnt[0]), 
            .Z(n16669)) /* synthesis lut_function=(A+(B)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(180[43:78])
    defparam i5552_2_lut_rep_228.init = 16'heeee;
    ORCALUT4 i1_2_lut_3_lut_adj_143 (.A(tx_bit_cnt[1]), .B(tx_bit_cnt[0]), 
            .C(tx_bit_cnt[2]), .Z(tx_N_2479[2])) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(180[43:78])
    defparam i1_2_lut_3_lut_adj_143.init = 16'he1e1;
    ORCALUT4 n23_bdd_4_lut (.A(n16654), .B(n16655), .C(rx_req), .D(msg[23]), 
            .Z(n16449)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C+(D))) */ ;
    defparam n23_bdd_4_lut.init = 16'hfdf0;
    ORCALUT4 i1_2_lut_rep_229 (.A(rx_msg_31__N_1574[6]), .B(rx_msg_31__N_1574[5]), 
            .Z(n16670)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(263[37:65])
    defparam i1_2_lut_rep_229.init = 16'hbbbb;
    ORCALUT4 i1_2_lut_rep_202_3_lut (.A(rx_msg_31__N_1574[6]), .B(rx_msg_31__N_1574[5]), 
            .C(rx_msg_31__N_1574[7]), .Z(n16643)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(263[37:65])
    defparam i1_2_lut_rep_202_3_lut.init = 16'hfbfb;
    ORCALUT4 i1_2_lut_rep_206_3_lut (.A(rx_msg_31__N_1574[6]), .B(rx_msg_31__N_1574[5]), 
            .C(rx_msg_31__N_1574[7]), .Z(n16647)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(263[37:65])
    defparam i1_2_lut_rep_206_3_lut.init = 16'hbfbf;
    ORCALUT4 i1_2_lut_rep_230 (.A(rx_msg_31__N_1574[5]), .B(rx_msg_31__N_1574[7]), 
            .Z(n16671)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(263[37:65])
    defparam i1_2_lut_rep_230.init = 16'hbbbb;
    ORCALUT4 i1_2_lut_rep_205_3_lut (.A(rx_msg_31__N_1574[5]), .B(rx_msg_31__N_1574[7]), 
            .C(rx_msg_31__N_1574[6]), .Z(n16646)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(263[37:65])
    defparam i1_2_lut_rep_205_3_lut.init = 16'hfbfb;
    ORCALUT4 i1_2_lut_rep_207_3_lut (.A(rx_msg_31__N_1574[5]), .B(rx_msg_31__N_1574[7]), 
            .C(rx_msg_31__N_1574[6]), .Z(n16648)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(263[37:65])
    defparam i1_2_lut_rep_207_3_lut.init = 16'hbfbf;
    ORCALUT4 i1_2_lut_rep_231 (.A(rx_msg_31__N_1574[7]), .B(rx_msg_31__N_1574[5]), 
            .Z(n16672)) /* synthesis lut_function=(A+(B)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(263[37:65])
    defparam i1_2_lut_rep_231.init = 16'heeee;
    ORCALUT4 i1_2_lut_rep_203_3_lut (.A(rx_msg_31__N_1574[7]), .B(rx_msg_31__N_1574[5]), 
            .C(rx_msg_31__N_1574[6]), .Z(n16644)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(263[37:65])
    defparam i1_2_lut_rep_203_3_lut.init = 16'hefef;
    ORCALUT4 i1_2_lut_rep_208_3_lut (.A(rx_msg_31__N_1574[7]), .B(rx_msg_31__N_1574[5]), 
            .C(rx_msg_31__N_1574[6]), .Z(n16649)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(263[37:65])
    defparam i1_2_lut_rep_208_3_lut.init = 16'hfefe;
    ORCALUT4 i1_2_lut_rep_232 (.A(rx_dly[0]), .B(rx_dly[1]), .Z(n16673)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam i1_2_lut_rep_232.init = 16'h4444;
    ORCALUT4 i56_2_lut_rep_200_3_lut (.A(rx_dly[0]), .B(rx_dly[1]), .C(rx_state_3__N_2108), 
            .Z(clk2_enable_427)) /* synthesis lut_function=(!(A (C)+!A !(B+!(C)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam i56_2_lut_rep_200_3_lut.init = 16'h4f4f;
    ORCALUT4 i1_2_lut_rep_209_3_lut (.A(rx_dly[0]), .B(rx_dly[1]), .C(rx_state_3__N_2108), 
            .Z(n16650)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam i1_2_lut_rep_209_3_lut.init = 16'h4040;
    ORCALUT4 i1_2_lut_rep_234 (.A(tx_byte_cnt[4]), .B(tx_byte_cnt[3]), .Z(n16675)) /* synthesis lut_function=(A+(B)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam i1_2_lut_rep_234.init = 16'heeee;
    ORCALUT4 i1_3_lut_4_lut_adj_144 (.A(tx_byte_cnt[4]), .B(tx_byte_cnt[3]), 
            .C(tx_state[1]), .D(tx_byte_cnt[5]), .Z(n15248)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam i1_3_lut_4_lut_adj_144.init = 16'h0010;
    ORCALUT4 i1_2_lut_rep_235 (.A(tx_bit_cnt[1]), .B(tx_bit_cnt[2]), .Z(n16676)) /* synthesis lut_function=(A+(B)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(180[43:78])
    defparam i1_2_lut_rep_235.init = 16'heeee;
    ORCALUT4 i1_2_lut_rep_193_3_lut (.A(tx_bit_cnt[1]), .B(tx_bit_cnt[2]), 
            .C(tx_bit_cnt[0]), .Z(n16634)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(180[43:78])
    defparam i1_2_lut_rep_193_3_lut.init = 16'hfefe;
    ORCALUT4 i8987_2_lut_3_lut_4_lut (.A(tx_bit_cnt[1]), .B(tx_bit_cnt[2]), 
            .C(tx_N_2478), .D(tx_bit_cnt[0]), .Z(n7477[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(180[43:78])
    defparam i8987_2_lut_3_lut_4_lut.init = 16'hf0e0;
    ORCALUT4 i9001_2_lut_rep_211_3_lut (.A(tx_bit_cnt[1]), .B(tx_bit_cnt[2]), 
            .C(tx_bit_cnt[3]), .Z(n16652)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(180[43:78])
    defparam i9001_2_lut_rep_211_3_lut.init = 16'he0e0;
    ORCALUT4 i1_2_lut_rep_236 (.A(tx_bit_cnt[7]), .B(tx_bit_cnt[6]), .Z(n16677)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_236.init = 16'heeee;
    ORCALUT4 i1_2_lut_adj_145 (.A(rx_freq_cnt[8]), .B(rx_freq_cnt[7]), .Z(n4_adj_2555)) /* synthesis lut_function=(A (B)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(246[32:47])
    defparam i1_2_lut_adj_145.init = 16'h8888;
    ORCALUT4 i12332_3_lut_4_lut (.A(tx_bit_cnt[7]), .B(tx_bit_cnt[6]), .C(tx_byte_cnt[6]), 
            .D(tx_byte_cnt[7]), .Z(n15741)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i12332_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 i12493_3_lut (.A(regs[193]), .B(regs[201]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15903)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12493_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_146 (.A(tx_bit_cnt[7]), .B(tx_bit_cnt[6]), 
            .C(n12086), .D(n16678), .Z(n15262)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_146.init = 16'hfffe;
    ORCALUT4 i12494_3_lut (.A(regs[209]), .B(regs[217]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15904)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12494_3_lut.init = 16'hcaca;
    ORCALUT4 i12495_3_lut (.A(regs[225]), .B(regs[233]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15905)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12495_3_lut.init = 16'hcaca;
    PFUMX i12380 (.BLUT(n15781), .ALUT(n15782), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15790));
    PFUMX i12621 (.BLUT(n16015), .ALUT(n16016), .C0(tx_N_2479[1]), .Z(n16031));
    ORCALUT4 i1_2_lut_rep_237 (.A(tx_bit_cnt[4]), .B(tx_bit_cnt[5]), .Z(n16678)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_237.init = 16'heeee;
    ORCALUT4 i1_2_lut_rep_210_3_lut_4_lut (.A(tx_bit_cnt[4]), .B(tx_bit_cnt[5]), 
            .C(tx_bit_cnt[6]), .D(tx_bit_cnt[7]), .Z(n16651)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_210_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 i12496_3_lut (.A(regs[241]), .B(regs[249]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15906)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12496_3_lut.init = 16'hcaca;
    ORCALUT4 i12512_3_lut (.A(regs[7]), .B(regs[15]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15922)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12512_3_lut.init = 16'hcaca;
    ORCALUT4 i12513_3_lut (.A(regs[23]), .B(regs[31]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15923)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12513_3_lut.init = 16'hcaca;
    ORCALUT4 i12514_3_lut (.A(regs[39]), .B(regs[47]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15924)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12514_3_lut.init = 16'hcaca;
    ORCALUT4 i12515_3_lut (.A(regs[55]), .B(regs[63]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15925)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12515_3_lut.init = 16'hcaca;
    FD1P3AX regs_i0_i57 (.D(rx_reg_data[1]), .SP(clk2_enable_215), .CK(clk2), 
            .Q(regs[57])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i57.GSR = "DISABLED";
    ORCALUT4 i12516_3_lut (.A(regs[71]), .B(regs[79]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15926)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12516_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_rep_184 (.A(n11164), .B(rx_msg_31__N_1587), .Z(n16625)) /* synthesis lut_function=(A (B)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(217[11:22])
    defparam i1_2_lut_rep_184.init = 16'h8888;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_147 (.A(n11164), .B(rx_msg_31__N_1587), 
            .C(n38_adj_2559), .D(n16663), .Z(n10786)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(217[11:22])
    defparam i1_2_lut_3_lut_4_lut_adj_147.init = 16'h8000;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_148 (.A(n11164), .B(rx_msg_31__N_1587), 
            .C(n16623), .D(n16663), .Z(n11168)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(217[11:22])
    defparam i1_2_lut_3_lut_4_lut_adj_148.init = 16'h8000;
    FD1P3AX rx_msg_29__2405 (.D(rx_msg_29__N_1611), .SP(clk2_enable_263), 
            .CK(clk2), .Q(rx_msg[29]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam rx_msg_29__2405.GSR = "DISABLED";
    FD1P3AX regs_i0_i56 (.D(rx_reg_data[0]), .SP(clk2_enable_215), .CK(clk2), 
            .Q(regs[56])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i56.GSR = "DISABLED";
    FD1P3AX regs_i0_i55 (.D(rx_reg_data[7]), .SP(clk2_enable_230), .CK(clk2), 
            .Q(regs[55])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i55.GSR = "DISABLED";
    ORCALUT4 i5845_2_lut_rep_185 (.A(n12086), .B(tx_state[1]), .Z(clk2_enable_421)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam i5845_2_lut_rep_185.init = 16'h4444;
    FD1P3AX regs_i0_i54 (.D(rx_reg_data[6]), .SP(clk2_enable_230), .CK(clk2), 
            .Q(regs[54])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i54.GSR = "DISABLED";
    FD1S3IX u_state_FSM_i2 (.D(n8984), .CK(clk2), .CD(n5), .Q(\u_state[0] ));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(74[9] 138[16])
    defparam u_state_FSM_i2.GSR = "ENABLED";
    ORCALUT4 i12517_3_lut (.A(regs[87]), .B(regs[95]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15927)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12517_3_lut.init = 16'hcaca;
    FD1S3AY rx_dly_i0 (.D(rx_dly_1__N_1837[0]), .CK(clk2), .Q(rx_dly[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam rx_dly_i0.GSR = "ENABLED";
    ORCALUT4 i12518_3_lut (.A(regs[103]), .B(regs[111]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15928)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12518_3_lut.init = 16'hcaca;
    PFUMX i12622 (.BLUT(n16017), .ALUT(n16018), .C0(tx_N_2479[1]), .Z(n16032));
    ORCALUT4 i12519_3_lut (.A(regs[119]), .B(regs[127]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15929)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12519_3_lut.init = 16'hcaca;
    FD1P3AX regs_i0_i53 (.D(rx_reg_data[5]), .SP(clk2_enable_230), .CK(clk2), 
            .Q(regs[53])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i53.GSR = "DISABLED";
    ORCALUT4 i12520_3_lut (.A(regs[135]), .B(regs[143]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15930)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12520_3_lut.init = 16'hcaca;
    PFUMX i12623 (.BLUT(n16019), .ALUT(n16020), .C0(tx_N_2479[1]), .Z(n16033));
    FD1P3AX regs_i0_i52 (.D(rx_reg_data[4]), .SP(clk2_enable_230), .CK(clk2), 
            .Q(regs[52])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i52.GSR = "DISABLED";
    FD1P3AX regs_i0_i51 (.D(rx_reg_data[3]), .SP(clk2_enable_230), .CK(clk2), 
            .Q(regs[51])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i51.GSR = "DISABLED";
    FD1S3AX rx_req_2401 (.D(rx_req_N_2495), .CK(clk2), .Q(rx_req)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam rx_req_2401.GSR = "ENABLED";
    FD1P3AX regs_i0_i50 (.D(rx_reg_data[2]), .SP(clk2_enable_230), .CK(clk2), 
            .Q(regs[50])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i50.GSR = "DISABLED";
    FD1P3AX regs_i0_i49 (.D(rx_reg_data[1]), .SP(clk2_enable_230), .CK(clk2), 
            .Q(regs[49])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i49.GSR = "DISABLED";
    PFUMX i12624 (.BLUT(n16021), .ALUT(n16022), .C0(tx_N_2479[1]), .Z(n16034));
    ORCALUT4 i12638_3_lut (.A(tx_data[4]), .B(tx_data[5]), .C(tx_bit_cnt[0]), 
            .Z(n16048)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i12638_3_lut.init = 16'hacac;
    FD1P3AX regs_i0_i48 (.D(rx_reg_data[0]), .SP(clk2_enable_230), .CK(clk2), 
            .Q(regs[48])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i48.GSR = "DISABLED";
    ORCALUT4 i12521_3_lut (.A(regs[151]), .B(regs[159]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15931)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12521_3_lut.init = 16'hcaca;
    FD1P3AX regs_i0_i47 (.D(rx_reg_data[7]), .SP(clk2_enable_240), .CK(clk2), 
            .Q(regs[47])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i47.GSR = "DISABLED";
    FD1P3AX regs_i0_i46 (.D(rx_reg_data[6]), .SP(clk2_enable_240), .CK(clk2), 
            .Q(regs[46])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i46.GSR = "DISABLED";
    FD1P3AX regs_i0_i45 (.D(rx_reg_data[5]), .SP(clk2_enable_240), .CK(clk2), 
            .Q(regs[45])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i45.GSR = "DISABLED";
    PFUMX i12625 (.BLUT(n16023), .ALUT(n16024), .C0(tx_N_2479[1]), .Z(n16035));
    FD1P3AX regs_i0_i44 (.D(rx_reg_data[4]), .SP(clk2_enable_240), .CK(clk2), 
            .Q(regs[44])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i44.GSR = "DISABLED";
    PFUMX i12626 (.BLUT(n16025), .ALUT(n16026), .C0(tx_N_2479[1]), .Z(n16036));
    FD1P3AX regs_i0_i43 (.D(rx_reg_data[3]), .SP(clk2_enable_240), .CK(clk2), 
            .Q(regs[43])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i43.GSR = "DISABLED";
    PFUMX i12627 (.BLUT(n16027), .ALUT(n16028), .C0(tx_N_2479[1]), .Z(n16037));
    FD1P3AX rx_msg_28__2406 (.D(rx_msg_28__N_1627), .SP(clk2_enable_263), 
            .CK(clk2), .Q(rx_msg[28]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam rx_msg_28__2406.GSR = "DISABLED";
    ORCALUT4 i12522_3_lut (.A(regs[167]), .B(regs[175]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15932)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12522_3_lut.init = 16'hcaca;
    FD1P3AX regs_i0_i42 (.D(rx_reg_data[2]), .SP(clk2_enable_240), .CK(clk2), 
            .Q(regs[42])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i42.GSR = "DISABLED";
    FD1P3AX regs_i0_i254 (.D(rx_reg_data[6]), .SP(clk2_enable_238), .CK(clk2), 
            .Q(regs[254])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i254.GSR = "DISABLED";
    ORCALUT4 i12523_3_lut (.A(regs[183]), .B(regs[191]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15933)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12523_3_lut.init = 16'hcaca;
    PFUMX i12628 (.BLUT(n16029), .ALUT(n16030), .C0(tx_N_2479[1]), .Z(n16038));
    ORCALUT4 i6195_2_lut_3_lut (.A(n12086), .B(tx_state[1]), .C(tx_state[0]), 
            .Z(n9276)) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam i6195_2_lut_3_lut.init = 16'hf4f4;
    FD1P3AX regs_i0_i41 (.D(rx_reg_data[1]), .SP(clk2_enable_240), .CK(clk2), 
            .Q(regs[41])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i41.GSR = "DISABLED";
    FD1P3AX regs_i0_i40 (.D(rx_reg_data[0]), .SP(clk2_enable_240), .CK(clk2), 
            .Q(regs[40])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i40.GSR = "DISABLED";
    PFUMX i12404 (.BLUT(n15798), .ALUT(n15799), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15814));
    ORCALUT4 i12639_3_lut (.A(tx_data[6]), .B(tx_data[7]), .C(tx_bit_cnt[0]), 
            .Z(n16049)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i12639_3_lut.init = 16'hacac;
    ORCALUT4 i1_4_lut_adj_149 (.A(n15658), .B(msg[16]), .C(n16657), .D(n16655), 
            .Z(msg_63__N_1904[16])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(74[9] 138[16])
    defparam i1_4_lut_adj_149.init = 16'heca0;
    PFUMX i12405 (.BLUT(n15800), .ALUT(n15801), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15815));
    ORCALUT4 i89_2_lut_rep_187 (.A(n15070), .B(rx_freq_cnt[6]), .Z(n16628)) /* synthesis lut_function=(A+(B)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(217[11:22])
    defparam i89_2_lut_rep_187.init = 16'heeee;
    FD1P3AX regs_i0_i39 (.D(rx_reg_data[7]), .SP(clk2_enable_249), .CK(clk2), 
            .Q(regs[39])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i39.GSR = "DISABLED";
    PFUMX i12652 (.BLUT(n16046), .ALUT(n16047), .C0(tx_N_2479[1]), .Z(n16062));
    FD1P3AX regs_i0_i38 (.D(rx_reg_data[6]), .SP(clk2_enable_249), .CK(clk2), 
            .Q(regs[38])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i38.GSR = "DISABLED";
    ORCALUT4 i12524_3_lut (.A(regs[199]), .B(regs[207]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15934)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12524_3_lut.init = 16'hcaca;
    PFUMX i12653 (.BLUT(n16048), .ALUT(n16049), .C0(tx_N_2479[1]), .Z(n16063));
    ORCALUT4 i12525_3_lut (.A(regs[215]), .B(regs[223]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15935)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12525_3_lut.init = 16'hcaca;
    ORCALUT4 i76_3_lut_rep_182_4_lut (.A(n15070), .B(rx_freq_cnt[6]), .C(n4_adj_2555), 
            .D(rx_freq_cnt[9]), .Z(n16623)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(217[11:22])
    defparam i76_3_lut_rep_182_4_lut.init = 16'hffe0;
    FD1P3AX regs_i0_i37 (.D(rx_reg_data[5]), .SP(clk2_enable_249), .CK(clk2), 
            .Q(regs[37])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i37.GSR = "DISABLED";
    FD1P3AX regs_i0_i36 (.D(rx_reg_data[4]), .SP(clk2_enable_249), .CK(clk2), 
            .Q(regs[36])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i36.GSR = "DISABLED";
    PFUMX i12654 (.BLUT(n16050), .ALUT(n16051), .C0(tx_N_2479[1]), .Z(n16064));
    ORCALUT4 i12890_4_lut (.A(tx_state_2__N_2008), .B(tx_state[1]), .C(n15262), 
            .D(n16652), .Z(clk2_enable_428)) /* synthesis lut_function=(!(A+(B (C+(D))))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(159[9] 203[16])
    defparam i12890_4_lut.init = 16'h1115;
    PFUMX i12655 (.BLUT(n16052), .ALUT(n16053), .C0(tx_N_2479[1]), .Z(n16065));
    FD1P3AX regs_i0_i35 (.D(rx_reg_data[3]), .SP(clk2_enable_249), .CK(clk2), 
            .Q(regs[35])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i35.GSR = "DISABLED";
    FD1P3AX regs_i0_i34 (.D(rx_reg_data[2]), .SP(clk2_enable_249), .CK(clk2), 
            .Q(regs[34])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i34.GSR = "DISABLED";
    PFUMX i12406 (.BLUT(n15802), .ALUT(n15803), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15816));
    FD1P3AX regs_i0_i33 (.D(rx_reg_data[1]), .SP(clk2_enable_249), .CK(clk2), 
            .Q(regs[33])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i33.GSR = "DISABLED";
    PFUMX i12656 (.BLUT(n16054), .ALUT(n16055), .C0(tx_N_2479[1]), .Z(n16066));
    ORCALUT4 i1_3_lut_adj_150 (.A(\u_req[0] ), .B(msg[16]), .C(\u_req[1] ), 
            .Z(n15658)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;
    defparam i1_3_lut_adj_150.init = 16'h5454;
    FD1P3AX rx_msg_26__2408 (.D(rx_msg_26__N_1659), .SP(clk2_enable_263), 
            .CK(clk2), .Q(rx_msg[26]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam rx_msg_26__2408.GSR = "DISABLED";
    FD1P3AX regs_i0_i32 (.D(rx_reg_data[0]), .SP(clk2_enable_249), .CK(clk2), 
            .Q(regs[32])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i32.GSR = "DISABLED";
    ORCALUT4 i7633_4_lut (.A(clk2_enable_428), .B(tx_state[0]), .C(n15256), 
            .D(n1345), .Z(n10814)) /* synthesis lut_function=(A (B+(C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(191[44:59])
    defparam i7633_4_lut.init = 16'ha888;
    ORCALUT4 i1_4_lut_adj_151 (.A(n16652), .B(n15248), .C(n15741), .D(n16678), 
            .Z(n15256)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_4_lut_adj_151.init = 16'h0004;
    ORCALUT4 i12526_3_lut (.A(regs[231]), .B(regs[239]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15936)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12526_3_lut.init = 16'hcaca;
    FD1P3AX regs_i0_i31 (.D(rx_reg_data[7]), .SP(clk2_enable_257), .CK(clk2), 
            .Q(regs[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i31.GSR = "DISABLED";
    FD1P3AX regs_i0_i30 (.D(rx_reg_data[6]), .SP(clk2_enable_257), .CK(clk2), 
            .Q(regs[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i30.GSR = "DISABLED";
    ORCALUT4 i1_4_lut_adj_152 (.A(n15552), .B(n16623), .C(n16663), .D(n11164), 
            .Z(clk2_enable_263)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(217[11:22])
    defparam i1_4_lut_adj_152.init = 16'h8000;
    PFUMX i12407 (.BLUT(n15804), .ALUT(n15805), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15817));
    PFUMX i12657 (.BLUT(n16056), .ALUT(n16057), .C0(tx_N_2479[1]), .Z(n16067));
    ORCALUT4 i12640_3_lut (.A(tx_data[8]), .B(tx_data[9]), .C(tx_bit_cnt[0]), 
            .Z(n16050)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i12640_3_lut.init = 16'hacac;
    FD1P3AX regs_i0_i29 (.D(rx_reg_data[5]), .SP(clk2_enable_257), .CK(clk2), 
            .Q(regs[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i29.GSR = "DISABLED";
    FD1P3AX regs_i0_i28 (.D(rx_reg_data[4]), .SP(clk2_enable_257), .CK(clk2), 
            .Q(regs[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i28.GSR = "DISABLED";
    ORCALUT4 i12527_3_lut (.A(regs[247]), .B(regs[255]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15937)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12527_3_lut.init = 16'hcaca;
    ORCALUT4 i5409_4_lut (.A(tx_freq_cnt[8]), .B(tx_freq_cnt[9]), .C(n14_adj_2566), 
            .D(tx_freq_cnt[7]), .Z(n1345)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i5409_4_lut.init = 16'heccc;
    FD1P3AX regs_i0_i27 (.D(rx_reg_data[3]), .SP(clk2_enable_257), .CK(clk2), 
            .Q(regs[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i27.GSR = "DISABLED";
    ORCALUT4 i1_4_lut_adj_153 (.A(msg[14]), .B(n16655), .C(u_state_3__N_1889), 
            .D(n8984), .Z(msg_63__N_1904[14])) /* synthesis lut_function=(A (B+(C))+!A (C (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(74[9] 138[16])
    defparam i1_4_lut_adj_153.init = 16'hf8a8;
    FD1P3AX regs_i0_i26 (.D(rx_reg_data[2]), .SP(clk2_enable_257), .CK(clk2), 
            .Q(regs[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i26.GSR = "DISABLED";
    ORCALUT4 i12543_3_lut (.A(regs[6]), .B(regs[14]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15953)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12543_3_lut.init = 16'hcaca;
    PFUMX i12658 (.BLUT(n16058), .ALUT(n16059), .C0(tx_N_2479[1]), .Z(n16068));
    FD1P3AX regs_i0_i25 (.D(rx_reg_data[1]), .SP(clk2_enable_257), .CK(clk2), 
            .Q(regs[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i25.GSR = "DISABLED";
    ORCALUT4 i12544_3_lut (.A(regs[22]), .B(regs[30]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15954)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12544_3_lut.init = 16'hcaca;
    PFUMX i12408 (.BLUT(n15806), .ALUT(n15807), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15818));
    FD1P3AX regs_i0_i24 (.D(rx_reg_data[0]), .SP(clk2_enable_257), .CK(clk2), 
            .Q(regs[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i24.GSR = "DISABLED";
    FD1P3AX regs_i0_i23 (.D(rx_reg_data[7]), .SP(clk2_enable_266), .CK(clk2), 
            .Q(regs[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i23.GSR = "DISABLED";
    FD1P3AX regs_i0_i22 (.D(rx_reg_data[6]), .SP(clk2_enable_266), .CK(clk2), 
            .Q(regs[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i22.GSR = "DISABLED";
    ORCALUT4 i5410_4_lut (.A(n15210), .B(tx_freq_cnt[6]), .C(n15208), 
            .D(tx_freq_cnt[1]), .Z(n14_adj_2566)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B)) */ ;
    defparam i5410_4_lut.init = 16'heeec;
    PFUMX i12659 (.BLUT(n16060), .ALUT(n16061), .C0(tx_N_2479[1]), .Z(n16069));
    ORCALUT4 i1_2_lut_adj_154 (.A(tx_freq_cnt[5]), .B(tx_freq_cnt[4]), .Z(n15210)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_154.init = 16'h8888;
    FD1P3AX regs_i0_i21 (.D(rx_reg_data[5]), .SP(clk2_enable_266), .CK(clk2), 
            .Q(regs[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i21.GSR = "DISABLED";
    PFUMX i12409 (.BLUT(n15808), .ALUT(n15809), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15819));
    PFUMX i12410 (.BLUT(n15810), .ALUT(n15811), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15820));
    ORCALUT4 i1_2_lut_adj_155 (.A(tx_freq_cnt[3]), .B(tx_freq_cnt[2]), .Z(n15208)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_155.init = 16'heeee;
    FD1P3AX regs_i0_i20 (.D(rx_reg_data[4]), .SP(clk2_enable_266), .CK(clk2), 
            .Q(regs[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i20.GSR = "DISABLED";
    FD1P3AX regs_i0_i19 (.D(rx_reg_data[3]), .SP(clk2_enable_266), .CK(clk2), 
            .Q(regs[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i19.GSR = "DISABLED";
    ORCALUT4 i12545_3_lut (.A(regs[38]), .B(regs[46]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15955)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12545_3_lut.init = 16'hcaca;
    FD1P3AX rx_msg_24__2410 (.D(rx_msg_24__N_1691), .SP(clk2_enable_263), 
            .CK(clk2), .Q(rx_msg[24]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam rx_msg_24__2410.GSR = "DISABLED";
    ORCALUT4 i12641_3_lut (.A(tx_data[10]), .B(tx_data[11]), .C(tx_bit_cnt[0]), 
            .Z(n16051)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i12641_3_lut.init = 16'hacac;
    ORCALUT4 i12546_3_lut (.A(regs[54]), .B(regs[62]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15956)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12546_3_lut.init = 16'hcaca;
    ORCALUT4 i12547_3_lut (.A(regs[70]), .B(regs[78]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15957)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12547_3_lut.init = 16'hcaca;
    ORCALUT4 i12548_3_lut (.A(regs[86]), .B(regs[94]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15958)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12548_3_lut.init = 16'hcaca;
    PFUMX i12411 (.BLUT(n15812), .ALUT(n15813), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15821));
    PFUMX i12500 (.BLUT(n15897), .ALUT(n15898), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15910));
    CCU2B add_4700_add_4_7 (.A0(tx_byte_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(tx_byte_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13588), .COUT(n13589), .S0(n2[5]), .S1(n2[6]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(194[26] 197[24])
    defparam add_4700_add_4_7.INIT0 = 16'haaaa;
    defparam add_4700_add_4_7.INIT1 = 16'haaaa;
    defparam add_4700_add_4_7.INJECT1_0 = "NO";
    defparam add_4700_add_4_7.INJECT1_1 = "NO";
    PFUMX i12435 (.BLUT(n15829), .ALUT(n15830), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15845));
    ORCALUT4 i12549_3_lut (.A(regs[102]), .B(regs[110]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15959)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12549_3_lut.init = 16'hcaca;
    ORCALUT4 i12550_3_lut (.A(regs[118]), .B(regs[126]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15960)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12550_3_lut.init = 16'hcaca;
    ORCALUT4 i12551_3_lut (.A(regs[134]), .B(regs[142]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15961)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12551_3_lut.init = 16'hcaca;
    PFUMX i12436 (.BLUT(n15831), .ALUT(n15832), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15846));
    PFUMX i12437 (.BLUT(n15833), .ALUT(n15834), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15847));
    ORCALUT4 i12552_3_lut (.A(regs[150]), .B(regs[158]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15962)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12552_3_lut.init = 16'hcaca;
    PFUMX i12438 (.BLUT(n15835), .ALUT(n15836), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15848));
    ORCALUT4 i1_4_lut_adj_156 (.A(msg[12]), .B(n16655), .C(u_state_3__N_1889), 
            .D(n8984), .Z(msg_63__N_1904[12])) /* synthesis lut_function=(A (B+(C))+!A (C (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(74[9] 138[16])
    defparam i1_4_lut_adj_156.init = 16'hf8a8;
    FD1P3AX regs_i0_i18 (.D(rx_reg_data[2]), .SP(clk2_enable_266), .CK(clk2), 
            .Q(regs[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i18.GSR = "DISABLED";
    ORCALUT4 i12642_3_lut (.A(tx_data[12]), .B(tx_data[13]), .C(tx_bit_cnt[0]), 
            .Z(n16052)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i12642_3_lut.init = 16'hacac;
    PFUMX i12439 (.BLUT(n15837), .ALUT(n15838), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15849));
    PFUMX i12440 (.BLUT(n15839), .ALUT(n15840), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15850));
    ORCALUT4 i12542_3_lut (.A(n15950), .B(n15951), .C(rx_msg_31__N_1574[7]), 
            .Z(rx_msg_31__N_1573)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12542_3_lut.init = 16'hcaca;
    FD1P3AX regs_i0_i17 (.D(rx_reg_data[1]), .SP(clk2_enable_266), .CK(clk2), 
            .Q(regs[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i17.GSR = "DISABLED";
    ORCALUT4 i12553_3_lut (.A(regs[166]), .B(regs[174]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15963)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12553_3_lut.init = 16'hcaca;
    FD1P3AX regs_i0_i16 (.D(rx_reg_data[0]), .SP(clk2_enable_266), .CK(clk2), 
            .Q(regs[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i16.GSR = "DISABLED";
    PFUMX i12441 (.BLUT(n15841), .ALUT(n15842), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15851));
    ORCALUT4 i12554_3_lut (.A(regs[182]), .B(regs[190]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15964)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12554_3_lut.init = 16'hcaca;
    ORCALUT4 i12555_3_lut (.A(regs[198]), .B(regs[206]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15965)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12555_3_lut.init = 16'hcaca;
    ORCALUT4 i12556_3_lut (.A(regs[214]), .B(regs[222]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15966)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12556_3_lut.init = 16'hcaca;
    ORCALUT4 i12511_3_lut (.A(n15919), .B(n15920), .C(rx_msg_31__N_1574[7]), 
            .Z(rx_msg_25__N_1675)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12511_3_lut.init = 16'hcaca;
    FD1P3AX regs_i0_i15 (.D(rx_reg_data[7]), .SP(clk2_enable_274), .CK(clk2), 
            .Q(regs[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i15.GSR = "DISABLED";
    ORCALUT4 i12557_3_lut (.A(regs[230]), .B(regs[238]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15967)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12557_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_157 (.A(n15656), .B(n16664), .C(rx_cmd[4]), 
            .D(rx_cmd[0]), .Z(n14678)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(261[33:44])
    defparam i1_4_lut_adj_157.init = 16'hfffe;
    ORCALUT4 i1_4_lut_adj_158 (.A(rx_cmd[7]), .B(rx_cmd[2]), .C(rx_cmd[3]), 
            .D(rx_cmd[5]), .Z(n15656)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(261[33:44])
    defparam i1_4_lut_adj_158.init = 16'hfffe;
    ORCALUT4 i12558_3_lut (.A(regs[246]), .B(regs[254]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15968)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12558_3_lut.init = 16'hcaca;
    FD1P3AX regs_i0_i14 (.D(rx_reg_data[6]), .SP(clk2_enable_274), .CK(clk2), 
            .Q(regs[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i14.GSR = "DISABLED";
    FD1P3AX regs_i0_i13 (.D(rx_reg_data[5]), .SP(clk2_enable_274), .CK(clk2), 
            .Q(regs[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i13.GSR = "DISABLED";
    ORCALUT4 i1_4_lut_adj_159 (.A(rx_bit_cnt[4]), .B(n15618), .C(rx_bit_cnt[3]), 
            .D(rx_bit_cnt[5]), .Z(n11164)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(256[35:49])
    defparam i1_4_lut_adj_159.init = 16'hfffe;
    CCU2B add_4700_add_4_5 (.A0(tx_byte_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(tx_byte_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13587), .COUT(n13588), .S0(n2[3]), .S1(n2[4]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(194[26] 197[24])
    defparam add_4700_add_4_5.INIT0 = 16'haaaa;
    defparam add_4700_add_4_5.INIT1 = 16'haaaa;
    defparam add_4700_add_4_5.INJECT1_0 = "NO";
    defparam add_4700_add_4_5.INJECT1_1 = "NO";
    FD1P3AX regs_i0_i12 (.D(rx_reg_data[4]), .SP(clk2_enable_274), .CK(clk2), 
            .Q(regs[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i12.GSR = "DISABLED";
    CCU2B add_2499_add_4_9 (.A0(tx_bit_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13656), .S0(n7[7]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(188[43:57])
    defparam add_2499_add_4_9.INIT0 = 16'haaaa;
    defparam add_2499_add_4_9.INIT1 = 16'h0000;
    defparam add_2499_add_4_9.INJECT1_0 = "NO";
    defparam add_2499_add_4_9.INJECT1_1 = "NO";
    ORCALUT4 i12481_3_lut (.A(regs[1]), .B(regs[9]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15891)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12481_3_lut.init = 16'hcaca;
    FD1P3AX regs_i0_i11 (.D(rx_reg_data[3]), .SP(clk2_enable_274), .CK(clk2), 
            .Q(regs[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i11.GSR = "DISABLED";
    FD1P3AX regs_i0_i10 (.D(rx_reg_data[2]), .SP(clk2_enable_274), .CK(clk2), 
            .Q(regs[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i10.GSR = "DISABLED";
    ORCALUT4 i12482_3_lut (.A(regs[17]), .B(regs[25]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15892)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12482_3_lut.init = 16'hcaca;
    FD1P3AX regs_i0_i9 (.D(rx_reg_data[1]), .SP(clk2_enable_274), .CK(clk2), 
            .Q(regs[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i9.GSR = "DISABLED";
    ORCALUT4 i12483_3_lut (.A(regs[33]), .B(regs[41]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15893)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12483_3_lut.init = 16'hcaca;
    ORCALUT4 i12484_3_lut (.A(regs[49]), .B(regs[57]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15894)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12484_3_lut.init = 16'hcaca;
    FD1P3AX regs_i0_i8 (.D(rx_reg_data[0]), .SP(clk2_enable_274), .CK(clk2), 
            .Q(regs[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i8.GSR = "DISABLED";
    FD1P3AX regs_i0_i7 (.D(rx_reg_data[7]), .SP(clk2_enable_291), .CK(clk2), 
            .Q(regs[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i7.GSR = "DISABLED";
    FD1P3AX regs_i0_i6 (.D(rx_reg_data[6]), .SP(clk2_enable_291), .CK(clk2), 
            .Q(regs[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i6.GSR = "DISABLED";
    FD1P3AX regs_i0_i5 (.D(rx_reg_data[5]), .SP(clk2_enable_291), .CK(clk2), 
            .Q(regs[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i5.GSR = "DISABLED";
    FD1P3AX regs_i0_i4 (.D(rx_reg_data[4]), .SP(clk2_enable_291), .CK(clk2), 
            .Q(regs[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i4.GSR = "DISABLED";
    FD1P3AX regs_i0_i3 (.D(rx_reg_data[3]), .SP(clk2_enable_291), .CK(clk2), 
            .Q(regs[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i3.GSR = "DISABLED";
    FD1P3AX regs_i0_i2 (.D(rx_reg_data[2]), .SP(clk2_enable_291), .CK(clk2), 
            .Q(regs[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i2.GSR = "DISABLED";
    FD1P3AX regs_i0_i1 (.D(rx_reg_data[1]), .SP(clk2_enable_291), .CK(clk2), 
            .Q(regs[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam regs_i0_i1.GSR = "DISABLED";
    FD1P3AX tx_bit_cnt_i0_i7 (.D(tx_bit_cnt_7__N_2100[7]), .SP(clk1_enable_115), 
            .CK(clk2), .Q(tx_bit_cnt[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_bit_cnt_i0_i7.GSR = "DISABLED";
    FD1P3AX tx_bit_cnt_i0_i6 (.D(tx_bit_cnt_7__N_2100[6]), .SP(ydac_rst_c), 
            .CK(clk2), .Q(tx_bit_cnt[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_bit_cnt_i0_i6.GSR = "DISABLED";
    FD1P3AX tx_bit_cnt_i0_i5 (.D(tx_bit_cnt_7__N_2100[5]), .SP(clk1_enable_115), 
            .CK(clk2), .Q(tx_bit_cnt[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_bit_cnt_i0_i5.GSR = "DISABLED";
    FD1P3AX tx_bit_cnt_i0_i4 (.D(tx_bit_cnt_7__N_2100[4]), .SP(clk1_enable_115), 
            .CK(clk2), .Q(tx_bit_cnt[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_bit_cnt_i0_i4.GSR = "DISABLED";
    FD1P3AX tx_bit_cnt_i0_i3 (.D(tx_bit_cnt_7__N_2100[3]), .SP(clk1_enable_115), 
            .CK(clk2), .Q(tx_bit_cnt[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_bit_cnt_i0_i3.GSR = "DISABLED";
    FD1P3AX tx_bit_cnt_i0_i2 (.D(tx_bit_cnt_7__N_2100[2]), .SP(clk1_enable_115), 
            .CK(clk2), .Q(tx_bit_cnt[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_bit_cnt_i0_i2.GSR = "DISABLED";
    FD1P3AX tx_bit_cnt_i0_i1 (.D(tx_bit_cnt_7__N_2100[1]), .SP(clk1_enable_115), 
            .CK(clk2), .Q(tx_bit_cnt[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_bit_cnt_i0_i1.GSR = "DISABLED";
    FD1P3AX tx_byte_cnt_i0_i7 (.D(tx_byte_cnt_7__N_2092[7]), .SP(clk1_enable_115), 
            .CK(clk2), .Q(tx_byte_cnt[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_byte_cnt_i0_i7.GSR = "DISABLED";
    ORCALUT4 i12357_3_lut (.A(regs[4]), .B(regs[12]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15767)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12357_3_lut.init = 16'hcaca;
    ORCALUT4 i12358_3_lut (.A(regs[20]), .B(regs[28]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15768)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12358_3_lut.init = 16'hcaca;
    ORCALUT4 i12359_3_lut (.A(regs[36]), .B(regs[44]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15769)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12359_3_lut.init = 16'hcaca;
    ORCALUT4 i12360_3_lut (.A(regs[52]), .B(regs[60]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15770)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12360_3_lut.init = 16'hcaca;
    ORCALUT4 i12485_3_lut (.A(regs[65]), .B(regs[73]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15895)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12485_3_lut.init = 16'hcaca;
    CCU2B add_2499_add_4_7 (.A0(tx_bit_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(tx_bit_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13655), .COUT(n13656), .S0(n7[5]), .S1(n7[6]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(188[43:57])
    defparam add_2499_add_4_7.INIT0 = 16'haaaa;
    defparam add_2499_add_4_7.INIT1 = 16'haaaa;
    defparam add_2499_add_4_7.INJECT1_0 = "NO";
    defparam add_2499_add_4_7.INJECT1_1 = "NO";
    ORCALUT4 i12643_3_lut (.A(tx_data[14]), .B(tx_data[15]), .C(tx_bit_cnt[0]), 
            .Z(n16053)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i12643_3_lut.init = 16'hacac;
    PFUMX i12442 (.BLUT(n15843), .ALUT(n15844), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15852));
    FD1P3AX tx_byte_cnt_i0_i6 (.D(tx_byte_cnt_7__N_2092[6]), .SP(clk1_enable_115), 
            .CK(clk2), .Q(tx_byte_cnt[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_byte_cnt_i0_i6.GSR = "DISABLED";
    FD1P3AX tx_byte_cnt_i0_i5 (.D(tx_byte_cnt_7__N_2092[5]), .SP(clk1_enable_115), 
            .CK(clk2), .Q(tx_byte_cnt[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_byte_cnt_i0_i5.GSR = "DISABLED";
    FD1P3AX tx_byte_cnt_i0_i4 (.D(tx_byte_cnt_7__N_2092[4]), .SP(ydac_rst_c), 
            .CK(clk2), .Q(tx_byte_cnt[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_byte_cnt_i0_i4.GSR = "DISABLED";
    FD1P3AX tx_byte_cnt_i0_i3 (.D(tx_byte_cnt_7__N_2092[3]), .SP(clk1_enable_115), 
            .CK(clk2), .Q(tx_byte_cnt[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_byte_cnt_i0_i3.GSR = "DISABLED";
    FD1P3AX tx_byte_cnt_i0_i2 (.D(tx_byte_cnt_7__N_2092[2]), .SP(clk1_enable_115), 
            .CK(clk2), .Q(tx_byte_cnt[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_byte_cnt_i0_i2.GSR = "DISABLED";
    FD1P3AX tx_byte_cnt_i0_i1 (.D(tx_byte_cnt_7__N_2092[1]), .SP(clk1_enable_115), 
            .CK(clk2), .Q(tx_byte_cnt[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_byte_cnt_i0_i1.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i63 (.D(data[63]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[63])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i63.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i62 (.D(data[62]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[62])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i62.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i61 (.D(data[61]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[61])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i61.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i60 (.D(data[60]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[60])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i60.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i59 (.D(data[59]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[59])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i59.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i58 (.D(data[58]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[58])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i58.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i57 (.D(data[57]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[57])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i57.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i56 (.D(data[56]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[56])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i56.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i55 (.D(data[55]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[55])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i55.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i54 (.D(data[54]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[54])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i54.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i53 (.D(data[53]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[53])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i53.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i52 (.D(data[52]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[52])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i52.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i51 (.D(data[51]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[51])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i51.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i50 (.D(data[50]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[50])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i50.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i49 (.D(data[49]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[49])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i49.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i48 (.D(data[48]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[48])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i48.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i47 (.D(data[47]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[47])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i47.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i46 (.D(data[46]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[46])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i46.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i45 (.D(data[45]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[45])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i45.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i44 (.D(data[44]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[44])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i44.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i43 (.D(data[43]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[43])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i43.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i42 (.D(data[42]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[42])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i42.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i41 (.D(data[41]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[41])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i41.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i40 (.D(data[40]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[40])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i40.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i39 (.D(data[39]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[39])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i39.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i38 (.D(data[38]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[38])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i38.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i37 (.D(data[37]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[37])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i37.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i36 (.D(data[36]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[36])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i36.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i35 (.D(data[35]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[35])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i35.GSR = "DISABLED";
    ORCALUT4 i12486_3_lut (.A(regs[81]), .B(regs[89]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15896)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12486_3_lut.init = 16'hcaca;
    FD1P3AX tx_data_i0_i34 (.D(data[34]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[34])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i34.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i33 (.D(data[33]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[33])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i33.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i32 (.D(data[32]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[32])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i32.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i31 (.D(data[31]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i31.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i30 (.D(data[30]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i30.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i29 (.D(data[29]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i29.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i28 (.D(data[28]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i28.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i27 (.D(data[27]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i27.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i26 (.D(data[26]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i26.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i25 (.D(data[25]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i25.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i24 (.D(data[24]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i24.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i23 (.D(data[23]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i23.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i22 (.D(data[22]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i22.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i21 (.D(data[21]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i21.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i20 (.D(data[20]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i20.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i19 (.D(data[19]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i19.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i18 (.D(data[18]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i18.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i17 (.D(data[17]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i17.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i16 (.D(data[16]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i16.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i15 (.D(data[15]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i15.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i14 (.D(data[14]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i14.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i13 (.D(data[13]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i13.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i12 (.D(data[12]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i12.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i11 (.D(data[11]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i11.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i10 (.D(data[10]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i10.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i9 (.D(data[9]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i9.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i8 (.D(data[8]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i8.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i7 (.D(data[7]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i7.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i6 (.D(data[6]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i6.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i5 (.D(data[5]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i5.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i4 (.D(data[4]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i4.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i3 (.D(data[3]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i3.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i2 (.D(data[2]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i2.GSR = "DISABLED";
    FD1P3AX tx_data_i0_i1 (.D(data[1]), .SP(clk2_enable_366), .CK(clk2), 
            .Q(tx_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_data_i0_i1.GSR = "DISABLED";
    ORCALUT4 i12392_3_lut (.A(regs[67]), .B(regs[75]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15802)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12392_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_adj_160 (.A(rx_bit_cnt[7]), .B(rx_bit_cnt[6]), .Z(n15618)) /* synthesis lut_function=(A+(B)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(256[35:49])
    defparam i1_2_lut_adj_160.init = 16'heeee;
    ORCALUT4 i1_3_lut_adj_161 (.A(rx_bit_cnt[2]), .B(n11164), .C(rx_bit_cnt[0]), 
            .Z(n13)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_3_lut_adj_161.init = 16'hfefe;
    ORCALUT4 i12393_3_lut (.A(regs[83]), .B(regs[91]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15803)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12393_3_lut.init = 16'hcaca;
    ORCALUT4 i12574_3_lut (.A(regs[5]), .B(regs[13]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15984)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12574_3_lut.init = 16'hcaca;
    FD1P3IX tx_freq_cnt_5261__i7 (.D(n8[7]), .SP(clk2_enable_428), .CD(n10814), 
            .CK(clk2), .Q(tx_freq_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(191[44:59])
    defparam tx_freq_cnt_5261__i7.GSR = "ENABLED";
    CCU2B add_4700_add_4_3 (.A0(tx_byte_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(tx_byte_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13586), .COUT(n13587), .S0(n2[1]), .S1(n2[2]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(194[26] 197[24])
    defparam add_4700_add_4_3.INIT0 = 16'haaaa;
    defparam add_4700_add_4_3.INIT1 = 16'haaaa;
    defparam add_4700_add_4_3.INJECT1_0 = "NO";
    defparam add_4700_add_4_3.INJECT1_1 = "NO";
    ORCALUT4 i1_4_lut_adj_162 (.A(msg[11]), .B(n16655), .C(u_state_3__N_1889), 
            .D(n8984), .Z(msg_63__N_1904[11])) /* synthesis lut_function=(A (B+(C))+!A (C (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(74[9] 138[16])
    defparam i1_4_lut_adj_162.init = 16'hf8a8;
    ORCALUT4 i12575_3_lut (.A(regs[21]), .B(regs[29]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15985)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12575_3_lut.init = 16'hcaca;
    FD1P3AX msg_i0_i39 (.D(msg_63__N_1904[39]), .SP(ydac_rst_c), .CK(clk2), 
            .Q(msg[39])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(73[10] 139[8])
    defparam msg_i0_i39.GSR = "DISABLED";
    ORCALUT4 i12361_3_lut (.A(regs[68]), .B(regs[76]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15771)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12361_3_lut.init = 16'hcaca;
    FD1P3AX msg_i0_i38 (.D(msg_63__N_1904[38]), .SP(ydac_rst_c), .CK(clk2), 
            .Q(msg[38])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(73[10] 139[8])
    defparam msg_i0_i38.GSR = "DISABLED";
    FD1P3AX msg_i0_i37 (.D(msg_63__N_1904[37]), .SP(ydac_rst_c), .CK(clk2), 
            .Q(msg[37])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(73[10] 139[8])
    defparam msg_i0_i37.GSR = "DISABLED";
    FD1P3AX msg_i0_i36 (.D(msg_63__N_1904[36]), .SP(ydac_rst_c), .CK(clk2), 
            .Q(msg[36])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(73[10] 139[8])
    defparam msg_i0_i36.GSR = "DISABLED";
    FD1P3AX msg_i0_i35 (.D(msg_63__N_1904[35]), .SP(ydac_rst_c), .CK(clk2), 
            .Q(msg[35])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(73[10] 139[8])
    defparam msg_i0_i35.GSR = "DISABLED";
    FD1P3AX msg_i0_i34 (.D(msg_63__N_1904[34]), .SP(ydac_rst_c), .CK(clk2), 
            .Q(msg[34])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(73[10] 139[8])
    defparam msg_i0_i34.GSR = "DISABLED";
    FD1P3AX msg_i0_i33 (.D(msg_63__N_1904[33]), .SP(ydac_rst_c), .CK(clk2), 
            .Q(msg[33])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(73[10] 139[8])
    defparam msg_i0_i33.GSR = "DISABLED";
    FD1P3AX msg_i0_i32 (.D(msg_63__N_1904[32]), .SP(ydac_rst_c), .CK(clk2), 
            .Q(msg[32])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(73[10] 139[8])
    defparam msg_i0_i32.GSR = "DISABLED";
    FD1P3AX msg_i0_i31 (.D(msg_63__N_1904[31]), .SP(ydac_rst_c), .CK(clk2), 
            .Q(msg[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(73[10] 139[8])
    defparam msg_i0_i31.GSR = "DISABLED";
    FD1P3AX msg_i0_i30 (.D(msg_63__N_1904[30]), .SP(ydac_rst_c), .CK(clk2), 
            .Q(msg[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(73[10] 139[8])
    defparam msg_i0_i30.GSR = "DISABLED";
    FD1P3AX msg_i0_i29 (.D(msg_63__N_1904[29]), .SP(ydac_rst_c), .CK(clk2), 
            .Q(msg[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(73[10] 139[8])
    defparam msg_i0_i29.GSR = "DISABLED";
    FD1P3AX msg_i0_i28 (.D(msg_63__N_1904[28]), .SP(ydac_rst_c), .CK(clk2), 
            .Q(msg[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(73[10] 139[8])
    defparam msg_i0_i28.GSR = "DISABLED";
    FD1P3AX msg_i0_i27 (.D(msg_63__N_1904[27]), .SP(ydac_rst_c), .CK(clk2), 
            .Q(msg[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(73[10] 139[8])
    defparam msg_i0_i27.GSR = "DISABLED";
    FD1P3AX msg_i0_i26 (.D(msg_63__N_1904[26]), .SP(ydac_rst_c), .CK(clk2), 
            .Q(msg[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(73[10] 139[8])
    defparam msg_i0_i26.GSR = "DISABLED";
    FD1P3AX msg_i0_i25 (.D(msg_63__N_1904[25]), .SP(ydac_rst_c), .CK(clk2), 
            .Q(msg[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(73[10] 139[8])
    defparam msg_i0_i25.GSR = "DISABLED";
    FD1P3AX msg_i0_i24 (.D(msg_63__N_1904[24]), .SP(ydac_rst_c), .CK(clk2), 
            .Q(msg[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(73[10] 139[8])
    defparam msg_i0_i24.GSR = "DISABLED";
    FD1P3AX msg_i0_i23 (.D(msg_63__N_1904[23]), .SP(ydac_rst_c), .CK(clk2), 
            .Q(msg[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(73[10] 139[8])
    defparam msg_i0_i23.GSR = "DISABLED";
    FD1P3AX msg_i0_i22 (.D(msg_63__N_1904[22]), .SP(ydac_rst_c), .CK(clk2), 
            .Q(msg[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(73[10] 139[8])
    defparam msg_i0_i22.GSR = "DISABLED";
    FD1P3AX msg_i0_i21 (.D(msg_63__N_1904[21]), .SP(ydac_rst_c), .CK(clk2), 
            .Q(msg[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(73[10] 139[8])
    defparam msg_i0_i21.GSR = "DISABLED";
    FD1P3AX msg_i0_i20 (.D(msg_63__N_1904[20]), .SP(ydac_rst_c), .CK(clk2), 
            .Q(msg[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(73[10] 139[8])
    defparam msg_i0_i20.GSR = "DISABLED";
    FD1P3AX msg_i0_i19 (.D(msg_63__N_1904[19]), .SP(ydac_rst_c), .CK(clk2), 
            .Q(msg[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(73[10] 139[8])
    defparam msg_i0_i19.GSR = "DISABLED";
    FD1P3AX msg_i0_i18 (.D(msg_63__N_1904[18]), .SP(ydac_rst_c), .CK(clk2), 
            .Q(msg[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(73[10] 139[8])
    defparam msg_i0_i18.GSR = "DISABLED";
    FD1P3AX msg_i0_i17 (.D(msg_63__N_1904[17]), .SP(ydac_rst_c), .CK(clk2), 
            .Q(msg[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(73[10] 139[8])
    defparam msg_i0_i17.GSR = "DISABLED";
    FD1P3AX msg_i0_i16 (.D(msg_63__N_1904[16]), .SP(ydac_rst_c), .CK(clk2), 
            .Q(msg[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(73[10] 139[8])
    defparam msg_i0_i16.GSR = "DISABLED";
    FD1P3AX msg_i0_i14 (.D(msg_63__N_1904[14]), .SP(ydac_rst_c), .CK(clk2), 
            .Q(msg[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(73[10] 139[8])
    defparam msg_i0_i14.GSR = "DISABLED";
    FD1P3AX msg_i0_i12 (.D(msg_63__N_1904[12]), .SP(ydac_rst_c), .CK(clk2), 
            .Q(msg[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(73[10] 139[8])
    defparam msg_i0_i12.GSR = "DISABLED";
    FD1P3AX msg_i0_i11 (.D(msg_63__N_1904[11]), .SP(ydac_rst_c), .CK(clk2), 
            .Q(msg[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(73[10] 139[8])
    defparam msg_i0_i11.GSR = "DISABLED";
    FD1P3AX msg_i0_i9 (.D(msg_63__N_1904[9]), .SP(ydac_rst_c), .CK(clk2), 
            .Q(msg[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(73[10] 139[8])
    defparam msg_i0_i9.GSR = "DISABLED";
    FD1P3AX msg_i0_i7 (.D(msg_63__N_1904[7]), .SP(ydac_rst_c), .CK(clk2), 
            .Q(msg[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(73[10] 139[8])
    defparam msg_i0_i7.GSR = "DISABLED";
    FD1P3AX msg_i0_i5 (.D(msg_63__N_1904[5]), .SP(ydac_rst_c), .CK(clk2), 
            .Q(msg[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(73[10] 139[8])
    defparam msg_i0_i5.GSR = "DISABLED";
    FD1P3AX msg_i0_i2 (.D(msg_63__N_1904[2]), .SP(ydac_rst_c), .CK(clk2), 
            .Q(msg[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(73[10] 139[8])
    defparam msg_i0_i2.GSR = "DISABLED";
    FD1P3AX u_ack_i0_i1 (.D(n15086), .SP(clk2_enable_369), .CK(clk2), 
            .Q(\u_ack[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(73[10] 139[8])
    defparam u_ack_i0_i1.GSR = "ENABLED";
    ORCALUT4 i1_4_lut_adj_163 (.A(msg[9]), .B(n16655), .C(u_state_3__N_1889), 
            .D(n8984), .Z(msg_63__N_1904[9])) /* synthesis lut_function=(A (B+(C))+!A (C (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(74[9] 138[16])
    defparam i1_4_lut_adj_163.init = 16'hf8a8;
    ORCALUT4 i12362_3_lut (.A(regs[84]), .B(regs[92]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15772)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12362_3_lut.init = 16'hcaca;
    ORCALUT4 i12644_3_lut (.A(tx_data[16]), .B(tx_data[17]), .C(tx_bit_cnt[0]), 
            .Z(n16054)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i12644_3_lut.init = 16'hacac;
    ORCALUT4 i1_2_lut_adj_164 (.A(n14_adj_2566), .B(tx_freq_cnt[8]), .Z(n4_adj_2571)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_164.init = 16'h8888;
    ORCALUT4 i1_4_lut_adj_165 (.A(msg[7]), .B(n16655), .C(u_state_3__N_1889), 
            .D(n8984), .Z(msg_63__N_1904[7])) /* synthesis lut_function=(A (B+(C))+!A (C (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(74[9] 138[16])
    defparam i1_4_lut_adj_165.init = 16'hf8a8;
    ORCALUT4 i1_4_lut_adj_166 (.A(msg[5]), .B(n16655), .C(u_state_3__N_1889), 
            .D(n8984), .Z(msg_63__N_1904[5])) /* synthesis lut_function=(A (B+(C))+!A (C (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(74[9] 138[16])
    defparam i1_4_lut_adj_166.init = 16'hf8a8;
    ORCALUT4 i12645_3_lut (.A(tx_data[18]), .B(tx_data[19]), .C(tx_bit_cnt[0]), 
            .Z(n16055)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i12645_3_lut.init = 16'hacac;
    ORCALUT4 i12449_3_lut (.A(n15857), .B(n15858), .C(rx_msg_31__N_1574[7]), 
            .Z(rx_msg_26__N_1659)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12449_3_lut.init = 16'hcaca;
    FD1S3AX u_state_FSM_i1 (.D(\u_state[0] ), .CK(clk2), .Q(u_state[1]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(74[9] 138[16])
    defparam u_state_FSM_i1.GSR = "ENABLED";
    FD1S3AX tx_state_FSM_i0 (.D(n9276), .CK(clk2), .Q(tx_state[1]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(159[9] 203[16])
    defparam tx_state_FSM_i0.GSR = "ENABLED";
    ORCALUT4 i12576_3_lut (.A(regs[37]), .B(regs[45]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15986)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12576_3_lut.init = 16'hcaca;
    ORCALUT4 i12577_3_lut (.A(regs[53]), .B(regs[61]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15987)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12577_3_lut.init = 16'hcaca;
    FD1S3AX rx_state_FSM_i1 (.D(n9284), .CK(clk2), .Q(rx_state_3__N_2110));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(237[9] 308[16])
    defparam rx_state_FSM_i1.GSR = "ENABLED";
    CCU2B add_2499_add_4_5 (.A0(tx_bit_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(tx_bit_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13654), .COUT(n13655), .S0(n7[3]), .S1(n7[4]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(188[43:57])
    defparam add_2499_add_4_5.INIT0 = 16'haaaa;
    defparam add_2499_add_4_5.INIT1 = 16'haaaa;
    defparam add_2499_add_4_5.INJECT1_0 = "NO";
    defparam add_2499_add_4_5.INJECT1_1 = "NO";
    CCU2B add_2499_add_4_3 (.A0(tx_bit_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(tx_bit_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13653), .COUT(n13654), .S0(n7[1]), .S1(n7[2]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(188[43:57])
    defparam add_2499_add_4_3.INIT0 = 16'haaaa;
    defparam add_2499_add_4_3.INIT1 = 16'haaaa;
    defparam add_2499_add_4_3.INJECT1_0 = "NO";
    defparam add_2499_add_4_3.INJECT1_1 = "NO";
    ORCALUT4 i12578_3_lut (.A(regs[69]), .B(regs[77]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15988)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12578_3_lut.init = 16'hcaca;
    ORCALUT4 i1_3_lut_4_lut_adj_167 (.A(n6_adj_2561), .B(n16622), .C(n16644), 
            .D(n16623), .Z(clk2_enable_198)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(217[11:22])
    defparam i1_3_lut_4_lut_adj_167.init = 16'h0400;
    ORCALUT4 i12579_3_lut (.A(regs[85]), .B(regs[93]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15989)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12579_3_lut.init = 16'hcaca;
    ORCALUT4 i1_3_lut_4_lut_adj_168 (.A(n6_adj_2561), .B(n16622), .C(n16623), 
            .D(n16643), .Z(clk2_enable_240)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(217[11:22])
    defparam i1_3_lut_4_lut_adj_168.init = 16'h0040;
    ORCALUT4 i1_4_lut_adj_169 (.A(msg[2]), .B(n16655), .C(u_state_3__N_1889), 
            .D(n8984), .Z(msg_63__N_1904[2])) /* synthesis lut_function=(A (B+(C))+!A (C (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(74[9] 138[16])
    defparam i1_4_lut_adj_169.init = 16'hf8a8;
    ORCALUT4 i12580_3_lut (.A(regs[101]), .B(regs[109]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15990)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12580_3_lut.init = 16'hcaca;
    ORCALUT4 i12394_3_lut (.A(regs[99]), .B(regs[107]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15804)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12394_3_lut.init = 16'hcaca;
    ORCALUT4 i12395_3_lut (.A(regs[115]), .B(regs[123]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15805)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12395_3_lut.init = 16'hcaca;
    ORCALUT4 i12646_3_lut (.A(tx_data[20]), .B(tx_data[21]), .C(tx_bit_cnt[0]), 
            .Z(n16056)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i12646_3_lut.init = 16'hacac;
    ORCALUT4 i12647_3_lut (.A(tx_data[22]), .B(tx_data[23]), .C(tx_bit_cnt[0]), 
            .Z(n16057)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i12647_3_lut.init = 16'hacac;
    ORCALUT4 i1_4_lut_adj_170 (.A(\u_req[0] ), .B(rx_req), .C(u_state_3__N_1889), 
            .D(\u_req[1] ), .Z(n15086)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(74[9] 138[16])
    defparam i1_4_lut_adj_170.init = 16'h1000;
    ORCALUT4 i6139_3_lut (.A(msg[26]), .B(\u1_msg[26] ), .C(\u_req[1] ), 
            .Z(n9219)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(112[22] 120[20])
    defparam i6139_3_lut.init = 16'hcaca;
    ORCALUT4 i12581_3_lut (.A(regs[117]), .B(regs[125]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15991)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12581_3_lut.init = 16'hcaca;
    ORCALUT4 i12582_3_lut (.A(regs[133]), .B(regs[141]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15992)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12582_3_lut.init = 16'hcaca;
    ORCALUT4 i12583_3_lut (.A(regs[149]), .B(regs[157]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15993)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12583_3_lut.init = 16'hcaca;
    ORCALUT4 i6140_3_lut (.A(\u0_msg[26] ), .B(rx_msg[26]), .C(rx_req), 
            .Z(n9220)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(112[22] 120[20])
    defparam i6140_3_lut.init = 16'hcaca;
    ORCALUT4 i12648_3_lut (.A(tx_data[24]), .B(tx_data[25]), .C(tx_bit_cnt[0]), 
            .Z(n16058)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i12648_3_lut.init = 16'hacac;
    ORCALUT4 i12864_2_lut (.A(rx_req), .B(\u_req[0] ), .Z(n15766)) /* synthesis lut_function=(A+(B)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(81[22] 120[20])
    defparam i12864_2_lut.init = 16'heeee;
    ORCALUT4 i12649_3_lut (.A(tx_data[26]), .B(tx_data[27]), .C(tx_bit_cnt[0]), 
            .Z(n16059)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i12649_3_lut.init = 16'hacac;
    ORCALUT4 i12396_3_lut (.A(regs[131]), .B(regs[139]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15806)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12396_3_lut.init = 16'hcaca;
    ORCALUT4 i12397_3_lut (.A(regs[147]), .B(regs[155]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15807)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12397_3_lut.init = 16'hcaca;
    ORCALUT4 i6137_3_lut (.A(msg[27]), .B(\u1_msg[27] ), .C(\u_req[1] ), 
            .Z(n9217)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(112[22] 120[20])
    defparam i6137_3_lut.init = 16'hcaca;
    CCU2B add_4700_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(tx_byte_cnt[0]), .B1(n12086), .C1(n16652), 
          .D1(n16651), .COUT(n13586), .S1(n2[0]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(194[26] 197[24])
    defparam add_4700_add_4_1.INIT0 = 16'h0000;
    defparam add_4700_add_4_1.INIT1 = 16'h999a;
    defparam add_4700_add_4_1.INJECT1_0 = "NO";
    defparam add_4700_add_4_1.INJECT1_1 = "NO";
    CCU2B add_2499_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(tx_bit_cnt[0]), .B1(n4_adj_2571), .C1(tx_freq_cnt[7]), 
          .D1(tx_freq_cnt[9]), .COUT(n13653), .S1(n7[0]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(188[43:57])
    defparam add_2499_add_4_1.INIT0 = 16'h0000;
    defparam add_2499_add_4_1.INIT1 = 16'h556a;
    defparam add_2499_add_4_1.INJECT1_0 = "NO";
    defparam add_2499_add_4_1.INJECT1_1 = "NO";
    ORCALUT4 i12363_3_lut (.A(regs[100]), .B(regs[108]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15773)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12363_3_lut.init = 16'hcaca;
    ORCALUT4 i6138_3_lut (.A(\u0_msg[27] ), .B(rx_msg[27]), .C(rx_req), 
            .Z(n9218)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(112[22] 120[20])
    defparam i6138_3_lut.init = 16'hcaca;
    ORCALUT4 i6135_3_lut (.A(msg[28]), .B(\u1_msg[28] ), .C(\u_req[1] ), 
            .Z(n9215)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(112[22] 120[20])
    defparam i6135_3_lut.init = 16'hcaca;
    ORCALUT4 i6136_3_lut (.A(\u0_msg[28] ), .B(rx_msg[28]), .C(rx_req), 
            .Z(n9216)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(112[22] 120[20])
    defparam i6136_3_lut.init = 16'hcaca;
    ORCALUT4 i12364_3_lut (.A(regs[116]), .B(regs[124]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15774)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12364_3_lut.init = 16'hcaca;
    ORCALUT4 i12365_3_lut (.A(regs[132]), .B(regs[140]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15775)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12365_3_lut.init = 16'hcaca;
    ORCALUT4 i6133_3_lut (.A(msg[29]), .B(\u1_msg[29] ), .C(\u_req[1] ), 
            .Z(n9213)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(112[22] 120[20])
    defparam i6133_3_lut.init = 16'hcaca;
    ORCALUT4 i6134_3_lut (.A(\u0_msg[29] ), .B(rx_msg[29]), .C(rx_req), 
            .Z(n9214)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(112[22] 120[20])
    defparam i6134_3_lut.init = 16'hcaca;
    ORCALUT4 i6131_3_lut (.A(msg[30]), .B(\u1_msg[30] ), .C(\u_req[1] ), 
            .Z(n9211)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(112[22] 120[20])
    defparam i6131_3_lut.init = 16'hcaca;
    ORCALUT4 i6132_3_lut (.A(\u0_msg[30] ), .B(rx_msg[30]), .C(rx_req), 
            .Z(n9212)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(112[22] 120[20])
    defparam i6132_3_lut.init = 16'hcaca;
    ORCALUT4 i12366_3_lut (.A(regs[148]), .B(regs[156]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15776)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12366_3_lut.init = 16'hcaca;
    ORCALUT4 i12584_3_lut (.A(regs[165]), .B(regs[173]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15994)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12584_3_lut.init = 16'hcaca;
    ORCALUT4 i6129_3_lut (.A(msg[31]), .B(\u1_msg[31] ), .C(\u_req[1] ), 
            .Z(n9209)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(112[22] 120[20])
    defparam i6129_3_lut.init = 16'hcaca;
    ORCALUT4 i12585_3_lut (.A(regs[181]), .B(regs[189]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15995)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12585_3_lut.init = 16'hcaca;
    ORCALUT4 i12367_3_lut (.A(regs[164]), .B(regs[172]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15777)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12367_3_lut.init = 16'hcaca;
    ORCALUT4 i6130_3_lut (.A(\u0_msg[31] ), .B(rx_msg[31]), .C(rx_req), 
            .Z(n9210)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(112[22] 120[20])
    defparam i6130_3_lut.init = 16'hcaca;
    ORCALUT4 i12489_3_lut (.A(regs[129]), .B(regs[137]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15899)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12489_3_lut.init = 16'hcaca;
    ORCALUT4 i12490_3_lut (.A(regs[145]), .B(regs[153]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15900)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12490_3_lut.init = 16'hcaca;
    ORCALUT4 i12368_3_lut (.A(regs[180]), .B(regs[188]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15778)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12368_3_lut.init = 16'hcaca;
    ORCALUT4 i12450_3_lut (.A(regs[0]), .B(regs[8]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15860)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12450_3_lut.init = 16'hcaca;
    ORCALUT4 i12586_3_lut (.A(regs[197]), .B(regs[205]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15996)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12586_3_lut.init = 16'hcaca;
    CCU2B tx_freq_cnt_5261_add_4_11 (.A0(tx_freq_cnt[9]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n13585), .S0(n8[9]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(191[44:59])
    defparam tx_freq_cnt_5261_add_4_11.INIT0 = 16'haaa0;
    defparam tx_freq_cnt_5261_add_4_11.INIT1 = 16'h0000;
    defparam tx_freq_cnt_5261_add_4_11.INJECT1_0 = "NO";
    defparam tx_freq_cnt_5261_add_4_11.INJECT1_1 = "NO";
    ORCALUT4 i12587_3_lut (.A(regs[213]), .B(regs[221]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15997)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12587_3_lut.init = 16'hcaca;
    ORCALUT4 i12588_3_lut (.A(regs[229]), .B(regs[237]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15998)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12588_3_lut.init = 16'hcaca;
    ORCALUT4 i12451_3_lut (.A(regs[16]), .B(regs[24]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15861)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12451_3_lut.init = 16'hcaca;
    CCU2B tx_freq_cnt_5261_add_4_9 (.A0(tx_freq_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(tx_freq_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13584), .COUT(n13585), .S0(n8[7]), .S1(n8[8]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(191[44:59])
    defparam tx_freq_cnt_5261_add_4_9.INIT0 = 16'haaa0;
    defparam tx_freq_cnt_5261_add_4_9.INIT1 = 16'haaa0;
    defparam tx_freq_cnt_5261_add_4_9.INJECT1_0 = "NO";
    defparam tx_freq_cnt_5261_add_4_9.INJECT1_1 = "NO";
    ORCALUT4 i12650_3_lut (.A(tx_data[28]), .B(tx_data[29]), .C(tx_bit_cnt[0]), 
            .Z(n16060)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i12650_3_lut.init = 16'hacac;
    ORCALUT4 i12456_3_lut (.A(regs[96]), .B(regs[104]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15866)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12456_3_lut.init = 16'hcaca;
    ORCALUT4 i12589_3_lut (.A(regs[245]), .B(regs[253]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15999)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12589_3_lut.init = 16'hcaca;
    CCU2B tx_freq_cnt_5261_add_4_7 (.A0(tx_freq_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(tx_freq_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13583), .COUT(n13584), .S0(n8[5]), .S1(n8[6]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(191[44:59])
    defparam tx_freq_cnt_5261_add_4_7.INIT0 = 16'haaa0;
    defparam tx_freq_cnt_5261_add_4_7.INIT1 = 16'haaa0;
    defparam tx_freq_cnt_5261_add_4_7.INJECT1_0 = "NO";
    defparam tx_freq_cnt_5261_add_4_7.INJECT1_1 = "NO";
    ORCALUT4 i12369_3_lut (.A(regs[196]), .B(regs[204]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15779)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12369_3_lut.init = 16'hcaca;
    ORCALUT4 i12457_3_lut (.A(regs[112]), .B(regs[120]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15867)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12457_3_lut.init = 16'hcaca;
    ORCALUT4 i12454_3_lut (.A(regs[64]), .B(regs[72]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15864)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12454_3_lut.init = 16'hcaca;
    ORCALUT4 i12401_3_lut (.A(regs[211]), .B(regs[219]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15811)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12401_3_lut.init = 16'hcaca;
    ORCALUT4 i12370_3_lut (.A(regs[212]), .B(regs[220]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15780)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12370_3_lut.init = 16'hcaca;
    ORCALUT4 i12371_3_lut (.A(regs[228]), .B(regs[236]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15781)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12371_3_lut.init = 16'hcaca;
    ORCALUT4 i12372_3_lut (.A(regs[244]), .B(regs[252]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15782)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12372_3_lut.init = 16'hcaca;
    ORCALUT4 i12605_3_lut (.A(tx_data[32]), .B(tx_data[33]), .C(tx_bit_cnt[0]), 
            .Z(n16015)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i12605_3_lut.init = 16'hacac;
    ORCALUT4 i12458_3_lut (.A(regs[128]), .B(regs[136]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15868)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12458_3_lut.init = 16'hcaca;
    CCU2B tx_freq_cnt_5261_add_4_5 (.A0(tx_freq_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(tx_freq_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13582), .COUT(n13583), .S0(n8[3]), .S1(n8[4]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(191[44:59])
    defparam tx_freq_cnt_5261_add_4_5.INIT0 = 16'haaa0;
    defparam tx_freq_cnt_5261_add_4_5.INIT1 = 16'haaa0;
    defparam tx_freq_cnt_5261_add_4_5.INJECT1_0 = "NO";
    defparam tx_freq_cnt_5261_add_4_5.INJECT1_1 = "NO";
    ORCALUT4 i12459_3_lut (.A(regs[144]), .B(regs[152]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15869)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12459_3_lut.init = 16'hcaca;
    ORCALUT4 i12606_3_lut (.A(tx_data[34]), .B(tx_data[35]), .C(tx_bit_cnt[0]), 
            .Z(n16016)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i12606_3_lut.init = 16'hacac;
    FD1P3IX tx_freq_cnt_5261__i8 (.D(n8[8]), .SP(clk2_enable_428), .CD(n10814), 
            .CK(clk2), .Q(tx_freq_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(191[44:59])
    defparam tx_freq_cnt_5261__i8.GSR = "ENABLED";
    FD1P3IX tx_freq_cnt_5261__i9 (.D(n8[9]), .SP(clk2_enable_428), .CD(n10814), 
            .CK(clk2), .Q(tx_freq_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(191[44:59])
    defparam tx_freq_cnt_5261__i9.GSR = "ENABLED";
    FD1P3IX rx_freq_cnt_5262__i1 (.D(n3[1]), .SP(clk2_enable_427), .CD(n13214), 
            .CK(clk2), .Q(rx_freq_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(246[32:47])
    defparam rx_freq_cnt_5262__i1.GSR = "ENABLED";
    FD1P3IX rx_freq_cnt_5262__i2 (.D(n3[2]), .SP(clk2_enable_427), .CD(n13214), 
            .CK(clk2), .Q(rx_freq_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(246[32:47])
    defparam rx_freq_cnt_5262__i2.GSR = "ENABLED";
    FD1P3IX rx_freq_cnt_5262__i3 (.D(n3[3]), .SP(clk2_enable_427), .CD(n13214), 
            .CK(clk2), .Q(rx_freq_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(246[32:47])
    defparam rx_freq_cnt_5262__i3.GSR = "ENABLED";
    FD1P3IX rx_freq_cnt_5262__i4 (.D(n3[4]), .SP(clk2_enable_427), .CD(n13214), 
            .CK(clk2), .Q(rx_freq_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(246[32:47])
    defparam rx_freq_cnt_5262__i4.GSR = "ENABLED";
    FD1P3IX rx_freq_cnt_5262__i5 (.D(n3[5]), .SP(clk2_enable_427), .CD(n13214), 
            .CK(clk2), .Q(rx_freq_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(246[32:47])
    defparam rx_freq_cnt_5262__i5.GSR = "ENABLED";
    FD1P3IX rx_freq_cnt_5262__i6 (.D(n3[6]), .SP(clk2_enable_427), .CD(n13214), 
            .CK(clk2), .Q(rx_freq_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(246[32:47])
    defparam rx_freq_cnt_5262__i6.GSR = "ENABLED";
    FD1P3IX rx_freq_cnt_5262__i7 (.D(n3[7]), .SP(clk2_enable_427), .CD(n13214), 
            .CK(clk2), .Q(rx_freq_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(246[32:47])
    defparam rx_freq_cnt_5262__i7.GSR = "ENABLED";
    CCU2B tx_freq_cnt_5261_add_4_3 (.A0(tx_freq_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(tx_freq_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13581), .COUT(n13582), .S0(n8[1]), .S1(n8[2]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(191[44:59])
    defparam tx_freq_cnt_5261_add_4_3.INIT0 = 16'haaa0;
    defparam tx_freq_cnt_5261_add_4_3.INIT1 = 16'haaa0;
    defparam tx_freq_cnt_5261_add_4_3.INJECT1_0 = "NO";
    defparam tx_freq_cnt_5261_add_4_3.INJECT1_1 = "NO";
    ORCALUT4 i1_2_lut_adj_171 (.A(tx_bit_cnt[1]), .B(tx_bit_cnt[0]), .Z(tx_N_2479[1])) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut_adj_171.init = 16'h9999;
    FD1S3AY rx_dly_i1 (.D(rx_dly_1__N_1837[1]), .CK(clk2), .Q(rx_dly[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(233[10] 309[8])
    defparam rx_dly_i1.GSR = "ENABLED";
    ORCALUT4 equal_5011_i6_2_lut (.A(rx_msg_31__N_1574[3]), .B(rx_msg_31__N_1574[4]), 
            .Z(n6_adj_2561)) /* synthesis lut_function=((B)+!A) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(263[37:65])
    defparam equal_5011_i6_2_lut.init = 16'hdddd;
    ORCALUT4 i12452_3_lut (.A(regs[32]), .B(regs[40]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15862)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12452_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_172 (.A(n9194), .B(msg[39]), .C(n16657), .D(n16655), 
            .Z(msg_63__N_1904[39])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(74[9] 138[16])
    defparam i1_4_lut_adj_172.init = 16'heca0;
    CCU2B tx_freq_cnt_5261_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n79_adj_2606[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n13581), .S1(n8[0]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(191[44:59])
    defparam tx_freq_cnt_5261_add_4_1.INIT0 = 16'h0000;
    defparam tx_freq_cnt_5261_add_4_1.INIT1 = 16'h555f;
    defparam tx_freq_cnt_5261_add_4_1.INJECT1_0 = "NO";
    defparam tx_freq_cnt_5261_add_4_1.INJECT1_1 = "NO";
    ORCALUT4 i6114_3_lut (.A(n9193), .B(\u0_msg[39] ), .C(\u_req[0] ), 
            .Z(n9194)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(112[22] 120[20])
    defparam i6114_3_lut.init = 16'hcaca;
    ORCALUT4 i12651_3_lut (.A(tx_data[30]), .B(tx_data[31]), .C(tx_bit_cnt[0]), 
            .Z(n16061)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i12651_3_lut.init = 16'hacac;
    ORCALUT4 mux_5247_i5_4_lut (.A(tx_bit_cnt[4]), .B(n7[4]), .C(n12086), 
            .D(n14690), .Z(n1509[4])) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((C+(D))+!B)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(194[26] 197[24])
    defparam mux_5247_i5_4_lut.init = 16'ha0ac;
    ORCALUT4 i12398_3_lut (.A(regs[163]), .B(regs[171]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15808)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12398_3_lut.init = 16'hcaca;
    ORCALUT4 i12480_3_lut (.A(n15888), .B(n15889), .C(rx_msg_31__N_1574[7]), 
            .Z(rx_msg_24__N_1691)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12480_3_lut.init = 16'hcaca;
    PFUMX mux_52_i27 (.BLUT(n9219), .ALUT(n9220), .C0(n15766), .Z(n783[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;
    ORCALUT4 i12402_3_lut (.A(regs[227]), .B(regs[235]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15812)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12402_3_lut.init = 16'hcaca;
    FD1P3IX rx_reg_data_5268__i1 (.D(n37_adj_2607[1]), .SP(clk2_enable_422), 
            .CD(n13112), .CK(clk2), .Q(rx_reg_data[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(286[44:76])
    defparam rx_reg_data_5268__i1.GSR = "ENABLED";
    FD1P3IX rx_reg_data_5268__i2 (.D(n37_adj_2607[2]), .SP(clk2_enable_422), 
            .CD(n13112), .CK(clk2), .Q(rx_reg_data[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(286[44:76])
    defparam rx_reg_data_5268__i2.GSR = "ENABLED";
    ORCALUT4 i12403_3_lut (.A(regs[243]), .B(regs[251]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15813)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12403_3_lut.init = 16'hcaca;
    FD1P3IX rx_reg_data_5268__i3 (.D(n37_adj_2607[3]), .SP(clk2_enable_422), 
            .CD(n13112), .CK(clk2), .Q(rx_reg_data[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(286[44:76])
    defparam rx_reg_data_5268__i3.GSR = "ENABLED";
    ORCALUT4 i12418_3_lut (.A(n15826), .B(n15827), .C(rx_msg_31__N_1574[7]), 
            .Z(rx_msg_27__N_1643)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12418_3_lut.init = 16'hcaca;
    FD1P3IX rx_reg_data_5268__i4 (.D(n37_adj_2607[4]), .SP(clk2_enable_422), 
            .CD(n13112), .CK(clk2), .Q(rx_reg_data[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(286[44:76])
    defparam rx_reg_data_5268__i4.GSR = "ENABLED";
    ORCALUT4 i12460_3_lut (.A(regs[160]), .B(regs[168]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15870)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12460_3_lut.init = 16'hcaca;
    FD1P3IX rx_reg_data_5268__i5 (.D(n37_adj_2607[5]), .SP(clk2_enable_422), 
            .CD(n13112), .CK(clk2), .Q(rx_reg_data[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(286[44:76])
    defparam rx_reg_data_5268__i5.GSR = "ENABLED";
    FD1P3IX rx_reg_data_5268__i6 (.D(n37_adj_2607[6]), .SP(clk2_enable_422), 
            .CD(n13112), .CK(clk2), .Q(rx_reg_data[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(286[44:76])
    defparam rx_reg_data_5268__i6.GSR = "ENABLED";
    FD1P3IX rx_reg_data_5268__i7 (.D(n37_adj_2607[7]), .SP(clk2_enable_422), 
            .CD(n13112), .CK(clk2), .Q(rx_reg_data[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(286[44:76])
    defparam rx_reg_data_5268__i7.GSR = "ENABLED";
    ORCALUT4 i12461_3_lut (.A(regs[176]), .B(regs[184]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15871)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12461_3_lut.init = 16'hcaca;
    FD1P3IX tx_freq_cnt_5261__i1 (.D(n8[1]), .SP(clk2_enable_428), .CD(n10814), 
            .CK(clk2), .Q(tx_freq_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(191[44:59])
    defparam tx_freq_cnt_5261__i1.GSR = "ENABLED";
    ORCALUT4 i12487_3_lut (.A(regs[97]), .B(regs[105]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15897)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12487_3_lut.init = 16'hcaca;
    ORCALUT4 select_2301_Select_3_i5_4_lut (.A(n1509[3]), .B(tx_bit_cnt[3]), 
            .C(tx_state[1]), .D(tx_state_2__N_2008), .Z(tx_bit_cnt_7__N_2100[3])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(159[9] 203[16])
    defparam select_2301_Select_3_i5_4_lut.init = 16'heca0;
    PFUMX mux_52_i28 (.BLUT(n9217), .ALUT(n9218), .C0(n15766), .Z(n783[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;
    FD1P3IX rx_freq_cnt_5262__i8 (.D(n3[8]), .SP(clk2_enable_427), .CD(n13214), 
            .CK(clk2), .Q(rx_freq_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(246[32:47])
    defparam rx_freq_cnt_5262__i8.GSR = "ENABLED";
    ORCALUT4 i1_3_lut_adj_173 (.A(rx_bit_cnt[0]), .B(n11164), .C(uart_rx1_c), 
            .Z(n50_adj_2593)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(256[35:49])
    defparam i1_3_lut_adj_173.init = 16'h2020;
    FD1P3IX tx_freq_cnt_5261__i2 (.D(n8[2]), .SP(clk2_enable_428), .CD(n10814), 
            .CK(clk2), .Q(tx_freq_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(191[44:59])
    defparam tx_freq_cnt_5261__i2.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_adj_174 (.A(rx_bit_cnt[0]), .B(n11164), .Z(n11)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_174.init = 16'heeee;
    PFUMX mux_52_i29 (.BLUT(n9215), .ALUT(n9216), .C0(n15766), .Z(n783[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;
    FD1P3IX rx_freq_cnt_5262__i9 (.D(n3[9]), .SP(clk2_enable_427), .CD(n13214), 
            .CK(clk2), .Q(rx_freq_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(246[32:47])
    defparam rx_freq_cnt_5262__i9.GSR = "ENABLED";
    ORCALUT4 i12488_3_lut (.A(regs[113]), .B(regs[121]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15898)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12488_3_lut.init = 16'hcaca;
    FD1P3IX tx_freq_cnt_5261__i3 (.D(n8[3]), .SP(clk2_enable_428), .CD(n10814), 
            .CK(clk2), .Q(tx_freq_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(191[44:59])
    defparam tx_freq_cnt_5261__i3.GSR = "ENABLED";
    ORCALUT4 i12419_3_lut (.A(regs[2]), .B(regs[10]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15829)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12419_3_lut.init = 16'hcaca;
    FD1P3IX tx_freq_cnt_5261__i4 (.D(n8[4]), .SP(clk2_enable_428), .CD(n10814), 
            .CK(clk2), .Q(tx_freq_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(191[44:59])
    defparam tx_freq_cnt_5261__i4.GSR = "ENABLED";
    ORCALUT4 i12573_3_lut (.A(n15981), .B(n15982), .C(rx_msg_31__N_1574[7]), 
            .Z(rx_msg_30__N_1595)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12573_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_adj_175 (.A(rx_bit_cnt[2]), .B(uart_rx1_c), .Z(n4_adj_2594)) /* synthesis lut_function=(A (B)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(256[35:49])
    defparam i1_2_lut_adj_175.init = 16'h8888;
    ORCALUT4 mux_5247_i4_4_lut (.A(tx_bit_cnt[3]), .B(n7[3]), .C(n12086), 
            .D(n14690), .Z(n1509[3])) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((C+(D))+!B)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(194[26] 197[24])
    defparam mux_5247_i4_4_lut.init = 16'ha0ac;
    ORCALUT4 i12420_3_lut (.A(regs[18]), .B(regs[26]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15830)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12420_3_lut.init = 16'hcaca;
    PFUMX mux_52_i30 (.BLUT(n9213), .ALUT(n9214), .C0(n15766), .Z(n783[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;
    ORCALUT4 i12462_3_lut (.A(regs[192]), .B(regs[200]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15872)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12462_3_lut.init = 16'hcaca;
    PFUMX mux_52_i31 (.BLUT(n9211), .ALUT(n9212), .C0(n15766), .Z(n783[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;
    ORCALUT4 i12463_3_lut (.A(regs[208]), .B(regs[216]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15873)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12463_3_lut.init = 16'hcaca;
    ORCALUT4 i12464_3_lut (.A(regs[224]), .B(regs[232]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15874)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12464_3_lut.init = 16'hcaca;
    PFUMX mux_52_i32 (.BLUT(n9209), .ALUT(n9210), .C0(n15766), .Z(n783[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;
    FD1P3IX rx_bit_cnt_5263__i1 (.D(n37[1]), .SP(clk2_enable_426), .CD(n11642), 
            .CK(clk2), .Q(rx_bit_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(256[35:49])
    defparam rx_bit_cnt_5263__i1.GSR = "ENABLED";
    ORCALUT4 i12421_3_lut (.A(regs[34]), .B(regs[42]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15831)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12421_3_lut.init = 16'hcaca;
    PFUMX i12501 (.BLUT(n15899), .ALUT(n15900), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15911));
    ORCALUT4 i12422_3_lut (.A(regs[50]), .B(regs[58]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15832)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12422_3_lut.init = 16'hcaca;
    PFUMX i12979 (.BLUT(n16450), .ALUT(n16449), .C0(u_state_3__N_1889), 
          .Z(msg_63__N_1904[23]));
    PFUMX i12466 (.BLUT(n15860), .ALUT(n15861), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15876));
    PFUMX i12467 (.BLUT(n15862), .ALUT(n15863), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15877));
    ORCALUT4 i12465_3_lut (.A(regs[240]), .B(regs[248]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15875)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12465_3_lut.init = 16'hcaca;
    ORCALUT4 i12423_3_lut (.A(regs[66]), .B(regs[74]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15833)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12423_3_lut.init = 16'hcaca;
    ORCALUT4 i12424_3_lut (.A(regs[82]), .B(regs[90]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15834)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12424_3_lut.init = 16'hcaca;
    ORCALUT4 i12425_3_lut (.A(regs[98]), .B(regs[106]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15835)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12425_3_lut.init = 16'hcaca;
    ORCALUT4 select_2301_Select_2_i5_4_lut (.A(n1509[2]), .B(tx_bit_cnt[2]), 
            .C(tx_state[1]), .D(tx_state_2__N_2008), .Z(tx_bit_cnt_7__N_2100[2])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(159[9] 203[16])
    defparam select_2301_Select_2_i5_4_lut.init = 16'heca0;
    ORCALUT4 mux_5247_i3_4_lut (.A(tx_bit_cnt[2]), .B(n7[2]), .C(n12086), 
            .D(n14690), .Z(n1509[2])) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((C+(D))+!B)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(194[26] 197[24])
    defparam mux_5247_i3_4_lut.init = 16'ha0ac;
    ORCALUT4 select_2301_Select_1_i5_4_lut (.A(n1509[1]), .B(tx_bit_cnt[1]), 
            .C(tx_state[1]), .D(tx_state_2__N_2008), .Z(tx_bit_cnt_7__N_2100[1])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(159[9] 203[16])
    defparam select_2301_Select_1_i5_4_lut.init = 16'heca0;
    ORCALUT4 i12453_3_lut (.A(regs[48]), .B(regs[56]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15863)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12453_3_lut.init = 16'hcaca;
    ORCALUT4 i12491_3_lut (.A(regs[161]), .B(regs[169]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15901)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12491_3_lut.init = 16'hcaca;
    ORCALUT4 i12426_3_lut (.A(regs[114]), .B(regs[122]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15836)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12426_3_lut.init = 16'hcaca;
    PFUMX i12975 (.BLUT(n16447), .ALUT(n16446), .C0(u_state_3__N_1889), 
          .Z(msg_63__N_1904[22]));
    ORCALUT4 i12492_3_lut (.A(regs[177]), .B(regs[185]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15902)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12492_3_lut.init = 16'hcaca;
    ORCALUT4 i12427_3_lut (.A(regs[130]), .B(regs[138]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15837)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12427_3_lut.init = 16'hcaca;
    ORCALUT4 i12399_3_lut (.A(regs[179]), .B(regs[187]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15809)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12399_3_lut.init = 16'hcaca;
    ORCALUT4 i12428_3_lut (.A(regs[146]), .B(regs[154]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15838)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12428_3_lut.init = 16'hcaca;
    ORCALUT4 i12429_3_lut (.A(regs[162]), .B(regs[170]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15839)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12429_3_lut.init = 16'hcaca;
    ORCALUT4 i12430_3_lut (.A(regs[178]), .B(regs[186]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15840)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12430_3_lut.init = 16'hcaca;
    ORCALUT4 i12431_3_lut (.A(regs[194]), .B(regs[202]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15841)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12431_3_lut.init = 16'hcaca;
    ORCALUT4 i12635_3_lut (.A(n16043), .B(n16044), .C(n10171), .Z(n16045)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i12635_3_lut.init = 16'hacac;
    ORCALUT4 i12432_3_lut (.A(regs[210]), .B(regs[218]), .C(rx_msg_31__N_1574[3]), 
            .Z(n15842)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12432_3_lut.init = 16'hcaca;
    ORCALUT4 i12666_3_lut (.A(n16074), .B(n16075), .C(n10171), .Z(n16076)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i12666_3_lut.init = 16'hacac;
    ORCALUT4 i1_3_lut_4_lut_adj_176 (.A(n16663), .B(rx_msg_31__N_1587), 
            .C(n11164), .D(n16623), .Z(n13112)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(259[40:55])
    defparam i1_3_lut_4_lut_adj_176.init = 16'h8000;
    ORCALUT4 i1_4_lut_adj_177 (.A(n15224), .B(n9849), .C(n15598), .D(tx_bit_cnt[3]), 
            .Z(n15119)) /* synthesis lut_function=(!(A (B+(C (D)))+!A !(B+(C (D))))) */ ;
    defparam i1_4_lut_adj_177.init = 16'h5666;
    PFUMX i12971 (.BLUT(n16444), .ALUT(n16443), .C0(u_state_3__N_1889), 
          .Z(msg_63__N_1904[21]));
    ORCALUT4 i1_4_lut_adj_178 (.A(n16327), .B(n15222), .C(n8035[1]), .D(n16634), 
            .Z(n15224)) /* synthesis lut_function=(!(A (B)+!A (B (C+(D))+!B !(C+(D))))) */ ;
    defparam i1_4_lut_adj_178.init = 16'h3336;
    ORCALUT4 i6751_4_lut (.A(tx_byte_cnt[1]), .B(tx_bit_cnt[4]), .C(tx_byte_cnt[0]), 
            .D(tx_bit_cnt[3]), .Z(n9849)) /* synthesis lut_function=(A (B+(C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(180[43:74])
    defparam i6751_4_lut.init = 16'ha888;
    ORCALUT4 i1_2_lut_adj_179 (.A(tx_bit_cnt[4]), .B(tx_byte_cnt[0]), .Z(n15598)) /* synthesis lut_function=(A (B)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(180[43:74])
    defparam i1_2_lut_adj_179.init = 16'h8888;
    PFUMX i12468 (.BLUT(n15864), .ALUT(n15865), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15878));
    PFUMX i12967 (.BLUT(n16437), .ALUT(n16436), .C0(u_state_3__N_1889), 
          .Z(msg_63__N_1904[20]));
    ORCALUT4 i5586_rep_174_2_lut (.A(tx_byte_cnt[0]), .B(tx_bit_cnt[3]), 
            .Z(n16327)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(180[43:74])
    defparam i5586_rep_174_2_lut.init = 16'h6666;
    ORCALUT4 i1_2_lut_adj_180 (.A(tx_bit_cnt[5]), .B(tx_byte_cnt[2]), .Z(n15222)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_180.init = 16'h6666;
    ORCALUT4 i1_4_lut_adj_181 (.A(tx_bit_cnt[4]), .B(tx_byte_cnt[0]), .C(tx_byte_cnt[1]), 
            .D(tx_bit_cnt[3]), .Z(n8035[1])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C))+!A !(B (C (D)+!C !(D))+!B !(C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(180[43:74])
    defparam i1_4_lut_adj_181.init = 16'h965a;
    ORCALUT4 i1_4_lut_adj_182 (.A(n8035[1]), .B(n16327), .C(n16669), .D(tx_bit_cnt[2]), 
            .Z(n10171)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B+(C+(D))))) */ ;
    defparam i1_4_lut_adj_182.init = 16'h5556;
    ORCALUT4 i1_4_lut_adj_183 (.A(msg[0]), .B(n16655), .C(u_state_3__N_1889), 
            .D(n8984), .Z(msg_63__N_1904[0])) /* synthesis lut_function=(A (B+(C))+!A (C (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(74[9] 138[16])
    defparam i1_4_lut_adj_183.init = 16'hf8a8;
    ORCALUT4 i1_2_lut_adj_184 (.A(rx_msg_31__N_1587), .B(n38_adj_2559), 
            .Z(clk2_enable_423)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_184.init = 16'h8888;
    PFUMX mux_52_i25 (.BLUT(n9223), .ALUT(n9224), .C0(n15766), .Z(n783[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;
    ORCALUT4 i1_3_lut_4_lut_adj_185 (.A(n6), .B(n16622), .C(n16623), .D(n16648), 
            .Z(clk2_enable_61)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(217[11:22])
    defparam i1_3_lut_4_lut_adj_185.init = 16'h0040;
    ORCALUT4 i1_4_lut_adj_186 (.A(n7477[0]), .B(n14690), .C(n7466[0]), 
            .D(tx_bit_cnt[3]), .Z(tx_N_2464)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_186.init = 16'hfcee;
    ORCALUT4 i8988_2_lut (.A(tx_N_2478), .B(tx_bit_cnt[0]), .Z(n7466[0])) /* synthesis lut_function=(A+(B)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(176[21] 184[28])
    defparam i8988_2_lut.init = 16'heeee;
    PFUMX i12963 (.BLUT(n16434), .ALUT(n16433), .C0(u_state_3__N_1889), 
          .Z(msg_63__N_1904[19]));
    ORCALUT4 i7588_1_lut (.A(tx_state_2__N_2008), .Z(n10776)) /* synthesis lut_function=(!(A)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(159[9] 203[16])
    defparam i7588_1_lut.init = 16'h5555;
    ORCALUT4 empty_I_0_1_lut (.A(empty), .Z(empty_N_2494)) /* synthesis lut_function=(!(A)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(161[21:27])
    defparam empty_I_0_1_lut.init = 16'h5555;
    PFUMX i12469 (.BLUT(n15866), .ALUT(n15867), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15879));
    ORCALUT4 i6141_3_lut (.A(msg[25]), .B(\u1_msg[25] ), .C(\u_req[1] ), 
            .Z(n9221)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(112[22] 120[20])
    defparam i6141_3_lut.init = 16'hcaca;
    ORCALUT4 mux_5247_i2_4_lut (.A(tx_bit_cnt[1]), .B(n7[1]), .C(n12086), 
            .D(n14690), .Z(n1509[1])) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((C+(D))+!B)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(194[26] 197[24])
    defparam mux_5247_i2_4_lut.init = 16'ha0ac;
    ORCALUT4 i6142_3_lut (.A(\u0_msg[25] ), .B(rx_msg[25]), .C(rx_req), 
            .Z(n9222)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(112[22] 120[20])
    defparam i6142_3_lut.init = 16'hcaca;
    ORCALUT4 equal_5010_i6_2_lut (.A(rx_msg_31__N_1574[3]), .B(rx_msg_31__N_1574[4]), 
            .Z(n6)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(263[37:65])
    defparam equal_5010_i6_2_lut.init = 16'hbbbb;
    PFUMX i12470 (.BLUT(n15868), .ALUT(n15869), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15880));
    ORCALUT4 i1_2_lut_4_lut_adj_187 (.A(rx_msg_31__N_1587), .B(n16660), 
            .C(rx_state_3__N_2108), .D(uart_rx1_c), .Z(rx_dly_1__N_1837[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i1_2_lut_4_lut_adj_187.init = 16'hfe00;
    PFUMX i12471 (.BLUT(n15870), .ALUT(n15871), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15881));
    CCU2B rx_cmd_5267_add_4_9 (.A0(rx_cmd[7]), .B0(n50_adj_2593), .C0(rx_bit_cnt[1]), 
          .D0(rx_bit_cnt[2]), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n13606), .S0(n37_adj_2608[7]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(284[44:76])
    defparam rx_cmd_5267_add_4_9.INIT0 = 16'h6aaa;
    defparam rx_cmd_5267_add_4_9.INIT1 = 16'h0000;
    defparam rx_cmd_5267_add_4_9.INJECT1_0 = "NO";
    defparam rx_cmd_5267_add_4_9.INJECT1_1 = "NO";
    FD1P3IX tx_freq_cnt_5261__i5 (.D(n8[5]), .SP(clk2_enable_428), .CD(n10814), 
            .CK(clk2), .Q(tx_freq_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(191[44:59])
    defparam tx_freq_cnt_5261__i5.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_4_lut_adj_188 (.A(rx_msg_31__N_1587), .B(n16660), 
            .C(rx_state_3__N_2108), .D(rx_dly[0]), .Z(rx_dly_1__N_1837[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i1_2_lut_4_lut_adj_188.init = 16'hfe00;
    CCU2B rx_reg_data_5268_add_4_9 (.A0(rx_reg_data[7]), .B0(n50_adj_2593), 
          .C0(rx_bit_cnt[1]), .D0(rx_bit_cnt[2]), .A1(GND_net), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n13678), .S0(n37_adj_2607[7]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(286[44:76])
    defparam rx_reg_data_5268_add_4_9.INIT0 = 16'h6aaa;
    defparam rx_reg_data_5268_add_4_9.INIT1 = 16'h0000;
    defparam rx_reg_data_5268_add_4_9.INJECT1_0 = "NO";
    defparam rx_reg_data_5268_add_4_9.INJECT1_1 = "NO";
    CCU2B rx_reg_data_5268_add_4_7 (.A0(rx_reg_data[5]), .B0(rx_bit_cnt[1]), 
          .C0(n50_adj_2593), .D0(rx_bit_cnt[2]), .A1(rx_reg_data[6]), 
          .B1(n11), .C1(n4_adj_2594), .D1(rx_bit_cnt[1]), .CIN(n13677), 
          .COUT(n13678), .S0(n37_adj_2607[5]), .S1(n37_adj_2607[6]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(286[44:76])
    defparam rx_reg_data_5268_add_4_7.INIT0 = 16'h9aaa;
    defparam rx_reg_data_5268_add_4_7.INIT1 = 16'h9aaa;
    defparam rx_reg_data_5268_add_4_7.INJECT1_0 = "NO";
    defparam rx_reg_data_5268_add_4_7.INJECT1_1 = "NO";
    CCU2B rx_reg_data_5268_add_4_5 (.A0(rx_reg_data[3]), .B0(rx_bit_cnt[2]), 
          .C0(n50_adj_2593), .D0(rx_bit_cnt[1]), .A1(rx_reg_data[4]), 
          .B1(n11), .C1(n4_adj_2594), .D1(rx_bit_cnt[1]), .CIN(n13676), 
          .COUT(n13677), .S0(n37_adj_2607[3]), .S1(n37_adj_2607[4]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(286[44:76])
    defparam rx_reg_data_5268_add_4_5.INIT0 = 16'h9aaa;
    defparam rx_reg_data_5268_add_4_5.INIT1 = 16'haa9a;
    defparam rx_reg_data_5268_add_4_5.INJECT1_0 = "NO";
    defparam rx_reg_data_5268_add_4_5.INJECT1_1 = "NO";
    CCU2B rx_cmd_5267_add_4_7 (.A0(rx_cmd[5]), .B0(rx_bit_cnt[1]), .C0(n50_adj_2593), 
          .D0(rx_bit_cnt[2]), .A1(rx_cmd[6]), .B1(n11), .C1(n4_adj_2594), 
          .D1(rx_bit_cnt[1]), .CIN(n13605), .COUT(n13606), .S0(n37_adj_2608[5]), 
          .S1(n37_adj_2608[6]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(284[44:76])
    defparam rx_cmd_5267_add_4_7.INIT0 = 16'h9aaa;
    defparam rx_cmd_5267_add_4_7.INIT1 = 16'h9aaa;
    defparam rx_cmd_5267_add_4_7.INJECT1_0 = "NO";
    defparam rx_cmd_5267_add_4_7.INJECT1_1 = "NO";
    PFUMX i12472 (.BLUT(n15872), .ALUT(n15873), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15882));
    PFUMX i12473 (.BLUT(n15874), .ALUT(n15875), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15883));
    PFUMX i12945 (.BLUT(n16396), .ALUT(n16673), .C0(rx_state_3__N_2108), 
          .Z(n13214));
    ORCALUT4 select_2301_Select_7_i5_4_lut (.A(n1509[7]), .B(tx_bit_cnt[7]), 
            .C(tx_state[1]), .D(tx_state_2__N_2008), .Z(tx_bit_cnt_7__N_2100[7])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(159[9] 203[16])
    defparam select_2301_Select_7_i5_4_lut.init = 16'heca0;
    PFUMX i12502 (.BLUT(n15901), .ALUT(n15902), .C0(rx_msg_31__N_1574[4]), 
          .Z(n15912));
    ORCALUT4 mux_5247_i8_4_lut (.A(tx_bit_cnt[7]), .B(n7[7]), .C(n12086), 
            .D(n14690), .Z(n1509[7])) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((C+(D))+!B)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(194[26] 197[24])
    defparam mux_5247_i8_4_lut.init = 16'ha0ac;
    CCU2B rx_reg_data_5268_add_4_3 (.A0(rx_reg_data[1]), .B0(rx_bit_cnt[1]), 
          .C0(rx_bit_cnt[2]), .D0(n50_adj_2593), .A1(rx_reg_data[2]), 
          .B1(uart_rx1_c), .C1(rx_bit_cnt[1]), .D1(n13), .CIN(n13675), 
          .COUT(n13676), .S0(n37_adj_2607[1]), .S1(n37_adj_2607[2]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(286[44:76])
    defparam rx_reg_data_5268_add_4_3.INIT0 = 16'ha9aa;
    defparam rx_reg_data_5268_add_4_3.INIT1 = 16'haa6a;
    defparam rx_reg_data_5268_add_4_3.INJECT1_0 = "NO";
    defparam rx_reg_data_5268_add_4_3.INJECT1_1 = "NO";
    CCU2B rx_cmd_5267_add_4_5 (.A0(rx_cmd[3]), .B0(rx_bit_cnt[2]), .C0(n50_adj_2593), 
          .D0(rx_bit_cnt[1]), .A1(rx_cmd[4]), .B1(n11), .C1(n4_adj_2594), 
          .D1(rx_bit_cnt[1]), .CIN(n13604), .COUT(n13605), .S0(n37_adj_2608[3]), 
          .S1(n37_adj_2608[4]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(284[44:76])
    defparam rx_cmd_5267_add_4_5.INIT0 = 16'h9aaa;
    defparam rx_cmd_5267_add_4_5.INIT1 = 16'haa9a;
    defparam rx_cmd_5267_add_4_5.INJECT1_0 = "NO";
    defparam rx_cmd_5267_add_4_5.INJECT1_1 = "NO";
    ORCALUT4 select_2301_Select_6_i5_4_lut (.A(n1509[6]), .B(tx_bit_cnt[6]), 
            .C(tx_state[1]), .D(tx_state_2__N_2008), .Z(tx_bit_cnt_7__N_2100[6])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(159[9] 203[16])
    defparam select_2301_Select_6_i5_4_lut.init = 16'heca0;
    ORCALUT4 mux_5247_i7_4_lut (.A(tx_bit_cnt[6]), .B(n7[6]), .C(n12086), 
            .D(n14690), .Z(n1509[6])) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((C+(D))+!B)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(194[26] 197[24])
    defparam mux_5247_i7_4_lut.init = 16'ha0ac;
    PFUMX i912812_i1 (.BLUT(n16045), .ALUT(n16076), .C0(n15119), .Z(tx_N_2478));
    L6MUX21 i12509 (.D0(n15915), .D1(n15916), .SD(rx_msg_31__N_1574[6]), 
            .Z(n15919));
    ORCALUT4 select_2301_Select_5_i5_4_lut (.A(n1509[5]), .B(tx_bit_cnt[5]), 
            .C(tx_state[1]), .D(tx_state_2__N_2008), .Z(tx_bit_cnt_7__N_2100[5])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(159[9] 203[16])
    defparam select_2301_Select_5_i5_4_lut.init = 16'heca0;
    CCU2B rx_reg_data_5268_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(rx_reg_data[0]), .B1(rx_bit_cnt[1]), .C1(n13), 
          .D1(uart_rx1_c), .COUT(n13675), .S1(n37_adj_2607[0]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(286[44:76])
    defparam rx_reg_data_5268_add_4_1.INIT0 = 16'h0000;
    defparam rx_reg_data_5268_add_4_1.INIT1 = 16'ha9aa;
    defparam rx_reg_data_5268_add_4_1.INJECT1_0 = "NO";
    defparam rx_reg_data_5268_add_4_1.INJECT1_1 = "NO";
    L6MUX21 i12510 (.D0(n15917), .D1(n15918), .SD(rx_msg_31__N_1574[6]), 
            .Z(n15920));
    ORCALUT4 mux_5247_i6_4_lut (.A(tx_bit_cnt[5]), .B(n7[5]), .C(n12086), 
            .D(n14690), .Z(n1509[5])) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((C+(D))+!B)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(194[26] 197[24])
    defparam mux_5247_i6_4_lut.init = 16'ha0ac;
    L6MUX21 i12540 (.D0(n15946), .D1(n15947), .SD(rx_msg_31__N_1574[6]), 
            .Z(n15950));
    L6MUX21 i12541 (.D0(n15948), .D1(n15949), .SD(rx_msg_31__N_1574[6]), 
            .Z(n15951));
    L6MUX21 i12571 (.D0(n15977), .D1(n15978), .SD(rx_msg_31__N_1574[6]), 
            .Z(n15981));
    FD1P3IX rx_bit_cnt_5263__i2 (.D(n37[2]), .SP(clk2_enable_426), .CD(n11642), 
            .CK(clk2), .Q(rx_bit_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(256[35:49])
    defparam rx_bit_cnt_5263__i2.GSR = "ENABLED";
    L6MUX21 i12572 (.D0(n15979), .D1(n15980), .SD(rx_msg_31__N_1574[6]), 
            .Z(n15982));
    ORCALUT4 select_2301_Select_4_i5_4_lut (.A(n1509[4]), .B(tx_bit_cnt[4]), 
            .C(tx_state[1]), .D(tx_state_2__N_2008), .Z(tx_bit_cnt_7__N_2100[4])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(159[9] 203[16])
    defparam select_2301_Select_4_i5_4_lut.init = 16'heca0;
    FD1P3IX tx_freq_cnt_5261__i6 (.D(n8[6]), .SP(clk2_enable_428), .CD(n10814), 
            .CK(clk2), .Q(tx_freq_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(191[44:59])
    defparam tx_freq_cnt_5261__i6.GSR = "ENABLED";
    L6MUX21 i12602 (.D0(n16008), .D1(n16009), .SD(rx_msg_31__N_1574[6]), 
            .Z(n16012));
    L6MUX21 i12603 (.D0(n16010), .D1(n16011), .SD(rx_msg_31__N_1574[6]), 
            .Z(n16013));
    L6MUX21 i12385 (.D0(n15791), .D1(n15792), .SD(rx_msg_31__N_1574[6]), 
            .Z(n15795));
    L6MUX21 i12386 (.D0(n15793), .D1(n15794), .SD(rx_msg_31__N_1574[6]), 
            .Z(n15796));
    L6MUX21 i12633 (.D0(n16039), .D1(n16040), .SD(tx_N_2479[3]), .Z(n16043));
    L6MUX21 i12634 (.D0(n16041), .D1(n16042), .SD(tx_N_2479[3]), .Z(n16044));
    L6MUX21 i12664 (.D0(n16070), .D1(n16071), .SD(tx_N_2479[3]), .Z(n16074));
    PFUMX i13063 (.BLUT(n16680), .ALUT(n16681), .C0(rx_byte_cnt[1]), .Z(clk2_enable_424));
    CCU2B rx_cmd_5267_add_4_3 (.A0(rx_cmd[1]), .B0(rx_bit_cnt[1]), .C0(rx_bit_cnt[2]), 
          .D0(n50_adj_2593), .A1(rx_cmd[2]), .B1(uart_rx1_c), .C1(rx_bit_cnt[1]), 
          .D1(n13), .CIN(n13603), .COUT(n13604), .S0(n37_adj_2608[1]), 
          .S1(n37_adj_2608[2]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(284[44:76])
    defparam rx_cmd_5267_add_4_3.INIT0 = 16'ha9aa;
    defparam rx_cmd_5267_add_4_3.INIT1 = 16'haa6a;
    defparam rx_cmd_5267_add_4_3.INJECT1_0 = "NO";
    defparam rx_cmd_5267_add_4_3.INJECT1_1 = "NO";
    CCU2B rx_cmd_5267_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(rx_cmd[0]), .B1(rx_bit_cnt[1]), .C1(n13), 
          .D1(uart_rx1_c), .COUT(n13603), .S1(n37_adj_2608[0]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(284[44:76])
    defparam rx_cmd_5267_add_4_1.INIT0 = 16'h0000;
    defparam rx_cmd_5267_add_4_1.INIT1 = 16'ha9aa;
    defparam rx_cmd_5267_add_4_1.INJECT1_0 = "NO";
    defparam rx_cmd_5267_add_4_1.INJECT1_1 = "NO";
    CCU2B rx_reg_addr_5266_5390_add_4_5 (.A0(rx_msg_31__N_1574[6]), .B0(rx_bit_cnt[2]), 
          .C0(n50_adj_2593), .D0(rx_bit_cnt[1]), .A1(rx_msg_31__N_1574[7]), 
          .B1(n11), .C1(n4_adj_2594), .D1(rx_bit_cnt[1]), .CIN(n13601), 
          .S0(n25[3]), .S1(n25[4]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(282[44:76])
    defparam rx_reg_addr_5266_5390_add_4_5.INIT0 = 16'h9aaa;
    defparam rx_reg_addr_5266_5390_add_4_5.INIT1 = 16'haa9a;
    defparam rx_reg_addr_5266_5390_add_4_5.INJECT1_0 = "NO";
    defparam rx_reg_addr_5266_5390_add_4_5.INJECT1_1 = "NO";
    L6MUX21 i12416 (.D0(n15822), .D1(n15823), .SD(rx_msg_31__N_1574[6]), 
            .Z(n15826));
    CCU2B rx_reg_addr_5266_5390_add_4_3 (.A0(rx_msg_31__N_1574[4]), .B0(rx_bit_cnt[1]), 
          .C0(rx_bit_cnt[2]), .D0(n50_adj_2593), .A1(rx_msg_31__N_1574[5]), 
          .B1(uart_rx1_c), .C1(rx_bit_cnt[1]), .D1(n13), .CIN(n13600), 
          .COUT(n13601), .S0(n25[1]), .S1(n25[2]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(282[44:76])
    defparam rx_reg_addr_5266_5390_add_4_3.INIT0 = 16'ha9aa;
    defparam rx_reg_addr_5266_5390_add_4_3.INIT1 = 16'haa6a;
    defparam rx_reg_addr_5266_5390_add_4_3.INJECT1_0 = "NO";
    defparam rx_reg_addr_5266_5390_add_4_3.INJECT1_1 = "NO";
    L6MUX21 i12665 (.D0(n16072), .D1(n16073), .SD(tx_N_2479[3]), .Z(n16075));
    L6MUX21 i12417 (.D0(n15824), .D1(n15825), .SD(rx_msg_31__N_1574[6]), 
            .Z(n15827));
    FD1P3IX rx_bit_cnt_5263__i3 (.D(n37[3]), .SP(clk2_enable_426), .CD(n11642), 
            .CK(clk2), .Q(rx_bit_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(256[35:49])
    defparam rx_bit_cnt_5263__i3.GSR = "ENABLED";
    FD1P3IX rx_bit_cnt_5263__i4 (.D(n37[4]), .SP(clk2_enable_426), .CD(n11642), 
            .CK(clk2), .Q(rx_bit_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(256[35:49])
    defparam rx_bit_cnt_5263__i4.GSR = "ENABLED";
    FD1P3IX rx_bit_cnt_5263__i5 (.D(n37[5]), .SP(clk2_enable_426), .CD(n11642), 
            .CK(clk2), .Q(rx_bit_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(256[35:49])
    defparam rx_bit_cnt_5263__i5.GSR = "ENABLED";
    FD1P3IX rx_bit_cnt_5263__i6 (.D(n37[6]), .SP(clk2_enable_426), .CD(n11642), 
            .CK(clk2), .Q(rx_bit_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(256[35:49])
    defparam rx_bit_cnt_5263__i6.GSR = "ENABLED";
    FD1P3IX rx_bit_cnt_5263__i7 (.D(n37[7]), .SP(clk2_enable_426), .CD(n11642), 
            .CK(clk2), .Q(rx_bit_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(256[35:49])
    defparam rx_bit_cnt_5263__i7.GSR = "ENABLED";
    FD1P3IX rx_byte_cnt_5264_5265__i2 (.D(n1[1]), .SP(clk2_enable_425), 
            .CD(n11168), .CK(clk2), .Q(rx_byte_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(259[40:55])
    defparam rx_byte_cnt_5264_5265__i2.GSR = "ENABLED";
    FD1P3IX rx_reg_addr_5266_5390__i2 (.D(n25[1]), .SP(clk2_enable_424), 
            .CD(n11168), .CK(clk2), .Q(rx_msg_31__N_1574[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(282[44:76])
    defparam rx_reg_addr_5266_5390__i2.GSR = "ENABLED";
    FD1P3IX rx_reg_addr_5266_5390__i3 (.D(n25[2]), .SP(clk2_enable_424), 
            .CD(n11168), .CK(clk2), .Q(rx_msg_31__N_1574[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(282[44:76])
    defparam rx_reg_addr_5266_5390__i3.GSR = "ENABLED";
    FD1P3IX rx_reg_addr_5266_5390__i4 (.D(n25[3]), .SP(clk2_enable_424), 
            .CD(n11168), .CK(clk2), .Q(rx_msg_31__N_1574[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(282[44:76])
    defparam rx_reg_addr_5266_5390__i4.GSR = "ENABLED";
    FD1P3IX rx_reg_addr_5266_5390__i5 (.D(n25[4]), .SP(clk2_enable_424), 
            .CD(n11168), .CK(clk2), .Q(rx_msg_31__N_1574[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(282[44:76])
    defparam rx_reg_addr_5266_5390__i5.GSR = "ENABLED";
    FD1P3IX rx_cmd_5267__i1 (.D(n37_adj_2608[1]), .SP(clk2_enable_423), 
            .CD(n10786), .CK(clk2), .Q(rx_cmd[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(284[44:76])
    defparam rx_cmd_5267__i1.GSR = "ENABLED";
    FD1P3IX rx_cmd_5267__i2 (.D(n37_adj_2608[2]), .SP(clk2_enable_423), 
            .CD(n10786), .CK(clk2), .Q(rx_cmd[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(284[44:76])
    defparam rx_cmd_5267__i2.GSR = "ENABLED";
    FD1P3IX rx_cmd_5267__i3 (.D(n37_adj_2608[3]), .SP(clk2_enable_423), 
            .CD(n10786), .CK(clk2), .Q(rx_cmd[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(284[44:76])
    defparam rx_cmd_5267__i3.GSR = "ENABLED";
    FD1P3IX rx_cmd_5267__i4 (.D(n37_adj_2608[4]), .SP(clk2_enable_423), 
            .CD(n10786), .CK(clk2), .Q(rx_cmd[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(284[44:76])
    defparam rx_cmd_5267__i4.GSR = "ENABLED";
    FD1P3IX rx_cmd_5267__i5 (.D(n37_adj_2608[5]), .SP(clk2_enable_423), 
            .CD(n10786), .CK(clk2), .Q(rx_cmd[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(284[44:76])
    defparam rx_cmd_5267__i5.GSR = "ENABLED";
    FD1P3IX rx_cmd_5267__i6 (.D(n37_adj_2608[6]), .SP(clk2_enable_423), 
            .CD(n10786), .CK(clk2), .Q(rx_cmd[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(284[44:76])
    defparam rx_cmd_5267__i6.GSR = "ENABLED";
    FD1P3IX rx_cmd_5267__i7 (.D(n37_adj_2608[7]), .SP(clk2_enable_423), 
            .CD(n10786), .CK(clk2), .Q(rx_cmd[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(284[44:76])
    defparam rx_cmd_5267__i7.GSR = "ENABLED";
    FD1P3AY tx_2388 (.D(tx_N_2464), .SP(clk2_enable_421), .CK(clk2), .Q(uart_tx1_c));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(158[10] 204[8])
    defparam tx_2388.GSR = "ENABLED";
    FD1P3IX rx_reg_data_5268__i0 (.D(n37_adj_2607[0]), .SP(clk2_enable_422), 
            .CD(n13112), .CK(clk2), .Q(rx_reg_data[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(286[44:76])
    defparam rx_reg_data_5268__i0.GSR = "ENABLED";
    FD1P3IX rx_cmd_5267__i0 (.D(n37_adj_2608[0]), .SP(clk2_enable_423), 
            .CD(n10786), .CK(clk2), .Q(rx_cmd[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(284[44:76])
    defparam rx_cmd_5267__i0.GSR = "ENABLED";
    FD1P3IX rx_reg_addr_5266_5390__i1 (.D(n25[0]), .SP(clk2_enable_424), 
            .CD(n11168), .CK(clk2), .Q(rx_msg_31__N_1574[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(282[44:76])
    defparam rx_reg_addr_5266_5390__i1.GSR = "ENABLED";
    FD1P3IX rx_byte_cnt_5264_5265__i1 (.D(n1[0]), .SP(clk2_enable_425), 
            .CD(n11168), .CK(clk2), .Q(rx_byte_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(259[40:55])
    defparam rx_byte_cnt_5264_5265__i1.GSR = "ENABLED";
    FD1P3IX rx_bit_cnt_5263__i0 (.D(n37[0]), .SP(clk2_enable_426), .CD(n11642), 
            .CK(clk2), .Q(rx_bit_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(256[35:49])
    defparam rx_bit_cnt_5263__i0.GSR = "ENABLED";
    FD1P3IX rx_freq_cnt_5262__i0 (.D(n3[0]), .SP(clk2_enable_427), .CD(n13214), 
            .CK(clk2), .Q(n79[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(246[32:47])
    defparam rx_freq_cnt_5262__i0.GSR = "ENABLED";
    FD1P3IX tx_freq_cnt_5261__i0 (.D(n8[0]), .SP(clk2_enable_428), .CD(n10814), 
            .CK(clk2), .Q(n79_adj_2606[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(191[44:59])
    defparam tx_freq_cnt_5261__i0.GSR = "ENABLED";
    FD1S3IX tx_state_FSM_i1 (.D(empty_N_2494), .CK(clk2), .CD(n10776), 
            .Q(tx_state[0]));   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(159[9] 203[16])
    defparam tx_state_FSM_i1.GSR = "ENABLED";
    PFUMX mux_52_i26 (.BLUT(n9221), .ALUT(n9222), .C0(n15766), .Z(n783[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=236 */ ;
    uart_fifo u1 (.clk2(clk2), .empty(empty), .full(full), .GND_net(GND_net), 
            .VCC_net(VCC_net), .wr(wr), .rd(rd), .\msg[35] (msg[35]), 
            .\msg[34] (msg[34]), .\msg[33] (msg[33]), .\msg[32] (msg[32]), 
            .\msg[31] (msg[31]), .\msg[30] (msg[30]), .\msg[29] (msg[29]), 
            .\msg[28] (msg[28]), .\msg[27] (msg[27]), .\msg[26] (msg[26]), 
            .\msg[25] (msg[25]), .\msg[24] (msg[24]), .\msg[23] (msg[23]), 
            .\msg[22] (msg[22]), .\msg[21] (msg[21]), .\msg[20] (msg[20]), 
            .\msg[19] (msg[19]), .\msg[18] (msg[18]), .\msg[17] (msg[17]), 
            .\msg[16] (msg[16]), .\msg[14] (msg[14]), .\msg[12] (msg[12]), 
            .\msg[11] (msg[11]), .\msg[9] (msg[9]), .\msg[7] (msg[7]), 
            .\msg[5] (msg[5]), .\msg[2] (msg[2]), .\msg[0] (msg[0]), .sys_rstn_N_889(sys_rstn_N_889), 
            .data({data}), .\msg[39] (msg[39]), .\msg[38] (msg[38]), .\msg[37] (msg[37]), 
            .\msg[36] (msg[36])) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(38[11] 48[2])
    
endmodule
//
// Verilog Description of module uart_fifo
//

module uart_fifo (clk2, empty, full, GND_net, VCC_net, wr, rd, 
            \msg[35] , \msg[34] , \msg[33] , \msg[32] , \msg[31] , 
            \msg[30] , \msg[29] , \msg[28] , \msg[27] , \msg[26] , 
            \msg[25] , \msg[24] , \msg[23] , \msg[22] , \msg[21] , 
            \msg[20] , \msg[19] , \msg[18] , \msg[17] , \msg[16] , 
            \msg[14] , \msg[12] , \msg[11] , \msg[9] , \msg[7] , \msg[5] , 
            \msg[2] , \msg[0] , sys_rstn_N_889, data, \msg[39] , \msg[38] , 
            \msg[37] , \msg[36] ) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input clk2;
    output empty;
    output full;
    input GND_net;
    input VCC_net;
    input wr;
    input rd;
    input \msg[35] ;
    input \msg[34] ;
    input \msg[33] ;
    input \msg[32] ;
    input \msg[31] ;
    input \msg[30] ;
    input \msg[29] ;
    input \msg[28] ;
    input \msg[27] ;
    input \msg[26] ;
    input \msg[25] ;
    input \msg[24] ;
    input \msg[23] ;
    input \msg[22] ;
    input \msg[21] ;
    input \msg[20] ;
    input \msg[19] ;
    input \msg[18] ;
    input \msg[17] ;
    input \msg[16] ;
    input \msg[14] ;
    input \msg[12] ;
    input \msg[11] ;
    input \msg[9] ;
    input \msg[7] ;
    input \msg[5] ;
    input \msg[2] ;
    input \msg[0] ;
    input sys_rstn_N_889;
    output [63:0]data;
    input \msg[39] ;
    input \msg[38] ;
    input \msg[37] ;
    input \msg[36] ;
    
    wire clk2 /* synthesis SET_AS_NETWORK=clk2, is_clock=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(65[12:16])
    
    wire fcount_2, fcnt_en, ifcount_2, fcount_3, ifcount_3, fcount_4, 
        ifcount_4, fcount_5, ifcount_5, fcount_6, ifcount_6, fcount_7, 
        ifcount_7, fcount_8, ifcount_8, fcount_9, ifcount_9, empty_d, 
        full_d, wcount_0, wren_i, iwcount_0, wcount_1, iwcount_1, 
        wcount_2, iwcount_2, wcount_3, iwcount_3, wcount_4, iwcount_4, 
        wcount_5, iwcount_5, wcount_6, iwcount_6, wcount_7, iwcount_7, 
        wcount_8, iwcount_8, wcount_9, iwcount_9, rcount_0, rden_i, 
        ircount_0, rcount_1, ircount_1, rcount_2, ircount_2, rcount_3, 
        ircount_3, rcount_4, ircount_4, rcount_5, ircount_5, rcount_6, 
        ircount_6, rcount_7, ircount_7, rcount_8, ircount_8, rcount_9, 
        ircount_9, fcount_0, ifcount_0, bdcnt_bctr_ci, cnt_con, ifcount_1, 
        co0, fcount_1, co1, co2, co3, cmp_ci, co0_1, co1_1, 
        co2_1, co3_1, cmp_le_1_c, cmp_le_1, cmp_ci_1, co0_2, co1_2, 
        co2_2, co3_2, wren_i_inv, cmp_ge_d1_c, cmp_ge_d1, w_ctr_ci, 
        co0_3, co1_3, co2_3, co3_3, r_ctr_ci, co0_4, co1_4, co2_4, 
        co3_4, invout_1, invout_0, rden_i_inv;
    
    FD1P3AX FF_29 (.D(ifcount_2), .SP(fcnt_en), .CK(clk2), .Q(fcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart_fifo.v(261[13] 262[22])
    defparam FF_29.GSR = "ENABLED";
    FD1P3AX FF_28 (.D(ifcount_3), .SP(fcnt_en), .CK(clk2), .Q(fcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart_fifo.v(268[13] 269[22])
    defparam FF_28.GSR = "ENABLED";
    FD1P3AX FF_27 (.D(ifcount_4), .SP(fcnt_en), .CK(clk2), .Q(fcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart_fifo.v(275[13] 276[22])
    defparam FF_27.GSR = "ENABLED";
    FD1P3AX FF_26 (.D(ifcount_5), .SP(fcnt_en), .CK(clk2), .Q(fcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart_fifo.v(282[13] 283[22])
    defparam FF_26.GSR = "ENABLED";
    FD1P3AX FF_25 (.D(ifcount_6), .SP(fcnt_en), .CK(clk2), .Q(fcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart_fifo.v(289[13] 290[22])
    defparam FF_25.GSR = "ENABLED";
    FD1P3AX FF_24 (.D(ifcount_7), .SP(fcnt_en), .CK(clk2), .Q(fcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart_fifo.v(296[13] 297[22])
    defparam FF_24.GSR = "ENABLED";
    FD1P3AX FF_23 (.D(ifcount_8), .SP(fcnt_en), .CK(clk2), .Q(fcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart_fifo.v(303[13] 304[22])
    defparam FF_23.GSR = "ENABLED";
    FD1P3AX FF_22 (.D(ifcount_9), .SP(fcnt_en), .CK(clk2), .Q(fcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart_fifo.v(310[13] 311[22])
    defparam FF_22.GSR = "ENABLED";
    FD1S3AY FF_21 (.D(empty_d), .CK(clk2), .Q(empty)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart_fifo.v(317[13:69])
    defparam FF_21.GSR = "ENABLED";
    FD1S3AX FF_20 (.D(full_d), .CK(clk2), .Q(full)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart_fifo.v(323[13:67])
    defparam FF_20.GSR = "ENABLED";
    FD1P3AX FF_19 (.D(iwcount_0), .SP(wren_i), .CK(clk2), .Q(wcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart_fifo.v(329[13:85])
    defparam FF_19.GSR = "ENABLED";
    FD1P3AX FF_18 (.D(iwcount_1), .SP(wren_i), .CK(clk2), .Q(wcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart_fifo.v(335[13:85])
    defparam FF_18.GSR = "ENABLED";
    FD1P3AX FF_17 (.D(iwcount_2), .SP(wren_i), .CK(clk2), .Q(wcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart_fifo.v(341[13:85])
    defparam FF_17.GSR = "ENABLED";
    FD1P3AX FF_16 (.D(iwcount_3), .SP(wren_i), .CK(clk2), .Q(wcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart_fifo.v(347[13:85])
    defparam FF_16.GSR = "ENABLED";
    FD1P3AX FF_15 (.D(iwcount_4), .SP(wren_i), .CK(clk2), .Q(wcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart_fifo.v(353[13:85])
    defparam FF_15.GSR = "ENABLED";
    FD1P3AX FF_14 (.D(iwcount_5), .SP(wren_i), .CK(clk2), .Q(wcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart_fifo.v(359[13:85])
    defparam FF_14.GSR = "ENABLED";
    FD1P3AX FF_13 (.D(iwcount_6), .SP(wren_i), .CK(clk2), .Q(wcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart_fifo.v(365[13:85])
    defparam FF_13.GSR = "ENABLED";
    FD1P3AX FF_12 (.D(iwcount_7), .SP(wren_i), .CK(clk2), .Q(wcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart_fifo.v(371[13:85])
    defparam FF_12.GSR = "ENABLED";
    FD1P3AX FF_11 (.D(iwcount_8), .SP(wren_i), .CK(clk2), .Q(wcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart_fifo.v(377[13:85])
    defparam FF_11.GSR = "ENABLED";
    FD1P3AX FF_10 (.D(iwcount_9), .SP(wren_i), .CK(clk2), .Q(wcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart_fifo.v(383[13:85])
    defparam FF_10.GSR = "ENABLED";
    FD1P3AX FF_9 (.D(ircount_0), .SP(rden_i), .CK(clk2), .Q(rcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart_fifo.v(389[13:84])
    defparam FF_9.GSR = "ENABLED";
    FD1P3AX FF_8 (.D(ircount_1), .SP(rden_i), .CK(clk2), .Q(rcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart_fifo.v(395[13:84])
    defparam FF_8.GSR = "ENABLED";
    FD1P3AX FF_7 (.D(ircount_2), .SP(rden_i), .CK(clk2), .Q(rcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart_fifo.v(401[13:84])
    defparam FF_7.GSR = "ENABLED";
    FD1P3AX FF_6 (.D(ircount_3), .SP(rden_i), .CK(clk2), .Q(rcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart_fifo.v(407[13:84])
    defparam FF_6.GSR = "ENABLED";
    FD1P3AX FF_5 (.D(ircount_4), .SP(rden_i), .CK(clk2), .Q(rcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart_fifo.v(413[13:84])
    defparam FF_5.GSR = "ENABLED";
    FD1P3AX FF_4 (.D(ircount_5), .SP(rden_i), .CK(clk2), .Q(rcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart_fifo.v(419[13:84])
    defparam FF_4.GSR = "ENABLED";
    FD1P3AX FF_3 (.D(ircount_6), .SP(rden_i), .CK(clk2), .Q(rcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart_fifo.v(425[13:84])
    defparam FF_3.GSR = "ENABLED";
    FD1P3AX FF_2 (.D(ircount_7), .SP(rden_i), .CK(clk2), .Q(rcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart_fifo.v(431[13:84])
    defparam FF_2.GSR = "ENABLED";
    FD1P3AX FF_1 (.D(ircount_8), .SP(rden_i), .CK(clk2), .Q(rcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart_fifo.v(437[13:84])
    defparam FF_1.GSR = "ENABLED";
    FD1P3AX FF_0 (.D(ircount_9), .SP(rden_i), .CK(clk2), .Q(rcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart_fifo.v(443[13:84])
    defparam FF_0.GSR = "ENABLED";
    FD1P3AX FF_31 (.D(ifcount_0), .SP(fcnt_en), .CK(clk2), .Q(fcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart_fifo.v(247[13] 248[22])
    defparam FF_31.GSR = "ENABLED";
    FADD2B bdcnt_bctr_cia (.A0(GND_net), .A1(cnt_con), .B0(GND_net), .B1(cnt_con), 
           .CI(GND_net), .COUT(bdcnt_bctr_ci)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(38[11] 48[2])
    CB2 bdcnt_bctr_0 (.PC0(fcount_0), .PC1(fcount_1), .CON(cnt_con), .CI(bdcnt_bctr_ci), 
        .CO(co0), .NC0(ifcount_0), .NC1(ifcount_1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(38[11] 48[2])
    CB2 bdcnt_bctr_1 (.PC0(fcount_2), .PC1(fcount_3), .CON(cnt_con), .CI(co0), 
        .CO(co1), .NC0(ifcount_2), .NC1(ifcount_3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(38[11] 48[2])
    CB2 bdcnt_bctr_2 (.PC0(fcount_4), .PC1(fcount_5), .CON(cnt_con), .CI(co1), 
        .CO(co2), .NC0(ifcount_4), .NC1(ifcount_5)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(38[11] 48[2])
    CB2 bdcnt_bctr_3 (.PC0(fcount_6), .PC1(fcount_7), .CON(cnt_con), .CI(co2), 
        .CO(co3), .NC0(ifcount_6), .NC1(ifcount_7)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(38[11] 48[2])
    CB2 bdcnt_bctr_4 (.PC0(fcount_8), .PC1(fcount_9), .CON(cnt_con), .CI(co3), 
        .NC0(ifcount_8), .NC1(ifcount_9)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(38[11] 48[2])
    FADD2B e_cmp_ci_a (.A0(VCC_net), .A1(VCC_net), .B0(VCC_net), .B1(VCC_net), 
           .CI(GND_net), .COUT(cmp_ci)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(38[11] 48[2])
    ALEB2 e_cmp_0 (.A0(fcount_0), .A1(fcount_1), .B0(rden_i), .B1(GND_net), 
          .CI(cmp_ci), .LE(co0_1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(38[11] 48[2])
    ALEB2 e_cmp_1 (.A0(fcount_2), .A1(fcount_3), .B0(GND_net), .B1(GND_net), 
          .CI(co0_1), .LE(co1_1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(38[11] 48[2])
    ALEB2 e_cmp_2 (.A0(fcount_4), .A1(fcount_5), .B0(GND_net), .B1(GND_net), 
          .CI(co1_1), .LE(co2_1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(38[11] 48[2])
    ALEB2 e_cmp_3 (.A0(fcount_6), .A1(fcount_7), .B0(GND_net), .B1(GND_net), 
          .CI(co2_1), .LE(co3_1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(38[11] 48[2])
    ALEB2 e_cmp_4 (.A0(fcount_8), .A1(fcount_9), .B0(GND_net), .B1(GND_net), 
          .CI(co3_1), .LE(cmp_le_1_c)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(38[11] 48[2])
    FADD2B a0 (.A0(GND_net), .A1(GND_net), .B0(GND_net), .B1(GND_net), 
           .CI(cmp_le_1_c), .S0(cmp_le_1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(38[11] 48[2])
    FADD2B g_cmp_ci_a (.A0(VCC_net), .A1(VCC_net), .B0(VCC_net), .B1(VCC_net), 
           .CI(GND_net), .COUT(cmp_ci_1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(38[11] 48[2])
    AGEB2 g_cmp_0 (.A0(fcount_0), .A1(fcount_1), .B0(wren_i), .B1(wren_i), 
          .CI(cmp_ci_1), .GE(co0_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(38[11] 48[2])
    AGEB2 g_cmp_1 (.A0(fcount_2), .A1(fcount_3), .B0(wren_i), .B1(wren_i), 
          .CI(co0_2), .GE(co1_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(38[11] 48[2])
    AGEB2 g_cmp_2 (.A0(fcount_4), .A1(fcount_5), .B0(wren_i), .B1(wren_i), 
          .CI(co1_2), .GE(co2_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(38[11] 48[2])
    AGEB2 g_cmp_3 (.A0(fcount_6), .A1(fcount_7), .B0(wren_i), .B1(wren_i), 
          .CI(co2_2), .GE(co3_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(38[11] 48[2])
    AGEB2 g_cmp_4 (.A0(fcount_8), .A1(fcount_9), .B0(wren_i), .B1(wren_i_inv), 
          .CI(co3_2), .GE(cmp_ge_d1_c)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(38[11] 48[2])
    FADD2B a1 (.A0(GND_net), .A1(GND_net), .B0(GND_net), .B1(GND_net), 
           .CI(cmp_ge_d1_c), .S0(cmp_ge_d1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(38[11] 48[2])
    FADD2B w_ctr_cia (.A0(GND_net), .A1(VCC_net), .B0(GND_net), .B1(VCC_net), 
           .CI(GND_net), .COUT(w_ctr_ci)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(38[11] 48[2])
    CU2 w_ctr_0 (.CI(w_ctr_ci), .PC0(wcount_0), .PC1(wcount_1), .CO(co0_3), 
        .NC0(iwcount_0), .NC1(iwcount_1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(38[11] 48[2])
    CU2 w_ctr_1 (.CI(co0_3), .PC0(wcount_2), .PC1(wcount_3), .CO(co1_3), 
        .NC0(iwcount_2), .NC1(iwcount_3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(38[11] 48[2])
    CU2 w_ctr_2 (.CI(co1_3), .PC0(wcount_4), .PC1(wcount_5), .CO(co2_3), 
        .NC0(iwcount_4), .NC1(iwcount_5)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(38[11] 48[2])
    CU2 w_ctr_3 (.CI(co2_3), .PC0(wcount_6), .PC1(wcount_7), .CO(co3_3), 
        .NC0(iwcount_6), .NC1(iwcount_7)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(38[11] 48[2])
    CU2 w_ctr_4 (.CI(co3_3), .PC0(wcount_8), .PC1(wcount_9), .NC0(iwcount_8), 
        .NC1(iwcount_9)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(38[11] 48[2])
    FADD2B r_ctr_cia (.A0(GND_net), .A1(VCC_net), .B0(GND_net), .B1(VCC_net), 
           .CI(GND_net), .COUT(r_ctr_ci)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(38[11] 48[2])
    CU2 r_ctr_0 (.CI(r_ctr_ci), .PC0(rcount_0), .PC1(rcount_1), .CO(co0_4), 
        .NC0(ircount_0), .NC1(ircount_1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(38[11] 48[2])
    CU2 r_ctr_1 (.CI(co0_4), .PC0(rcount_2), .PC1(rcount_3), .CO(co1_4), 
        .NC0(ircount_2), .NC1(ircount_3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(38[11] 48[2])
    CU2 r_ctr_2 (.CI(co1_4), .PC0(rcount_4), .PC1(rcount_5), .CO(co2_4), 
        .NC0(ircount_4), .NC1(ircount_5)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(38[11] 48[2])
    CU2 r_ctr_3 (.CI(co2_4), .PC0(rcount_6), .PC1(rcount_7), .CO(co3_4), 
        .NC0(ircount_6), .NC1(ircount_7)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(38[11] 48[2])
    CU2 r_ctr_4 (.CI(co3_4), .PC0(rcount_8), .PC1(rcount_9), .NC0(ircount_8), 
        .NC1(ircount_9)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(38[11] 48[2])
    INV INV_3 (.A(full), .Z(invout_1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(38[11] 48[2])
    AND2 AND2_t3 (.A(wr), .B(invout_1), .Z(wren_i)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart_fifo.v(125[10:54])
    AND2 AND2_t2 (.A(rd), .B(invout_0), .Z(rden_i)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart_fifo.v(129[10:54])
    INV INV_2 (.A(empty), .Z(invout_0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(38[11] 48[2])
    AND2 AND2_t1 (.A(wren_i), .B(rden_i_inv), .Z(cnt_con)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart_fifo.v(133[10:59])
    XOR2 XOR2_t0 (.A(wren_i), .B(rden_i), .Z(fcnt_en)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart_fifo.v(135[10:55])
    INV INV_1 (.A(rden_i), .Z(rden_i_inv)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(38[11] 48[2])
    INV INV_0 (.A(wren_i), .Z(wren_i_inv)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(38[11] 48[2])
    ROM16X1 LUT4_1 (.AD0(empty), .AD1(wren_i), .AD2(cmp_le_1), .AD3(GND_net), 
            .DO0(empty_d)) /* synthesis initval="0x3232", syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(38[11] 48[2])
    defparam LUT4_1.initval = 16'h3232;
    ROM16X1 LUT4_0 (.AD0(full), .AD1(rden_i), .AD2(cmp_ge_d1), .AD3(GND_net), 
            .DO0(full_d)) /* synthesis initval="0x3232", syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(38[11] 48[2])
    defparam LUT4_0.initval = 16'h3232;
    PDPW16KB pdp_ram_0_0_1 (.DI0(\msg[0] ), .DI1(GND_net), .DI2(\msg[2] ), 
            .DI3(GND_net), .DI4(GND_net), .DI5(\msg[5] ), .DI6(GND_net), 
            .DI7(\msg[7] ), .DI8(GND_net), .DI9(\msg[9] ), .DI10(GND_net), 
            .DI11(\msg[11] ), .DI12(\msg[12] ), .DI13(GND_net), .DI14(\msg[14] ), 
            .DI15(GND_net), .DI16(\msg[16] ), .DI17(\msg[17] ), .DI18(\msg[18] ), 
            .DI19(\msg[19] ), .DI20(\msg[20] ), .DI21(\msg[21] ), .DI22(\msg[22] ), 
            .DI23(\msg[23] ), .DI24(\msg[24] ), .DI25(\msg[25] ), .DI26(\msg[26] ), 
            .DI27(\msg[27] ), .DI28(\msg[28] ), .DI29(\msg[29] ), .DI30(\msg[30] ), 
            .DI31(\msg[31] ), .DI32(\msg[32] ), .DI33(\msg[33] ), .DI34(\msg[34] ), 
            .DI35(\msg[35] ), .ADW0(wcount_0), .ADW1(wcount_1), .ADW2(wcount_2), 
            .ADW3(wcount_3), .ADW4(wcount_4), .ADW5(wcount_5), .ADW6(wcount_6), 
            .ADW7(wcount_7), .ADW8(wcount_8), .BE0(VCC_net), .BE1(VCC_net), 
            .BE2(VCC_net), .BE3(VCC_net), .CEW(wren_i), .CLKW(clk2), 
            .CSW0(VCC_net), .CSW1(GND_net), .CSW2(GND_net), .ADR0(GND_net), 
            .ADR1(GND_net), .ADR2(GND_net), .ADR3(GND_net), .ADR4(GND_net), 
            .ADR5(rcount_0), .ADR6(rcount_1), .ADR7(rcount_2), .ADR8(rcount_3), 
            .ADR9(rcount_4), .ADR10(rcount_5), .ADR11(rcount_6), .ADR12(rcount_7), 
            .ADR13(rcount_8), .CER(rden_i), .CLKR(clk2), .CSR0(GND_net), 
            .CSR1(GND_net), .CSR2(GND_net), .RST(sys_rstn_N_889), .DO0(data[18]), 
            .DO1(data[19]), .DO2(data[20]), .DO3(data[21]), .DO4(data[22]), 
            .DO5(data[23]), .DO6(data[24]), .DO7(data[25]), .DO8(data[26]), 
            .DO9(data[27]), .DO10(data[28]), .DO11(data[29]), .DO12(data[30]), 
            .DO13(data[31]), .DO14(data[32]), .DO15(data[33]), .DO16(data[34]), 
            .DO17(data[35]), .DO18(data[0]), .DO19(data[1]), .DO20(data[2]), 
            .DO21(data[3]), .DO22(data[4]), .DO23(data[5]), .DO24(data[6]), 
            .DO25(data[7]), .DO26(data[8]), .DO27(data[9]), .DO28(data[10]), 
            .DO29(data[11]), .DO30(data[12]), .DO31(data[13]), .DO32(data[14]), 
            .DO33(data[15]), .DO34(data[16]), .DO35(data[17])) /* synthesis MEM_LPC_FILE="uart_fifo.lpc", MEM_INIT_FILE="", CSDECODE_R="0b000", CSDECODE_W="0b001", GSR="DISABLED", RESETMODE="ASYNC", REGMODE="NOREG", DATA_WIDTH_R="36", DATA_WIDTH_W="36", syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(38[11] 48[2])
    defparam pdp_ram_0_0_1.DATA_WIDTH_W = 36;
    defparam pdp_ram_0_0_1.DATA_WIDTH_R = 36;
    defparam pdp_ram_0_0_1.REGMODE = "NOREG";
    defparam pdp_ram_0_0_1.RESETMODE = "ASYNC";
    defparam pdp_ram_0_0_1.CSDECODE_W = 3'b001;
    defparam pdp_ram_0_0_1.CSDECODE_R = 3'b000;
    defparam pdp_ram_0_0_1.GSR = "DISABLED";
    defparam pdp_ram_0_0_1.INITVAL_00 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_01 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_02 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_03 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_04 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_05 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_06 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_07 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_08 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_09 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_0A = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_0B = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_0C = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_0D = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_0E = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_0F = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_10 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_11 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_12 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_13 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_14 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_15 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_16 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_17 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_18 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_19 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_1A = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_1B = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_1C = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_1D = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_1E = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_1F = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_20 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_21 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_22 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_23 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_24 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_25 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_26 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_27 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_28 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_29 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_2A = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_2B = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_2C = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_2D = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_2E = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_2F = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_30 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_31 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_32 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_33 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_34 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_35 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_36 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_37 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_38 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_39 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_3A = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_3B = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_3C = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_3D = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_3E = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_0_1.INITVAL_3F = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    PDPW16KB pdp_ram_0_1_0 (.DI0(\msg[36] ), .DI1(\msg[37] ), .DI2(\msg[38] ), 
            .DI3(\msg[39] ), .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), 
            .DI7(GND_net), .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), 
            .DI11(GND_net), .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), 
            .DI15(GND_net), .DI16(GND_net), .DI17(GND_net), .DI18(GND_net), 
            .DI19(GND_net), .DI20(GND_net), .DI21(GND_net), .DI22(GND_net), 
            .DI23(GND_net), .DI24(GND_net), .DI25(GND_net), .DI26(GND_net), 
            .DI27(GND_net), .DI28(GND_net), .DI29(GND_net), .DI30(GND_net), 
            .DI31(GND_net), .DI32(GND_net), .DI33(GND_net), .DI34(GND_net), 
            .DI35(GND_net), .ADW0(wcount_0), .ADW1(wcount_1), .ADW2(wcount_2), 
            .ADW3(wcount_3), .ADW4(wcount_4), .ADW5(wcount_5), .ADW6(wcount_6), 
            .ADW7(wcount_7), .ADW8(wcount_8), .BE0(VCC_net), .BE1(VCC_net), 
            .BE2(VCC_net), .BE3(VCC_net), .CEW(wren_i), .CLKW(clk2), 
            .CSW0(VCC_net), .CSW1(GND_net), .CSW2(GND_net), .ADR0(GND_net), 
            .ADR1(GND_net), .ADR2(GND_net), .ADR3(GND_net), .ADR4(GND_net), 
            .ADR5(rcount_0), .ADR6(rcount_1), .ADR7(rcount_2), .ADR8(rcount_3), 
            .ADR9(rcount_4), .ADR10(rcount_5), .ADR11(rcount_6), .ADR12(rcount_7), 
            .ADR13(rcount_8), .CER(rden_i), .CLKR(clk2), .CSR0(GND_net), 
            .CSR1(GND_net), .CSR2(GND_net), .RST(sys_rstn_N_889), .DO0(data[54]), 
            .DO1(data[55]), .DO2(data[56]), .DO3(data[57]), .DO4(data[58]), 
            .DO5(data[59]), .DO6(data[60]), .DO7(data[61]), .DO8(data[62]), 
            .DO9(data[63]), .DO18(data[36]), .DO19(data[37]), .DO20(data[38]), 
            .DO21(data[39]), .DO22(data[40]), .DO23(data[41]), .DO24(data[42]), 
            .DO25(data[43]), .DO26(data[44]), .DO27(data[45]), .DO28(data[46]), 
            .DO29(data[47]), .DO30(data[48]), .DO31(data[49]), .DO32(data[50]), 
            .DO33(data[51]), .DO34(data[52]), .DO35(data[53])) /* synthesis MEM_LPC_FILE="uart_fifo.lpc", MEM_INIT_FILE="", CSDECODE_R="0b000", CSDECODE_W="0b001", GSR="DISABLED", RESETMODE="ASYNC", REGMODE="NOREG", DATA_WIDTH_R="36", DATA_WIDTH_W="36", syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart.v(38[11] 48[2])
    defparam pdp_ram_0_1_0.DATA_WIDTH_W = 36;
    defparam pdp_ram_0_1_0.DATA_WIDTH_R = 36;
    defparam pdp_ram_0_1_0.REGMODE = "NOREG";
    defparam pdp_ram_0_1_0.RESETMODE = "ASYNC";
    defparam pdp_ram_0_1_0.CSDECODE_W = 3'b001;
    defparam pdp_ram_0_1_0.CSDECODE_R = 3'b000;
    defparam pdp_ram_0_1_0.GSR = "DISABLED";
    defparam pdp_ram_0_1_0.INITVAL_00 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_01 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_02 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_03 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_04 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_05 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_06 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_07 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_08 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_09 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_0A = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_0B = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_0C = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_0D = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_0E = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_0F = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_10 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_11 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_12 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_13 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_14 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_15 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_16 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_17 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_18 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_19 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_1A = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_1B = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_1C = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_1D = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_1E = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_1F = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_20 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_21 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_22 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_23 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_24 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_25 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_26 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_27 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_28 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_29 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_2A = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_2B = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_2C = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_2D = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_2E = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_2F = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_30 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_31 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_32 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_33 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_34 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_35 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_36 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_37 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_38 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_39 = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_3A = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_3B = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_3C = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_3D = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_3E = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam pdp_ram_0_1_0.INITVAL_3F = 320'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    FD1P3AX FF_30 (.D(ifcount_1), .SP(fcnt_en), .CK(clk2), .Q(fcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=48 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/uart_fifo.v(254[13] 255[22])
    defparam FF_30.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module dec256sinc24b
//

module dec256sinc24b (GND_net, VCC_net, clk1, xi_data, xi_data_en, 
            mclk1_N_406, xiadc_mdat_c) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input VCC_net;
    input clk1;
    output [15:0]xi_data;
    output xi_data_en;
    input mclk1_N_406;
    input xiadc_mdat_c;
    
    wire word_clk /* synthesis SET_AS_NETWORK=\xi_data_15__I_0/word_clk, is_clock=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(22[6:14])
    wire clk1 /* synthesis SET_AS_NETWORK=clk1, is_clock=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(65[6:10])
    wire mclk1_N_406 /* synthesis is_inv_clock=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(12[13:17])
    wire [36:0]diff1_d;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(19[13:20])
    wire [36:0]diff1;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(16[13:18])
    
    wire n13545;
    wire [36:0]acc1;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(12[13:17])
    wire [36:0]acc2;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(13[13:17])
    wire [24:0]n105;
    
    wire n13546;
    wire [36:0]acc3_d2;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(15[13:20])
    wire [36:0]acc3;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(14[13:17])
    
    wire n13635;
    wire [16:0]n8805;
    
    wire n13636, n13634, n10709;
    wire [36:0]diff2_d;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(20[13:20])
    wire [36:0]diff2;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(17[13:18])
    wire [15:0]DATA_15__N_651;
    
    wire n16624, n13633, n13632, n13571;
    wire [15:0]word_count;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(21[13:23])
    wire [4:0]n25;
    
    wire n13631, n13630, n13570;
    wire [36:0]diff3;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(18[13:18])
    wire [16:0]n92;
    wire [24:0]n105_adj_2553;
    
    wire n13629, n13535, n13536, n13534;
    wire [24:0]n105_adj_2554;
    
    wire enable, clk1_enable_5, n8332, n16642, n13533, n12232, n15690, 
        n15696, n15160, n15688, n13537, n13538, n13620;
    wire [16:0]n8829;
    
    wire n13619, n13564, n13563, n13532, n13562, n13618, n13617, 
        n13561, n13560, n13616, n13615, n13614, n13613, n13559, 
        n13686, n13685, n13684, n13683, n13558, n13682, n13681, 
        n13551, n13680, n13679, n13550, n13549, n13548, n13547;
    
    FD1S3AX diff1_d_i5 (.D(diff1[4]), .CK(word_clk), .Q(diff1_d[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam diff1_d_i5.GSR = "ENABLED";
    CCU2B acc2_5249_5392_add_4_4 (.A0(acc1[2]), .B0(acc2[2]), .C0(GND_net), 
          .D0(VCC_net), .A1(acc1[3]), .B1(acc2[3]), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13545), .COUT(n13546), .S0(n105[2]), .S1(n105[3]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(44[12:23])
    defparam acc2_5249_5392_add_4_4.INIT0 = 16'h666a;
    defparam acc2_5249_5392_add_4_4.INIT1 = 16'h666a;
    defparam acc2_5249_5392_add_4_4.INJECT1_0 = "NO";
    defparam acc2_5249_5392_add_4_4.INJECT1_1 = "NO";
    FD1S3AX acc3_d2_i1 (.D(acc3[0]), .CK(word_clk), .Q(acc3_d2[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam acc3_d2_i1.GSR = "ENABLED";
    CCU2B add_5791_16 (.A0(diff1[13]), .B0(diff1_d[13]), .C0(GND_net), 
          .D0(VCC_net), .A1(diff1[14]), .B1(diff1_d[14]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13635), .COUT(n13636), .S0(n8805[14]), 
          .S1(n8805[15]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(87[15:30])
    defparam add_5791_16.INIT0 = 16'h999a;
    defparam add_5791_16.INIT1 = 16'h999a;
    defparam add_5791_16.INJECT1_0 = "NO";
    defparam add_5791_16.INJECT1_1 = "NO";
    CCU2B add_5791_14 (.A0(diff1[11]), .B0(diff1_d[11]), .C0(GND_net), 
          .D0(VCC_net), .A1(diff1[12]), .B1(diff1_d[12]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13634), .COUT(n13635), .S0(n8805[12]), 
          .S1(n8805[13]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(87[15:30])
    defparam add_5791_14.INIT0 = 16'h999a;
    defparam add_5791_14.INIT1 = 16'h999a;
    defparam add_5791_14.INJECT1_0 = "NO";
    defparam add_5791_14.INJECT1_1 = "NO";
    FD1S3AX word_clk_78 (.D(n10709), .CK(clk1), .Q(word_clk)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(66[8] 71[6])
    defparam word_clk_78.GSR = "ENABLED";
    FD1S3AX diff1_d_i1 (.D(diff1[0]), .CK(word_clk), .Q(diff1_d[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam diff1_d_i1.GSR = "ENABLED";
    FD1S3AX diff2_d_i1 (.D(diff2[0]), .CK(word_clk), .Q(diff2_d[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam diff2_d_i1.GSR = "ENABLED";
    FD1S3AX DATA_i0 (.D(DATA_15__N_651[0]), .CK(word_clk), .Q(xi_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(96[9] 127[5])
    defparam DATA_i0.GSR = "DISABLED";
    FD1S3AX data_en_86 (.D(n16624), .CK(clk1), .Q(xi_data_en)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(136[8] 148[6])
    defparam data_en_86.GSR = "ENABLED";
    FD1S3AX diff1_d_i4 (.D(diff1[3]), .CK(word_clk), .Q(diff1_d[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam diff1_d_i4.GSR = "ENABLED";
    CCU2B acc2_5249_5392_add_4_2 (.A0(acc1[0]), .B0(acc2[0]), .C0(GND_net), 
          .D0(VCC_net), .A1(acc1[1]), .B1(acc2[1]), .C1(GND_net), .D1(VCC_net), 
          .COUT(n13545), .S1(n105[1]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(44[12:23])
    defparam acc2_5249_5392_add_4_2.INIT0 = 16'h0008;
    defparam acc2_5249_5392_add_4_2.INIT1 = 16'h666a;
    defparam acc2_5249_5392_add_4_2.INJECT1_0 = "NO";
    defparam acc2_5249_5392_add_4_2.INJECT1_1 = "NO";
    CCU2B add_5791_12 (.A0(diff1[9]), .B0(diff1_d[9]), .C0(GND_net), .D0(VCC_net), 
          .A1(diff1[10]), .B1(diff1_d[10]), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13633), .COUT(n13634), .S0(n8805[10]), .S1(n8805[11]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(87[15:30])
    defparam add_5791_12.INIT0 = 16'h999a;
    defparam add_5791_12.INIT1 = 16'h999a;
    defparam add_5791_12.INJECT1_0 = "NO";
    defparam add_5791_12.INJECT1_1 = "NO";
    FD1S3AX diff1_d_i3 (.D(diff1[2]), .CK(word_clk), .Q(diff1_d[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam diff1_d_i3.GSR = "ENABLED";
    CCU2B add_5791_10 (.A0(diff1[7]), .B0(diff1_d[7]), .C0(GND_net), .D0(VCC_net), 
          .A1(diff1[8]), .B1(diff1_d[8]), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13632), .COUT(n13633), .S0(n8805[8]), .S1(n8805[9]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(87[15:30])
    defparam add_5791_10.INIT0 = 16'h999a;
    defparam add_5791_10.INIT1 = 16'h999a;
    defparam add_5791_10.INJECT1_0 = "NO";
    defparam add_5791_10.INJECT1_1 = "NO";
    FD1S3AX diff1_d_i2 (.D(diff1[1]), .CK(word_clk), .Q(diff1_d[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam diff1_d_i2.GSR = "ENABLED";
    CCU2B word_count_5251_5252_add_4_5 (.A0(word_count[3]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(word_count[4]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13571), .S0(n25[3]), .S1(n25[4]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(58[19:37])
    defparam word_count_5251_5252_add_4_5.INIT0 = 16'haaa0;
    defparam word_count_5251_5252_add_4_5.INIT1 = 16'haaa0;
    defparam word_count_5251_5252_add_4_5.INJECT1_0 = "NO";
    defparam word_count_5251_5252_add_4_5.INJECT1_1 = "NO";
    CCU2B add_5791_8 (.A0(diff1[5]), .B0(diff1_d[5]), .C0(GND_net), .D0(VCC_net), 
          .A1(diff1[6]), .B1(diff1_d[6]), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13631), .COUT(n13632), .S0(n8805[6]), .S1(n8805[7]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(87[15:30])
    defparam add_5791_8.INIT0 = 16'h999a;
    defparam add_5791_8.INIT1 = 16'h999a;
    defparam add_5791_8.INJECT1_0 = "NO";
    defparam add_5791_8.INJECT1_1 = "NO";
    FD1S3AX acc3_d2_i13 (.D(acc3[12]), .CK(word_clk), .Q(acc3_d2[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam acc3_d2_i13.GSR = "ENABLED";
    CCU2B add_5791_6 (.A0(diff1[3]), .B0(diff1_d[3]), .C0(GND_net), .D0(VCC_net), 
          .A1(diff1[4]), .B1(diff1_d[4]), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13630), .COUT(n13631), .S0(n8805[4]), .S1(n8805[5]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(87[15:30])
    defparam add_5791_6.INIT0 = 16'h999a;
    defparam add_5791_6.INIT1 = 16'h999a;
    defparam add_5791_6.INJECT1_0 = "NO";
    defparam add_5791_6.INJECT1_1 = "NO";
    CCU2B word_count_5251_5252_add_4_3 (.A0(word_count[1]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(word_count[2]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13570), .COUT(n13571), .S0(n25[1]), 
          .S1(n25[2]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(58[19:37])
    defparam word_count_5251_5252_add_4_3.INIT0 = 16'haaa0;
    defparam word_count_5251_5252_add_4_3.INIT1 = 16'haaa0;
    defparam word_count_5251_5252_add_4_3.INJECT1_0 = "NO";
    defparam word_count_5251_5252_add_4_3.INJECT1_1 = "NO";
    FD1S3AX diff3_res1_e3__i16 (.D(n92[16]), .CK(word_clk), .Q(diff3[15]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(88[15:30])
    defparam diff3_res1_e3__i16.GSR = "ENABLED";
    FD1S3AX diff3_res1_e3__i15 (.D(n92[15]), .CK(word_clk), .Q(diff3[14]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(88[15:30])
    defparam diff3_res1_e3__i15.GSR = "ENABLED";
    FD1S3AX diff3_res1_e3__i14 (.D(n92[14]), .CK(word_clk), .Q(diff3[13]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(88[15:30])
    defparam diff3_res1_e3__i14.GSR = "ENABLED";
    FD1S3AX diff3_res1_e3__i13 (.D(n92[13]), .CK(word_clk), .Q(diff3[12]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(88[15:30])
    defparam diff3_res1_e3__i13.GSR = "ENABLED";
    FD1S3AX diff3_res1_e3__i12 (.D(n92[12]), .CK(word_clk), .Q(diff3[11]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(88[15:30])
    defparam diff3_res1_e3__i12.GSR = "ENABLED";
    FD1S3AX diff3_res1_e3__i11 (.D(n92[11]), .CK(word_clk), .Q(diff3[10]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(88[15:30])
    defparam diff3_res1_e3__i11.GSR = "ENABLED";
    FD1S3AX diff3_res1_e3__i10 (.D(n92[10]), .CK(word_clk), .Q(diff3[9]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(88[15:30])
    defparam diff3_res1_e3__i10.GSR = "ENABLED";
    FD1S3AX diff3_res1_e3__i9 (.D(n92[9]), .CK(word_clk), .Q(diff3[8]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(88[15:30])
    defparam diff3_res1_e3__i9.GSR = "ENABLED";
    FD1S3AX diff3_res1_e3__i8 (.D(n92[8]), .CK(word_clk), .Q(diff3[7]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(88[15:30])
    defparam diff3_res1_e3__i8.GSR = "ENABLED";
    FD1S3AX diff3_res1_e3__i7 (.D(n92[7]), .CK(word_clk), .Q(diff3[6]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(88[15:30])
    defparam diff3_res1_e3__i7.GSR = "ENABLED";
    FD1S3AX diff3_res1_e3__i6 (.D(n92[6]), .CK(word_clk), .Q(diff3[5]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(88[15:30])
    defparam diff3_res1_e3__i6.GSR = "ENABLED";
    FD1S3AX diff3_res1_e3__i5 (.D(n92[5]), .CK(word_clk), .Q(diff3[4]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(88[15:30])
    defparam diff3_res1_e3__i5.GSR = "ENABLED";
    FD1S3AX diff3_res1_e3__i4 (.D(n92[4]), .CK(word_clk), .Q(diff3[3]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(88[15:30])
    defparam diff3_res1_e3__i4.GSR = "ENABLED";
    FD1S3AX diff3_res1_e3__i3 (.D(n92[3]), .CK(word_clk), .Q(diff3[2]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(88[15:30])
    defparam diff3_res1_e3__i3.GSR = "ENABLED";
    FD1S3AX diff3_res1_e3__i2 (.D(n92[2]), .CK(word_clk), .Q(diff3[1]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(88[15:30])
    defparam diff3_res1_e3__i2.GSR = "ENABLED";
    FD1S3AX acc1_5248_5393__i1 (.D(n105_adj_2553[0]), .CK(mclk1_N_406), 
            .Q(acc1[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(43[12:27])
    defparam acc1_5248_5393__i1.GSR = "ENABLED";
    CCU2B add_5791_4 (.A0(diff1[1]), .B0(diff1_d[1]), .C0(GND_net), .D0(VCC_net), 
          .A1(diff1[2]), .B1(diff1_d[2]), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13629), .COUT(n13630), .S0(n8805[2]), .S1(n8805[3]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(87[15:30])
    defparam add_5791_4.INIT0 = 16'h999a;
    defparam add_5791_4.INIT1 = 16'h999a;
    defparam add_5791_4.INJECT1_0 = "NO";
    defparam add_5791_4.INJECT1_1 = "NO";
    CCU2B add_5791_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(diff1[0]), .B1(diff1_d[0]), .C1(GND_net), .D1(VCC_net), 
          .COUT(n13629), .S1(n8805[1]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(87[15:30])
    defparam add_5791_2.INIT0 = 16'h000f;
    defparam add_5791_2.INIT1 = 16'h999a;
    defparam add_5791_2.INJECT1_0 = "NO";
    defparam add_5791_2.INJECT1_1 = "NO";
    FD1S3AX acc3_d2_i12 (.D(acc3[11]), .CK(word_clk), .Q(acc3_d2[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam acc3_d2_i12.GSR = "ENABLED";
    FD1S3AX acc3_d2_i11 (.D(acc3[10]), .CK(word_clk), .Q(acc3_d2[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam acc3_d2_i11.GSR = "ENABLED";
    FD1S3AX acc3_d2_i10 (.D(acc3[9]), .CK(word_clk), .Q(acc3_d2[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam acc3_d2_i10.GSR = "ENABLED";
    FD1S3AX acc3_d2_i9 (.D(acc3[8]), .CK(word_clk), .Q(acc3_d2[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam acc3_d2_i9.GSR = "ENABLED";
    FD1S3AX acc3_d2_i8 (.D(acc3[7]), .CK(word_clk), .Q(acc3_d2[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam acc3_d2_i8.GSR = "ENABLED";
    FD1S3AX acc3_d2_i7 (.D(acc3[6]), .CK(word_clk), .Q(acc3_d2[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam acc3_d2_i7.GSR = "ENABLED";
    FD1S3AX acc3_d2_i6 (.D(acc3[5]), .CK(word_clk), .Q(acc3_d2[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam acc3_d2_i6.GSR = "ENABLED";
    CCU2B acc1_5248_5393_add_4_10 (.A0(acc1[8]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(acc1[9]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13535), .COUT(n13536), .S0(n105_adj_2553[8]), .S1(n105_adj_2553[9]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(43[12:27])
    defparam acc1_5248_5393_add_4_10.INIT0 = 16'haaa0;
    defparam acc1_5248_5393_add_4_10.INIT1 = 16'haaa0;
    defparam acc1_5248_5393_add_4_10.INJECT1_0 = "NO";
    defparam acc1_5248_5393_add_4_10.INJECT1_1 = "NO";
    CCU2B word_count_5251_5252_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(word_count[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n13570), .S1(n25[0]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(58[19:37])
    defparam word_count_5251_5252_add_4_1.INIT0 = 16'h0000;
    defparam word_count_5251_5252_add_4_1.INIT1 = 16'h555f;
    defparam word_count_5251_5252_add_4_1.INJECT1_0 = "NO";
    defparam word_count_5251_5252_add_4_1.INJECT1_1 = "NO";
    CCU2B acc1_5248_5393_add_4_8 (.A0(acc1[6]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(acc1[7]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13534), .COUT(n13535), .S0(n105_adj_2553[6]), .S1(n105_adj_2553[7]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(43[12:27])
    defparam acc1_5248_5393_add_4_8.INIT0 = 16'haaa0;
    defparam acc1_5248_5393_add_4_8.INIT1 = 16'haaa0;
    defparam acc1_5248_5393_add_4_8.INJECT1_0 = "NO";
    defparam acc1_5248_5393_add_4_8.INJECT1_1 = "NO";
    FD1S3AX acc2_5249_5392__i1 (.D(n105[0]), .CK(mclk1_N_406), .Q(acc2[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(44[12:23])
    defparam acc2_5249_5392__i1.GSR = "ENABLED";
    FD1S3AX acc3_d2_i5 (.D(acc3[4]), .CK(word_clk), .Q(acc3_d2[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam acc3_d2_i5.GSR = "ENABLED";
    FD1S3AX acc3_5250_5391__i1 (.D(n105_adj_2554[0]), .CK(mclk1_N_406), 
            .Q(acc3[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(45[12:23])
    defparam acc3_5250_5391__i1.GSR = "ENABLED";
    FD1P3AY enable_88 (.D(n8332), .SP(clk1_enable_5), .CK(clk1), .Q(enable));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(136[8] 148[6])
    defparam enable_88.GSR = "ENABLED";
    FD1S3AX acc3_d2_i4 (.D(acc3[3]), .CK(word_clk), .Q(acc3_d2[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam acc3_d2_i4.GSR = "ENABLED";
    FD1S3IX word_count_5251_5252__i1 (.D(n25[0]), .CK(clk1), .CD(n16642), 
            .Q(word_count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(58[19:37])
    defparam word_count_5251_5252__i1.GSR = "ENABLED";
    FD1S3AX acc3_d2_i3 (.D(acc3[2]), .CK(word_clk), .Q(acc3_d2[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam acc3_d2_i3.GSR = "ENABLED";
    CCU2B acc1_5248_5393_add_4_6 (.A0(acc1[4]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(acc1[5]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13533), .COUT(n13534), .S0(n105_adj_2553[4]), .S1(n105_adj_2553[5]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(43[12:27])
    defparam acc1_5248_5393_add_4_6.INIT0 = 16'haaa0;
    defparam acc1_5248_5393_add_4_6.INIT1 = 16'haaa0;
    defparam acc1_5248_5393_add_4_6.INJECT1_0 = "NO";
    defparam acc1_5248_5393_add_4_6.INJECT1_1 = "NO";
    FD1S3AX acc3_d2_i2 (.D(acc3[1]), .CK(word_clk), .Q(acc3_d2[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam acc3_d2_i2.GSR = "ENABLED";
    ORCALUT4 i3_4_lut (.A(word_count[0]), .B(word_count[1]), .C(word_count[2]), 
            .D(word_count[3]), .Z(n12232)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    ORCALUT4 i12844_4_lut (.A(n15690), .B(n15696), .C(n15160), .D(n15688), 
            .Z(DATA_15__N_651[0])) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(100[13:40])
    defparam i12844_4_lut.init = 16'h0001;
    CCU2B acc1_5248_5393_add_4_14 (.A0(acc1[12]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(acc1[13]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13537), .COUT(n13538), .S0(n105_adj_2553[12]), .S1(n105_adj_2553[13]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(43[12:27])
    defparam acc1_5248_5393_add_4_14.INIT0 = 16'haaa0;
    defparam acc1_5248_5393_add_4_14.INIT1 = 16'haaa0;
    defparam acc1_5248_5393_add_4_14.INJECT1_0 = "NO";
    defparam acc1_5248_5393_add_4_14.INJECT1_1 = "NO";
    CCU2B acc1_5248_5393_add_4_12 (.A0(acc1[10]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(acc1[11]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13536), .COUT(n13537), .S0(n105_adj_2553[10]), .S1(n105_adj_2553[11]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(43[12:27])
    defparam acc1_5248_5393_add_4_12.INIT0 = 16'haaa0;
    defparam acc1_5248_5393_add_4_12.INIT1 = 16'haaa0;
    defparam acc1_5248_5393_add_4_12.INJECT1_0 = "NO";
    defparam acc1_5248_5393_add_4_12.INJECT1_1 = "NO";
    CCU2B add_5796_18 (.A0(acc3[15]), .B0(acc3_d2[15]), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13620), .S0(n8829[16]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(86[15:30])
    defparam add_5796_18.INIT0 = 16'h999a;
    defparam add_5796_18.INIT1 = 16'h0000;
    defparam add_5796_18.INJECT1_0 = "NO";
    defparam add_5796_18.INJECT1_1 = "NO";
    CCU2B add_5796_16 (.A0(acc3[13]), .B0(acc3_d2[13]), .C0(GND_net), 
          .D0(VCC_net), .A1(acc3[14]), .B1(acc3_d2[14]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13619), .COUT(n13620), .S0(n8829[14]), 
          .S1(n8829[15]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(86[15:30])
    defparam add_5796_16.INIT0 = 16'h999a;
    defparam add_5796_16.INIT1 = 16'h999a;
    defparam add_5796_16.INJECT1_0 = "NO";
    defparam add_5796_16.INJECT1_1 = "NO";
    CCU2B acc3_5250_5391_add_4_16 (.A0(acc2[14]), .B0(acc3[14]), .C0(GND_net), 
          .D0(VCC_net), .A1(acc2[15]), .B1(acc3[15]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13564), .S0(n105_adj_2554[14]), .S1(n105_adj_2554[15]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(45[12:23])
    defparam acc3_5250_5391_add_4_16.INIT0 = 16'h666a;
    defparam acc3_5250_5391_add_4_16.INIT1 = 16'h666a;
    defparam acc3_5250_5391_add_4_16.INJECT1_0 = "NO";
    defparam acc3_5250_5391_add_4_16.INJECT1_1 = "NO";
    CCU2B acc3_5250_5391_add_4_14 (.A0(acc2[12]), .B0(acc3[12]), .C0(GND_net), 
          .D0(VCC_net), .A1(acc2[13]), .B1(acc3[13]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13563), .COUT(n13564), .S0(n105_adj_2554[12]), 
          .S1(n105_adj_2554[13]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(45[12:23])
    defparam acc3_5250_5391_add_4_14.INIT0 = 16'h666a;
    defparam acc3_5250_5391_add_4_14.INIT1 = 16'h666a;
    defparam acc3_5250_5391_add_4_14.INJECT1_0 = "NO";
    defparam acc3_5250_5391_add_4_14.INJECT1_1 = "NO";
    ORCALUT4 i10309_2_lut (.A(xiadc_mdat_c), .B(acc1[0]), .Z(n105_adj_2553[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i10309_2_lut.init = 16'h6666;
    ORCALUT4 i10310_2_lut (.A(acc1[0]), .B(acc2[0]), .Z(n105[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i10310_2_lut.init = 16'h6666;
    ORCALUT4 i10311_2_lut (.A(acc2[0]), .B(acc3[0]), .Z(n105_adj_2554[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i10311_2_lut.init = 16'h6666;
    FD1S3AX diff1_res3_e3__i1 (.D(n8829[1]), .CK(word_clk), .Q(diff1[0]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(86[15:30])
    defparam diff1_res3_e3__i1.GSR = "ENABLED";
    FD1S3AX diff2_res2_e3__i1 (.D(n8805[1]), .CK(word_clk), .Q(diff2[0]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(87[15:30])
    defparam diff2_res2_e3__i1.GSR = "ENABLED";
    CCU2B acc1_5248_5393_add_4_4 (.A0(acc1[2]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(acc1[3]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13532), .COUT(n13533), .S0(n105_adj_2553[2]), .S1(n105_adj_2553[3]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(43[12:27])
    defparam acc1_5248_5393_add_4_4.INIT0 = 16'haaa0;
    defparam acc1_5248_5393_add_4_4.INIT1 = 16'haaa0;
    defparam acc1_5248_5393_add_4_4.INJECT1_0 = "NO";
    defparam acc1_5248_5393_add_4_4.INJECT1_1 = "NO";
    FD1S3IX word_count_5251_5252__i5 (.D(n25[4]), .CK(clk1), .CD(n16642), 
            .Q(word_count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(58[19:37])
    defparam word_count_5251_5252__i5.GSR = "ENABLED";
    FD1S3IX word_count_5251_5252__i4 (.D(n25[3]), .CK(clk1), .CD(n16642), 
            .Q(word_count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(58[19:37])
    defparam word_count_5251_5252__i4.GSR = "ENABLED";
    FD1S3IX word_count_5251_5252__i3 (.D(n25[2]), .CK(clk1), .CD(n16642), 
            .Q(word_count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(58[19:37])
    defparam word_count_5251_5252__i3.GSR = "ENABLED";
    FD1S3IX word_count_5251_5252__i2 (.D(n25[1]), .CK(clk1), .CD(n16642), 
            .Q(word_count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(58[19:37])
    defparam word_count_5251_5252__i2.GSR = "ENABLED";
    FD1S3AX acc3_d2_i16 (.D(acc3[15]), .CK(word_clk), .Q(acc3_d2[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam acc3_d2_i16.GSR = "ENABLED";
    FD1S3AX acc3_5250_5391__i16 (.D(n105_adj_2554[15]), .CK(mclk1_N_406), 
            .Q(acc3[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(45[12:23])
    defparam acc3_5250_5391__i16.GSR = "ENABLED";
    FD1S3AX acc3_5250_5391__i15 (.D(n105_adj_2554[14]), .CK(mclk1_N_406), 
            .Q(acc3[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(45[12:23])
    defparam acc3_5250_5391__i15.GSR = "ENABLED";
    FD1S3AX acc3_5250_5391__i14 (.D(n105_adj_2554[13]), .CK(mclk1_N_406), 
            .Q(acc3[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(45[12:23])
    defparam acc3_5250_5391__i14.GSR = "ENABLED";
    FD1S3AX acc3_5250_5391__i13 (.D(n105_adj_2554[12]), .CK(mclk1_N_406), 
            .Q(acc3[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(45[12:23])
    defparam acc3_5250_5391__i13.GSR = "ENABLED";
    FD1S3AX acc3_5250_5391__i12 (.D(n105_adj_2554[11]), .CK(mclk1_N_406), 
            .Q(acc3[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(45[12:23])
    defparam acc3_5250_5391__i12.GSR = "ENABLED";
    FD1S3AX acc3_5250_5391__i11 (.D(n105_adj_2554[10]), .CK(mclk1_N_406), 
            .Q(acc3[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(45[12:23])
    defparam acc3_5250_5391__i11.GSR = "ENABLED";
    FD1S3AX acc3_5250_5391__i10 (.D(n105_adj_2554[9]), .CK(mclk1_N_406), 
            .Q(acc3[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(45[12:23])
    defparam acc3_5250_5391__i10.GSR = "ENABLED";
    FD1S3AX acc3_5250_5391__i9 (.D(n105_adj_2554[8]), .CK(mclk1_N_406), 
            .Q(acc3[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(45[12:23])
    defparam acc3_5250_5391__i9.GSR = "ENABLED";
    FD1S3AX acc3_5250_5391__i8 (.D(n105_adj_2554[7]), .CK(mclk1_N_406), 
            .Q(acc3[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(45[12:23])
    defparam acc3_5250_5391__i8.GSR = "ENABLED";
    FD1S3AX acc3_5250_5391__i7 (.D(n105_adj_2554[6]), .CK(mclk1_N_406), 
            .Q(acc3[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(45[12:23])
    defparam acc3_5250_5391__i7.GSR = "ENABLED";
    FD1S3AX acc3_5250_5391__i6 (.D(n105_adj_2554[5]), .CK(mclk1_N_406), 
            .Q(acc3[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(45[12:23])
    defparam acc3_5250_5391__i6.GSR = "ENABLED";
    FD1S3AX acc3_5250_5391__i5 (.D(n105_adj_2554[4]), .CK(mclk1_N_406), 
            .Q(acc3[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(45[12:23])
    defparam acc3_5250_5391__i5.GSR = "ENABLED";
    FD1S3AX acc3_5250_5391__i4 (.D(n105_adj_2554[3]), .CK(mclk1_N_406), 
            .Q(acc3[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(45[12:23])
    defparam acc3_5250_5391__i4.GSR = "ENABLED";
    FD1S3AX acc3_5250_5391__i3 (.D(n105_adj_2554[2]), .CK(mclk1_N_406), 
            .Q(acc3[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(45[12:23])
    defparam acc3_5250_5391__i3.GSR = "ENABLED";
    FD1S3AX acc3_5250_5391__i2 (.D(n105_adj_2554[1]), .CK(mclk1_N_406), 
            .Q(acc3[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(45[12:23])
    defparam acc3_5250_5391__i2.GSR = "ENABLED";
    FD1S3AX acc2_5249_5392__i16 (.D(n105[15]), .CK(mclk1_N_406), .Q(acc2[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(44[12:23])
    defparam acc2_5249_5392__i16.GSR = "ENABLED";
    FD1S3AX acc2_5249_5392__i15 (.D(n105[14]), .CK(mclk1_N_406), .Q(acc2[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(44[12:23])
    defparam acc2_5249_5392__i15.GSR = "ENABLED";
    FD1S3AX acc2_5249_5392__i14 (.D(n105[13]), .CK(mclk1_N_406), .Q(acc2[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(44[12:23])
    defparam acc2_5249_5392__i14.GSR = "ENABLED";
    FD1S3AX acc2_5249_5392__i13 (.D(n105[12]), .CK(mclk1_N_406), .Q(acc2[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(44[12:23])
    defparam acc2_5249_5392__i13.GSR = "ENABLED";
    FD1S3AX acc2_5249_5392__i12 (.D(n105[11]), .CK(mclk1_N_406), .Q(acc2[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(44[12:23])
    defparam acc2_5249_5392__i12.GSR = "ENABLED";
    FD1S3AX acc2_5249_5392__i11 (.D(n105[10]), .CK(mclk1_N_406), .Q(acc2[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(44[12:23])
    defparam acc2_5249_5392__i11.GSR = "ENABLED";
    FD1S3AX acc2_5249_5392__i10 (.D(n105[9]), .CK(mclk1_N_406), .Q(acc2[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(44[12:23])
    defparam acc2_5249_5392__i10.GSR = "ENABLED";
    FD1S3AX acc2_5249_5392__i9 (.D(n105[8]), .CK(mclk1_N_406), .Q(acc2[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(44[12:23])
    defparam acc2_5249_5392__i9.GSR = "ENABLED";
    FD1S3AX acc2_5249_5392__i8 (.D(n105[7]), .CK(mclk1_N_406), .Q(acc2[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(44[12:23])
    defparam acc2_5249_5392__i8.GSR = "ENABLED";
    FD1S3AX acc2_5249_5392__i7 (.D(n105[6]), .CK(mclk1_N_406), .Q(acc2[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(44[12:23])
    defparam acc2_5249_5392__i7.GSR = "ENABLED";
    FD1S3AX acc2_5249_5392__i6 (.D(n105[5]), .CK(mclk1_N_406), .Q(acc2[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(44[12:23])
    defparam acc2_5249_5392__i6.GSR = "ENABLED";
    FD1S3AX acc2_5249_5392__i5 (.D(n105[4]), .CK(mclk1_N_406), .Q(acc2[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(44[12:23])
    defparam acc2_5249_5392__i5.GSR = "ENABLED";
    FD1S3AX acc2_5249_5392__i4 (.D(n105[3]), .CK(mclk1_N_406), .Q(acc2[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(44[12:23])
    defparam acc2_5249_5392__i4.GSR = "ENABLED";
    FD1S3AX acc2_5249_5392__i3 (.D(n105[2]), .CK(mclk1_N_406), .Q(acc2[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(44[12:23])
    defparam acc2_5249_5392__i3.GSR = "ENABLED";
    FD1S3AX acc2_5249_5392__i2 (.D(n105[1]), .CK(mclk1_N_406), .Q(acc2[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(44[12:23])
    defparam acc2_5249_5392__i2.GSR = "ENABLED";
    FD1S3AX acc1_5248_5393__i16 (.D(n105_adj_2553[15]), .CK(mclk1_N_406), 
            .Q(acc1[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(43[12:27])
    defparam acc1_5248_5393__i16.GSR = "ENABLED";
    FD1S3AX acc1_5248_5393__i15 (.D(n105_adj_2553[14]), .CK(mclk1_N_406), 
            .Q(acc1[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(43[12:27])
    defparam acc1_5248_5393__i15.GSR = "ENABLED";
    FD1S3AX acc1_5248_5393__i14 (.D(n105_adj_2553[13]), .CK(mclk1_N_406), 
            .Q(acc1[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(43[12:27])
    defparam acc1_5248_5393__i14.GSR = "ENABLED";
    FD1S3AX acc1_5248_5393__i13 (.D(n105_adj_2553[12]), .CK(mclk1_N_406), 
            .Q(acc1[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(43[12:27])
    defparam acc1_5248_5393__i13.GSR = "ENABLED";
    FD1S3AX acc1_5248_5393__i12 (.D(n105_adj_2553[11]), .CK(mclk1_N_406), 
            .Q(acc1[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(43[12:27])
    defparam acc1_5248_5393__i12.GSR = "ENABLED";
    FD1S3AX acc1_5248_5393__i11 (.D(n105_adj_2553[10]), .CK(mclk1_N_406), 
            .Q(acc1[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(43[12:27])
    defparam acc1_5248_5393__i11.GSR = "ENABLED";
    FD1S3AX acc1_5248_5393__i10 (.D(n105_adj_2553[9]), .CK(mclk1_N_406), 
            .Q(acc1[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(43[12:27])
    defparam acc1_5248_5393__i10.GSR = "ENABLED";
    FD1S3AX acc1_5248_5393__i9 (.D(n105_adj_2553[8]), .CK(mclk1_N_406), 
            .Q(acc1[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(43[12:27])
    defparam acc1_5248_5393__i9.GSR = "ENABLED";
    FD1S3AX acc1_5248_5393__i8 (.D(n105_adj_2553[7]), .CK(mclk1_N_406), 
            .Q(acc1[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(43[12:27])
    defparam acc1_5248_5393__i8.GSR = "ENABLED";
    FD1S3AX acc1_5248_5393__i7 (.D(n105_adj_2553[6]), .CK(mclk1_N_406), 
            .Q(acc1[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(43[12:27])
    defparam acc1_5248_5393__i7.GSR = "ENABLED";
    FD1S3AX acc1_5248_5393__i6 (.D(n105_adj_2553[5]), .CK(mclk1_N_406), 
            .Q(acc1[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(43[12:27])
    defparam acc1_5248_5393__i6.GSR = "ENABLED";
    FD1S3AX acc1_5248_5393__i5 (.D(n105_adj_2553[4]), .CK(mclk1_N_406), 
            .Q(acc1[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(43[12:27])
    defparam acc1_5248_5393__i5.GSR = "ENABLED";
    FD1S3AX acc1_5248_5393__i4 (.D(n105_adj_2553[3]), .CK(mclk1_N_406), 
            .Q(acc1[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(43[12:27])
    defparam acc1_5248_5393__i4.GSR = "ENABLED";
    FD1S3AX acc1_5248_5393__i3 (.D(n105_adj_2553[2]), .CK(mclk1_N_406), 
            .Q(acc1[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(43[12:27])
    defparam acc1_5248_5393__i3.GSR = "ENABLED";
    FD1S3AX acc1_5248_5393__i2 (.D(n105_adj_2553[1]), .CK(mclk1_N_406), 
            .Q(acc1[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(43[12:27])
    defparam acc1_5248_5393__i2.GSR = "ENABLED";
    CCU2B acc3_5250_5391_add_4_12 (.A0(acc2[10]), .B0(acc3[10]), .C0(GND_net), 
          .D0(VCC_net), .A1(acc2[11]), .B1(acc3[11]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13562), .COUT(n13563), .S0(n105_adj_2554[10]), 
          .S1(n105_adj_2554[11]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(45[12:23])
    defparam acc3_5250_5391_add_4_12.INIT0 = 16'h666a;
    defparam acc3_5250_5391_add_4_12.INIT1 = 16'h666a;
    defparam acc3_5250_5391_add_4_12.INJECT1_0 = "NO";
    defparam acc3_5250_5391_add_4_12.INJECT1_1 = "NO";
    CCU2B add_5796_14 (.A0(acc3[11]), .B0(acc3_d2[11]), .C0(GND_net), 
          .D0(VCC_net), .A1(acc3[12]), .B1(acc3_d2[12]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13618), .COUT(n13619), .S0(n8829[12]), 
          .S1(n8829[13]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(86[15:30])
    defparam add_5796_14.INIT0 = 16'h999a;
    defparam add_5796_14.INIT1 = 16'h999a;
    defparam add_5796_14.INJECT1_0 = "NO";
    defparam add_5796_14.INJECT1_1 = "NO";
    FD1S3JX DATA_i15 (.D(diff3[14]), .CK(word_clk), .PD(DATA_15__N_651[0]), 
            .Q(xi_data[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(96[9] 127[5])
    defparam DATA_i15.GSR = "DISABLED";
    CCU2B acc1_5248_5393_add_4_2 (.A0(xiadc_mdat_c), .B0(acc1[0]), .C0(GND_net), 
          .D0(VCC_net), .A1(acc1[1]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n13532), .S1(n105_adj_2553[1]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(43[12:27])
    defparam acc1_5248_5393_add_4_2.INIT0 = 16'h0008;
    defparam acc1_5248_5393_add_4_2.INIT1 = 16'haaa0;
    defparam acc1_5248_5393_add_4_2.INJECT1_0 = "NO";
    defparam acc1_5248_5393_add_4_2.INJECT1_1 = "NO";
    FD1S3JX DATA_i14 (.D(diff3[13]), .CK(word_clk), .PD(DATA_15__N_651[0]), 
            .Q(xi_data[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(96[9] 127[5])
    defparam DATA_i14.GSR = "DISABLED";
    FD1S3JX DATA_i13 (.D(diff3[12]), .CK(word_clk), .PD(DATA_15__N_651[0]), 
            .Q(xi_data[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(96[9] 127[5])
    defparam DATA_i13.GSR = "DISABLED";
    FD1S3JX DATA_i12 (.D(diff3[11]), .CK(word_clk), .PD(DATA_15__N_651[0]), 
            .Q(xi_data[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(96[9] 127[5])
    defparam DATA_i12.GSR = "DISABLED";
    FD1S3JX DATA_i11 (.D(diff3[10]), .CK(word_clk), .PD(DATA_15__N_651[0]), 
            .Q(xi_data[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(96[9] 127[5])
    defparam DATA_i11.GSR = "DISABLED";
    FD1S3JX DATA_i10 (.D(diff3[9]), .CK(word_clk), .PD(DATA_15__N_651[0]), 
            .Q(xi_data[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(96[9] 127[5])
    defparam DATA_i10.GSR = "DISABLED";
    FD1S3JX DATA_i9 (.D(diff3[8]), .CK(word_clk), .PD(DATA_15__N_651[0]), 
            .Q(xi_data[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(96[9] 127[5])
    defparam DATA_i9.GSR = "DISABLED";
    FD1S3JX DATA_i8 (.D(diff3[7]), .CK(word_clk), .PD(DATA_15__N_651[0]), 
            .Q(xi_data[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(96[9] 127[5])
    defparam DATA_i8.GSR = "DISABLED";
    FD1S3JX DATA_i7 (.D(diff3[6]), .CK(word_clk), .PD(DATA_15__N_651[0]), 
            .Q(xi_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(96[9] 127[5])
    defparam DATA_i7.GSR = "DISABLED";
    FD1S3JX DATA_i6 (.D(diff3[5]), .CK(word_clk), .PD(DATA_15__N_651[0]), 
            .Q(xi_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(96[9] 127[5])
    defparam DATA_i6.GSR = "DISABLED";
    FD1S3JX DATA_i5 (.D(diff3[4]), .CK(word_clk), .PD(DATA_15__N_651[0]), 
            .Q(xi_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(96[9] 127[5])
    defparam DATA_i5.GSR = "DISABLED";
    FD1S3JX DATA_i4 (.D(diff3[3]), .CK(word_clk), .PD(DATA_15__N_651[0]), 
            .Q(xi_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(96[9] 127[5])
    defparam DATA_i4.GSR = "DISABLED";
    FD1S3JX DATA_i3 (.D(diff3[2]), .CK(word_clk), .PD(DATA_15__N_651[0]), 
            .Q(xi_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(96[9] 127[5])
    defparam DATA_i3.GSR = "DISABLED";
    FD1S3JX DATA_i2 (.D(diff3[1]), .CK(word_clk), .PD(DATA_15__N_651[0]), 
            .Q(xi_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(96[9] 127[5])
    defparam DATA_i2.GSR = "DISABLED";
    FD1S3JX DATA_i1 (.D(diff3[0]), .CK(word_clk), .PD(DATA_15__N_651[0]), 
            .Q(xi_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(96[9] 127[5])
    defparam DATA_i1.GSR = "DISABLED";
    FD1S3AX diff2_d_i16 (.D(diff2[15]), .CK(word_clk), .Q(diff2_d[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam diff2_d_i16.GSR = "ENABLED";
    FD1S3AX diff2_d_i15 (.D(diff2[14]), .CK(word_clk), .Q(diff2_d[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam diff2_d_i15.GSR = "ENABLED";
    FD1S3AX diff2_d_i14 (.D(diff2[13]), .CK(word_clk), .Q(diff2_d[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam diff2_d_i14.GSR = "ENABLED";
    FD1S3AX diff2_d_i13 (.D(diff2[12]), .CK(word_clk), .Q(diff2_d[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam diff2_d_i13.GSR = "ENABLED";
    FD1S3AX diff2_d_i12 (.D(diff2[11]), .CK(word_clk), .Q(diff2_d[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam diff2_d_i12.GSR = "ENABLED";
    CCU2B add_5796_12 (.A0(acc3[9]), .B0(acc3_d2[9]), .C0(GND_net), .D0(VCC_net), 
          .A1(acc3[10]), .B1(acc3_d2[10]), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13617), .COUT(n13618), .S0(n8829[10]), .S1(n8829[11]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(86[15:30])
    defparam add_5796_12.INIT0 = 16'h999a;
    defparam add_5796_12.INIT1 = 16'h999a;
    defparam add_5796_12.INJECT1_0 = "NO";
    defparam add_5796_12.INJECT1_1 = "NO";
    FD1S3AX diff2_d_i11 (.D(diff2[10]), .CK(word_clk), .Q(diff2_d[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam diff2_d_i11.GSR = "ENABLED";
    FD1S3AX diff2_d_i10 (.D(diff2[9]), .CK(word_clk), .Q(diff2_d[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam diff2_d_i10.GSR = "ENABLED";
    FD1S3AX diff2_d_i9 (.D(diff2[8]), .CK(word_clk), .Q(diff2_d[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam diff2_d_i9.GSR = "ENABLED";
    FD1S3AX diff2_d_i8 (.D(diff2[7]), .CK(word_clk), .Q(diff2_d[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam diff2_d_i8.GSR = "ENABLED";
    FD1S3AX diff2_d_i7 (.D(diff2[6]), .CK(word_clk), .Q(diff2_d[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam diff2_d_i7.GSR = "ENABLED";
    FD1S3AX diff2_d_i6 (.D(diff2[5]), .CK(word_clk), .Q(diff2_d[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam diff2_d_i6.GSR = "ENABLED";
    FD1S3AX diff2_d_i5 (.D(diff2[4]), .CK(word_clk), .Q(diff2_d[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam diff2_d_i5.GSR = "ENABLED";
    FD1S3AX diff2_d_i4 (.D(diff2[3]), .CK(word_clk), .Q(diff2_d[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam diff2_d_i4.GSR = "ENABLED";
    FD1S3AX diff2_d_i3 (.D(diff2[2]), .CK(word_clk), .Q(diff2_d[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam diff2_d_i3.GSR = "ENABLED";
    FD1S3AX diff2_d_i2 (.D(diff2[1]), .CK(word_clk), .Q(diff2_d[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam diff2_d_i2.GSR = "ENABLED";
    FD1S3AX acc3_d2_i15 (.D(acc3[14]), .CK(word_clk), .Q(acc3_d2[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam acc3_d2_i15.GSR = "ENABLED";
    FD1S3AX acc3_d2_i14 (.D(acc3[13]), .CK(word_clk), .Q(acc3_d2[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam acc3_d2_i14.GSR = "ENABLED";
    FD1S3AX diff1_d_i16 (.D(diff1[15]), .CK(word_clk), .Q(diff1_d[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam diff1_d_i16.GSR = "ENABLED";
    CCU2B acc3_5250_5391_add_4_10 (.A0(acc2[8]), .B0(acc3[8]), .C0(GND_net), 
          .D0(VCC_net), .A1(acc2[9]), .B1(acc3[9]), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13561), .COUT(n13562), .S0(n105_adj_2554[8]), .S1(n105_adj_2554[9]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(45[12:23])
    defparam acc3_5250_5391_add_4_10.INIT0 = 16'h666a;
    defparam acc3_5250_5391_add_4_10.INIT1 = 16'h666a;
    defparam acc3_5250_5391_add_4_10.INJECT1_0 = "NO";
    defparam acc3_5250_5391_add_4_10.INJECT1_1 = "NO";
    FD1S3AX diff3_res1_e3__i1 (.D(n92[1]), .CK(word_clk), .Q(diff3[0]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(88[15:30])
    defparam diff3_res1_e3__i1.GSR = "ENABLED";
    FD1S3AX diff1_d_i15 (.D(diff1[14]), .CK(word_clk), .Q(diff1_d[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam diff1_d_i15.GSR = "ENABLED";
    FD1S3AX diff2_res2_e3__i16 (.D(n8805[16]), .CK(word_clk), .Q(diff2[15]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(87[15:30])
    defparam diff2_res2_e3__i16.GSR = "ENABLED";
    CCU2B acc3_5250_5391_add_4_8 (.A0(acc2[6]), .B0(acc3[6]), .C0(GND_net), 
          .D0(VCC_net), .A1(acc2[7]), .B1(acc3[7]), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13560), .COUT(n13561), .S0(n105_adj_2554[6]), .S1(n105_adj_2554[7]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(45[12:23])
    defparam acc3_5250_5391_add_4_8.INIT0 = 16'h666a;
    defparam acc3_5250_5391_add_4_8.INIT1 = 16'h666a;
    defparam acc3_5250_5391_add_4_8.INJECT1_0 = "NO";
    defparam acc3_5250_5391_add_4_8.INJECT1_1 = "NO";
    CCU2B add_5796_10 (.A0(acc3[7]), .B0(acc3_d2[7]), .C0(GND_net), .D0(VCC_net), 
          .A1(acc3[8]), .B1(acc3_d2[8]), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13616), .COUT(n13617), .S0(n8829[8]), .S1(n8829[9]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(86[15:30])
    defparam add_5796_10.INIT0 = 16'h999a;
    defparam add_5796_10.INIT1 = 16'h999a;
    defparam add_5796_10.INJECT1_0 = "NO";
    defparam add_5796_10.INJECT1_1 = "NO";
    CCU2B add_5796_8 (.A0(acc3[5]), .B0(acc3_d2[5]), .C0(GND_net), .D0(VCC_net), 
          .A1(acc3[6]), .B1(acc3_d2[6]), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13615), .COUT(n13616), .S0(n8829[6]), .S1(n8829[7]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(86[15:30])
    defparam add_5796_8.INIT0 = 16'h999a;
    defparam add_5796_8.INIT1 = 16'h999a;
    defparam add_5796_8.INJECT1_0 = "NO";
    defparam add_5796_8.INJECT1_1 = "NO";
    CCU2B add_5796_6 (.A0(acc3[3]), .B0(acc3_d2[3]), .C0(GND_net), .D0(VCC_net), 
          .A1(acc3[4]), .B1(acc3_d2[4]), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13614), .COUT(n13615), .S0(n8829[4]), .S1(n8829[5]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(86[15:30])
    defparam add_5796_6.INIT0 = 16'h999a;
    defparam add_5796_6.INIT1 = 16'h999a;
    defparam add_5796_6.INJECT1_0 = "NO";
    defparam add_5796_6.INJECT1_1 = "NO";
    ORCALUT4 i1_4_lut (.A(diff3[6]), .B(diff3[5]), .C(diff3[4]), .D(diff3[1]), 
            .Z(n15690)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(100[13:40])
    defparam i1_4_lut.init = 16'hfffe;
    CCU2B add_5796_4 (.A0(acc3[1]), .B0(acc3_d2[1]), .C0(GND_net), .D0(VCC_net), 
          .A1(acc3[2]), .B1(acc3_d2[2]), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13613), .COUT(n13614), .S0(n8829[2]), .S1(n8829[3]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(86[15:30])
    defparam add_5796_4.INIT0 = 16'h999a;
    defparam add_5796_4.INIT1 = 16'h999a;
    defparam add_5796_4.INJECT1_0 = "NO";
    defparam add_5796_4.INJECT1_1 = "NO";
    CCU2B add_5796_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(acc3[0]), .B1(acc3_d2[0]), .C1(GND_net), .D1(VCC_net), 
          .COUT(n13613), .S1(n8829[1]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(86[15:30])
    defparam add_5796_2.INIT0 = 16'h000f;
    defparam add_5796_2.INIT1 = 16'h999a;
    defparam add_5796_2.INJECT1_0 = "NO";
    defparam add_5796_2.INJECT1_1 = "NO";
    CCU2B acc3_5250_5391_add_4_6 (.A0(acc2[4]), .B0(acc3[4]), .C0(GND_net), 
          .D0(VCC_net), .A1(acc2[5]), .B1(acc3[5]), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13559), .COUT(n13560), .S0(n105_adj_2554[4]), .S1(n105_adj_2554[5]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(45[12:23])
    defparam acc3_5250_5391_add_4_6.INIT0 = 16'h666a;
    defparam acc3_5250_5391_add_4_6.INIT1 = 16'h666a;
    defparam acc3_5250_5391_add_4_6.INJECT1_0 = "NO";
    defparam acc3_5250_5391_add_4_6.INJECT1_1 = "NO";
    CCU2B diff3_res1_add_4_18 (.A0(diff2[15]), .B0(diff2_d[15]), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13686), .S0(n92[16]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(88[15:30])
    defparam diff3_res1_add_4_18.INIT0 = 16'h999a;
    defparam diff3_res1_add_4_18.INIT1 = 16'h0000;
    defparam diff3_res1_add_4_18.INJECT1_0 = "NO";
    defparam diff3_res1_add_4_18.INJECT1_1 = "NO";
    CCU2B diff3_res1_add_4_16 (.A0(diff2[13]), .B0(diff2_d[13]), .C0(GND_net), 
          .D0(VCC_net), .A1(diff2[14]), .B1(diff2_d[14]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13685), .COUT(n13686), .S0(n92[14]), .S1(n92[15]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(88[15:30])
    defparam diff3_res1_add_4_16.INIT0 = 16'h999a;
    defparam diff3_res1_add_4_16.INIT1 = 16'h999a;
    defparam diff3_res1_add_4_16.INJECT1_0 = "NO";
    defparam diff3_res1_add_4_16.INJECT1_1 = "NO";
    FD1S3AX diff2_res2_e3__i15 (.D(n8805[15]), .CK(word_clk), .Q(diff2[14]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(87[15:30])
    defparam diff2_res2_e3__i15.GSR = "ENABLED";
    FD1S3AX diff2_res2_e3__i14 (.D(n8805[14]), .CK(word_clk), .Q(diff2[13]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(87[15:30])
    defparam diff2_res2_e3__i14.GSR = "ENABLED";
    FD1S3AX diff2_res2_e3__i13 (.D(n8805[13]), .CK(word_clk), .Q(diff2[12]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(87[15:30])
    defparam diff2_res2_e3__i13.GSR = "ENABLED";
    FD1S3AX diff2_res2_e3__i12 (.D(n8805[12]), .CK(word_clk), .Q(diff2[11]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(87[15:30])
    defparam diff2_res2_e3__i12.GSR = "ENABLED";
    FD1S3AX diff2_res2_e3__i11 (.D(n8805[11]), .CK(word_clk), .Q(diff2[10]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(87[15:30])
    defparam diff2_res2_e3__i11.GSR = "ENABLED";
    FD1S3AX diff2_res2_e3__i10 (.D(n8805[10]), .CK(word_clk), .Q(diff2[9]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(87[15:30])
    defparam diff2_res2_e3__i10.GSR = "ENABLED";
    FD1S3AX diff2_res2_e3__i9 (.D(n8805[9]), .CK(word_clk), .Q(diff2[8]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(87[15:30])
    defparam diff2_res2_e3__i9.GSR = "ENABLED";
    FD1S3AX diff2_res2_e3__i8 (.D(n8805[8]), .CK(word_clk), .Q(diff2[7]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(87[15:30])
    defparam diff2_res2_e3__i8.GSR = "ENABLED";
    FD1S3AX diff2_res2_e3__i7 (.D(n8805[7]), .CK(word_clk), .Q(diff2[6]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(87[15:30])
    defparam diff2_res2_e3__i7.GSR = "ENABLED";
    FD1S3AX diff2_res2_e3__i6 (.D(n8805[6]), .CK(word_clk), .Q(diff2[5]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(87[15:30])
    defparam diff2_res2_e3__i6.GSR = "ENABLED";
    FD1S3AX diff2_res2_e3__i5 (.D(n8805[5]), .CK(word_clk), .Q(diff2[4]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(87[15:30])
    defparam diff2_res2_e3__i5.GSR = "ENABLED";
    FD1S3AX diff2_res2_e3__i4 (.D(n8805[4]), .CK(word_clk), .Q(diff2[3]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(87[15:30])
    defparam diff2_res2_e3__i4.GSR = "ENABLED";
    FD1S3AX diff2_res2_e3__i3 (.D(n8805[3]), .CK(word_clk), .Q(diff2[2]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(87[15:30])
    defparam diff2_res2_e3__i3.GSR = "ENABLED";
    FD1S3AX diff2_res2_e3__i2 (.D(n8805[2]), .CK(word_clk), .Q(diff2[1]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(87[15:30])
    defparam diff2_res2_e3__i2.GSR = "ENABLED";
    FD1S3AX diff1_res3_e3__i16 (.D(n8829[16]), .CK(word_clk), .Q(diff1[15]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(86[15:30])
    defparam diff1_res3_e3__i16.GSR = "ENABLED";
    FD1S3AX diff1_res3_e3__i15 (.D(n8829[15]), .CK(word_clk), .Q(diff1[14]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(86[15:30])
    defparam diff1_res3_e3__i15.GSR = "ENABLED";
    FD1S3AX diff1_res3_e3__i14 (.D(n8829[14]), .CK(word_clk), .Q(diff1[13]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(86[15:30])
    defparam diff1_res3_e3__i14.GSR = "ENABLED";
    FD1S3AX diff1_res3_e3__i13 (.D(n8829[13]), .CK(word_clk), .Q(diff1[12]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(86[15:30])
    defparam diff1_res3_e3__i13.GSR = "ENABLED";
    FD1S3AX diff1_res3_e3__i12 (.D(n8829[12]), .CK(word_clk), .Q(diff1[11]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(86[15:30])
    defparam diff1_res3_e3__i12.GSR = "ENABLED";
    FD1S3AX diff1_res3_e3__i11 (.D(n8829[11]), .CK(word_clk), .Q(diff1[10]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(86[15:30])
    defparam diff1_res3_e3__i11.GSR = "ENABLED";
    FD1S3AX diff1_res3_e3__i10 (.D(n8829[10]), .CK(word_clk), .Q(diff1[9]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(86[15:30])
    defparam diff1_res3_e3__i10.GSR = "ENABLED";
    FD1S3AX diff1_res3_e3__i9 (.D(n8829[9]), .CK(word_clk), .Q(diff1[8]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(86[15:30])
    defparam diff1_res3_e3__i9.GSR = "ENABLED";
    FD1S3AX diff1_res3_e3__i8 (.D(n8829[8]), .CK(word_clk), .Q(diff1[7]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(86[15:30])
    defparam diff1_res3_e3__i8.GSR = "ENABLED";
    FD1S3AX diff1_res3_e3__i7 (.D(n8829[7]), .CK(word_clk), .Q(diff1[6]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(86[15:30])
    defparam diff1_res3_e3__i7.GSR = "ENABLED";
    FD1S3AX diff1_res3_e3__i6 (.D(n8829[6]), .CK(word_clk), .Q(diff1[5]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(86[15:30])
    defparam diff1_res3_e3__i6.GSR = "ENABLED";
    FD1S3AX diff1_res3_e3__i5 (.D(n8829[5]), .CK(word_clk), .Q(diff1[4]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(86[15:30])
    defparam diff1_res3_e3__i5.GSR = "ENABLED";
    FD1S3AX diff1_res3_e3__i4 (.D(n8829[4]), .CK(word_clk), .Q(diff1[3]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(86[15:30])
    defparam diff1_res3_e3__i4.GSR = "ENABLED";
    FD1S3AX diff1_res3_e3__i3 (.D(n8829[3]), .CK(word_clk), .Q(diff1[2]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(86[15:30])
    defparam diff1_res3_e3__i3.GSR = "ENABLED";
    FD1S3AX diff1_res3_e3__i2 (.D(n8829[2]), .CK(word_clk), .Q(diff1[1]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(86[15:30])
    defparam diff1_res3_e3__i2.GSR = "ENABLED";
    FD1S3AX diff1_d_i14 (.D(diff1[13]), .CK(word_clk), .Q(diff1_d[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam diff1_d_i14.GSR = "ENABLED";
    ORCALUT4 i1_4_lut_adj_77 (.A(diff3[7]), .B(diff3[12]), .C(diff3[10]), 
            .D(diff3[2]), .Z(n15160)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(100[13:40])
    defparam i1_4_lut_adj_77.init = 16'hfffe;
    CCU2B diff3_res1_add_4_14 (.A0(diff2[11]), .B0(diff2_d[11]), .C0(GND_net), 
          .D0(VCC_net), .A1(diff2[12]), .B1(diff2_d[12]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13684), .COUT(n13685), .S0(n92[12]), .S1(n92[13]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(88[15:30])
    defparam diff3_res1_add_4_14.INIT0 = 16'h999a;
    defparam diff3_res1_add_4_14.INIT1 = 16'h999a;
    defparam diff3_res1_add_4_14.INJECT1_0 = "NO";
    defparam diff3_res1_add_4_14.INJECT1_1 = "NO";
    ORCALUT4 i1_4_lut_adj_78 (.A(diff3[8]), .B(diff3[3]), .C(diff3[0]), 
            .D(diff3[13]), .Z(n15688)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(100[13:40])
    defparam i1_4_lut_adj_78.init = 16'hfffe;
    ORCALUT4 i1_4_lut_adj_79 (.A(diff3[15]), .B(diff3[9]), .C(diff3[14]), 
            .D(diff3[11]), .Z(n15696)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(100[13:40])
    defparam i1_4_lut_adj_79.init = 16'hfffd;
    CCU2B diff3_res1_add_4_12 (.A0(diff2[9]), .B0(diff2_d[9]), .C0(GND_net), 
          .D0(VCC_net), .A1(diff2[10]), .B1(diff2_d[10]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13683), .COUT(n13684), .S0(n92[10]), .S1(n92[11]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(88[15:30])
    defparam diff3_res1_add_4_12.INIT0 = 16'h999a;
    defparam diff3_res1_add_4_12.INIT1 = 16'h999a;
    defparam diff3_res1_add_4_12.INJECT1_0 = "NO";
    defparam diff3_res1_add_4_12.INJECT1_1 = "NO";
    CCU2B acc3_5250_5391_add_4_4 (.A0(acc2[2]), .B0(acc3[2]), .C0(GND_net), 
          .D0(VCC_net), .A1(acc2[3]), .B1(acc3[3]), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13558), .COUT(n13559), .S0(n105_adj_2554[2]), .S1(n105_adj_2554[3]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(45[12:23])
    defparam acc3_5250_5391_add_4_4.INIT0 = 16'h666a;
    defparam acc3_5250_5391_add_4_4.INIT1 = 16'h666a;
    defparam acc3_5250_5391_add_4_4.INJECT1_0 = "NO";
    defparam acc3_5250_5391_add_4_4.INJECT1_1 = "NO";
    CCU2B acc3_5250_5391_add_4_2 (.A0(acc2[0]), .B0(acc3[0]), .C0(GND_net), 
          .D0(VCC_net), .A1(acc2[1]), .B1(acc3[1]), .C1(GND_net), .D1(VCC_net), 
          .COUT(n13558), .S1(n105_adj_2554[1]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(45[12:23])
    defparam acc3_5250_5391_add_4_2.INIT0 = 16'h0008;
    defparam acc3_5250_5391_add_4_2.INIT1 = 16'h666a;
    defparam acc3_5250_5391_add_4_2.INJECT1_0 = "NO";
    defparam acc3_5250_5391_add_4_2.INJECT1_1 = "NO";
    CCU2B diff3_res1_add_4_10 (.A0(diff2[7]), .B0(diff2_d[7]), .C0(GND_net), 
          .D0(VCC_net), .A1(diff2[8]), .B1(diff2_d[8]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13682), .COUT(n13683), .S0(n92[8]), .S1(n92[9]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(88[15:30])
    defparam diff3_res1_add_4_10.INIT0 = 16'h999a;
    defparam diff3_res1_add_4_10.INIT1 = 16'h999a;
    defparam diff3_res1_add_4_10.INJECT1_0 = "NO";
    defparam diff3_res1_add_4_10.INJECT1_1 = "NO";
    ORCALUT4 data_en_I_0_2_lut_rep_183_3_lut (.A(word_count[4]), .B(n12232), 
            .C(enable), .Z(n16624)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(137[8:38])
    defparam data_en_I_0_2_lut_rep_183_3_lut.init = 16'h4040;
    ORCALUT4 i7515_1_lut_2_lut_3_lut (.A(word_count[4]), .B(n12232), .C(enable), 
            .Z(n8332)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(137[8:38])
    defparam i7515_1_lut_2_lut_3_lut.init = 16'hbfbf;
    ORCALUT4 i9053_2_lut_rep_201 (.A(word_count[4]), .B(n12232), .Z(n16642)) /* synthesis lut_function=(A (B)) */ ;
    defparam i9053_2_lut_rep_201.init = 16'h8888;
    ORCALUT4 i7521_3_lut_4_lut_3_lut (.A(word_count[4]), .B(n12232), .C(word_clk), 
            .Z(n10709)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;
    defparam i7521_3_lut_4_lut_3_lut.init = 16'h7474;
    ORCALUT4 i1_3_lut_3_lut_4_lut_3_lut (.A(word_count[4]), .B(n12232), 
            .C(enable), .Z(clk1_enable_5)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;
    defparam i1_3_lut_3_lut_4_lut_3_lut.init = 16'h4848;
    CCU2B diff3_res1_add_4_8 (.A0(diff2[5]), .B0(diff2_d[5]), .C0(GND_net), 
          .D0(VCC_net), .A1(diff2[6]), .B1(diff2_d[6]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13681), .COUT(n13682), .S0(n92[6]), .S1(n92[7]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(88[15:30])
    defparam diff3_res1_add_4_8.INIT0 = 16'h999a;
    defparam diff3_res1_add_4_8.INIT1 = 16'h999a;
    defparam diff3_res1_add_4_8.INJECT1_0 = "NO";
    defparam diff3_res1_add_4_8.INJECT1_1 = "NO";
    CCU2B acc2_5249_5392_add_4_16 (.A0(acc1[14]), .B0(acc2[14]), .C0(GND_net), 
          .D0(VCC_net), .A1(acc1[15]), .B1(acc2[15]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13551), .S0(n105[14]), .S1(n105[15]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(44[12:23])
    defparam acc2_5249_5392_add_4_16.INIT0 = 16'h666a;
    defparam acc2_5249_5392_add_4_16.INIT1 = 16'h666a;
    defparam acc2_5249_5392_add_4_16.INJECT1_0 = "NO";
    defparam acc2_5249_5392_add_4_16.INJECT1_1 = "NO";
    CCU2B diff3_res1_add_4_6 (.A0(diff2[3]), .B0(diff2_d[3]), .C0(GND_net), 
          .D0(VCC_net), .A1(diff2[4]), .B1(diff2_d[4]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13680), .COUT(n13681), .S0(n92[4]), .S1(n92[5]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(88[15:30])
    defparam diff3_res1_add_4_6.INIT0 = 16'h999a;
    defparam diff3_res1_add_4_6.INIT1 = 16'h999a;
    defparam diff3_res1_add_4_6.INJECT1_0 = "NO";
    defparam diff3_res1_add_4_6.INJECT1_1 = "NO";
    CCU2B diff3_res1_add_4_4 (.A0(diff2[1]), .B0(diff2_d[1]), .C0(GND_net), 
          .D0(VCC_net), .A1(diff2[2]), .B1(diff2_d[2]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13679), .COUT(n13680), .S0(n92[2]), .S1(n92[3]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(88[15:30])
    defparam diff3_res1_add_4_4.INIT0 = 16'h999a;
    defparam diff3_res1_add_4_4.INIT1 = 16'h999a;
    defparam diff3_res1_add_4_4.INJECT1_0 = "NO";
    defparam diff3_res1_add_4_4.INJECT1_1 = "NO";
    CCU2B diff3_res1_add_4_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(diff2[0]), .B1(diff2_d[0]), .C1(GND_net), 
          .D1(VCC_net), .COUT(n13679), .S1(n92[1]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(88[15:30])
    defparam diff3_res1_add_4_2.INIT0 = 16'h000f;
    defparam diff3_res1_add_4_2.INIT1 = 16'h999a;
    defparam diff3_res1_add_4_2.INJECT1_0 = "NO";
    defparam diff3_res1_add_4_2.INJECT1_1 = "NO";
    FD1S3AX diff1_d_i13 (.D(diff1[12]), .CK(word_clk), .Q(diff1_d[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam diff1_d_i13.GSR = "ENABLED";
    FD1S3AX diff1_d_i12 (.D(diff1[11]), .CK(word_clk), .Q(diff1_d[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam diff1_d_i12.GSR = "ENABLED";
    FD1S3AX diff1_d_i11 (.D(diff1[10]), .CK(word_clk), .Q(diff1_d[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam diff1_d_i11.GSR = "ENABLED";
    FD1S3AX diff1_d_i10 (.D(diff1[9]), .CK(word_clk), .Q(diff1_d[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam diff1_d_i10.GSR = "ENABLED";
    FD1S3AX diff1_d_i9 (.D(diff1[8]), .CK(word_clk), .Q(diff1_d[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam diff1_d_i9.GSR = "ENABLED";
    FD1S3AX diff1_d_i8 (.D(diff1[7]), .CK(word_clk), .Q(diff1_d[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam diff1_d_i8.GSR = "ENABLED";
    FD1S3AX diff1_d_i7 (.D(diff1[6]), .CK(word_clk), .Q(diff1_d[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam diff1_d_i7.GSR = "ENABLED";
    FD1S3AX diff1_d_i6 (.D(diff1[5]), .CK(word_clk), .Q(diff1_d[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=106, LSE_RLINE=114 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(85[8] 92[6])
    defparam diff1_d_i6.GSR = "ENABLED";
    CCU2B acc2_5249_5392_add_4_14 (.A0(acc1[12]), .B0(acc2[12]), .C0(GND_net), 
          .D0(VCC_net), .A1(acc1[13]), .B1(acc2[13]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13550), .COUT(n13551), .S0(n105[12]), 
          .S1(n105[13]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(44[12:23])
    defparam acc2_5249_5392_add_4_14.INIT0 = 16'h666a;
    defparam acc2_5249_5392_add_4_14.INIT1 = 16'h666a;
    defparam acc2_5249_5392_add_4_14.INJECT1_0 = "NO";
    defparam acc2_5249_5392_add_4_14.INJECT1_1 = "NO";
    CCU2B acc2_5249_5392_add_4_12 (.A0(acc1[10]), .B0(acc2[10]), .C0(GND_net), 
          .D0(VCC_net), .A1(acc1[11]), .B1(acc2[11]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13549), .COUT(n13550), .S0(n105[10]), 
          .S1(n105[11]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(44[12:23])
    defparam acc2_5249_5392_add_4_12.INIT0 = 16'h666a;
    defparam acc2_5249_5392_add_4_12.INIT1 = 16'h666a;
    defparam acc2_5249_5392_add_4_12.INJECT1_0 = "NO";
    defparam acc2_5249_5392_add_4_12.INJECT1_1 = "NO";
    CCU2B acc2_5249_5392_add_4_10 (.A0(acc1[8]), .B0(acc2[8]), .C0(GND_net), 
          .D0(VCC_net), .A1(acc1[9]), .B1(acc2[9]), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13548), .COUT(n13549), .S0(n105[8]), .S1(n105[9]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(44[12:23])
    defparam acc2_5249_5392_add_4_10.INIT0 = 16'h666a;
    defparam acc2_5249_5392_add_4_10.INIT1 = 16'h666a;
    defparam acc2_5249_5392_add_4_10.INJECT1_0 = "NO";
    defparam acc2_5249_5392_add_4_10.INJECT1_1 = "NO";
    CCU2B add_5791_18 (.A0(diff1[15]), .B0(diff1_d[15]), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13636), .S0(n8805[16]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(87[15:30])
    defparam add_5791_18.INIT0 = 16'h999a;
    defparam add_5791_18.INIT1 = 16'h0000;
    defparam add_5791_18.INJECT1_0 = "NO";
    defparam add_5791_18.INJECT1_1 = "NO";
    CCU2B acc1_5248_5393_add_4_16 (.A0(acc1[14]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(acc1[15]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13538), .S0(n105_adj_2553[14]), .S1(n105_adj_2553[15]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(43[12:27])
    defparam acc1_5248_5393_add_4_16.INIT0 = 16'haaa0;
    defparam acc1_5248_5393_add_4_16.INIT1 = 16'haaa0;
    defparam acc1_5248_5393_add_4_16.INJECT1_0 = "NO";
    defparam acc1_5248_5393_add_4_16.INJECT1_1 = "NO";
    CCU2B acc2_5249_5392_add_4_8 (.A0(acc1[6]), .B0(acc2[6]), .C0(GND_net), 
          .D0(VCC_net), .A1(acc1[7]), .B1(acc2[7]), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13547), .COUT(n13548), .S0(n105[6]), .S1(n105[7]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(44[12:23])
    defparam acc2_5249_5392_add_4_8.INIT0 = 16'h666a;
    defparam acc2_5249_5392_add_4_8.INIT1 = 16'h666a;
    defparam acc2_5249_5392_add_4_8.INJECT1_0 = "NO";
    defparam acc2_5249_5392_add_4_8.INJECT1_1 = "NO";
    CCU2B acc2_5249_5392_add_4_6 (.A0(acc1[4]), .B0(acc2[4]), .C0(GND_net), 
          .D0(VCC_net), .A1(acc1[5]), .B1(acc2[5]), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13546), .COUT(n13547), .S0(n105[4]), .S1(n105[5]));   // c:/#work/galvano/design/app/fpga/implementation/source/dec256sinc24b.v(44[12:23])
    defparam acc2_5249_5392_add_4_6.INIT0 = 16'h666a;
    defparam acc2_5249_5392_add_4_6.INIT1 = 16'h666a;
    defparam acc2_5249_5392_add_4_6.INJECT1_0 = "NO";
    defparam acc2_5249_5392_add_4_6.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module ads8686if
//

module ads8686if (ypadc_sck_c, clk1, ypadc_sdi_c, ypadc_cs_c, GND_net, 
            VCC_net, n17031, clk1_enable_115, ydac_rst_c) /* synthesis syn_module_defined=1 */ ;
    output ypadc_sck_c;
    input clk1;
    output ypadc_sdi_c;
    output ypadc_cs_c;
    input GND_net;
    input VCC_net;
    input n17031;
    input clk1_enable_115;
    input ydac_rst_c;
    
    wire clk1 /* synthesis SET_AS_NETWORK=clk1, is_clock=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/top.v(65[6:10])
    
    wire ads_sclk_N_1095, ads_sdi_N_1098, convst_csn_N_1094, convst_csn_N_1093, 
        n4, convst_csn_N_1087, n1, n2;
    wire [31:0]reg_cfg_data;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(67[12:24])
    
    wire state_3__N_975;
    wire [31:0]reg_cfg_data_31__N_1035;
    wire [15:0]clk_cnt;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(66[12:19])
    
    wire n14686, n4_adj_2506, n14774, n6, n16627, n13628;
    wire [15:0]n69;
    wire [3:0]state;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(65[11:16])
    
    wire n3578, ads_sdi_N_1100, n4_adj_2507, n13627, n13626, n13625, 
        n13624, n13623, n13622, n14, n10;
    wire [3:0]reg_cfg_cnt;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(35[12:23])
    
    wire clk1_enable_18, n13955, n6328;
    wire [31:0]cfgdata;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(37[12:19])
    
    wire n1_adj_2508, n2_adj_2509;
    wire [31:0]n530;
    
    wire n13621, n16666, n15163;
    wire [31:0]cfgdata_31__N_942;
    wire [3:0]n21;
    wire [31:0]cfgdata_31__N_856;
    
    wire n15179, n16638, n16639;
    wire [31:0]n248;
    
    wire n4_adj_2510, n9181, n2_adj_2511, n3, n14771, n14747, n4_adj_2512, 
        n1_adj_2513, n2_adj_2514, n9270, convst_csn_N_1089, convst_csn_N_1092, 
        n1_adj_2515, n2_adj_2516, n1_adj_2517, n2_adj_2518, n1_adj_2519, 
        n2_adj_2520;
    
    FD1S3AX ads_sclk_88 (.D(ads_sclk_N_1095), .CK(clk1), .Q(ypadc_sck_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=163 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam ads_sclk_88.GSR = "ENABLED";
    FD1S3AX ads_sdi_89 (.D(ads_sdi_N_1098), .CK(clk1), .Q(ypadc_sdi_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=163 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam ads_sdi_89.GSR = "ENABLED";
    ORCALUT4 i1_3_lut (.A(convst_csn_N_1094), .B(ypadc_sck_c), .C(convst_csn_N_1093), 
            .Z(n4)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_3_lut.init = 16'h1414;
    FD1S3AY convst_csn_86 (.D(convst_csn_N_1087), .CK(clk1), .Q(ypadc_cs_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=163 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam convst_csn_86.GSR = "ENABLED";
    ORCALUT4 i2_4_lut (.A(n1), .B(n2), .C(reg_cfg_data[20]), .D(state_3__N_975), 
            .Z(reg_cfg_data_31__N_1035[20])) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i2_4_lut.init = 16'hfeee;
    ORCALUT4 i1_4_lut (.A(clk_cnt[6]), .B(n14686), .C(clk_cnt[7]), .D(n4_adj_2506), 
            .Z(convst_csn_N_1094)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut.init = 16'hfcec;
    ORCALUT4 i1_4_lut_adj_35 (.A(n14774), .B(clk_cnt[0]), .C(clk_cnt[2]), 
            .D(clk_cnt[1]), .Z(n4_adj_2506)) /* synthesis lut_function=(A+(B (C)+!B (C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam i1_4_lut_adj_35.init = 16'hfaea;
    ORCALUT4 i1_4_lut_adj_36 (.A(n6), .B(n16627), .C(clk_cnt[6]), .D(n14774), 
            .Z(convst_csn_N_1093)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_36.init = 16'hfcec;
    ORCALUT4 i1_2_lut (.A(clk_cnt[2]), .B(clk_cnt[1]), .Z(n6)) /* synthesis lut_function=(A (B)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam i1_2_lut.init = 16'h8888;
    CCU2B clk_cnt_5256_add_4_17 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13628), .S0(n69[15]));   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5256_add_4_17.INIT0 = 16'haaa0;
    defparam clk_cnt_5256_add_4_17.INIT1 = 16'h0000;
    defparam clk_cnt_5256_add_4_17.INJECT1_0 = "NO";
    defparam clk_cnt_5256_add_4_17.INJECT1_1 = "NO";
    ORCALUT4 i2218_2_lut (.A(convst_csn_N_1094), .B(state[1]), .Z(n3578)) /* synthesis lut_function=(A (B)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i2218_2_lut.init = 16'h8888;
    ORCALUT4 i1_3_lut_adj_37 (.A(state_3__N_975), .B(state[0]), .C(ads_sdi_N_1100), 
            .Z(n4_adj_2507)) /* synthesis lut_function=(A+!((C)+!B)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_3_lut_adj_37.init = 16'haeae;
    CCU2B clk_cnt_5256_add_4_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13627), .COUT(n13628), .S0(n69[13]), .S1(n69[14]));   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5256_add_4_15.INIT0 = 16'haaa0;
    defparam clk_cnt_5256_add_4_15.INIT1 = 16'haaa0;
    defparam clk_cnt_5256_add_4_15.INJECT1_0 = "NO";
    defparam clk_cnt_5256_add_4_15.INJECT1_1 = "NO";
    CCU2B clk_cnt_5256_add_4_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13626), .COUT(n13627), .S0(n69[11]), .S1(n69[12]));   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5256_add_4_13.INIT0 = 16'haaa0;
    defparam clk_cnt_5256_add_4_13.INIT1 = 16'haaa0;
    defparam clk_cnt_5256_add_4_13.INJECT1_0 = "NO";
    defparam clk_cnt_5256_add_4_13.INJECT1_1 = "NO";
    CCU2B clk_cnt_5256_add_4_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13625), .COUT(n13626), .S0(n69[9]), .S1(n69[10]));   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5256_add_4_11.INIT0 = 16'haaa0;
    defparam clk_cnt_5256_add_4_11.INIT1 = 16'haaa0;
    defparam clk_cnt_5256_add_4_11.INJECT1_0 = "NO";
    defparam clk_cnt_5256_add_4_11.INJECT1_1 = "NO";
    CCU2B clk_cnt_5256_add_4_9 (.A0(clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13624), .COUT(n13625), .S0(n69[7]), .S1(n69[8]));   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5256_add_4_9.INIT0 = 16'haaa0;
    defparam clk_cnt_5256_add_4_9.INIT1 = 16'haaa0;
    defparam clk_cnt_5256_add_4_9.INJECT1_0 = "NO";
    defparam clk_cnt_5256_add_4_9.INJECT1_1 = "NO";
    CCU2B clk_cnt_5256_add_4_7 (.A0(clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13623), .COUT(n13624), .S0(n69[5]), .S1(n69[6]));   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5256_add_4_7.INIT0 = 16'haaa0;
    defparam clk_cnt_5256_add_4_7.INIT1 = 16'haaa0;
    defparam clk_cnt_5256_add_4_7.INJECT1_0 = "NO";
    defparam clk_cnt_5256_add_4_7.INJECT1_1 = "NO";
    CCU2B clk_cnt_5256_add_4_5 (.A0(clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13622), .COUT(n13623), .S0(n69[3]), .S1(n69[4]));   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5256_add_4_5.INIT0 = 16'haaa0;
    defparam clk_cnt_5256_add_4_5.INIT1 = 16'haaa0;
    defparam clk_cnt_5256_add_4_5.INJECT1_0 = "NO";
    defparam clk_cnt_5256_add_4_5.INJECT1_1 = "NO";
    ORCALUT4 i2_3_lut (.A(clk_cnt[4]), .B(clk_cnt[3]), .C(clk_cnt[5]), 
            .Z(n14774)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam i2_3_lut.init = 16'hfefe;
    ORCALUT4 i7_4_lut (.A(clk_cnt[12]), .B(n14), .C(n10), .D(clk_cnt[11]), 
            .Z(n14686)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7_4_lut.init = 16'hfffe;
    FD1P3AX reg_cfg_cnt_5255__i0 (.D(n13955), .SP(clk1_enable_18), .CK(clk1), 
            .Q(reg_cfg_cnt[0]));   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(101[40:55])
    defparam reg_cfg_cnt_5255__i0.GSR = "DISABLED";
    ORCALUT4 i6_4_lut (.A(clk_cnt[8]), .B(clk_cnt[15]), .C(clk_cnt[10]), 
            .D(clk_cnt[9]), .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut.init = 16'hfffe;
    ORCALUT4 i2_2_lut (.A(clk_cnt[13]), .B(clk_cnt[14]), .Z(n10)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    ORCALUT4 select_2294_Select_20_i1_4_lut (.A(reg_cfg_data[20]), .B(state[1]), 
            .C(reg_cfg_data[19]), .D(n6328), .Z(n1)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam select_2294_Select_20_i1_4_lut.init = 16'hc088;
    ORCALUT4 select_2294_Select_20_i2_4_lut (.A(reg_cfg_data[20]), .B(state[0]), 
            .C(cfgdata[19]), .D(ads_sdi_N_1100), .Z(n2)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam select_2294_Select_20_i2_4_lut.init = 16'hc088;
    ORCALUT4 i2_4_lut_adj_38 (.A(n1_adj_2508), .B(n2_adj_2509), .C(reg_cfg_data[19]), 
            .D(state_3__N_975), .Z(reg_cfg_data_31__N_1035[19])) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i2_4_lut_adj_38.init = 16'hfeee;
    ORCALUT4 select_2294_Select_19_i1_4_lut (.A(reg_cfg_data[19]), .B(state[1]), 
            .C(reg_cfg_data[18]), .D(n6328), .Z(n1_adj_2508)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam select_2294_Select_19_i1_4_lut.init = 16'hc088;
    ORCALUT4 select_2294_Select_19_i2_4_lut (.A(reg_cfg_data[19]), .B(state[0]), 
            .C(cfgdata[18]), .D(ads_sdi_N_1100), .Z(n2_adj_2509)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam select_2294_Select_19_i2_4_lut.init = 16'hc088;
    ORCALUT4 i1_4_lut_adj_39 (.A(n530[18]), .B(reg_cfg_data[18]), .C(state[1]), 
            .D(n4_adj_2507), .Z(reg_cfg_data_31__N_1035[18])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_39.init = 16'heca0;
    ORCALUT4 mux_30_i19_3_lut (.A(reg_cfg_data[18]), .B(reg_cfg_data[17]), 
            .C(n6328), .Z(n530[18])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i19_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_40 (.A(n530[17]), .B(reg_cfg_data[17]), .C(state[1]), 
            .D(n4_adj_2507), .Z(reg_cfg_data_31__N_1035[17])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_40.init = 16'heca0;
    CCU2B clk_cnt_5256_add_4_3 (.A0(clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13621), .COUT(n13622), .S0(n69[1]), .S1(n69[2]));   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5256_add_4_3.INIT0 = 16'haaa0;
    defparam clk_cnt_5256_add_4_3.INIT1 = 16'haaa0;
    defparam clk_cnt_5256_add_4_3.INJECT1_0 = "NO";
    defparam clk_cnt_5256_add_4_3.INJECT1_1 = "NO";
    ORCALUT4 mux_30_i18_3_lut (.A(reg_cfg_data[17]), .B(reg_cfg_data[16]), 
            .C(n6328), .Z(n530[17])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i18_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_41 (.A(n530[16]), .B(reg_cfg_data[16]), .C(state[1]), 
            .D(n4_adj_2507), .Z(reg_cfg_data_31__N_1035[16])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_41.init = 16'heca0;
    ORCALUT4 mux_30_i17_3_lut (.A(reg_cfg_data[16]), .B(reg_cfg_data[15]), 
            .C(n6328), .Z(n530[16])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i17_3_lut.init = 16'hcaca;
    CCU2B clk_cnt_5256_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n13621), .S1(n69[0]));   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5256_add_4_1.INIT0 = 16'h0000;
    defparam clk_cnt_5256_add_4_1.INIT1 = 16'h555f;
    defparam clk_cnt_5256_add_4_1.INJECT1_0 = "NO";
    defparam clk_cnt_5256_add_4_1.INJECT1_1 = "NO";
    ORCALUT4 i1_4_lut_adj_42 (.A(n530[15]), .B(reg_cfg_data[15]), .C(state[1]), 
            .D(n4_adj_2507), .Z(reg_cfg_data_31__N_1035[15])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_42.init = 16'heca0;
    ORCALUT4 mux_30_i16_3_lut (.A(reg_cfg_data[15]), .B(reg_cfg_data[14]), 
            .C(n6328), .Z(n530[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i16_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_43 (.A(n530[14]), .B(reg_cfg_data[14]), .C(state[1]), 
            .D(n4_adj_2507), .Z(reg_cfg_data_31__N_1035[14])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_43.init = 16'heca0;
    ORCALUT4 mux_30_i15_3_lut (.A(reg_cfg_data[14]), .B(reg_cfg_data[13]), 
            .C(n6328), .Z(n530[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i15_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_44 (.A(n530[13]), .B(reg_cfg_data[13]), .C(state[1]), 
            .D(n4_adj_2507), .Z(reg_cfg_data_31__N_1035[13])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_44.init = 16'heca0;
    ORCALUT4 mux_30_i14_3_lut (.A(reg_cfg_data[13]), .B(reg_cfg_data[12]), 
            .C(n6328), .Z(n530[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i14_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_45 (.A(n530[12]), .B(reg_cfg_data[12]), .C(state[1]), 
            .D(n4_adj_2507), .Z(reg_cfg_data_31__N_1035[12])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_45.init = 16'heca0;
    ORCALUT4 mux_30_i13_3_lut (.A(reg_cfg_data[12]), .B(reg_cfg_data[11]), 
            .C(n6328), .Z(n530[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i13_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_46 (.A(n530[11]), .B(reg_cfg_data[11]), .C(state[1]), 
            .D(n4_adj_2507), .Z(reg_cfg_data_31__N_1035[11])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_46.init = 16'heca0;
    ORCALUT4 mux_30_i12_3_lut (.A(reg_cfg_data[11]), .B(reg_cfg_data[10]), 
            .C(n6328), .Z(n530[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i12_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_47 (.A(n530[10]), .B(reg_cfg_data[10]), .C(state[1]), 
            .D(n4_adj_2507), .Z(reg_cfg_data_31__N_1035[10])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_47.init = 16'heca0;
    ORCALUT4 mux_30_i11_3_lut (.A(reg_cfg_data[10]), .B(reg_cfg_data[9]), 
            .C(n6328), .Z(n530[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i11_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_48 (.A(n530[9]), .B(reg_cfg_data[9]), .C(state[1]), 
            .D(n4_adj_2507), .Z(reg_cfg_data_31__N_1035[9])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_48.init = 16'heca0;
    ORCALUT4 mux_30_i10_3_lut (.A(reg_cfg_data[9]), .B(reg_cfg_data[8]), 
            .C(n6328), .Z(n530[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i10_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_49 (.A(n530[8]), .B(reg_cfg_data[8]), .C(state[1]), 
            .D(n4_adj_2507), .Z(reg_cfg_data_31__N_1035[8])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_49.init = 16'heca0;
    ORCALUT4 mux_30_i9_3_lut (.A(reg_cfg_data[8]), .B(reg_cfg_data[7]), 
            .C(n6328), .Z(n530[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i9_3_lut.init = 16'hcaca;
    ORCALUT4 i12884_2_lut_rep_225 (.A(reg_cfg_cnt[2]), .B(reg_cfg_cnt[3]), 
            .Z(n16666)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i12884_2_lut_rep_225.init = 16'h1111;
    ORCALUT4 i12872_2_lut_3_lut_4_lut (.A(reg_cfg_cnt[2]), .B(reg_cfg_cnt[3]), 
            .C(reg_cfg_cnt[1]), .D(reg_cfg_cnt[0]), .Z(n15163)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i12872_2_lut_3_lut_4_lut.init = 16'h0010;
    ORCALUT4 i1_4_lut_adj_50 (.A(n530[7]), .B(reg_cfg_data[7]), .C(state[1]), 
            .D(n4_adj_2507), .Z(reg_cfg_data_31__N_1035[7])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_50.init = 16'heca0;
    ORCALUT4 i1_2_lut_3_lut (.A(reg_cfg_cnt[2]), .B(reg_cfg_cnt[3]), .C(reg_cfg_cnt[0]), 
            .Z(n13955)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'he1e1;
    ORCALUT4 i12900_3_lut_4_lut (.A(reg_cfg_cnt[2]), .B(reg_cfg_cnt[3]), 
            .C(reg_cfg_cnt[0]), .D(reg_cfg_cnt[1]), .Z(cfgdata_31__N_942[20])) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i12900_3_lut_4_lut.init = 16'h1110;
    ORCALUT4 mux_30_i8_3_lut (.A(reg_cfg_data[7]), .B(reg_cfg_data[6]), 
            .C(n6328), .Z(n530[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i8_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_51 (.A(n530[6]), .B(reg_cfg_data[6]), .C(state[1]), 
            .D(n4_adj_2507), .Z(reg_cfg_data_31__N_1035[6])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_51.init = 16'heca0;
    ORCALUT4 i10210_2_lut_3_lut_4_lut_4_lut (.A(reg_cfg_cnt[2]), .B(reg_cfg_cnt[3]), 
            .C(reg_cfg_cnt[1]), .D(reg_cfg_cnt[0]), .Z(n21[2])) /* synthesis lut_function=(A+!(B+!(C (D)))) */ ;
    defparam i10210_2_lut_3_lut_4_lut_4_lut.init = 16'hbaaa;
    ORCALUT4 i12867_3_lut_4_lut (.A(reg_cfg_cnt[2]), .B(reg_cfg_cnt[3]), 
            .C(reg_cfg_cnt[1]), .D(reg_cfg_cnt[0]), .Z(cfgdata_31__N_856[28])) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;
    defparam i12867_3_lut_4_lut.init = 16'h0111;
    ORCALUT4 mux_30_i7_3_lut (.A(reg_cfg_data[6]), .B(reg_cfg_data[5]), 
            .C(n6328), .Z(n530[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i7_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_52 (.A(n530[5]), .B(reg_cfg_data[5]), .C(state[1]), 
            .D(n4_adj_2507), .Z(reg_cfg_data_31__N_1035[5])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_52.init = 16'heca0;
    ORCALUT4 mux_30_i6_3_lut (.A(reg_cfg_data[5]), .B(reg_cfg_data[4]), 
            .C(n6328), .Z(n530[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i6_3_lut.init = 16'hcaca;
    ORCALUT4 i12841_3_lut_4_lut (.A(reg_cfg_cnt[2]), .B(reg_cfg_cnt[3]), 
            .C(reg_cfg_cnt[1]), .D(reg_cfg_cnt[0]), .Z(n15179)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i12841_3_lut_4_lut.init = 16'h1000;
    ORCALUT4 i1_4_lut_adj_53 (.A(n530[4]), .B(reg_cfg_data[4]), .C(state[1]), 
            .D(n4_adj_2507), .Z(reg_cfg_data_31__N_1035[4])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_53.init = 16'heca0;
    ORCALUT4 mux_30_i5_3_lut (.A(reg_cfg_data[4]), .B(reg_cfg_data[3]), 
            .C(n6328), .Z(n530[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i5_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_54 (.A(n530[3]), .B(reg_cfg_data[3]), .C(state[1]), 
            .D(n4_adj_2507), .Z(reg_cfg_data_31__N_1035[3])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_54.init = 16'heca0;
    ORCALUT4 i12871_2_lut_3_lut_4_lut (.A(reg_cfg_cnt[2]), .B(reg_cfg_cnt[3]), 
            .C(reg_cfg_cnt[0]), .D(reg_cfg_cnt[1]), .Z(cfgdata_31__N_856[19])) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i12871_2_lut_3_lut_4_lut.init = 16'h0001;
    ORCALUT4 i12839_2_lut_rep_197_3_lut (.A(reg_cfg_cnt[2]), .B(reg_cfg_cnt[3]), 
            .C(reg_cfg_cnt[0]), .Z(n16638)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i12839_2_lut_rep_197_3_lut.init = 16'h0101;
    ORCALUT4 i12831_2_lut_rep_198_3_lut (.A(reg_cfg_cnt[2]), .B(reg_cfg_cnt[3]), 
            .C(reg_cfg_cnt[1]), .Z(n16639)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i12831_2_lut_rep_198_3_lut.init = 16'h0101;
    ORCALUT4 i10203_2_lut_3_lut_4_lut (.A(reg_cfg_cnt[2]), .B(reg_cfg_cnt[3]), 
            .C(reg_cfg_cnt[1]), .D(reg_cfg_cnt[0]), .Z(n21[1])) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C (D)+!C !(D)))) */ ;
    defparam i10203_2_lut_3_lut_4_lut.init = 16'he1f0;
    ORCALUT4 i10217_3_lut_4_lut_1_lut (.A(reg_cfg_cnt[3]), .Z(n21[3])) /* synthesis lut_function=(A) */ ;
    defparam i10217_3_lut_4_lut_1_lut.init = 16'haaaa;
    ORCALUT4 mux_30_i4_3_lut (.A(reg_cfg_data[3]), .B(reg_cfg_data[2]), 
            .C(n6328), .Z(n530[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i4_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_55 (.A(n530[2]), .B(reg_cfg_data[2]), .C(state[1]), 
            .D(n4_adj_2507), .Z(reg_cfg_data_31__N_1035[2])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_55.init = 16'heca0;
    ORCALUT4 mux_30_i3_3_lut (.A(reg_cfg_data[2]), .B(reg_cfg_data[1]), 
            .C(n6328), .Z(n530[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i3_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_56 (.A(n248[1]), .B(reg_cfg_data[1]), .C(state[0]), 
            .D(n4_adj_2510), .Z(reg_cfg_data_31__N_1035[1])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_56.init = 16'heca0;
    ORCALUT4 mux_20_i2_3_lut (.A(reg_cfg_data[1]), .B(cfgdata[0]), .C(ads_sdi_N_1100), 
            .Z(n248[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(85[17] 90[20])
    defparam mux_20_i2_3_lut.init = 16'hcaca;
    ORCALUT4 i1_3_lut_adj_57 (.A(state_3__N_975), .B(state[1]), .C(n6328), 
            .Z(n4_adj_2510)) /* synthesis lut_function=(A+!((C)+!B)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_3_lut_adj_57.init = 16'haeae;
    ORCALUT4 select_4782_Select_0_i4_2_lut (.A(state[0]), .B(state_3__N_975), 
            .Z(n9181)) /* synthesis lut_function=(A+(B)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam select_4782_Select_0_i4_2_lut.init = 16'heeee;
    ORCALUT4 i2_4_lut_adj_58 (.A(n2_adj_2511), .B(n3), .C(ypadc_sdi_c), 
            .D(state_3__N_975), .Z(ads_sdi_N_1098)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i2_4_lut_adj_58.init = 16'hfeee;
    ORCALUT4 state_3__N_975_I_0_i2_4_lut (.A(ypadc_sdi_c), .B(state[1]), 
            .C(reg_cfg_data[31]), .D(n6328), .Z(n2_adj_2511)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam state_3__N_975_I_0_i2_4_lut.init = 16'hc088;
    ORCALUT4 state_3__N_975_I_0_i3_4_lut (.A(ypadc_sdi_c), .B(state[0]), 
            .C(cfgdata[31]), .D(ads_sdi_N_1100), .Z(n3)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam state_3__N_975_I_0_i3_4_lut.init = 16'hc088;
    ORCALUT4 i1_4_lut_adj_59 (.A(clk_cnt[2]), .B(n14771), .C(n14747), 
            .D(n4_adj_2512), .Z(ads_sdi_N_1100)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_59.init = 16'hfcec;
    ORCALUT4 i1_2_lut_adj_60 (.A(clk_cnt[3]), .B(clk_cnt[1]), .Z(n4_adj_2512)) /* synthesis lut_function=(A+(B)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(66[12:19])
    defparam i1_2_lut_adj_60.init = 16'heeee;
    FD1S3AY state_FSM_i3 (.D(n3578), .CK(clk1), .Q(state_3__N_975));   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3AX state_FSM_i2 (.D(n4_adj_2507), .CK(clk1), .Q(state[0]));   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam state_FSM_i2.GSR = "ENABLED";
    ORCALUT4 i2_3_lut_adj_61 (.A(ypadc_sck_c), .B(convst_csn_N_1094), .C(convst_csn_N_1093), 
            .Z(n6328)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(103[22] 116[20])
    defparam i2_3_lut_adj_61.init = 16'h2020;
    FD1S3IX clk_cnt_5256__i0 (.D(n69[0]), .CK(clk1), .CD(state_3__N_975), 
            .Q(clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5256__i0.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_rep_186 (.A(clk_cnt[7]), .B(n14686), .Z(n16627)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_186.init = 16'heeee;
    ORCALUT4 i1_2_lut_3_lut_adj_62 (.A(clk_cnt[7]), .B(n14686), .C(clk_cnt[6]), 
            .Z(n14771)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut_adj_62.init = 16'hfefe;
    ORCALUT4 i2_4_lut_adj_63 (.A(n1_adj_2513), .B(n2_adj_2514), .C(reg_cfg_data[21]), 
            .D(state_3__N_975), .Z(reg_cfg_data_31__N_1035[21])) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i2_4_lut_adj_63.init = 16'hfeee;
    ORCALUT4 i2_3_lut_adj_64 (.A(convst_csn_N_1094), .B(state[1]), .C(n17031), 
            .Z(clk1_enable_18)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_adj_64.init = 16'h8080;
    ORCALUT4 i1_2_lut_adj_65 (.A(clk_cnt[5]), .B(clk_cnt[4]), .Z(n14747)) /* synthesis lut_function=(A (B)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam i1_2_lut_adj_65.init = 16'h8888;
    ORCALUT4 select_2294_Select_21_i1_4_lut (.A(reg_cfg_data[21]), .B(state[1]), 
            .C(reg_cfg_data[20]), .D(n6328), .Z(n1_adj_2513)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam select_2294_Select_21_i1_4_lut.init = 16'hc088;
    ORCALUT4 i6189_4_lut (.A(state[1]), .B(ads_sdi_N_1100), .C(convst_csn_N_1094), 
            .D(state[0]), .Z(n9270)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i6189_4_lut.init = 16'hce0a;
    ORCALUT4 select_4782_Select_0_i5_4_lut (.A(convst_csn_N_1089), .B(ypadc_cs_c), 
            .C(state[1]), .D(n9181), .Z(convst_csn_N_1087)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam select_4782_Select_0_i5_4_lut.init = 16'heca0;
    ORCALUT4 i8739_4_lut (.A(ypadc_cs_c), .B(convst_csn_N_1094), .C(convst_csn_N_1092), 
            .D(convst_csn_N_1093), .Z(convst_csn_N_1089)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B)) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(103[22] 116[20])
    defparam i8739_4_lut.init = 16'heece;
    ORCALUT4 i1_4_lut_adj_66 (.A(clk_cnt[3]), .B(n14771), .C(n14747), 
            .D(clk_cnt[2]), .Z(convst_csn_N_1092)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_66.init = 16'heccc;
    FD1P3AX reg_cfg_cnt_5255__i3 (.D(n21[3]), .SP(clk1_enable_18), .CK(clk1), 
            .Q(reg_cfg_cnt[3]));   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(101[40:55])
    defparam reg_cfg_cnt_5255__i3.GSR = "DISABLED";
    FD1P3AX reg_cfg_cnt_5255__i2 (.D(n21[2]), .SP(clk1_enable_18), .CK(clk1), 
            .Q(reg_cfg_cnt[2]));   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(101[40:55])
    defparam reg_cfg_cnt_5255__i2.GSR = "DISABLED";
    FD1P3AX reg_cfg_cnt_5255__i1 (.D(n21[1]), .SP(clk1_enable_18), .CK(clk1), 
            .Q(reg_cfg_cnt[1]));   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(101[40:55])
    defparam reg_cfg_cnt_5255__i1.GSR = "DISABLED";
    FD1S3AX state_FSM_i1 (.D(n9270), .CK(clk1), .Q(state[1]));   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam state_FSM_i1.GSR = "ENABLED";
    FD1S3AX cfgdata_i6 (.D(cfgdata_31__N_856[28]), .CK(clk1), .Q(cfgdata[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=163 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(42[10] 58[8])
    defparam cfgdata_i6.GSR = "ENABLED";
    FD1S3IX cfgdata_i5 (.D(n15179), .CK(clk1), .CD(cfgdata_31__N_856[28]), 
            .Q(cfgdata[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=163 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(42[10] 58[8])
    defparam cfgdata_i5.GSR = "ENABLED";
    FD1S3IX cfgdata_i4 (.D(cfgdata_31__N_942[20]), .CK(clk1), .CD(cfgdata_31__N_856[19]), 
            .Q(cfgdata[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=163 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(42[10] 58[8])
    defparam cfgdata_i4.GSR = "ENABLED";
    FD1S3AX cfgdata_i3 (.D(cfgdata_31__N_856[19]), .CK(clk1), .Q(cfgdata[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=163 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(42[10] 58[8])
    defparam cfgdata_i3.GSR = "ENABLED";
    FD1S3AX cfgdata_i2 (.D(n16638), .CK(clk1), .Q(cfgdata[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=163 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(42[10] 58[8])
    defparam cfgdata_i2.GSR = "ENABLED";
    FD1P3AX reg_cfg_data_i0_i31 (.D(reg_cfg_data_31__N_1035[31]), .SP(clk1_enable_115), 
            .CK(clk1), .Q(reg_cfg_data[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=163 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i31.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i30 (.D(reg_cfg_data_31__N_1035[30]), .SP(clk1_enable_115), 
            .CK(clk1), .Q(reg_cfg_data[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=163 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i30.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i29 (.D(reg_cfg_data_31__N_1035[29]), .SP(clk1_enable_115), 
            .CK(clk1), .Q(reg_cfg_data[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=163 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i29.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i28 (.D(reg_cfg_data_31__N_1035[28]), .SP(clk1_enable_115), 
            .CK(clk1), .Q(reg_cfg_data[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=163 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i28.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i27 (.D(reg_cfg_data_31__N_1035[27]), .SP(clk1_enable_115), 
            .CK(clk1), .Q(reg_cfg_data[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=163 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i27.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i26 (.D(reg_cfg_data_31__N_1035[26]), .SP(clk1_enable_115), 
            .CK(clk1), .Q(reg_cfg_data[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=163 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i26.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i25 (.D(reg_cfg_data_31__N_1035[25]), .SP(clk1_enable_115), 
            .CK(clk1), .Q(reg_cfg_data[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=163 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i25.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i24 (.D(reg_cfg_data_31__N_1035[24]), .SP(clk1_enable_115), 
            .CK(clk1), .Q(reg_cfg_data[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=163 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i24.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i23 (.D(reg_cfg_data_31__N_1035[23]), .SP(clk1_enable_115), 
            .CK(clk1), .Q(reg_cfg_data[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=163 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i23.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i22 (.D(reg_cfg_data_31__N_1035[22]), .SP(clk1_enable_115), 
            .CK(clk1), .Q(reg_cfg_data[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=163 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i22.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i21 (.D(reg_cfg_data_31__N_1035[21]), .SP(clk1_enable_115), 
            .CK(clk1), .Q(reg_cfg_data[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=163 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i21.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i20 (.D(reg_cfg_data_31__N_1035[20]), .SP(ydac_rst_c), 
            .CK(clk1), .Q(reg_cfg_data[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=163 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i20.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i19 (.D(reg_cfg_data_31__N_1035[19]), .SP(clk1_enable_115), 
            .CK(clk1), .Q(reg_cfg_data[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=163 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i19.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i18 (.D(reg_cfg_data_31__N_1035[18]), .SP(clk1_enable_115), 
            .CK(clk1), .Q(reg_cfg_data[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=163 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i18.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i17 (.D(reg_cfg_data_31__N_1035[17]), .SP(clk1_enable_115), 
            .CK(clk1), .Q(reg_cfg_data[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=163 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i17.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i16 (.D(reg_cfg_data_31__N_1035[16]), .SP(clk1_enable_115), 
            .CK(clk1), .Q(reg_cfg_data[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=163 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i16.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i15 (.D(reg_cfg_data_31__N_1035[15]), .SP(clk1_enable_115), 
            .CK(clk1), .Q(reg_cfg_data[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=163 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i15.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i14 (.D(reg_cfg_data_31__N_1035[14]), .SP(clk1_enable_115), 
            .CK(clk1), .Q(reg_cfg_data[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=163 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i14.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i13 (.D(reg_cfg_data_31__N_1035[13]), .SP(clk1_enable_115), 
            .CK(clk1), .Q(reg_cfg_data[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=163 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i13.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i12 (.D(reg_cfg_data_31__N_1035[12]), .SP(clk1_enable_115), 
            .CK(clk1), .Q(reg_cfg_data[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=163 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i12.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i11 (.D(reg_cfg_data_31__N_1035[11]), .SP(clk1_enable_115), 
            .CK(clk1), .Q(reg_cfg_data[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=163 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i11.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i10 (.D(reg_cfg_data_31__N_1035[10]), .SP(clk1_enable_115), 
            .CK(clk1), .Q(reg_cfg_data[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=163 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i10.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i9 (.D(reg_cfg_data_31__N_1035[9]), .SP(clk1_enable_115), 
            .CK(clk1), .Q(reg_cfg_data[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=163 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i9.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i8 (.D(reg_cfg_data_31__N_1035[8]), .SP(clk1_enable_115), 
            .CK(clk1), .Q(reg_cfg_data[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=163 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i8.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i7 (.D(reg_cfg_data_31__N_1035[7]), .SP(clk1_enable_115), 
            .CK(clk1), .Q(reg_cfg_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=163 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i7.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i6 (.D(reg_cfg_data_31__N_1035[6]), .SP(clk1_enable_115), 
            .CK(clk1), .Q(reg_cfg_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=163 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i6.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i5 (.D(reg_cfg_data_31__N_1035[5]), .SP(clk1_enable_115), 
            .CK(clk1), .Q(reg_cfg_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=163 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i5.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i4 (.D(reg_cfg_data_31__N_1035[4]), .SP(clk1_enable_115), 
            .CK(clk1), .Q(reg_cfg_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=163 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i4.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i3 (.D(reg_cfg_data_31__N_1035[3]), .SP(ydac_rst_c), 
            .CK(clk1), .Q(reg_cfg_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=163 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i3.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i2 (.D(reg_cfg_data_31__N_1035[2]), .SP(clk1_enable_115), 
            .CK(clk1), .Q(reg_cfg_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=163 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i2.GSR = "DISABLED";
    FD1P3AX reg_cfg_data_i0_i1 (.D(reg_cfg_data_31__N_1035[1]), .SP(clk1_enable_115), 
            .CK(clk1), .Q(reg_cfg_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=163 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(77[10] 127[8])
    defparam reg_cfg_data_i0_i1.GSR = "DISABLED";
    FD1S3IX clk_cnt_5256__i15 (.D(n69[15]), .CK(clk1), .CD(state_3__N_975), 
            .Q(clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5256__i15.GSR = "ENABLED";
    ORCALUT4 i1_4_lut_adj_67 (.A(n530[23]), .B(reg_cfg_data[23]), .C(state[1]), 
            .D(n4_adj_2507), .Z(reg_cfg_data_31__N_1035[23])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_67.init = 16'heca0;
    FD1S3IX clk_cnt_5256__i14 (.D(n69[14]), .CK(clk1), .CD(state_3__N_975), 
            .Q(clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5256__i14.GSR = "ENABLED";
    FD1S3IX clk_cnt_5256__i13 (.D(n69[13]), .CK(clk1), .CD(state_3__N_975), 
            .Q(clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5256__i13.GSR = "ENABLED";
    FD1S3IX clk_cnt_5256__i12 (.D(n69[12]), .CK(clk1), .CD(state_3__N_975), 
            .Q(clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5256__i12.GSR = "ENABLED";
    FD1S3IX clk_cnt_5256__i11 (.D(n69[11]), .CK(clk1), .CD(state_3__N_975), 
            .Q(clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5256__i11.GSR = "ENABLED";
    FD1S3IX clk_cnt_5256__i10 (.D(n69[10]), .CK(clk1), .CD(state_3__N_975), 
            .Q(clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5256__i10.GSR = "ENABLED";
    FD1S3IX clk_cnt_5256__i9 (.D(n69[9]), .CK(clk1), .CD(state_3__N_975), 
            .Q(clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5256__i9.GSR = "ENABLED";
    FD1S3IX clk_cnt_5256__i8 (.D(n69[8]), .CK(clk1), .CD(state_3__N_975), 
            .Q(clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5256__i8.GSR = "ENABLED";
    FD1S3IX clk_cnt_5256__i7 (.D(n69[7]), .CK(clk1), .CD(state_3__N_975), 
            .Q(clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5256__i7.GSR = "ENABLED";
    FD1S3IX clk_cnt_5256__i6 (.D(n69[6]), .CK(clk1), .CD(state_3__N_975), 
            .Q(clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5256__i6.GSR = "ENABLED";
    FD1S3IX clk_cnt_5256__i5 (.D(n69[5]), .CK(clk1), .CD(state_3__N_975), 
            .Q(clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5256__i5.GSR = "ENABLED";
    FD1S3IX clk_cnt_5256__i4 (.D(n69[4]), .CK(clk1), .CD(state_3__N_975), 
            .Q(clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5256__i4.GSR = "ENABLED";
    FD1S3IX clk_cnt_5256__i3 (.D(n69[3]), .CK(clk1), .CD(state_3__N_975), 
            .Q(clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5256__i3.GSR = "ENABLED";
    FD1S3IX clk_cnt_5256__i2 (.D(n69[2]), .CK(clk1), .CD(state_3__N_975), 
            .Q(clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5256__i2.GSR = "ENABLED";
    FD1S3IX clk_cnt_5256__i1 (.D(n69[1]), .CK(clk1), .CD(state_3__N_975), 
            .Q(clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(84[28:39])
    defparam clk_cnt_5256__i1.GSR = "ENABLED";
    ORCALUT4 select_4781_Select_0_i5_4_lut (.A(state[1]), .B(ypadc_sck_c), 
            .C(n4), .D(n9181), .Z(ads_sclk_N_1095)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam select_4781_Select_0_i5_4_lut.init = 16'heca0;
    ORCALUT4 mux_30_i24_3_lut (.A(reg_cfg_data[23]), .B(reg_cfg_data[22]), 
            .C(n6328), .Z(n530[23])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i24_3_lut.init = 16'hcaca;
    FD1S3AX cfgdata_i8 (.D(n16666), .CK(clk1), .Q(cfgdata[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=163 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(42[10] 58[8])
    defparam cfgdata_i8.GSR = "ENABLED";
    ORCALUT4 i1_4_lut_adj_68 (.A(n530[22]), .B(reg_cfg_data[22]), .C(state[1]), 
            .D(n4_adj_2507), .Z(reg_cfg_data_31__N_1035[22])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_68.init = 16'heca0;
    ORCALUT4 mux_30_i23_3_lut (.A(reg_cfg_data[22]), .B(reg_cfg_data[21]), 
            .C(n6328), .Z(n530[22])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i23_3_lut.init = 16'hcaca;
    ORCALUT4 select_2294_Select_21_i2_4_lut (.A(reg_cfg_data[21]), .B(state[0]), 
            .C(cfgdata[20]), .D(ads_sdi_N_1100), .Z(n2_adj_2514)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam select_2294_Select_21_i2_4_lut.init = 16'hc088;
    ORCALUT4 i2_4_lut_adj_69 (.A(n1_adj_2515), .B(n2_adj_2516), .C(reg_cfg_data[31]), 
            .D(state_3__N_975), .Z(reg_cfg_data_31__N_1035[31])) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i2_4_lut_adj_69.init = 16'hfeee;
    ORCALUT4 select_2294_Select_31_i1_4_lut (.A(reg_cfg_data[31]), .B(state[1]), 
            .C(reg_cfg_data[30]), .D(n6328), .Z(n1_adj_2515)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam select_2294_Select_31_i1_4_lut.init = 16'hc088;
    ORCALUT4 select_2294_Select_31_i2_4_lut (.A(reg_cfg_data[31]), .B(state[0]), 
            .C(cfgdata[31]), .D(ads_sdi_N_1100), .Z(n2_adj_2516)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam select_2294_Select_31_i2_4_lut.init = 16'hc088;
    ORCALUT4 i1_4_lut_adj_70 (.A(n530[30]), .B(reg_cfg_data[30]), .C(state[1]), 
            .D(n4_adj_2507), .Z(reg_cfg_data_31__N_1035[30])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_70.init = 16'heca0;
    ORCALUT4 mux_30_i31_3_lut (.A(reg_cfg_data[30]), .B(reg_cfg_data[29]), 
            .C(n6328), .Z(n530[30])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i31_3_lut.init = 16'hcaca;
    ORCALUT4 i2_4_lut_adj_71 (.A(n1_adj_2517), .B(n2_adj_2518), .C(reg_cfg_data[29]), 
            .D(state_3__N_975), .Z(reg_cfg_data_31__N_1035[29])) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i2_4_lut_adj_71.init = 16'hfeee;
    ORCALUT4 select_2294_Select_29_i1_4_lut (.A(reg_cfg_data[29]), .B(state[1]), 
            .C(reg_cfg_data[28]), .D(n6328), .Z(n1_adj_2517)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam select_2294_Select_29_i1_4_lut.init = 16'hc088;
    ORCALUT4 select_2294_Select_29_i2_4_lut (.A(reg_cfg_data[29]), .B(state[0]), 
            .C(cfgdata[28]), .D(ads_sdi_N_1100), .Z(n2_adj_2518)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam select_2294_Select_29_i2_4_lut.init = 16'hc088;
    ORCALUT4 i2_4_lut_adj_72 (.A(n1_adj_2519), .B(n2_adj_2520), .C(reg_cfg_data[28]), 
            .D(state_3__N_975), .Z(reg_cfg_data_31__N_1035[28])) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i2_4_lut_adj_72.init = 16'hfeee;
    ORCALUT4 select_2294_Select_28_i1_4_lut (.A(reg_cfg_data[28]), .B(state[1]), 
            .C(reg_cfg_data[27]), .D(n6328), .Z(n1_adj_2519)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam select_2294_Select_28_i1_4_lut.init = 16'hc088;
    ORCALUT4 select_2294_Select_28_i2_4_lut (.A(reg_cfg_data[28]), .B(state[0]), 
            .C(cfgdata[27]), .D(ads_sdi_N_1100), .Z(n2_adj_2520)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam select_2294_Select_28_i2_4_lut.init = 16'hc088;
    ORCALUT4 i1_4_lut_adj_73 (.A(n530[27]), .B(reg_cfg_data[27]), .C(state[1]), 
            .D(n4_adj_2507), .Z(reg_cfg_data_31__N_1035[27])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_73.init = 16'heca0;
    ORCALUT4 mux_30_i28_3_lut (.A(reg_cfg_data[27]), .B(reg_cfg_data[26]), 
            .C(n6328), .Z(n530[27])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i28_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_74 (.A(n530[26]), .B(reg_cfg_data[26]), .C(state[1]), 
            .D(n4_adj_2507), .Z(reg_cfg_data_31__N_1035[26])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_74.init = 16'heca0;
    ORCALUT4 mux_30_i27_3_lut (.A(reg_cfg_data[26]), .B(reg_cfg_data[25]), 
            .C(n6328), .Z(n530[26])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i27_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_75 (.A(n530[25]), .B(reg_cfg_data[25]), .C(state[1]), 
            .D(n4_adj_2507), .Z(reg_cfg_data_31__N_1035[25])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_75.init = 16'heca0;
    ORCALUT4 mux_30_i26_3_lut (.A(reg_cfg_data[25]), .B(reg_cfg_data[24]), 
            .C(n6328), .Z(n530[25])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i26_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_76 (.A(n530[24]), .B(reg_cfg_data[24]), .C(state[1]), 
            .D(n4_adj_2507), .Z(reg_cfg_data_31__N_1035[24])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(78[9] 126[16])
    defparam i1_4_lut_adj_76.init = 16'heca0;
    ORCALUT4 mux_30_i25_3_lut (.A(reg_cfg_data[24]), .B(reg_cfg_data[23]), 
            .C(n6328), .Z(n530[24])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(109[26] 111[24])
    defparam mux_30_i25_3_lut.init = 16'hcaca;
    FD1S3IX cfgdata_i1 (.D(n15163), .CK(clk1), .CD(n16639), .Q(cfgdata[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=163 */ ;   // c:/#work/galvano/design/app/fpga/implementation/source/ads8685.v(42[10] 58[8])
    defparam cfgdata_i1.GSR = "ENABLED";
    
endmodule
