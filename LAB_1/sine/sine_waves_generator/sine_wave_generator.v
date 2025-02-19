module sine_wave_generator(
    input wire clk,
    input wire rst_n,
    input wire [7:0] phase,           // Pha đầu vào (8-bit)
    output reg [7:0] sine_out         // Sóng sine đầu ra (8-bit)
);

    reg [7:0] lut[0:63];              // LUT 1/4 chu kỳ

    initial begin
        $readmemh("sine_quarterwave.hex", lut);  // Đọc LUT từ file hex
    end

	 
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
