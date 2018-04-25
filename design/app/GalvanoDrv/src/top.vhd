--
-- File            : top.vhd
-- Author          : qinqingwang	
-- Date            : 2017.6.5
-- Version         : 0.1
-- Abstract        : galvo control
-- Modification History:
-- Date        By       Version    Change Description
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

library LatticeXP2;
use LatticeXP2.all;

entity top is
	port(
		 -- enter port declarations here
		 clk_in   : in std_logic;		--20MHz
		 cfg_done : out std_logic;
		 
		 --XY2_100 interface
		 XY_SYNC   : in std_logic;
		 XY_CLK    : in STD_LOGIC;
		 XY_X      : in std_logic;
		 XY_Y      : in std_logic;
		 XY_STATUS : out std_logic;
		 
		 --current adc interface, difference signals, ad7403
		 XIADC_CLKIN : out std_logic;
		 XIADC_MDAT  : in std_logic;
		 YIADC_CLKIN : out std_logic;
		 YIADC_MDAT  : in std_logic;
		 
		 --position adc interface, ads8615
		 XPADC_CS   : out std_logic;
		 XPADC_RST  : out std_logic;
		 XPADC_SCK  : out std_logic;
		 XPADC_SDI  : out std_logic;
		 XPADC_SDO0 : IN std_logic;
		 XPADC_SDO1 : IN std_logic;
		 XPADC_RVS  : IN std_logic;
		 YPADC_CS   : out std_logic;
		 YPADC_RST  : out std_logic;
		 YPADC_SCK  : out std_logic;
		 YPADC_SDI  : out std_logic;
		 YPADC_SDO0 : IN std_logic;
		 YPADC_SDO1 : IN std_logic;
		 YPADC_RVS  : IN std_logic;
		 
		 --DAC INTERFACE, dac7731e
		 XDAC_RST    : out std_logic;
		 XDAC_CS     : out std_logic;
		 XDAC_LDAC   : out std_logic;
		 XDAC_RSTSEL : out std_logic;
		 XDAC_SCK    : out std_logic;
		 XDAC_SDI    : out std_logic;
		 XDAC_SDO    : IN std_logic;
		 YDAC_RST    : out std_logic;
		 YDAC_CS     : out std_logic;
		 YDAC_LDAC   : out std_logic;
		 YDAC_RSTSEL : out std_logic;
		 YDAC_SCK    : out std_logic;
		 YDAC_SDI    : out std_logic;
		 YDAC_SDO    : IN std_logic;
		 
		 --Temperature interface
		 TEMP_CS   : out std_logic;
		 TEMP_CLK  : out std_logic;
		 TEMP_DATA : in std_logic;
		 
		 --uart interface
		 uart_tx1  : out std_logic;
		 uart_rx1  : in  std_logic;
		 uart_tx2  : out std_logic;
		 uart_rx2  : in  std_logic
	);
end top;

