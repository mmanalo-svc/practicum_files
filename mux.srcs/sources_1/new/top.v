`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2025 12:21:40
// Design Name: 
// Module Name: top
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


module top(
    input a,b,c,d,
    input [1:0] sel,
    output reg x, x_bar
    );
    
    always@(*)
    begin
        if (sel == 2'b00)
        begin
            x = a;
            x_bar = ~a;
        end
        else if(sel == 2'b01)
        begin
            x = b;
            x_bar = ~b;
        end
        else if(sel == 2'b10)
        begin
            x = c;
            x_bar = ~c;
        end
        else if(sel == 2'b11)
        begin
            x = d;
            x_bar = ~d;
        end
    end
    
endmodule
