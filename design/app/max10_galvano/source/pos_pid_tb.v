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
        pos_adc = pos_adc + 30;

    initial begin
        clk = 0;
        reset = 0;
        pos_adc = 0;
        pos_adc_data_valid = 0;
        spi_new_target_valid = 0;
        pos_target = 1000;
        
        $dumpfile("pid.vcd");
        $dumpvars;

        #100 reset = 1;
        #50000 $finish;
    end
endmodule
