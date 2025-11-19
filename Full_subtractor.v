`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 21:05:40
// Design Name: 
// Module Name: Full_subtractor
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


module Full_subtractor(
    input a0,a1,bin,
    output d,bout
    );
    assign d = a0 ^ a1 ^ bin;
    assign bout = (~a0 & a1) | ((~(a0 ^ a1)) & bin);
endmodule
