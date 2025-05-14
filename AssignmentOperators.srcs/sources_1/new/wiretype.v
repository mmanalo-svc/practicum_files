`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2025 13:16:36
// Design Name: 
// Module Name: wiretype
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

2. Add two four bit reg variable in the code. Initialize the variable of 10 and 12 in decimal format.

3. Add four bit wire type and store the result of anding two reg variables in the wire type variable.

4. Perform Simulation and observe wire type variable has value of 8 in decimal format.
*/

module wiretype();

reg [3:0] a = 4'd10, b = 4'd12;
wire [4:0] ab;

assign ab = a & b;
initial begin
#10
$display("ab : %0d", ab);
end

endmodule
