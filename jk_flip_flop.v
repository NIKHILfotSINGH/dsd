`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 21:41:22
// Design Name: 
// Module Name: jk_flip_flop
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


module jk_flip_flop(
    input j,k,clk,RESET,
    output reg q
    );
    always @(posedge clk or posedge RESET) begin
    if(RESET) // active when high
        q <= 1'b0;
    else if(k & j)
        q <= ~q;
    else if(j)
        q <= 1'b1;
    else if(k)
        q <= 1'b0;
     else q <= q;
 end
endmodule
