--
-- File            : ADS8685IF.vhd
-- Author          : qinqingwang	
-- Date            : 2017.11.1
-- Version         : 0.1
-- Abstract        : CONFIG ADS8685 AND RECV DATA
-- Modification History:
-- Date        By       Version    Change Description
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

library LatticeXP2;
use LatticeXP2.all;

entity XPOS_PID is
	port(
		 -- enter port declarations here
		 sys_rstn    : in std_logic;
		 clk_pid     : in std_logic;		--100KHz
		 
		 --PID parameter
		 Kp : in std_logic_vector(15 downto 0);		--16b有符号数表示，8b整型，8b小数，最大为127.9
		 Ki : in std_logic_vector(15 downto 0);		--将原始PID值乘以256送至此端口
		 Kd : in std_logic_vector(15 downto 0);
		 
		 --data in/out
		 pos_pre : in std_logic_vector(15 downto 0);
		 pos_adc : in std_logic_vector(15 downto 0);
		 pos_dac : out std_logic_vector(15 downto 0)
	);
end XPOS_PID;

--根据sys_rst信号送出ads_rstn和寄存器配置信息，然后才启动ad转换
--只需要将寄存器0x14设为0x01即可，其他寄存器用默认值。

ARCHITECTURE behavioral OF XPOS_PID IS

	--component declaration
	component Subtractor is
    port (
        DataA: in  std_logic_vector(15 downto 0); 
        DataB: in  std_logic_vector(15 downto 0); 
        Result: out  std_logic_vector(15 downto 0));
	end component;
	component AdderS16 is
    port (
        DataA: in  std_logic_vector(15 downto 0); 
        DataB: in  std_logic_vector(15 downto 0); 
        Result: out  std_logic_vector(15 downto 0));
	end component;
	component MultiplierS16 is
    port (
        DataA: in  std_logic_vector(15 downto 0); 
        DataB: in  std_logic_vector(15 downto 0); 
        Result: out  std_logic_vector(31 downto 0));
	end component;

	-- insert local declarations here
	signal ek        : std_logic_vector(15 downto 0);
	signal ek_d1     : std_logic_vector(15 downto 0);
	signal ek_d2     : std_logic_vector(15 downto 0);
	signal delta_e1  : std_logic_vector(15 downto 0);
	signal delta_e2  : std_logic_vector(15 downto 0);
	signal delta_e12 : std_logic_vector(15 downto 0);
	
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
		elsif rising_edge(clk_pid)then			--100ksps, 10us
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
		elsif rising_edge(clk_pid)then			--100ksps, 10us
			ek_d1          <= ek;
			ek_d2          <= ek_d1;
			pos_dac_reg_d1 <= pos_dac_reg;
		end if;
	end process;
	
	pos_dac <= pos_dac_reg;
	
	-- Generate statement
END behavioral;
