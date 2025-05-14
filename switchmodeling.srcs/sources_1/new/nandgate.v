`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2025 07:35:05
// Design Name: 
// Module Name: nandgate
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


module nandgate(
    input a,b,
    output y
    );
    
    supply1 vdd;
    supply0 gnd;
    wire t1;
    
    pmos p1 (y, vdd, a);
    pmos p2 (y, vdd, b);
    
    nmos n1 (y, t1, a);
    nmos n2 (t1, gnd, b);
    
endmodule
