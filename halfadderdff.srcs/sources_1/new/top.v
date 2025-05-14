`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2025 12:38:25
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
    input a,b,
    input clk, res,
    output s,c
    );
    
    assign s = a ^ b;
    assign c = a + b;
    
    always@(posedge clk)
    begin
        
    end
    
endmodule
