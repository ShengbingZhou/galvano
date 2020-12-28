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
       .kd(16'd1200),
       
       .dac_limit(16'd5000),
       .pid_i_saturation(24'd5000),
       .pos_target(pos_target),
       .pos_adc(pos_adc),
       .pos_dac(pos_dac)
    );

    always #5  clk = ~clk;
    always #10 pos_adc = pos_adc + 100;

    initial begin
        clk = 0;
        reset = 0;
        pos_adc = 0;
        pos_adc_data_valid = 0;
        spi_new_target_valid = 0;
        pos_target = 10000;
        
        $dumpfile("pid.vcd");
        $dumpvars;

        #100 reset = 1;
        #50000 $finish;
    end
endmodule
