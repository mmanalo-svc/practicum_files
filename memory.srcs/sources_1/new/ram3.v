`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2025 14:46:34
// Design Name: 
// Module Name: ram3
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


module ram3(
    input clk,
    input we,
    input [5:0] addr,
    input [7:0] din,
    output [7:0] dout
    );
    
    blk_mem_gen_0 b1 (clk, we, addr, din, dout);
    
endmodule
