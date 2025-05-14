`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2025 15:11:08
// Design Name: 
// Module Name: gates
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


module gates(
    input a,b,c,
    output x,y
    );
    
    wire t1, t2, t3;
    
    assign t1 = a ^ b;
    assign t2 = a & b;
    assign t3 = t1 & c;
    assign x = t1 ^ c;
    assign y = t2 | t3;
    
endmodule
