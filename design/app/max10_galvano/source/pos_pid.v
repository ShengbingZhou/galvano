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
reg  signed [ 7:0] w[1:0][2:0][2:0];
reg  signed [15:0] b[2:1][2:0];
reg  signed [15:0] e[2:1][2:0];
reg  signed [15:0] x[2:0][2:0];
reg          [7:0] bpann_loop;
reg  signed  [7:0] i;
reg          [7:0] j;

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
        for (i = 0; i < 2; i = i + 1) begin
            for (j = 0; j < 3; j = j + 1) begin
                w[i][j][0] <= 126;
                w[i][j][1] <= 126;
                w[i][j][2] <= 126;
                b[i+1][j]  <= 0;
            end
        end
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
                    x[0][0] <= limit1 / 2;
                end
                else if (-pid > $signed({1'b0, dac_limit})) begin
                    x[0][0] <= limit0 / 2;
                end
                else begin
                    x[0][0] <= $unsigned($signed(32768) + pid) / 2;
                end
                x[0][1] <= (pos_adc) / 2;
                x[0][2] <= (error_last - error) / 2;
                state <= STATE6;
            end
            STATE6: begin
                bpann_loop <= bpann_loop + 1;
                for (i = 0; i < 2; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        task_bpnn_f(((w[i][0][j] * x[i][0] + w[i][1][j] * x[i][1] + w[i][2][j] * x[i][2]) + b[i + 1][0]) >>> 7, x[i + 1][j]);
                    end
                end
                state <= STATE7;
            end
            STATE7: begin
                pos_dac <= 32768 + (($unsigned(x[2][0]) * dac_limit) >>> 15);
                if (bpann_loop > 10) begin
                    state <= STATE8;
                    pos_dac <= 32768;
                    e[2][0] <= (x[2][0]) * (32767 - x[2][0]) * (16384 - x[2][0]) >>> 30;                             // F, Oj * (1 - Oj) * (0.5 - Oj)
                    e[2][1] <= (x[2][1]) * (32767 - x[2][1]) * ($signed({1'b0, pos_target[15:1]}) - x[2][1]) >>> 30; // P, Oj * (1 - Oj) * (T   - Oj)
                    e[2][2] <= (x[2][2]) * (32767 - x[2][2]) * (0 - x[2][2]) >>> 30;                                 // V, Oj * (1 - Oj) * (0   - Oj)
                end
                else begin
                    state <= STATE2;
                end
            end
            STATE8: begin
                for (j = 0; j < 3; j = j + 1) begin
                    e[1][j] <= x[1][j] * (32767 - x[1][j]) * (w[1][j][0] * e[2][0] + w[1][j][1] * e[2][1] + w[1][j][2] * e[2][2]) >>> 22; // Oj * (1 - Oj) * Sigma(Errk * wjk)
                end
                state <= STATE9;
            end
            STATE9: begin
                for (i = 0; i < 2; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        w[i][j][0] <= w[i][j][0] + (((x[i][j]) * e[i+1][0]) >>> 15);
                        w[i][j][1] <= w[i][j][1] + (((x[i][j]) * e[i+1][1]) >>> 15);
                        w[i][j][2] <= w[i][j][2] + (((x[i][j]) * e[i+1][2]) >>> 15);
                        b[i+1][j]  <= e[i+1][j];
                    end
                end
                state <= STATE0;
            end
        endcase
    end
end

task task_bpnn_f;
    input  signed [15:0] x;
    output signed [15:0] y;
    y = 16384 + 16384 * x / (1 + ((x > 0) ? x : -x));
endtask

endmodule