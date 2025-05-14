`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2025 08:21:45
// Design Name: 
// Module Name: jc
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
Design D-flipflop and reuse it to implement 4-bit Johnson Counter. 
Share your Verilog Code, RTL Schematic and Simulation Waveform for 4-bit Johnson Counter using Structural Modeling Style.
*/

module dff(
    input din, clk, rst,
    output reg q, q_bar
    );
    
    always@(posedge clk)
    begin
        if(rst == 1'b1)
            q <= 0;
        else
            q <= din;
            q_bar <= ~q;
    end
    
endmodule

module jc(
    input clk, rst,
    output wire v1,v2,v3, v4
    );
    
    dff d1(~v4, clk, rst, v1);
    dff d2(v1, clk, rst, v2);
    dff d3(v2, clk, rst, v3);
    dff d4(v3, clk, rst, v4);
    
endmodule