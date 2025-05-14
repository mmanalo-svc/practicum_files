`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2025 10:31:33
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
Demonstrate Swapping of Two 16-bit variable using blocking and Non-blocking. 
Write a verilog code to swap contents of two registers with and without a temporary register?
*/


module top();

reg [15:0] a = 15'h2ff, b = 15'h3aa;
reg [15:0] c = 15'h2ff, d = 15'h3aa;


//Blocking
reg [15:0] temp;
initial begin
temp = a;
a = b;
b = temp;
#10;
$display("a : %0h & b : %0h", a,b);
end

//Non-blocking
initial begin
c <= d;
d <= c;
#10;
$display("c : %0h & d : %0h", c,d);
end

endmodule
