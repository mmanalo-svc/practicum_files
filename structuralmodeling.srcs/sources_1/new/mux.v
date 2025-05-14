`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2025 08:12:47
// Design Name: 
// Module Name: mux
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


module mux21(
    input a1,b1,sel,
    output y1
    );
    
    assign y1 = (sel == 1'b0) ? a1 : b1;
    
endmodule

module mux81(
    input i0,i1,i2,i3,i4,i5,i6,i7,
    input [2:0] s1,
    output y1
    );
    
    wire w1,w2,w3,w4,w5,w6;
    
    mux21 m1 (i0,i1, s1[0], w1);
    mux21 m2 (i2,i3, s1[0], w2);
    mux21 m3 (i4,i5, s1[0], w3);
    mux21 m4 (i6,i7, s1[0], w4);
    mux21 m5 (w1,w2, s1[1], w5);
    mux21 m6 (w3,w4, s1[1], w6);
    mux21 m7 (w5,w6, s1[2], y1);
    
endmodule

