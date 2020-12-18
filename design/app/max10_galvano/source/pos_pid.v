module pos_pid
(
    input  wire        sys_rstn,
    input  wire        clk_pid,
        
    input  wire [15:0] kp,
    input  wire [15:0] ki,
    input  wire [15:0] kd,
    
    input  wire [15:0] dac_limit,
    input  wire [23:0] pid_i_saturation,
    input  wire        spi_new_target_valid,
    input  wire [15:0] pos_target,
    input  wire        pos_adc_data_valid,
    input  wire [15:0] pos_adc,
    output reg  [15:0] pos_dac
);

reg signed [47:0] P, I, D, error, error_last, integrator;
reg signed [47:0] pid;
wire [15:0] limit0;
wire [15:0] limit1;

assign limit0 = 32768 - dac_limit;
assign limit1 = 32768 + dac_limit;

reg [1:0] spi_new_target_valid_dly;
reg [1:0] pos_adc_data_valid_dly;

// bpann
reg signed [ 7:0] w000, w001, w002, w010, w011, w012, w020, w021, w022, w100, w101, w102, w110, w111, w112, w120, w121, w122;
reg signed [15:0] b10, b11, b12, b20, b21, b22;
reg signed [15:0] e10, e11, e12, e20, e21, e22;
reg signed [15:0] x00, x01, x02, x10, x11, x12, x20, x21, x22;

reg         [7:0] bpann_loop;

