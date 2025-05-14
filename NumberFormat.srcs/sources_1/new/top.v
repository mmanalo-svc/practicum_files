`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2025 09:21:48
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


//
// Write a Verilog Code to Intialize Variable a to decimal value of 12, 
// b to octal value of 345 and c to binary value of 100. 
// Display the Value of all the variable on the Console using EDA playground
// and $display function. Share the Snapshot of the Verilog Code and Console Output.
//

module top();

reg [3:0] a;
reg [8:0] b;
reg [6:0] c;

initial
begin
#10;
a = 4'd12;
$display("Value of a: %0d", a);
#10;
b = 9'd345;
$display("Value of b: %0o", b);
#10;
c = 7'd100;
$display("Value of c: %0b", c);
end

endmodule
