// @author ShengbingZhou
// @date   2019.11.1
module top
(
    // XY2-100
    input  wire xy_clk,
    input  wire xy_sync,
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
    input  wire aardvark_ss,
    input  wire aardvark_sclk,
    input  wire aardvark_mosi,
    output reg  aardvark_miso
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

wire clk_80mhz, clk_40mhz, clk_20mhz, clk_10mhz, clk_5mhz;
assign clk_80mhz = clk_in;
assign clk_40mhz = clk_div[0];
assign clk_20mhz = clk_div[1];
assign clk_10mhz = clk_div[2];
assign clk_5mhz  = clk_div[3];

// registers
// reg[0]:
// reg[1]:
// reg[2]: global resetn - bit0, pid resetn - bit1
// reg[3]: kp
// reg[4]: ki
// reg[5]: kd
// reg[6]: target
// reg[7]: curren position
// reg[8]: dac limit
// reg[9]: pid i saturation
// reg[10]:pid i saturation
reg [15:0] spi_regs[15:0];

// generate reset using latch
reg cnt_rstn;
reg [16:0] sys_rstn_cnt;
always @(posedge clk_5mhz) begin
    if (sys_rstn_cnt < 400) begin            
        sys_rstn_cnt <= sys_rstn_cnt + 1;
        cnt_rstn <= 1;
    end
    else if (sys_rstn_cnt < 1000) begin // 200us based on 5MHz
        sys_rstn_cnt <= sys_rstn_cnt + 1;
        cnt_rstn <= 0;
    end
    else begin
        cnt_rstn <= 1;
    end
end

wire sys_rstn;
assign sys_rstn = cnt_rstn & spi_regs[2][0];

// spi reg fsm (1byte address + 2bytes value, write only)
reg [7:0]  spi_cmd;
reg [15:0] spi_cs_cnt;
reg [1:0]  spi_cs_delay;
reg [1:0]  spi_sck_delay;
reg [3:0]  spi_cs_fsm;
reg [31:0] spi_data;
reg [15:0] spi_reg_data_temp;
always @(negedge cnt_rstn or posedge clk_20mhz) begin // only support cpol = cpha = 0
    if (~cnt_rstn) begin
        spi_cmd <= 0;
        spi_cs_cnt <= 0;
        spi_cs_delay <= 0;
        spi_sck_delay <= 0;
        spi_cs_fsm <= 0;
        spi_data <= 0;
        spi_regs[8] <= 5000;
    end
    else if(clk_20mhz) begin
        if (xp_data_valid)
            spi_regs[7] <= xp_data;
        spi_cs_delay  <= {spi_cs_delay[0],  aardvark_ss};
        spi_sck_delay <= {spi_sck_delay[0], aardvark_sclk};
        case(spi_cs_fsm)
            0: begin // idle           
                if (spi_cs_delay == 2'b10) begin // falling edge of CSn
                    spi_cs_fsm <= 1;
                    spi_cs_cnt <= 0;
                    spi_cmd <= 0;
                    spi_data <= 0;
                end
            end
            1: begin // decode spi cs command
                if (spi_cs_cnt == 8) begin
                    spi_cs_fsm <= 2;
                end
                if (spi_sck_delay == 2'b01) begin // rising edge of SCK                
                    spi_cmd <= {spi_cmd[6:0], aardvark_mosi};
                    spi_cs_cnt <= spi_cs_cnt + 1;
                end
            end
            2: begin // decode spi csn
                spi_cs_cnt <= spi_cs_cnt + 1;
                if (spi_cs_cnt >= 30) begin
                    if (spi_cmd == 8'h03) begin
                        spi_cs_fsm <= 6; // regs write
                    end
                    else if (spi_cmd == 8'h04) begin
                        spi_cs_fsm <= 7; // regs read
                        spi_cs_cnt <= 1;
                    end
                    else begin
                        spi_cs_fsm <= 0; // not valid spi cs commmand, return to idle
                    end
                end
            end
            5: begin // delay
                spi_cs_fsm <= 0;
            end
            6: begin // regs write
                if (spi_cs_delay == 2'b01) begin
                    spi_cs_fsm <= 5;
                    spi_regs[spi_data[23:16]] <= spi_data[15:0];
                end
                if (spi_sck_delay == 2'b01) begin
                    spi_data <= {spi_data[30:0], aardvark_mosi};
                end
            end
            7: begin // regs read
                if (spi_cs_delay == 2'b01) begin
                    spi_cs_fsm <= 5;
                end
                if (spi_sck_delay == 2'b01 && spi_cs_cnt < 9) begin
                    spi_data <= {spi_data[30:0], aardvark_mosi}; // get reg addr
                    spi_reg_data_temp <= spi_regs[{spi_data[6:0], aardvark_mosi}];
                end
                if (spi_sck_delay == 2'b10) begin
                    if (spi_cs_cnt >= 8) begin
                        //aardvark_miso <= spi_regs[spi_data[7:0]][23 - spi_cs_cnt]; // real position may change during read
                        aardvark_miso <= spi_reg_data_temp[15];
                        spi_reg_data_temp <= {spi_reg_data_temp[14:0], 1'b0};
                    end
                    else begin
                        aardvark_miso <= 0;
                    end
                    spi_cs_cnt <= spi_cs_cnt + 1;
                end
            end
            default: begin
                spi_cs_fsm <= 0;
            end
        endcase
    end
end

// xy2_100 interface (2mhz xy_clk)
assign xy_status = 0; // no error
reg [18:0] xy2_xsetpoint;
reg [18:0] xy2_xsetpoint_reg;
reg [18:0] xy2_ysetpoint;
reg [18:0] xy2_ysetpoint_reg;
reg [ 1:0] xy_clk_dly;
reg [ 1:0] xy_sync_dly;
localparam XY2_IDLE = 0;
localparam XY2_DATA = 1;
localparam XY2_CHECK = 2;
reg [ 1:0] xy2_state;
always @(negedge sys_rstn or posedge clk_20mhz) begin
    if (!sys_rstn) begin
        xy2_xsetpoint <= 19'h8000;
        xy2_xsetpoint_reg <= 19'h8000;
        xy2_ysetpoint <= 19'h8000;
        xy2_ysetpoint_reg <= 19'h8000;
        xy2_state <= XY2_IDLE;
    end
    else begin
        xy_clk_dly  <= {xy_clk_dly[0],  xy_clk};
        xy_sync_dly <= {xy_sync_dly[0], xy_sync};
        case(xy2_state)
            XY2_IDLE: begin
                if (xy_sync_dly == 2'b01) begin
                    xy2_state <= XY2_DATA;
                end
            end
            XY2_DATA: begin
                if (xy_clk_dly == 2'b10) begin
                    xy2_xsetpoint_reg <= {xy2_xsetpoint_reg[17:0], xy_x};
                    xy2_ysetpoint_reg <= {xy2_ysetpoint_reg[17:0], xy_y};
                end
                if (xy_sync_dly == 2'b10) begin
                    xy2_state <= XY2_CHECK;
                end
            end
            XY2_CHECK: begin
                if (xy_clk_dly == 2'b10) begin
                    // xy_x is P, TODO: calculate and compare parity
                    if (xy2_xsetpoint_reg[18:16] == 3'b001)
                        xy2_xsetpoint <= xy2_xsetpoint_reg;
                    if (xy2_ysetpoint_reg[18:16] == 3'b001)
                        xy2_ysetpoint <= xy2_ysetpoint_reg;
                    xy2_state <= XY2_IDLE;
                end
            end
        endcase
    end
end

// xp-adc
wire xp_data_valid;
wire [15:0] xp_data;
ads8686if xp_adc_u1
(
    .sys_rstn(sys_rstn),
    .clk_ref(clk_40mhz),
    .ads_csn(xpadc_cs),              // xpadc_cs,  <= 500Ksps  (use 300ksps), convertion time (high level) >= 1us, acq time (low level) >= 1us
    .ads_rstn(xpadc_rst),
    .ads_sclk(xpadc_sck),            // xpadc_sck, <= 66.67mhz (use 20mhz)
    .ads_sdi(xpadc_sdi),             
    .ads_sdo0(xpadc_sdo0),
    .ads_sdo1(xpadc_sdo1),
    .ads_rvs(xpadc_rvs),
    .dvalid(xp_data_valid),
    .dout(xp_data)
);

// x-dac
wire [15:0] xdac_data;
dac7731if xdac_u1
(
    .sys_rstn(sys_rstn),
    .clk_ref(clk_20mhz),
    .dac_data(xdac_data),
    .dac_csn(xdac_cs),
    .dac_rstn(xdac_rst),
    .dac_sck(xdac_sck),             // <= 20mhz (use 10mhz)
    .dac_sdi(xdac_sdi),             
    .dac_sdo(xdac_sdo),
    .dac_lr(xdac_ldac),
    .ads_rstsel(xdac_rstsel),
    .adc_dvalid(xp_data_valid)
);

// pos pid
pos_pid xpos_pid_u1
(
    .sys_rstn(sys_rstn & spi_regs[2][1]),
    .clk_pid(xp_data_valid),
    .kp(spi_regs[3]),
    .ki(spi_regs[4]),
    .kd(spi_regs[5]),
    .dac_limit(spi_regs[8]),
    .pid_i_saturation({spi_regs[10][7:0], spi_regs[9]}),
    .pos_target(spi_regs[6]),
    .pos_adc(xp_data),
    .pos_dac(xdac_data)
);

// yp-adc
wire yp_data_valid;
wire [15:0] yp_data;
ads8686if yp_adc_u1
(
    .sys_rstn(sys_rstn),
    .clk_ref(clk_40mhz),
    .ads_csn(ypadc_cs),
    .ads_rstn(ypadc_rst),
    .ads_sclk(ypadc_sck),
    .ads_sdi(ypadc_sdi),
    .ads_sdo0(ypadc_sdo0),
    .ads_sdo1(ypadc_sdo1),
    .ads_rvs(ypadc_rvs),
    .dvalid(yp_data_valid),
    .dout(yp_data)
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
    .dac_sck(ydac_sck),
    .dac_sdi(ydac_sdi),
    .dac_sdo(ydac_sdo),
    .dac_lr(ydac_ldac),
    .ads_rstsel(ydac_rstsel)
);

// pos pid
pos_pid ypos_pid_u1
(
    .sys_rstn(sys_rstn & spi_regs[2][1]),
    .clk_pid(yp_data_valid),
    .kp(spi_regs[3]),
    .ki(spi_regs[4]),
    .kd(spi_regs[5]),
    .dac_limit(spi_regs[8]),
    .pid_i_saturation({spi_regs[10][7:0], spi_regs[9]}),
    .pos_target(spi_regs[6]),
    .pos_adc(yp_data),
    .pos_dac(ydac_data)
);

endmodule