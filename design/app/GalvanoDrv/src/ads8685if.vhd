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

entity ADS8685IF is
	port(
		 -- enter port declarations here
		 sys_rstn    : in std_logic;
		 clk_ref     : in std_logic;		--20MHz
		 
		 --ads8685 interface
		 convst_csn  : out std_logic;
		 ads_rstn    : out STD_LOGIC;
		 ads_sclk    : out std_logic;
		 ads_sdi     : out std_logic;
		 ads_sdo0    : in std_logic;
		 ads_sdo1    : in std_logic;
		 ads_rvs     : in std_logic;
		 
		 --data out
		 dvalid : out std_logic;
		 dout   : out std_logic_vector(15 downto 0)
	);
end ADS8685IF;

--根据sys_rst信号送出ads_rstn和寄存器配置信息，然后才启动ad转换
--只需要将寄存器0x14设为0x01即可，其他寄存器用默认值。

ARCHITECTURE behavioral OF ADS8685IF IS
	-- insert local declarations here
	signal sys_rstn_d1 : std_logic;
	signal sys_rstn_d2 : std_logic;
	signal sys_rstn_d3 : std_logic;
	signal conv_cfg 	: std_logic;			--在时钟下降沿配置寄存器，SDI在下降沿改变
	signal conv_cfg2	: std_logic;
	signal reg_cfg_done : std_logic:='0';		--寄存器配置完毕信号，启动采集
	signal cfg_reg      : std_logic_vector(31 downto 0);
	signal cfg_reg_d1   : std_logic_vector(31 downto 0);
	signal cfg_reg08    : std_logic_vector(31 downto 0):=X"D0080000";
	signal cfg_reg0C    : std_logic_vector(31 downto 0):=X"D00C0000";
	signal cfg_reg10    : std_logic_vector(31 downto 0):=X"D0100000";
	--signal cfg_reg14    : std_logic_vector(31 downto 0):=X"C8100000";
	signal cfg_reg14    : std_logic_vector(31 downto 0):=X"D0140001";
	signal reg_cfg_cnt  : std_logic_vector(3 downto 0);
	
	signal sck_cnt      : std_logic_vector(7 downto 0);
	signal sckcfg_cnt   : std_logic_vector(7 downto 0);
	signal recv_reg     : std_logic_vector(31 downto 0);
	signal conv_reg, conv_reg2 : std_logic;
	signal dvalid_reg   : std_logic;
	signal dout_reg     : std_logic_vector(15 downto 0);
	signal ads_rvs_reg  : std_logic;
	signal conv_clken   : std_logic;
	
	ATTRIBUTE keep : string;
    attribute keep of dvalid_reg : signal is "true";
	attribute keep of dout_reg : signal is "true";
	attribute keep of ads_rvs_reg : signal is "true";
	
	BEGIN
	-- insert synthesizable code here
	ads_rstn <= '1';--sys_rstn;
	process(clk_ref)begin
		if rising_edge(clk_ref)then
			sys_rstn_d1 <= sys_rstn;
			sys_rstn_d2 <= sys_rstn_d1;
			sys_rstn_d3 <= sys_rstn_d2;
		end if;
	end process;
	
	process(sys_rstn, clk_ref)begin
		if sys_rstn_d2 = '0' then
			sckcfg_cnt   <= X"00";
			cfg_reg      <= cfg_reg08;			--cfg_reg08;
			conv_cfg     <= '1';
			conv_cfg2    <= '1';
			reg_cfg_cnt  <= X"0";
			reg_cfg_done <= '0';
			cfg_reg_d1   <= X"00000000";
		elsif falling_edge(clk_ref)then			--500ksps, 2us
			cfg_reg_d1 <= cfg_reg;
			if sckcfg_cnt<48 then
				sckcfg_cnt  <= sckcfg_cnt + 1;
				reg_cfg_cnt <= reg_cfg_cnt;
				
				if sckcfg_cnt=0 then
					conv_cfg  <= '0';
					conv_cfg2 <= '1';
					cfg_reg   <= cfg_reg;
				elsif sckcfg_cnt<33 then
					conv_cfg  <= '0';
					conv_cfg2 <= '0';
					cfg_reg   <= cfg_reg(30 downto 0) & cfg_reg(31);		--left shift
				elsif sckcfg_cnt<34 then
					conv_cfg  <= '0';
					conv_cfg2 <= '1';
					cfg_reg   <= cfg_reg;
				else
					conv_cfg  <= '1';
					conv_cfg2 <= '1';
					cfg_reg   <= cfg_reg;
				end if;
			else
				sckcfg_cnt <= X"00";
				conv_cfg   <= '1';
				conv_cfg2  <= '1';
				if reg_cfg_cnt=0 then
					reg_cfg_cnt  <= reg_cfg_cnt + 1;
					reg_cfg_done <= '0';
					cfg_reg      <= cfg_reg0C;			--cfg_reg0C;
				elsif reg_cfg_cnt=1 then
					reg_cfg_cnt  <= reg_cfg_cnt + 1;
					reg_cfg_done <= '0';
					cfg_reg      <= cfg_reg10;			--cfg_reg10;
				elsif reg_cfg_cnt=2 then
					reg_cfg_cnt  <= reg_cfg_cnt + 1;
					reg_cfg_done <= '0';
					cfg_reg      <= cfg_reg14;			--cfg_reg14;
				else
					reg_cfg_cnt  <= reg_cfg_cnt;
					reg_cfg_done <= '1';
					cfg_reg      <= X"00000000";		--NOP command
				end if;
				
			end if;
		end if;
	end process;
	
	process(sys_rstn, clk_ref)begin
		if sys_rstn_d2='0' or reg_cfg_done='0' then
			sck_cnt      <= X"00";
			conv_reg     <= '1';
			dvalid_reg   <= '0';
			dout_reg     <= X"0000";
			conv_reg2    <= '1';
		elsif rising_edge(clk_ref)then			--500ksps, 2us
			if sck_cnt<48 then
				sck_cnt     <= sck_cnt + 1;
				dvalid_reg  <= '0';
				dout_reg    <= X"0000";
				
				if sck_cnt=0 then
					conv_reg  <= '0';
					conv_reg2 <= '1';
					recv_reg  <= recv_reg;
				elsif sck_cnt<33 then
					conv_reg  <= '0';
					conv_reg2 <= '0';
					recv_reg  <= recv_reg(30 downto 0) & ads_sdo0;
				else
					conv_reg  <= '1';
					conv_reg2 <= '1';
					recv_reg  <= recv_reg;
				end if;
			else
				sck_cnt   <= X"00";
				conv_reg  <= '1';
				conv_reg2 <= '1';
				
				--输出有效信号和接收数据
				dvalid_reg <= '1';
				dout_reg   <= recv_reg(31 downto 16);
			end if;
		end if;
	end process;
	ads_sdi    <= cfg_reg_d1(31);					--先输出高位
	ads_sclk   <= clk_ref when conv_clken='0' and sys_rstn_d3='1' else '0';
	conv_clken <= conv_cfg2 when reg_cfg_done='0' else conv_reg2;
	convst_csn <= conv_cfg when reg_cfg_done='0' else conv_reg;
	
	dvalid <= dvalid_reg;
	dout   <= dout_reg;
	
	ads_rvs_reg <= ads_rvs;
	
	-- Generate statement
END behavioral;
