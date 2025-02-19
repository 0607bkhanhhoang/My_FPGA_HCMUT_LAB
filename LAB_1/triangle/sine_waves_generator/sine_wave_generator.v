module sine_wave_generator(
    input wire clk,
    input wire rst_n,
    input wire [7:0] phase,           // Pha đầu vào (8-bit)
    output reg [7:0] sine_out         // Sóng sine đầu ra (8-bit)
);
    wire [7:0] lut [0:63];

assign  lut[0]  = 8'h00; assign lut[1]  = 8'h03; assign lut[2]  = 8'h06; assign lut[3]  = 8'h09;
assign  lut[4]  = 8'h0C; assign lut[5]  = 8'h0F; assign lut[6]  = 8'h12; assign lut[7]  = 8'h15;
assign  lut[8]  = 8'h18; assign lut[9]  = 8'h1B; assign lut[10] = 8'h1E; assign lut[11] = 8'h21;
assign  lut[12] = 8'h24;assign  lut[13] = 8'h27;assign  lut[14] = 8'h2A;assign  lut[15] = 8'h2D;
assign  lut[16] = 8'h30;assign  lut[17] = 8'h33;assign  lut[18] = 8'h36;assign  lut[19] = 8'h39;
assign  lut[20] = 8'h3B; assign lut[21] = 8'h3E; assign lut[22] = 8'h41;assign  lut[23] = 8'h43;
assign       lut[24] = 8'h46; assign lut[25] = 8'h49; assign lut[26] = 8'h4B; assign lut[27] = 8'h4E;
assign      lut[28] = 8'h50; assign lut[29] = 8'h52;assign  lut[30] = 8'h55;assign lut[31] = 8'h57;
assign     lut[32] = 8'h59;assign  lut[33] = 8'h5B; assign lut[34] = 8'h5E;assign  lut[35] = 8'h60;
assign     lut[36] = 8'h62;assign  lut[37] = 8'h64; assign lut[38] = 8'h66; assign lut[39] = 8'h67;
assign     lut[40] = 8'h69;assign  lut[41] = 8'h6B; assign lut[42] = 8'h6C; assign lut[43] = 8'h6E;
assign     lut[44] = 8'h70; assign lut[45] = 8'h71; assign lut[46] = 8'h72;assign  lut[47] = 8'h74;
assign     lut[48] = 8'h75;assign  lut[49] = 8'h76; assign lut[50] = 8'h77; assign lut[51] = 8'h78;
assign     lut[52] = 8'h79; assign lut[53] = 8'h7A;assign  lut[54] = 8'h7B;assign  lut[55] = 8'h7B;
assign     lut[56] = 8'h7C; assign  lut[57] = 8'h7D; assign lut[58] = 8'h7D; assign lut[59] = 8'h7E;
assign     lut[60] = 8'h7E;assign lut[61] = 8'h7E; assign  lut[62] = 8'h7E; assign lut[63] = 8'h7E;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) 
            sine_out <= 8'd0;
        else begin
            case (phase[7:6])           // Xác định phần tư của chu kỳ
                2'b00: sine_out <= lut[phase[5:0]];                          // 0° - 90°
                2'b01: sine_out <= lut[~phase[5:0]];                         // 90° - 180°
                2'b10: sine_out <= ~lut[phase[5:0]] + 8'd1;                  // 180° - 270°
                2'b11: sine_out <= ~lut[~phase[5:0]] + 8'd1;                 // 270° - 360°
            endcase
        end
    end
endmodule
