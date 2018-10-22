[ActiveSupport MAP]
Device = LFXP2-8E;
Package = TQFP144;
Performance = 5;
LUTS_avail = 8352;
LUTS_used = 1204;
FF_avail = 6364;
FF_used = 946;
INPUT_LVCMOS33 = 4;
OUTPUT_LVCMOS33 = 31;
IO_avail = 100;
IO_used = 35;
PLL_avail = 2;
PLL_used = 1;
EBR_avail = 12;
EBR_used = 2;
;
; start of DSP statistics
MULT36X36B = 0;
MULT18X18B = 3;
MULT18X18MACB = 0;
MULT18X18ADDSUBB = 0;
MULT18X18ADDSUBSUMB = 0;
MULT9X9B = 0;
MULT9X9ADDSUBB = 0;
MULT9X9ADDSUBSUMB = 0;
DSP_avail = 32;
DSP_used = 6;
; end of DSP statistics
;
; Begin EBR Section
Instance_Name = uart_u1/u1/pdp_ram_0_0_1;
Type = PDPW16KB;
Width = 36;
Depth_R = 512;
Depth_W = 512;
REGMODE = NOREG;
RESETMODE = ASYNC;
GSR = DISABLED;
MEM_INIT_FILE = ;
MEM_LPC_FILE = uart_fifo.lpc;
Instance_Name = uart_u1/u1/pdp_ram_0_1_0;
Type = PDPW16KB;
Width = 28;
Depth_R = 512;
Depth_W = 512;
REGMODE = NOREG;
RESETMODE = ASYNC;
GSR = DISABLED;
MEM_INIT_FILE = ;
MEM_LPC_FILE = uart_fifo.lpc;
; End EBR Section
; Begin PLL Section
Instance_Name = pll_u1/PLLInst_0;
Type = EPLLD;
Output_Clock(P)_Actual_Frequency = 50.0000;
CLKOP_BYPASS = DISABLED;
CLKOS_BYPASS = ENABLED;
CLKOK_BYPASS = DISABLED;
CLKI_Divider = 2;
CLKFB_Divider = 5;
CLKOP_Divider = 16;
CLKOK_Divider = 10;
CLKOS_Phase_Shift_(degree) = 0.0;
CLKOS_Duty_Cycle_(*1/16) = 8;
Phase_Duty_Control = STATIC;
; End PLL Section
