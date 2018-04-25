module 
{         
	input  wire sys_rstn,
	input  wire clk_pid,
         
	input  wire [31:0] kp,
	input  wire [31:0] ki,
	input  wire [31:0] kd,
    
	input  wire [15:0] pos_pre,
	input  wire [15:0] pos_adc,
	output reg  [15:0] pos_dac
};

int ek, ek_d1, ek_d2, delta_e1, delta_e2, delta_e12;
    
    signal mp_delta_e1         : std_logic_vector(31 downto 0);
    signal mp_delta_e1_div256  : std_logic_vector(15 downto 0);
    signal mi_e                : std_logic_vector(31 downto 0);
    signal mi_e_div256         : std_logic_vector(15 downto 0);
    signal md_delta_e12        : std_logic_vector(31 downto 0);
    signal md_delta_e12_div256 : std_logic_vector(15 downto 0);
    
    signal sum1   : std_logic_vector(15 downto 0);
    signal sum2   : std_logic_vector(15 downto 0);
    signal sumall : std_logic_vector(15 downto 0);
    
    signal pos_dac_reg    : std_logic_vector(15 downto 0);
    signal pos_dac_reg_d1 : std_logic_vector(15 downto 0);
    signal pos_pre_reg    : std_logic_vector(15 downto 0);
    signal pos_adc_reg    : std_logic_vector(15 downto 0);
    
    ATTRIBUTE keep : string;
    attribute keep of ek : signal is "true";
    --attribute keep of dout_reg : signal is "true";
    --attribute keep of ads_rvs_reg : signal is "true";
    
    BEGIN
    -- insert synthesizable code here
    
    process(sys_rstn, clk_pid)begin
        if sys_rstn = '0' then
            pos_pre_reg <= X"0000";
            pos_adc_reg <= X"0000";
        elsif rising_edge(clk_pid)then          --100ksps, 10us
            pos_pre_reg <= pos_pre;
            pos_adc_reg <= pos_adc;
        end if;
    end process;
    
    ek_inst: Subtractor
    port map(
        DataA  => pos_pre_reg,
        DataB  => pos_adc_reg,
        Result => ek
    );
    delta_e1_inst: Subtractor
    port map(
        DataA  => ek,
        DataB  => ek_d1,
        Result => delta_e1
    );
    delta_e2_inst: Subtractor
    port map(
        DataA  => ek_d2,
        DataB  => ek_d1,
        Result => delta_e2
    );
    delta_e12_inst: AdderS16
    port map(
        DataA  => delta_e1,
        DataB  => delta_e2,
        Result => delta_e12
    );
    
    Mp_delta_e1_inst: MultiplierS16
    port map(
        DataA  => Kp,
        DataB  => delta_e1,
        Result => mp_delta_e1
    );
    Mi_e_inst: MultiplierS16
    port map(
        DataA  => Ki,
        DataB  => ek,
        Result => mi_e
    );
    Md_delta_e12_inst: MultiplierS16
    port map(
        DataA  => Kd,
        DataB  => ek,
        Result => md_delta_e12
    );
    
    mp_delta_e1_div256  <= mp_delta_e1(31 downto 16);
    mi_e_div256         <= mi_e(31 downto 16);
    md_delta_e12_div256 <= md_delta_e12(31 downto 16);
    
    sum1_inst: AdderS16
    port map(
        DataA  => pos_dac_reg_d1,
        DataB  => mp_delta_e1_div256,
        Result => sum1
    );
    sum2_inst: AdderS16
    port map(
        DataA  => mi_e_div256,
        DataB  => md_delta_e12_div256,
        Result => sum2
    );
    sumall_inst: AdderS16
    port map(
        DataA  => sum1,
        DataB  => sum2,
        Result => pos_dac_reg
    );

    process(sys_rstn, clk_pid)begin
        if sys_rstn = '0' then
            ek_d1          <= X"0000";
            ek_d2          <= X"0000";
            pos_dac_reg_d1 <= X"0000";
        elsif rising_edge(clk_pid)then          --100ksps, 10us
            ek_d1          <= ek;
            ek_d2          <= ek_d1;
            pos_dac_reg_d1 <= pos_dac_reg;
        end if;
    end process;
    
    pos_dac <= pos_dac_reg;

endmodule
