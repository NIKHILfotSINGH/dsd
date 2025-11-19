`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 21:47:07
// Design Name: 
// Module Name: d_flip_flop
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


module d_flip_flop(
    input d,clk,
    output q,qbar
    );
    wire sg, rg;

assign #1 sg = ~(clk & d);
assign #1 rg = ~(clk & ~d);
assign #1 q = ~(sg & qbar);
assign #1 qbar = ~(rg & q);
endmodule
