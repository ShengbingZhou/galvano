// @file  : uart module, including arbitrator
// @author: Shengbing Zhou
// @date  : 2017/10/6 

module uart
#(
    parameter width = 63             // 64bits message (each message is 8bytes)
)
(
    input  wire             rstn,
    input  wire             clk_50m,
           
	input  wire [    3 : 0] u_req,   // request to send msg when u_ack is 1'b1
    output reg  [    3 : 0] u_ack,
	input  wire [width : 0] u0_msg,
	input  wire [width : 0] u1_msg,
	input  wire [width : 0] u2_msg,
	input  wire [width : 0] u3_msg,

    output reg  [  255 : 0] regs,
        
    input  wire             rx,
    output reg              tx
);

// fifo signals
reg  [width : 0] msg;
reg              wr;
reg              rd;
wire             empty;
wire             full;
wire [width : 0] data;

// interface fifo
uart_fifo u1
(
    .Data(msg),
    .Clock(clk_50m),
    .WrEn(wr),
    .RdEn(rd),
	.Reset(~rstn),
    .Q(data),
    .Empty(empty),    
    .Full(full)
);

// clock divider: 50000KHz / 434 = 115.207KHz   
localparam DIV = 434;

// arbitrator
localparam U_IDLE   = 0;
localparam U_WRITE  = 1;
localparam U_WRDONE = 2;
reg [3:0]  u_state;

reg       rx_req;
reg       rx_ack;
reg [width : 0] rx_msg;

