`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2025 07:30:40
// Design Name: 
// Module Name: inverter
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


module inverter(
    input vin,
    output vout
    );
    
    supply1 vdd;
    supply0 gnd;
    
    pmos p1 (vout, vdd, vin);
    nmos n1 (vout, gnd, vin);
    
endmodule
