module top
(
    // clock & config
    input  wire clk_in, // 20MHz
    output wire cfg_done,

    // XY2-100
    input  wire xy_sync,
    input  wire xy_clk,
    input  wire xy_x,
    input  wire xy_y,
    output wire xy_status,

    // current adc (ad7403)
    output wire xiadc_clkin,
    input  wire xiadc_mdat,
    output wire yiadc_clkin,
    input  wire yiadc_mdat,
     
    // position adc (ads8615)
    output wire xpadc_cs,
    output wire xpadc_rst,
    output wire xpadc_sck,
    output wire xpadc_sdi,
    input  wire xpadc_sdo0,
    input  wire xpadc_sdo1,
    input  wire xpadc_rvs,
    output wire ypadc_cs,
    output wire ypadc_rst,
    output wire ypadc_sck,
    output wire ypadc_sdi,
    output wire ypadc_sdo0,
    output wire ypadc_sdo1,
    output wire ypadc_rvs,

    // dac (dac7731e)
    output wire xdac_rst,
    output wire xdac_cs,
    output wire xdac_ldac,
    output wire xdac_rstsel,
    output wire xdac_sck,
    output wire xdac_sdi,
    input  wire xdac_sdo,
    output wire ydac_rst,
    output wire ydac_cs,
    output wire ydac_ldac,
    output wire ydac_rstsel,
    output wire ydac_sck,
    output wire ydac_sdi,
    input  wire ydac_sdo,    
    
    // temperature
    output wire temp_cs,
    output wire temp_clk,
    input  wire temp_data,

    // uart
    output wire uart_tx1,
    input  wire uart_rx1,
    output wire uart_tx2,
    input  wire uart_rx2
);

// pll module
wire clk1, clk2, clk3;
wire pll_locked;
pll_module pll_u1
(
    .CLK(clk_in),
    .CLKOP(clk2),   // 50MHz
    .CLKOS(clk1),   // 20MHz
    .CLKOK(clk3),   // 5MHz
    .LOCK(pll_locked)
);

