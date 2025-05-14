`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2025 08:08:43
// Design Name: 
// Module Name: mealyfsm
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

//Mealy FSM depend on the current state and input (i/p)

module mealyfsm(
    input clk,rst,din,
    output reg dout
    );
    
parameter idle = 0;
parameter s0 = 1;
parameter s1 = 2;
parameter s2 = 3;
    
reg [1:0] state = idle, nstate = idle;

always@(posedge clk)
begin
if(rst == 1'b1)
state <= idle;
else
state <= nstate;
end
 
////////////////////////output decoder + NSD
always@(state, din)
begin
case(state)
 
idle : 
begin
   dout = 1'b0;
   nstate = s0;   
  
end
 
 
s0 : 
begin
  if(din)
   begin
    dout   = 1'b0;
    nstate = s1; 
   end
  else
   begin
    dout   = 1'b0;
    nstate = s2;
  end   
   
   
end
 
 
s1: begin
  if(din)
   begin
    dout   = 1'b1;
    nstate = s1; 
   end
  else
   begin
    dout   = 1'b1;
    nstate = s2;
  end   
end

s2: begin
  if(din)
   begin
    dout   = 1'b0;
    nstate = s1; 
   end
  else
   begin
    dout   = 1'b0;
    nstate = s2;
  end   
end

default :  
    begin
    nstate = idle;
    dout   =  1'b0;
    end
    
    
endcase
end

endmodule
