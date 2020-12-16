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
reg  signed [ 7:0] w[2:0][2:0][2:0];
reg  signed [15:0] b[3:1][2:0];
reg  signed [15:0] e[3:1][2:0];
reg  signed [15:0] x[3:0][2:0];
reg          [7:0] bpann_loop;
reg  signed  [7:0] i;
reg          [7:0] j;

localparam IDLE = 0;
localparam STATE1 = 1;
localparam STATE2 = 2;
localparam STATE3 = 3;
localparam STATE4 = 4;
localparam STATE5 = 5;
localparam STATE6 = 6;
localparam STATE7 = 7;
localparam STATE8 = 8;
localparam STATE9 = 9;
reg [3:0] state;
always @(negedge sys_rstn or posedge clk_pid) begin
    if (!sys_rstn) begin
        state <= STATE1;
        error <= 0;
        error_last <= 0;
        integrator <= 0;
        pid <= 0;
        pos_dac <= 32768;
        bpann_loop <= 0;
        for (i = 0; i < 3; i = i + 1) begin
            for (j = 0; j < 3; j = j + 1) begin
                task_bpnn_b(16384, w[i][j][0]);
                task_bpnn_b(16384, w[i][j][1]);
                task_bpnn_b(16384, w[i][j][2]);
                task_bpnn_b(0,     b[i+1][j]);
            end
        end
    end
    else if (clk_pid) begin
        spi_new_target_valid_dly <= {spi_new_target_valid_dly[0], spi_new_target_valid};
        pos_adc_data_valid_dly   <= {pos_adc_data_valid_dly[0],   pos_adc_data_valid};
        case(state)
            IDLE: begin
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
                bpann_loop <= 0;
                state <= STATE6;
            end
            STATE6: begin
                bpann_loop <= bpann_loop + 1;
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        task_bpnn_f(((w[i][0][j] * x[i][0] + w[i][1][j] * x[i][1] + w[i][2][j] * x[i][2]) + b[i + 1][0]) / 32768, x[i + 1][j]);
                    end
                end
                state <= STATE7;
            end
            STATE7: begin
                pos_dac <= 32768 + ($unsigned(x[3][0]) * dac_limit / 32768);
                if (bpann_loop > 100) begin
                    state <= STATE8;
                    pos_dac <= 32768;
                    e[3][0] <= (x[3][0]) * (32767 - x[3][0]) * (16384 - x[3][0]);                             // F, Oj * (1 - Oj) * (0.5 - Oj)
                    e[3][1] <= (x[3][1]) * (32767 - x[3][1]) * ($signed({1'b0, pos_target[15:1]}) - x[3][1]); // P, Oj * (1 - Oj) * (T   - Oj)
                    e[3][2] <= (x[3][2]) * (32767 - x[3][2]) * (0 - x[3][2]);                                 // V, Oj * (1 - Oj) * (0   - Oj)
                end
                state <= STATE1;
            end
            STATE8: begin
                for (i = 2; i >= 1; i = i - 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        task_bpnn_b(x[i][j] * (32767 - x[i][j]) * (w[i][j][0] * e[i+1][0] + w[i][j][1] * e[i+1][1] + w[i][j][2] * e[i+1][2]), e[i][j]); // Oj * (1 - Oj) * Sigma(Errk * wjk)
                    end
                end
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        task_bpnn_b_w((x[i][j]) * e[i+1][0], w[i][j][0]);
                        task_bpnn_b_w((x[i][j]) * e[i+1][1], w[i][j][1]);
                        task_bpnn_b_w((x[i][j]) * e[i+1][2], w[i][j][2]);
                        task_bpnn_b_w(e[i+1][j], b[i+1][j]);
                    end
                end
                state <= STATE9;
            end
            STATE9: begin
                state <= IDLE;
            end
        endcase
    end
end

task task_bpnn_f;
    input  signed [15:0] x;
    output signed [15:0] y;
    y = 16384 + 16384 * x / (1 + ((x > 0) ? x : -x));
endtask

task task_bpnn_b;
    input  signed [15:0] x;
    output signed [15:0] y;
    y = x;
endtask 

task task_bpnn_b_w;
    input  signed [15:0] x;
    output signed [15:0] y;
    y = y + x;
endtask 

endmodule
