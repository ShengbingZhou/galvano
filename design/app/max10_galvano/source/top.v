// @author ShengbingZhou
// @date   2019.11.1
module top
(
    // XY2-100
    input  wire xy_sync,
    input  wire xy_clk,
    input  wire xy_x,
    input  wire xy_y,
    output wire xy_status,
     
    // adc (ads8615)
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
    input  wire fpga_ss,
    input  wire fpga_sclk,
    input  wire fpga_miso,
    output wire fpga_mosi
);

// internal osc
wire clk_in;
internal_osc osc_u1
(
    .oscena(1'b1),
    .clkout(clk_in) // 82MHz
);

reg [3:0] clk_div;
always @(posedge clk_in) begin
	clk_div <= clk_div + 1;
end

wire clk_80mhz, clk_20mhz, clk_5mhz;
assign clk_80mhz = clk_in;
assign clk_20mhz = clk_div[1];
assign clk_5mhz  = clk_div[3];

// generate reset using latch
reg sys_rstn;
reg [ 1:0] pll_locked_dly;
reg [31:0] sys_rstn_cnt;
always @(posedge clk_20mhz) begin
    pll_locked_dly <= {pll_locked_dly[0], 1'b1};
    if (pll_locked_dly == 2'b00) begin
        sys_rstn_cnt <= 0;
        sys_rstn <= 1;
    end
    else if (pll_locked_dly == 2'b11) begin
        if (sys_rstn_cnt < 400) begin            
            sys_rstn_cnt <= sys_rstn_cnt + 1;
            sys_rstn <= 1;
        end
        else if (sys_rstn_cnt < 4000000) begin // 200ms based on 20MHz
            sys_rstn_cnt <= sys_rstn_cnt + 1;
            sys_rstn <= 0;
        end
        else begin
            sys_rstn <= 1;
        end
    end
end

// xy2_100 interface

// spi test fsm (1byte - spi cs#, following bytes for are devices (4bytes for 8565, 2bytes for 7731))
wire spi_csn, spi_sck, spi_sdi, spi_sdo;
reg decoded_xp_spi_csn, decoded_xdac_spi_csn;
reg spi_xdac_ldac;
reg [7:0] spi_cs_data;
reg [4:0] spi_cs_data_cnt;
reg [1:0] spi_cs_delay_cnt;
reg [1:0] spi_sck_delay_cnt;
reg [3:0] spi_cs_fsm;
always @(negedge sys_rstn or posedge clk_80mhz) begin // only support cpol = cpha = 0
    if (~sys_rstn) begin
        decoded_xp_spi_csn <= 1;
        decoded_xdac_spi_csn <= 1;
        spi_xdac_ldac <= 1;
        spi_cs_data <= 0;
        spi_cs_data_cnt <= 0;
        spi_cs_delay_cnt <= 0;
        spi_sck_delay_cnt <= 0;
        spi_cs_fsm <= 0;
    end
    else if(clk_80mhz) begin
        spi_cs_delay_cnt  <= {spi_cs_delay_cnt[0],  spi_csn};
        spi_sck_delay_cnt <= {spi_sck_delay_cnt[0], spi_sck};
        case(spi_cs_fsm)
            0: begin // idle
                spi_xdac_ldac <= 1;              
                if (spi_cs_delay_cnt == 2'b10) begin // falling edge of CSn
                    spi_cs_fsm <= 1;
                    spi_cs_data_cnt <= 0;
                end
            end
            1: begin // decode spi cs command                
                if (spi_cs_data_cnt == 8) begin
                    spi_cs_fsm <= 2;
                end
                if (spi_sck_delay_cnt == 2'b01) begin // rising edge of SCK                
                    spi_cs_data <= {spi_cs_data[6:0], spi_sdi};
                    spi_cs_data_cnt <= spi_cs_data_cnt + 1;
                end
            end
            2: begin // decode spi csn
                if (spi_cs_data == 8'h01) begin
                    decoded_xp_spi_csn <= 0;    // xp
                    spi_cs_fsm <= 3;
                end
                else if (spi_cs_data == 8'h02) begin
                    decoded_xdac_spi_csn <= 0; // xdac                    
                    spi_xdac_ldac <= 0;
                    spi_cs_fsm <= 4;
                end
                else begin
                    spi_cs_fsm <= 0; // not valid spi cs commmand, return to idle
                end
            end
            3: begin // xp
                if (spi_cs_delay_cnt == 2'b01) begin
                    decoded_xp_spi_csn <= 1;
                    spi_cs_fsm <= 5;
                end
            end
            4: begin // xdac                
                if ((spi_cs_delay_cnt == 2'b01) || (spi_sck_delay_cnt == 24)) begin
                    decoded_xdac_spi_csn <= 1;
                    spi_cs_fsm <= 5;
                end
                if (spi_sck_delay_cnt == 2'b01) begin // rising edge of SCK                    
                    spi_cs_data_cnt <= spi_cs_data_cnt + 1;
                end
            end
            5: begin // delay
                spi_cs_fsm <= 0;
            end
            default: begin
                spi_cs_fsm <= 0;
            end
        endcase
    end
end

// spi test connection
assign spi_csn  = fpga_ss;
assign spi_sck  = fpga_sclk;
assign spi_sdi  = fpga_miso;
assign fpga_mosi = xpadc_sdo0;

assign xpadc_cs  = decoded_xp_spi_csn;
assign xpadc_sck = spi_sck;
assign xpadc_sdi = spi_sdi;

assign xdac_cs   = decoded_xdac_spi_csn;
assign xdac_sck  = spi_sck;
assign xdac_sdi  = spi_sdi;

assign xdac_ldac = spi_xdac_ldac;

// xp-adc
wire xp_data_valid;
wire [15:0] xp_data;
ads8686if xp_adc_u1
(
    .sys_rstn(sys_rstn),
    .clk_ref(clk_20mhz),
    .convst_csn(),          // xpadc_cs, max 500KSps
    .ads_rstn(xpadc_rst),
    .ads_sclk(),            // xpadc_sck, <= 66.67mhz
    .ads_sdi(),             // xpadc_sdi, 5mhz
    .ads_sdo0(),            // xpadc_sdo0
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
    .clk_ref(clk_20mhz),
    .convst_csn(ypadc_cs),
    .ads_rstn(ypadc_rst),
    .ads_sclk(ypadc_sck),   // <= 66.67mhz
    .ads_sdi(ypadc_sdi),    // 5mhz
    .ads_sdo0(ypadc_sdo0),
    .ads_sdo1(ypadc_sdo1),
    .ads_rvs(ypadc_rvs),
    .dvalid(yp_data_valid),
    .dout(yp_data)
);

// x-dac
wire [15:0] xdac_data;
dac7731if xdac_u1
(
    .sys_rstn(sys_rstn),
    .clk_ref(clk_20mhz),
    .dac_data(xdac_data),
    .dac_csn(),
    .dac_rstn(xdac_rst),
    .dac_sck(),             // <= 66.67mhz
    .dac_sdi(),             // 5mhz
    .dac_sdo(xdac_sdo),
    .dac_lr(),
    .ads_rstsel(xdac_rstsel)
);

// y-dac
wire [15:0] ydac_data;
dac7731if ydac_u1
(
    .sys_rstn(sys_rstn),
    .clk_ref(clk_20mhz),
    .dac_data(ydac_data),
    .dac_csn(ydac_cs),
    .dac_rstn(ydac_rst),
    .dac_sck(ydac_sck),     // <= 66.67mhz
    .dac_sdi(ydac_sdi),     // 5mhz
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


endmodule