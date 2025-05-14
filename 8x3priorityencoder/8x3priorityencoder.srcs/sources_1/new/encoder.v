`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2025 14:39:37
// Design Name: 
// Module Name: encoder
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


module encoder(
    input [7:0] y,
    output [2:0] x,
    output reg d
    );
    
    reg [2:0] temp;
    
    always@(*)
    begin
        if(y[7])
            begin
                temp = 3'd0;
                d = 1'b1;
            end
        else if(y[6])
            begin
                temp = 3'd1;
                d = 1'b1;
            end
        else if(y[5])
            begin
                temp = 3'd2;
                d = 1'b1;
            end
        else if(y[4])
            begin
                temp = 3'd3;
                d = 1'b1;
            end
        else if(y[3])
            begin
                temp = 3'd4;
                d = 1'b1;
            end
        else if(y[2])
            begin
                temp = 3'd5;
                d = 1'b1;
            end
        else if(y[1])
            begin
                temp = 3'd6;
                d = 1'b1;
            end
        else if(y[0])
            begin
                temp = 3'd7;
                d = 1'b1;
            end
        else
            begin
                temp = 3'd0;
                d = 1'b0;
            end
    end
    
    assign x = temp;
    
endmodule