// generate reset using latch
reg  sys_rstn;
reg  [ 1:0] pll_locked_dly;
reg  [31:0] sys_rstn_cnt;
always @(posedge clk_in) begin
    pll_locked_dly <= {pll_locked_dly[0], pll_locked};
    if (pll_locked_dly == 2'b00) begin
        sys_rstn_cnt <= 0;
        sys_rstn <= 1;
    end
    else if (pll_locked_dly == 2'b11) begin
        if (sys_rstn_cnt < 400) begin            
            sys_rstn_cnt <= sys_rstn_cnt + 1;
            sys_rstn <= 1;
        end
        if (sys_rstn_cnt < 4000000) begin // 200ms based on 20MHz
            sys_rstn_cnt <= sys_rstn_cnt + 1;
            sys_rstn <= 0;
        end
        else begin
            sys_rstn <= 1;
        end        
    end
end

// xy2_100 interface

// xi-adc
wire [15:0] xi_data;
wire xi_data_en;
dec256sinc24b xi_adc_u1
(
    .mclk1(clk1),
    .reset(!sys_rstn),
    .mdata1(xiadc_mdat),
    .DATA(xi_data),
    .data_en(xi_data_en),
    .dec_rate(16'h0020) // dr = 32
);

// yi-adc
wire [15:0] yi_data;
wire yi_data_en;
dec256sinc24b yi_adc_u1
(
    .mclk1(clk1),
    .reset(!sys_rstn),
    .mdata1(yiadc_mdat),
    .DATA(yi_data),
    .data_en(yi_data_en),
    .dec_rate(16'h0020) // dr = 32
);

// xp-adc
wire xp_data_valid;
wire [15:0] xp_data;
ads8686if xp_adc_u1
(
    .sys_rstn(sys_rstn),
    .clk_ref(clk1),
    .convst_csn(xpadc_cs),
    .ads_rstn(xpadc_rst),
    .ads_sclk(xpadc_sck),
    .ads_sdi(xpadc_sdi),
    .ads_sdo0(xpadc_sdo0),
    .ads_sdo1(xpadc_sdo1),
    .ads_rvs(xpadc_rvs),
    .dvalid(xp_data_valid),
    .dout(xp_data)
);

// yp-adc
wire yp_data_valid;
wire [15:0] yp_data;
ads8686if yp_adc_u1
(
    .sys_rstn(sys_rstn),
    .clk_ref(clk1),
    .convst_csn(ypadc_cs),
    .ads_rstn(ypadc_rst),
    .ads_sclk(ypadc_sck),
    .ads_sdi(ypadc_sdi),
    .ads_sdo0(ypadc_sdo0),
    .ads_sdo1(ypadc_sdo1),
    .ads_rvs(ypadc_rvs),
    .dvalid(yp_data_valid),
    .dout(yp_data)
);

// xdac
wire [15:0] xdac_data;
dac7731if xdac_u1
(
    .sys_rstn(sys_rstn),
    .clk_ref(clk1),
    .dac_data(xdac_data),
    .dac_csn(xdac_cs),
    .dac_rstn(xdac_rst),
    .dac_sck(xdac_sck),
    .dac_sdi(xdac_sdi),
    .dac_sdo(xdac_sdo),
    .dac_lr(xdac_ldac),
    .ads_rstsel(xdac_rstsel)
);

// ydac
wire [15:0] ydac_data;
dac7731if ydac_u1
(
    .sys_rstn(sys_rstn),
    .clk_ref(clk1),
    .dac_data(ydac_data),
    .dac_csn(ydac_cs),
    .dac_rstn(ydac_rst),
    .dac_sck(ydac_sck),
    .dac_sdi(ydac_sdi),
    .dac_sdo(ydac_sdo),
    .dac_lr(ydac_ldac),
    .ads_rstsel(ydac_rstsel)
);

// pos pid
pos_pid xpos_pid_u1
(
    .sys_rstn(sys_rstn),
    .clk_pid(clk3),
    .kp(16'h3200),
    .ki(16'h0500),
    .kd(16'h0300),
    .pos_pre(16'h0000),
    .pos_adc(xp_data),
    .pos_dac(xdac_data)
);

// uart
reg  [  6:0] u_req;
wire [  6:0] u_ack;
reg  [ 63:0] u0_msg;
reg  [ 63:0] u1_msg;
reg  [ 63:0] u2_msg;
reg  [ 63:0] u3_msg;
reg  [ 63:0] u4_msg;
reg  [ 63:0] u5_msg;
wire [255:0] u_regs;
uart uart_u1
(
    .rstn(sys_rstn),
    .clk_50m(clk2),
    .u_req(u_req),
    .u_ack(u_ack),
    .u0_msg(u0_msg),
    .u1_msg(u1_msg),
    .u2_msg(u2_msg),
    .u3_msg(u3_msg),
    .u4_msg(u4_msg),
    .u5_msg(u5_msg),
    .u6_msg(u6_msg),
    .regs(u_regs),
    .rx(uart_rx1),
    .tx(uart_tx1)
);
always @(posedge clk2 or negedge sys_rstn) begin
    if (!sys_rstn) begin
        u_req <= 0;
    end
    else begin
        if (u_ack[0] == 1)
            u_req[0] <= 0;
        if (u_ack[1] == 1)
            u_req[1] <= 0;
        if (u_ack[2] == 1)
            u_req[2] <= 0;
        if (u_ack[3] == 1)
            u_req[3] <= 0;
        if (u_ack[4] == 1)
            u_req[4] <= 0;
        if (u_ack[5] == 1)
            u_req[5] <= 0;
        if (u_ack[6] == 1)
            u_req[6] <= 0;            
        if (xp_data_valid == 1) begin
            if (u_req[0] == 0) begin
                u_req[0] <= 1;
                u0_msg   <= {24'h000000, xp_data, 24'h000000};
			end
        end
        if (yp_data_valid == 1) begin
            if (u_req[1] == 0) begin
                u_req[1] <= 1;
                u1_msg   <= {24'h000000, yp_data, 24'h000000};
			end
        end
        if (xi_data_en == 1) begin
            if (u_req[2] == 0) begin
                u_req[2] <= 1;
                u2_msg   <= {24'h000000, xi_data, 24'h000000};
			end
        end
        if (yi_data_en == 1) begin
            if (u_req[3] == 0) begin
                u_req[3] <= 1;
                u3_msg   <= {24'h000000, yi_data, 24'h000000};
			end
        end
    end
end

// led
assign cfg_done = sys_rstn;

// temprature

endmodule