`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 22:04:09
// Design Name: 
// Module Name: counter
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


module counter(
    input clk,
    input RESET,
    output q0,q1
    );
    wire d0, d1;

assign d0 = ~q0;
assign d1 = ~q1;

d_ff ff0(d0, clk, RESET, q0);
d_ff ff1(d1, ~q0 , RESET, q1);
endmodule