ARCHITECTURE behavioral OF top IS
	-- insert local declarations here
	component pll_module is
    port (
        CLK: in std_logic;
        CLKOP: out std_logic;
        CLKOS: out std_logic; 
        CLKOK: out std_logic; 
        LOCK: out std_logic);
	end component;

	component dec256sinc24b is
	port(
		mclk1    : in std_logic; 						-- used to clk filter, 5-20Mhz
		reset    : in std_logic; 						-- used to reset filter
		mdata1   : in std_logic; 						-- input data to be filtered
		DATA     : out std_logic_vector(15 downto 0); 	-- filtered output
		data_en  : out std_logic;
		dec_rate : in std_logic_vector(15 downto 0)
	);
	end component;
	
	component ADS8685IF is
	port(
		 -- enter port declarations here
		 sys_rstn : in std_logic;		--20MHz
		 clk_ref  : in std_logic;
		 
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
	end component;
	
	component DAC7731IF is
	port(
		 -- enter port declarations here
		 sys_rstn : in std_logic;		--20MHz
		 clk_ref  : in std_logic;
		 
		 --dac value
		 dac_data : in std_logic_vector(15 downto 0);
		 
		 --DAC7731IF interface
		 dac_csn    : out std_logic;
		 dac_rstn   : out STD_LOGIC;
		 dac_sck    : out std_logic;
		 dac_sdi    : out std_logic;
		 dac_sdo    : in std_logic;
		 dac_lr     : out std_logic;
		 ads_rstsel : out std_logic
	);
	end component;
	
	component XPOS_PID is
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
	end component;
	
	component uart is
	generic(
		width: integer := 63
	);
	port(
		rstn    : in std_logic;
		clk_50m : in std_logic;

		u_req   : in std_logic_vector(6 downto 0);
		u_ack   : out std_logic_vector(6 downto 0);
		u0_msg  : in std_logic_vector(width downto 0);
		u1_msg  : in std_logic_vector(width downto 0);
		u2_msg  : in std_logic_vector(width downto 0);
		u3_msg  : in std_logic_vector(width downto 0);
		u4_msg  : in std_logic_vector(width downto 0);
		u5_msg  : in std_logic_vector(width downto 0);
		u6_msg  : in std_logic_vector(width downto 0);
		
		regs    : out std_logic_vector(255 downto 0);
		rx      : in std_logic;
		tx      : out std_logic
	);
	end component;
	
	signal clk1, clk2, clk3  : std_logic;
	signal sys_rst, sys_rstn : std_logic;
	signal pll_locked  : std_logic;
	signal rst_dly_cnt : std_logic_vector(31 downto 0):=X"00000000";
	
	signal clk_pid     : std_logic;
	signal clk_pid_cnt : std_logic_vector(3 downto 0);
	
	-- XY signals
	signal XY_X_POS    : std_logic_vector(15 downto 0);
	signal XY_Y_POS    : std_logic_vector(15 downto 0);		
  --signal XIADC_CLKIN : std_logic;
  --signal XIADC_MDAT  : std_logic;
  --signal YIADC_CLKIN : std_logic;
  --signal YIADC_MDAT  : std_logic;

	signal XI_DATA_EN  : std_logic;
	signal YI_DATA_EN  : std_logic;
	signal XI_DATA     : std_logic_vector(15 downto 0);
	signal YI_DATA     : std_logic_vector(15 downto 0);
	
	signal xdac_data   : std_logic_vector(15 downto 0);
	signal ydac_data   : std_logic_vector(15 downto 0);
	
	signal xdvalid     : std_logic;
	signal xdout       : std_logic_vector(15 downto 0);
	signal ydvalid     : std_logic;
	signal ydout       : std_logic_vector(15 downto 0);
	                   
	signal u_req       : std_logic_vector(6 downto 0);
	signal u_ack       : std_logic_vector(6 downto 0);
	signal u0_msg      : std_logic_vector(63 downto 0);
	signal u1_msg      : std_logic_vector(63 downto 0);
	signal u2_msg      : std_logic_vector(63 downto 0);
	signal u3_msg      : std_logic_vector(63 downto 0);
	signal u4_msg      : std_logic_vector(63 downto 0);
	signal u5_msg      : std_logic_vector(63 downto 0);
	signal u6_msg      : std_logic_vector(63 downto 0);
	signal u_regs      : std_logic_vector(255 downto 0);	
	
	ATTRIBUTE keep : string;
	attribute keep of xdvalid    : signal is "true";
	attribute keep of xdout      : signal is "true";
	attribute keep of ydvalid    : signal is "true";
	attribute keep of ydout      : signal is "true";
	                             
    attribute keep of sys_rst    : signal is "true";
	attribute keep of XY_X_POS   : signal is "true";
	attribute keep of XY_Y_POS 	 : signal is "true";
	
	attribute keep of XI_DATA 	 : signal is "true";
	attribute keep of YI_DATA 	 : signal is "true";
	attribute keep of XI_DATA_EN : signal is "true";
	attribute keep of YI_DATA_EN : signal is "true";
		
	BEGIN		
	pll_inst: pll_module
    port map(
        CLK   => clk_in,
        CLKOP => clk2,				--50MHz
		CLKOS => clk1,				--20MHz
		CLKOK => clk3,				--5MHz
        LOCK  => pll_locked
	);
		
    -- reset signal, output 1 after 10s delay
	process(pll_locked, clk1)begin
		if pll_locked = '0' then
			sys_rst     <= '1';
			rst_dly_cnt <= X"00000000";
		elsif rising_edge(clk1)then
			if rst_dly_cnt < 200000000 then
				sys_rst     <= '1';
				rst_dly_cnt <= rst_dly_cnt + 1;
			else
				sys_rst     <= '0';
				rst_dly_cnt <= rst_dly_cnt;
			end if;
		end if;
	end process;
	sys_rstn <= not sys_rst;
	
	--receive xy2_100 signal
	process(XY_SYNC, XY_CLK)begin
		if XY_SYNC = '1' then
			XY_X_POS <= X"0000";
		elsif rising_edge(XY_CLK)then
			if XY_X = '1' then
				XY_X_POS <= XY_X_POS + 1;
			else
				XY_X_POS <= XY_X_POS;
			end if;
		end if;
	end process;
	process(XY_SYNC, XY_CLK)begin
		if XY_SYNC = '1' then
			XY_Y_POS <= X"0000";
		elsif rising_edge(XY_CLK)then
			if XY_Y = '1' then
				XY_Y_POS <= XY_Y_POS + 1;
			else
				XY_Y_POS <= XY_Y_POS;
			end if;
		end if;
	end process;
	XY_STATUS <= '1' when (XY_X_POS > 100 and XY_Y_POS > 100) else '0';
	
	-- XIADC
	XIADC_CLKIN <= clk1;	
  --XIADC_MDAT  <= XIADC_MDAT_dif;
	XIADC_Filter_Inst: dec256sinc24b
	port map(
		mclk1    => clk1, 		-- used to clk filter, 20MHz
		reset    => sys_rst,	-- used to reset filter
		mdata1   => XIADC_MDAT,	-- input data to be filtered
		DATA     => XI_DATA,	-- filtered output
		data_en  => XI_DATA_EN, -- data out enable
		dec_rate => X"0020"		-- DR = 32
	);
    
    -- YIADC
    YIADC_CLKIN <= clk1;
  --YIADC_MDAT  <= YIADC_MDAT_dif;  
	YIADC_Filter_Inst: dec256sinc24b
	port map(
		mclk1    => clk1, 		-- used to clk filter, 20MHz
		reset    => sys_rst,	-- used to reset filter
		mdata1   => YIADC_MDAT,	-- input data to be filtered
		DATA     => YI_DATA,	-- filtered output
		data_en  => YI_DATA_EN, -- data out enable
		dec_rate => X"0020"     -- DR = 32
	);
	
	-- XPADC
	XPADC_inst: ADS8685IF
	port map(
		 -- enter port declarations here
		 sys_rstn => sys_rstn,
		 clk_ref  => clk1,
		 
		 --ads8685 interface
		 convst_csn => XPADC_CS,
		 ads_rstn   => XPADC_RST,
		 ads_sclk   => XPADC_SCK,
		 ads_sdi    => XPADC_SDI,
		 ads_sdo0   => XPADC_SDO0,
		 ads_sdo1   => XPADC_SDO1,
		 ads_rvs    => XPADC_RVS,
		 
		 dvalid     => xdvalid,
		 dout       => xdout
	);
    
	-- YPADC
	YPADC_inst: ADS8685IF
	port map(
		 -- enter port declarations here
		 sys_rstn => sys_rstn,
		 clk_ref  => clk1,
		 
		 --ads8685 interface
		 convst_csn => YPADC_CS,
		 ads_rstn   => YPADC_RST,
		 ads_sclk   => YPADC_SCK,
		 ads_sdi    => YPADC_SDI,
		 ads_sdo0   => YPADC_SDO0,
		 ads_sdo1   => YPADC_SDO1,
		 ads_rvs    => YPADC_RVS,
		 
		 dvalid => ydvalid,
		 dout   => ydout
	);
	
	-- XDAC
	XDAC_INST: DAC7731IF
	port map(
		 sys_rstn => sys_rstn,
		 clk_ref  => clk1,
		 
	     --dac value	     
		 dac_data => xdac_data,
		 
		 --DAC7731IF interface
		 dac_csn    => XDAC_CS,
		 dac_rstn   => XDAC_RST,
		 dac_sck    => XDAC_SCK,
		 dac_sdi    => XDAC_SDI,
		 dac_sdo    => XDAC_SDO,
		 dac_lr     => XDAC_LDAC,
		 ads_rstsel => XDAC_RSTSEL
	);

    -- YDAC
	YDAC_INST: DAC7731IF
	port map(
		 sys_rstn => sys_rstn,
		 clk_ref  => clk1,
		 
		 --dac value
		 dac_data => X"aabb",      -- ydac_data,
		 
		 --DAC7731IF interface
		 dac_csn    => YDAC_CS,
		 dac_rstn   => YDAC_RST,
		 dac_sck    => YDAC_SCK,
		 dac_sdi    => YDAC_SDI,
		 dac_sdo    => YDAC_SDO,
		 dac_lr     => YDAC_LDAC,
		 ads_rstsel => YDAC_RSTSEL
	);
	
	xpos_pid_inst: XPOS_PID
	port map(
		 -- enter port declarations here
		 sys_rstn => sys_rstn,
		 clk_pid  => clk_pid,
		 
		 --PID parameter
		 Kp       => X"3200",		--Kp = 50*256
		 Ki       => X"0500",		--Ki = 5*256
		 Kd       => X"0300",		--Kd = 3*256
		 
		 --data in/out
		 pos_pre  => X"0000",
		 pos_adc  => xdout,
		 pos_dac  => xdac_data
	);

    -- UART
	uart_inst: uart
	generic map(width => 63)
	port map(
		rstn    => sys_rstn,
		clk_50m => clk2,            -- fifo clock (50MHz), 50MHz/434 = 115.207khz

		u_req   => u_req,     		-- request to send msg when u_req is 0
		u_ack   => u_ack,           -- clear u_req when u_ack is 1
		u0_msg  => u0_msg,
		u1_msg  => u1_msg,
		u2_msg  => u2_msg,
		u3_msg  => u3_msg,
		u4_msg  => u4_msg,
		u5_msg  => u5_msg,
		u6_msg  => u6_msg,
		
		regs    => u_regs,
		rx      => uart_rx1,
		tx      => uart_tx1
	);
	
    -- connect xpadc to uart
	process(clk2, sys_rstn) begin
		if sys_rstn = '0' then			
			u_req(0) <= '0';
		elsif rising_edge(clk2) then
            if u_ack(0) = '1' then
                u_req(0) <= '0';
            end if;
            if xdvalid = '1' then
                if u_req(0) = '0' then
                    u_req(0) <= '1';
                    u0_msg   <= X"000000" & xdout & X"000000";
                end if;
			end if;
		end if;
	end process;    
	
	-- connect xiadc to uart
	process(clk2, sys_rstn) begin
		if sys_rstn = '0' then			
			u_req(1) <= '0';
		elsif rising_edge(clk2) then
            if u_ack(1) = '1' then
                u_req(1) <= '0';
            end if;
            if XI_DATA_EN = '1' then
                if u_req(1) = '0' then
                    u_req(1) <= '1';
                    u1_msg   <= X"000000" & XI_DATA & X"000000";
                end if;
			end if;
		end if;
	end process;
	
	--- led
	cfg_done  <= sys_rstn;
	
	-- temperature
	TEMP_CS   <= TEMP_DATA;
	TEMP_CLK  <= CLK1;

END behavioral;
