`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 21:12:37
// Design Name: 
// Module Name: universal
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


module universal(
    input a,b,m,
    output cout,s
    );
    wire cin, afxor;
assign afxor = m ^ b;
assign cin = m;
assign s =  a ^ afxor ^ cin;
assign cout = (a & afxor) | (afxor & cin) | (a & cin);
endmodule
