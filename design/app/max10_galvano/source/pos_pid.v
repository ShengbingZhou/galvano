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

reg signed [47:0] P, I, D, error, error_last, integrator;
reg signed [47:0] pid;
wire [15:0] limit0;
wire [15:0] limit1;

assign limit0 = 32768 - dac_limit;
assign limit1 = 32768 + dac_limit;

localparam IDLE = 1'b0;
localparam RUN  = 1'b1;
reg state;
always @(negedge sys_rstn or posedge clk_pid) begin
    if (!sys_rstn) begin
        state <= IDLE;
        error <= 0;
        error_last <= 0;
        integrator <= 0;
        pid <= 0;
        pos_dac <= 32768;
    end
    else if (clk_pid) begin
        error <= $signed({1'b0, pos_target}) - $signed({1'b0, pos_adc});
        error_last <= error;
        case(state)
            IDLE: begin // get first position
                state <= RUN;
            end
            RUN: begin
                P <= ($signed({1'b0, kp}) * error) >>> 10;
                I <= ($signed({1'b0, ki}) * integrator) >>> 10;
                
                D <= ($signed({1'b0, kd}) * (error - error_last)) >>> 10;
                pid <= (P + I + D);
                
                //D <= (($signed(kd) * (error - error_last)) >>> 10) * ((P + I));
                //if((error < 400) && (error > -400))
                //    pid <= (P + I + D);
                //else
                //    pid <= (P + I);

                if ((-(integrator + error) < $signed({1'b0, pid_i_saturation})) && 
                    ( (integrator + error) < $signed({1'b0, pid_i_saturation})))
                    integrator <= integrator + error;
                
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
        endcase
    end
end

endmodule
