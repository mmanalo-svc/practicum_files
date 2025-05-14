`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2025 09:03:45
// Design Name: 
// Module Name: osd
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module osd(
    input clk, rst, din,
    output reg dout
    );
parameter idle = 0;
parameter s0 = 1;
parameter s1 = 2;
parameter s2 = 3;
parameter s3 = 4;

reg [2:0] state = idle, nstate = idle;

always@(posedge clk)
begin
    case(state)
    idle: begin
            dout <= 1'b0;
            if (rst)
                state <= idle;
            else
                state <= s0;
          end
    s0: begin
            if (din)
                begin
                    state <= s1;
                    dout <= 1'b0;
                end
            else
                begin
                    state <= s0;
                    dout <= 1'b0;
                end
        end
    s1: begin
            if (din)
                begin
                    state <= s1;
                    dout <= 1'b0;
                end
            else
                begin
                    state <= s2;
                    dout <= 1'b0;
                end
        end
    s2: begin
            if (din)
                begin
                    state <= s1;
                    dout <= 1'b0;
                end
            else
                begin
                    state <= s3;
                    dout <= 1'b0;
                end
        end
    s3: begin
            if (din)
                begin
                    state <= s1;
                    dout <= 1'b1;
                end
            else
                begin
                    state <= s0;
                    dout <= 1'b0;
                end
        end
    default: begin
                dout <= 1'b0;
                state <= idle;
             end
    endcase
end

endmodule
