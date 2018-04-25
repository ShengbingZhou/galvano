--
-- File            : DAC7731IF.vhd
-- Author          : qinqingwang	
-- Date            : 2017.11.1
-- Version         : 0.1
-- Abstract        : RECV DAC7731 DATA
-- Modification History:
-- Date        By       Version    Change Description
-- Vout range: -10V ~ +10V

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

library LatticeXP2;
use LatticeXP2.all;


entity DAC7731IF is
	port(
		 -- enter port declarations here
		 sys_rstn : in std_logic;		--20MHz
		 clk_ref  : in std_logic;
		 
		 --dac value
		 dac_data : in std_logic_vector(15 downto 0);
		 
		 --DAC7731IF interface
		 dac_csn    : out std_logic;
		 dac_rstn   : out STD_LOGIC;
		 dac_sck    : out std_logic;	--max 50ns=20Mhz, here set 10Mhz
		 dac_sdi    : out std_logic;
		 dac_sdo    : in std_logic;		--no use
		 dac_lr     : out std_logic;
		 ads_rstsel : out std_logic
	);
end DAC7731IF;

ARCHITECTURE behavioral OF DAC7731IF IS
	-- insert local declarations here
	signal daclk_reg  : std_logic;
	signal csn_reg    : std_logic;
	signal csn_reg_d1 : std_logic;
	signal csn_reg_d2 : std_logic;
	signal lr_reg     : std_logic;
	signal bit_cnt    : std_logic_vector(3 downto 0);
	signal refclk_cnt : std_logic_vector(1 downto 0);
	signal data_reg   : std_logic_vector(15 downto 0);
	
	ATTRIBUTE keep : string;
    --attribute keep of tmp : signal is "true";
	
	BEGIN
	-- insert synthesizable code here
	
	--连续输出SDI，应考虑干扰问题，是否会影响时钟个数
	
	--Gen DACLK = clk_ref/4
	process(sys_rstn, clk_ref)begin
		if sys_rstn = '0' then
			daclk_reg  <= '0';
			refclk_cnt <= "00";
		elsif rising_edge(clk_ref)then
			if refclk_cnt<2 then
				refclk_cnt <= refclk_cnt + 1;
				daclk_reg  <= '0';
			else
				refclk_cnt <= refclk_cnt + 1;
				daclk_reg  <= '1';
			end if;
		end if;
	end process;
	
	process(sys_rstn, clk_ref)begin		--Gen CS#
		if sys_rstn = '0' then
			csn_reg    <= '1';
			csn_reg_d1 <= '1';
			csn_reg_d2 <= '1';
		elsif rising_edge(clk_ref)then
			csn_reg_d1 <= csn_reg;
			csn_reg_d2 <= csn_reg_d1;
			if refclk_cnt=3 then
				csn_reg <= '0';
			else
				csn_reg <= csn_reg;
			end if;
		end if;
	end process;
	
	--output dac
	process(sys_rstn, clk_ref)begin
		if sys_rstn='0' or csn_reg_d2='1' then
			lr_reg   <= '1';
			bit_cnt  <= X"0";
			data_reg <= X"8000";
		elsif rising_edge(clk_ref)then
			if bit_cnt<15 then
				if refclk_cnt=1 then
					bit_cnt  <= bit_cnt + 1;
					data_reg <= data_reg(14 downto 0) & data_reg(15);
				end if;
				lr_reg <= '1';
			else
				if refclk_cnt=1 then
					bit_cnt  <= bit_cnt + 1;
					data_reg <= dac_data;
					lr_reg <= '1';
				elsif refclk_cnt=3 then
					lr_reg <= '0';
				else
					lr_reg <= '1';
				end if;
			end if;
		end if;
	end process;
	
	dac_rstn   <= sys_rstn;
	ads_rstsel <= '1';		--output mid-dac when reset
	dac_csn    <= csn_reg;
	dac_sck    <= daclk_reg;
	dac_sdi    <= data_reg(15);
	dac_lr     <= lr_reg;
	
	-- Generate statement
END behavioral;
