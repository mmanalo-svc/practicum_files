`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2025 07:25:54
// Design Name: 
// Module Name: fsm
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

//3-process Methodology (each part has its own always block)
//2-process Methodology (reset logic has its own always block, while output and next state are combined together)
//1-process Methodology (all subsystems in one always block, which is Sequential)
//Moore FSM (depends on the current state)
module moorefsm(
    input clk, rst, din,
    output reg dout
    );
    
parameter idle = 0;
parameter s0 = 1;
parameter s1 = 2;
parameter s2 = 3;
parameter s3 = 4;
parameter s4 = 5;
    
reg [3:0] state = idle, nstate = idle;
    
always@(posedge clk)
    begin
        if(rst)
            state <= idle;
        else
            state <= nstate;
    end

always@(state, din)
begin
    case(state)
    idle: begin
            dout = 1'b0;
            nstate = s0;
          end
    s0: begin
            dout = 1'b0;
            if(din)
                nstate = s1;
            else
                nstate = s0;
        end
    s1: begin
            dout = 1'b0;
            if(din)
                nstate = s1;
            else
                nstate = s2;
        end
    s2: begin
            dout = 1'b0;
            if(din)
                nstate = s1;
            else
                nstate = s3;
        end
    s3: begin
            dout = 1'b0;
            if(din)
                nstate = s4;
            else
                nstate = s0;
        end
    s4: begin
            dout = 1'b1;
            if(din)
                nstate = s1;
            else
                nstate = s0;
        end
    default: begin
                dout = 1'b0;
                nstate = idle;
             end
    endcase
end

endmodule
