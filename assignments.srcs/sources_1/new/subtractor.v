`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2025 15:43:56
// Design Name: 
// Module Name: subtractor
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


module subtractor(
    input A,B,Bin,
    output Bout,D
    );
    
    wire t1,t2,t3;
    
    xor x1 (t1,A,B);
    xor x2 (D,Bin,t1);
    and a1 (t2,~A,B);
    and a2 (t3,~t1,Bin);
    or o1 (Bout,t2,t3);
    
endmodule
