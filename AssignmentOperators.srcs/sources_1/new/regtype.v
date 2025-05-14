`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2025 13:31:36
// Design Name: 
// Module Name: regtype
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
1. Create verilog code without I/O ports.

2. Add two four bit reg variable in the code. Initialize the variable of 7 and F in hexadecimal format using blocking assignmnet operator.

3. Add four bit reg type variable "res", store the result of xoring two reg variables initialized above in "res" using blocking assignment operator and always block. Make sure that you have added correct sensitivity list for always block.

4. Perform Simulation and observe "res" has value of 8 in hexadecimal.
*/

module regtype();

reg [3:0] a, b;
reg [3:0] res;

initial begin
a = 4'h7;
b = 4'hF;
end

always@(a,b)
begin
res = a ^ b;
end

endmodule