localparam STATE0 = 0;
localparam STATE1 = 1;
localparam STATE2 = 2;
localparam STATE3 = 3;
localparam STATE4 = 4;
localparam STATE5 = 5;
localparam STATE6 = 6;
localparam STATE7 = 7;
localparam STATE8 = 8;
localparam STATE9 = 9;
localparam STATE10= 10;
localparam STATE11= 11;
localparam STATE12= 12;
localparam STATE13= 12;
reg [3:0] state;
always @(negedge sys_rstn or posedge clk_pid) begin
    if (!sys_rstn) begin
        state <= STATE0;
        error <= 0;
        error_last <= 0;
        integrator <= 0;
        pid <= 0;
        pos_dac <= 32768;
        
        bpann_loop <= 0;
        w000 <= 64; 
        w001 <= 64; 
        w002 <= 64; 
        w010 <= 64; 
        w011 <= 64; 
        w012 <= 64; 
        w020 <= 64; 
        w021 <= 64; 
        w022 <= 64;       
        w100 <= 64; 
        w101 <= 64; 
        w102 <= 64; 
        w110 <= 64; 
        w111 <= 64; 
        w112 <= 64; 
        w120 <= 64; 
        w121 <= 64; 
        w122 <= 64;      

        b10  <= 16384; 
        b11  <= 16384; 
        b12  <= 16384;
        b20  <= 16384; 
        b21  <= 16384; 
        b22  <= 16384;
    end
    else if (clk_pid) begin
        spi_new_target_valid_dly <= {spi_new_target_valid_dly[0], spi_new_target_valid};
        pos_adc_data_valid_dly   <= {pos_adc_data_valid_dly[0],   pos_adc_data_valid};
        case(state)
            STATE0: begin
                if (spi_new_target_valid_dly == 2'b01) begin
                    bpann_loop <= 0;
                    state <= STATE1;
                end
            end
            STATE1: begin
                if (pos_adc_data_valid_dly == 2'b01) begin
                    error <= 0;
                    error_last <= 0;
                    integrator <= 0;
                    state <= STATE2;
                end
            end
            STATE2: begin
                if (pos_adc_data_valid_dly == 2'b01) begin
                    error <= $signed({1'b0, pos_target}) - $signed({1'b0, pos_adc});
                    error_last <= error;
                    state <= STATE3;
                end
            end
            STATE3: begin
                P <= ($signed({1'b0, kp}) * error) >>> 10;
                I <= ($signed({1'b0, ki}) * integrator) >>> 10;
                D <= ($signed({1'b0, kd}) * (error - error_last)) >>> 8;
                integrator <= integrator + error;
                state <= STATE4;
            end
            STATE4: begin
                pid <= (P + I + D);
                if ((-integrator > $signed({1'b0, pid_i_saturation})) || (integrator > $signed({1'b0, pid_i_saturation})))
                    integrator <= $signed({1'b0, pid_i_saturation});
                state <= STATE5;
            end
            STATE5: begin
                if (pid > $signed({1'b0, dac_limit})) begin
                    x00 <=  32767;
                end
                else if (-pid > $signed({1'b0, dac_limit})) begin
                    x00 <= -32767;
                end
                else begin
                    x00 <= pid  * 32768 / dac_limit;
                end
                x01 <= (pos_adc) / 2;
                x02 <= (error_last - error) / 2;
                state <= STATE6;
            end
            STATE6: begin
                bpann_loop <= bpann_loop + 1;
                task_bpnn_f((w000*x00 + w010*x01 + w020*x02)/128 + b10, x10);
                task_bpnn_f((w001*x00 + w011*x01 + w021*x02)/128 + b11, x11);
                task_bpnn_f((w002*x00 + w012*x01 + w022*x02)/128 + b12, x12);
                state <= STATE7;
            end
            STATE7: begin
                task_bpnn_f((w100*x10 + w110*x11 + w120*x12)/128 + b20, x20);
                task_bpnn_f((w101*x10 + w111*x11 + w121*x12)/128 + b21, x21);
                task_bpnn_f((w102*x10 + w112*x11 + w122*x12)/128 + b22, x22);
                state <= STATE8;
            end
            STATE8: begin
                pos_dac <= 32768 + ((x20*dac_limit)/32768);
                if (bpann_loop > 10) begin
                    state <= STATE9;
                    pos_dac <= 32768;
                    e20 <= (x20) * (32767 - x20) * (16384 - x20) / 1073741824;          // F, Oj * (1 - Oj) * (0.5 - Oj)
                    e21 <= (x21) * (32767 - x21) * (pos_target/2   - x21) / 1073741824; // P, Oj * (1 - Oj) * (T   - Oj)
                    e22 <= (x22) * (32767 - x22) * (0     - x22) / 1073741824;          // V, Oj * (1 - Oj) * (0   - Oj)
                end
                else begin
                    state <= STATE2;
                end
            end
            STATE9: begin
                e10 <= x10 * (32767 - x10) * (w100*e20 + w101*e21 + w102*e22) / 137438953472; // Oj * (1 - Oj) * Sigma(Errk * wjk)
                e11 <= x11 * (32767 - x11) * (w110*e20 + w111*e21 + w112*e22) / 137438953472; // Oj * (1 - Oj) * Sigma(Errk * wjk)
                e12 <= x12 * (32767 - x12) * (w120*e20 + w121*e21 + w122*e22) / 137438953472; // Oj * (1 - Oj) * Sigma(Errk * wjk)
                state <= STATE10;
            end
            STATE10: begin
                w000 <= w000 + ((x00*e10)/8388608); 
                w001 <= w001 + ((x00*e11)/8388608); 
                w002 <= w002 + ((x00*e12)/8388608);
                w010 <= w010 + ((x01*e10)/8388608); 
                w011 <= w011 + ((x01*e11)/8388608); 
                w012 <= w012 + ((x01*e12)/8388608);
                w020 <= w020 + ((x02*e10)/8388608); 
                w021 <= w021 + ((x02*e11)/8388608); 
                w022 <= w022 + ((x02*e12)/8388608);
                w100 <= w100 + ((x10*e20)/8388608); 
                w101 <= w101 + ((x10*e21)/8388608); 
                w102 <= w102 + ((x10*e22)/8388608);
                w110 <= w110 + ((x11*e20)/8388608); 
                w111 <= w111 + ((x11*e21)/8388608); 
                w112 <= w112 + ((x11*e22)/8388608);
                w120 <= w120 + ((x12*e20)/8388608); 
                w121 <= w121 + ((x12*e22)/8388608); 
                w122 <= w122 + ((x12*e22)/8388608);
                
                b10 <= b10 + e10; 
                b11 <= b11 + e11; 
                b12 <= b12 + e12;
                b20 <= b20 + e20; 
                b21 <= b21 + e21; 
                b22 <= b22 + e22;
                
                state <= STATE0;
            end
        endcase
    end
end

task task_bpnn_f;
    input  reg signed [15:0] x;
    output reg signed [15:0] y;
    y = 16384 + (16384 * x / (1 + (x > 0) ? x : (-x)));
endtask

endmodule