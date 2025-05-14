`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2025 14:31:59
// Design Name: 
// Module Name: ram2
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


// 111111
// 32,16,8,4,2,1

module ram2(
    input clk,
    input we,
    input [5:0] addr,
    input [7:0] din,
    output [7:0] dout
    );
    
    reg [7:0] mem [63:0];
    
    always@(posedge clk)
    begin
        if(we)
            mem[addr] <= din;
    end
    
    assign dout = mem[addr];
    
endmodule