reg [39 : 0] test_data;
wire         test_en;
assign       test_en = 1'b0;
always @ (negedge rstn or posedge clk_50m) begin
    if (!rstn) begin
        u_state <= U_IDLE;
        wr      <= 1'b0;
        rx_ack  <= 1'b0;
        u_ack   <= 7'h00;
    end
    else begin    
        case(u_state)
            U_IDLE: begin
                if (rx_req == 1'b1) begin
                    u_state   <= U_WRITE;
                    msg       <= {rx_msg[63:24], 8'hfe, 16'h5aa5};
                    rx_ack    <= 1'b1;
                end
                else if (u_req > 0) begin
                    u_state <= U_WRITE;
                    if (u_req[0] > 0) begin
                        msg      <= {u0_msg[63:24], 8'h00, 16'h5aa5};
                        u_ack[0] <= 1'b1;
                    end
                    else if (u_req[1] > 0) begin
                        msg      <= {u1_msg[63:24], 8'h01, 16'h5aa5};
                        u_ack[1] <= 1'b1;
                    end
                    else if (u_req[2] > 0) begin
                        msg      <= {u2_msg[63:24], 8'h02, 16'h5aa5};
                        u_ack[2] <= 1'b1;
                    end
                    else begin
                        msg      <= {u3_msg[63:24], 8'h06, 16'h5aa5};
                        u_ack[3] <= 1'b1;
                    end
                end
                else if (test_en == 1'b1) begin
                    u_state   <= U_WRITE;
                    msg       <= {test_data[39:0], 8'hff, 16'h5aa5}; // data, channel, sync header 
					test_data <= test_data + 1;
                end
                else begin
                    u_state <= U_IDLE;
                    u_ack   <= 7'h00;
                end                
            end
            U_WRITE: begin       
                u_state <= U_WRDONE;
                wr      <= ~full;
            end
            U_WRDONE: begin
                u_state <= U_IDLE;
                wr      <= 1'b0;
                rx_ack  <= 1'b0;
                u_ack   <= 7'h00;
            end            
            default: begin
                u_state <= U_IDLE;
                wr      <= 1'b0;    
                rx_ack  <= 1'b0;
                u_ack   <= 7'h00;                           
            end
        endcase
    end
end

// send data to PC
localparam TX_IDLE   = 0;
localparam TX_RDFIFO = 1;
localparam TX_TXCHAR = 2;
reg [2:0] tx_state;
reg [width : 0] tx_data;
reg [9:0] tx_freq_cnt;
reg [7:0] tx_byte_cnt;
reg [7:0] tx_bit_cnt;
always @ (negedge rstn or posedge clk_50m) begin
    if (!rstn) begin        
        rd <= 1'b0;
        tx_freq_cnt <= 0;
        tx <= 1'b1;
        tx_state <= TX_IDLE; 
    end
    else begin
        case(tx_state)
            TX_IDLE: begin
                if (!empty) begin					
					rd <= 1'b1;                    
                    tx_state <= TX_RDFIFO;
				end
            end
            TX_RDFIFO: begin
                tx_data <= data;
                rd <= 1'b0;
                tx_freq_cnt <= 0;
                tx_byte_cnt <= 0;
                tx_bit_cnt  <= 0;
                tx_state <= TX_TXCHAR;
            end
            TX_TXCHAR: begin
                if (tx_byte_cnt < 8) begin
                    case(tx_bit_cnt)
                        0: 
                            tx <= 0;
                        1,2,3,4,5,6,7,8: 
                            tx <= tx_data[(tx_byte_cnt << 3) + tx_bit_cnt - 1];                           
                        9: 
                            tx <= 1;
                        default: tx <= 1;
                    endcase 
                    if (tx_bit_cnt < 10) begin
                        if (tx_freq_cnt >= DIV) begin     
                            tx_freq_cnt <= 0;
                            tx_bit_cnt <= tx_bit_cnt + 1;
                        end
                        else begin
                            tx_freq_cnt <= tx_freq_cnt + 1;
                        end                    
                    end
                    else begin
                        tx_bit_cnt <= 0;       
                        tx_byte_cnt <= tx_byte_cnt + 1;
                    end                    
                end
                else begin
                    tx_state <= TX_IDLE;
                end
            end
        endcase
    end    
end

// receive data from PC
localparam RX_IDLE = 0;
localparam RX_DLAY = 1;
localparam RX_DATA = 2;
localparam RX_STOP = 3;
reg [3:0] rx_state;
reg [1:0] rx_dly;
reg [7:0] rx_reg_addr;
reg [7:0] rx_cmd;
reg [7:0] rx_reg_data;
reg [9:0] rx_freq_cnt;
reg [7:0] rx_byte_cnt;
reg [7:0] rx_bit_cnt;
reg [3:0] i;
always @ (negedge rstn or posedge clk_50m) begin
    if (!rstn) begin        
        rx_state    <= RX_IDLE;
        rx_dly      <= 2'b11;
		rx_freq_cnt <= 0;
		rx_bit_cnt  <= 0;	
        rx_byte_cnt <= 0;    
        rx_reg_addr <= 0;
        rx_cmd      <= 0;
        rx_reg_data <= 0;
        rx_req      <= 0;
    end
    else begin
        rx_dly <= {rx_dly[0], rx};
        if (rx_ack == 1)
            rx_req <= 0;
        case (rx_state)
            RX_IDLE: begin
                if (rx_dly == 2'b10) begin // start
                    rx_state <= RX_DLAY;
                    rx_freq_cnt <= 0;
                    rx_bit_cnt <= 0;
                end
            end
			RX_DLAY: begin
                rx_freq_cnt <= rx_freq_cnt + 1;
                if (rx_freq_cnt >= 50) begin
                    rx_state <= RX_DATA;
                    rx_freq_cnt <= 0;
				end
			end	
            RX_DATA: begin
                rx_freq_cnt <= rx_freq_cnt + 1;
                if (rx_freq_cnt >= DIV) begin
                    rx_freq_cnt <= 0;
                    rx_bit_cnt <= rx_bit_cnt + 1;
                    if (rx_bit_cnt >= 8) begin
                        rx_state <= RX_STOP;
                        rx_byte_cnt <= rx_byte_cnt + 1;
                        if (rx_byte_cnt == 2) begin
                            if (rx_cmd == 0) begin // 0: write command
                                for(i = 0; i < 8; i = i + 1) begin
                                    regs[(rx_reg_addr << 3) + i] <= rx_reg_data[i];
                                end
                            end
                            else begin // >0: read command
                                if (rx_req == 0) begin
                                    rx_req <= 1;
                                    for(i = 0; i < 8; i = i + 1) begin
                                        rx_msg[24 + i] <= regs[(rx_reg_addr << 3) + i];
                                    end
                                end
                            end
                            rx_byte_cnt <= 0;
                            rx_reg_addr <= 0;
                            rx_cmd      <= 0;
                            rx_reg_data <= 0;
                        end
                    end
					else begin
                        if (rx_byte_cnt == 0)
                            rx_reg_addr <= rx_reg_addr + (rx << rx_bit_cnt);
                        if (rx_byte_cnt == 1)
                            rx_cmd      <= rx_cmd      + (rx << rx_bit_cnt);
                        if (rx_byte_cnt == 2)
                            rx_reg_data <= rx_reg_data + (rx << rx_bit_cnt);
                    end
                end
            end
            RX_STOP: begin
                rx_freq_cnt <= rx_freq_cnt + 1;
                if (rx_freq_cnt >= 50) begin
                    rx_state <= RX_IDLE;
                    rx_freq_cnt <= 0;
                end
            end
            default: begin                
                rx_state    <= RX_IDLE;            
                rx_dly      <= 2'b11;                
				rx_freq_cnt <= 0;
				rx_bit_cnt  <= 0;	
                rx_byte_cnt <= 0;
                rx_reg_addr <= 0;
                rx_cmd      <= 0;
                rx_reg_data <= 0;
                rx_req      <= 0;
            end
        endcase
    end
end

endmodule