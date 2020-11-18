module pos_pid
(
    input  wire        sys_rstn,
    input  wire        clk_pid,
    
    input  wire [15:0] kp,
    input  wire [15:0] ki,
    input  wire [15:0] kd,
    
    input  wire [15:0] dac_limit,
    input  wire [23:0] pid_i_saturation,
    input  wire [15:0] pos_target,
    input  wire [15:0] pos_adc,
    output reg  [15:0] pos_dac
);

reg signed [31:0] P, I, D, error, integrator, derivator;
reg signed [31:0] pid;
wire [15:0] limit0;
wire [15:0] limit1;

assign limit0 = 32768 - dac_limit;
assign limit1 = 32768 + dac_limit;

always @(negedge sys_rstn or posedge clk_pid) begin
    if (!sys_rstn) begin
        error <= 0;
        derivator <= 0;
        integrator <= 0;
        pid <= 0;
        pos_dac <= 32768;
    end
    else if (clk_pid) begin
        P <= ($signed(kp) * error) >>> 10;
        I <= ($signed(ki) * integrator) >>> 10;
        D <= ($signed(kd) * (error - derivator)) >>> 10;
        pid <= (P + I + D);

        error <= $signed({1'b0, pos_target}) - $signed({1'b0, pos_adc});
        if ((-(integrator + error) < $signed({1'b0, pid_i_saturation})) && 
            ( (integrator + error) < $signed({1'b0, pid_i_saturation})))
            integrator <= integrator + error;
        derivator <= error;
        
        if (pid > $signed({1'b0, dac_limit})) begin
            pos_dac <= limit1;
        end
        else if (-pid > $signed({1'b0, dac_limit})) begin
            pos_dac <= limit0;
        end
        else begin
            pos_dac <= $unsigned($signed(32768) + pid);
        end
    end
end

endmodule
