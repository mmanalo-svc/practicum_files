`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2025 08:07:45
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


/*
Design 4-bit Ripple Carry Adder with the help of 1-bit adder. 
Use Full adder implemented in the previous lecture and reuse it to build 4-bit Ripple Carry adder.
*/

module halfadder(
    input a,b,
    output s,c
    );
    
    assign s = a ^ b;
    assign c = a & b;
    
endmodule

module fulladder(
    input a,b,cin,
    output s,cout
    );
    
    wire t1,t2,t3;
    
    halfadder h1(.a(a), .b(b), .s(t2), .c(t1));
    halfadder h2(.a(t2), .b(cin), .s(s), .c(t3));
    
    assign cout = t1 | t3;

endmodule

module rca(
    input [3:0] a,b,
    input cin,
    output [3:0] sout,
    output cout
    );
    
    wire c1,c2,c3;
    
    fulladder f1(a[0], b[0], cin, sout[0], c1);
    fulladder f2(a[1], b[1], c1, sout[1], c2);
    fulladder f3(a[2], b[2], c2, sout[2], c3);
    fulladder f4(a[3], b[3], c3, sout[3], cout);
    
endmodule    