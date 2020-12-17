module tb();
    reg  clk, reset, spi_new_target_valid, pos_adc_data_valid;
    reg  [15:0] pos_adc, pos_target;
    wire [15:0] pos_dac;
    
    pos_pid pid
    (
       .sys_rstn(reset),
       .clk_pid(clk),
       
       .kp(16'd1200),
       .ki(16'd60),
       .kd(16'd48000),
       
       .dac_limit(16'd5000),
       .pid_i_saturation(24'd5000),
       .spi_new_target_valid(spi_new_target_valid),
       .pos_target(pos_target),
       .pos_adc_data_valid(pos_adc_data_valid),
       .pos_adc(pos_adc),
       .pos_dac(pos_dac)
    );

    always #5    clk = ~clk;
    always #40   pos_adc_data_valid   = ~pos_adc_data_valid;
    always #2000 spi_new_target_valid = ~spi_new_target_valid;

    always @(posedge pos_adc_data_valid)
        pos_adc = pos_adc + 200;

    initial begin
        clk = 0;
        reset = 0;
        pos_adc = 0;
        pos_adc_data_valid = 0;
        spi_new_target_valid = 0;
        pos_target = 1000;
        $dumpfile("test.vcd");
        $dumpvars;
        
        $dumpvars(0, tb.pid.w[0][0][0]);
        $dumpvars(0, tb.pid.w[0][0][1]);
        $dumpvars(0, tb.pid.w[0][0][2]);
        
        $dumpvars(0, tb.pid.w[1][0][0]);
        $dumpvars(0, tb.pid.w[1][0][1]);
        $dumpvars(0, tb.pid.w[1][0][2]);
        $dumpvars(0, tb.pid.w[1][1][0]);
        $dumpvars(0, tb.pid.w[1][1][1]);
        $dumpvars(0, tb.pid.w[1][1][2]);
        $dumpvars(0, tb.pid.w[1][2][0]);
        $dumpvars(0, tb.pid.w[1][2][1]);
        $dumpvars(0, tb.pid.w[1][2][2]);
        
        $dumpvars(0, tb.pid.x[0][0]);
        $dumpvars(0, tb.pid.x[0][1]);
        $dumpvars(0, tb.pid.x[0][2]);
        $dumpvars(0, tb.pid.x[1][0]);
        $dumpvars(0, tb.pid.x[1][1]);
        $dumpvars(0, tb.pid.x[1][2]);
        $dumpvars(0, tb.pid.x[2][0]);
        $dumpvars(0, tb.pid.x[2][1]);
        $dumpvars(0, tb.pid.x[2][2]);
        
        $dumpvars(0, tb.pid.e[1][0]);
        $dumpvars(0, tb.pid.e[1][1]);
        $dumpvars(0, tb.pid.e[1][2]);
        $dumpvars(0, tb.pid.e[2][0]);
        $dumpvars(0, tb.pid.e[2][1]);
        $dumpvars(0, tb.pid.e[2][2]);

        //$monitor($time,"dac: %d", pos_dac);
        #100 reset = 1;
        #50000 $finish;
    end
endmodule
