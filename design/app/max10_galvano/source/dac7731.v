// @file  : 7731 module
// @author: Shengbing Zhou
// @date  : 2018/10/22

module dac7731if
(
    input  wire        sys_rstn,
    input  wire        clk_ref,     // 20MHz
    input  wire [15:0] dac_data,
    output wire        dac_csn,
    output wire        dac_rstn,
    output wire        dac_sck,     // 10MHz
    output wire        dac_sdi,
    input  wire        dac_sdo,
    output wire        dac_lr,
    output wire        ads_rstsel,
    input  wire        adc_dvalid
);

reg        reg_clk;
reg        reg_csn;
reg        reg_lr;
reg [15:0] reg_data;
reg [15:0] clk_cnt;
reg [ 1:0] adc_dvalid_dly;
localparam IDLE  = 0;
localparam WRITE = 1;
reg [ 3:0] state;
always @(negedge sys_rstn or posedge clk_ref) begin
    if (!sys_rstn) begin
        reg_lr <= 1;
        reg_data <= 32768;
        reg_csn <= 1;
        clk_cnt <= 0;
        adc_dvalid_dly <= 2'b00;
        state <= IDLE;
    end
    else begin
        adc_dvalid_dly <= {adc_dvalid_dly[0], adc_dvalid};
        case(state)
            IDLE: begin
                if (adc_dvalid_dly == 2'b01) begin
                    state <= WRITE;
                    clk_cnt <= 0;
                    reg_csn <= 0;
                    reg_clk <= 0;
                    reg_lr  <= 0;
                    reg_data <= dac_data;
                end
            end
            WRITE: begin
                clk_cnt <= clk_cnt + 1;
                reg_clk <= ~reg_clk;
                if (reg_clk)
                    reg_data <= {reg_data[14:0], 1'b0};
                if (clk_cnt == 31) begin
                    state   <= IDLE;
                    reg_csn <= 1;
                    reg_lr  <= 1;
                end
            end
            default: begin
                state <= IDLE;           
            end
        endcase
    end
end

// ports
assign ads_rstsel = 1;
assign dac_rstn = sys_rstn;
assign dac_csn  = reg_csn;
assign dac_sck  = reg_clk;
assign dac_sdi  = reg_data[15];
assign dac_lr   = reg_lr;

endmodule
 
