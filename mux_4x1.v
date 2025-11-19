`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 19:36:02
// Design Name: 
// Module Name: mux_4x1
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


module mux_4x1(
    input i0,i1,i2,i3,
    input s0,s1,
    output y
    );
    assign y = (~s1 & ~s0 & i0) | 
               (~s1 &  s0 & i1) | 
               ( s1 & ~s0 & i2) | 
               ( s1 &  s0 & i3);
endmodule
