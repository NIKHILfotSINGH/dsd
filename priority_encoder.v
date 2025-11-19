`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 20:15:27
// Design Name: 
// Module Name: priority_encoder
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


module priority_encoder(
    input d0,d1,d2,d3,
    output y0,y1,v
    );
    assign v = d0 | d1 | d2 | d3 ;
    assign y0 = (d1 & ~d2) | d3;
    assign y1  = d2 | d3 ;
endmodule
