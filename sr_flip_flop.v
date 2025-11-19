`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 21:24:30
// Design Name: 
// Module Name: sr_flip_flop
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


module sr_flip_flop(
    input s,r,clk,
    output qbar,
    output reg q
    );
    assign qbar = ~q;

always @(posedge clk) begin
    case({s, r})
        2'b00: q <= q;
        2'b10: q <= 1'b1;
        2'b01: q <= 1'b0;
        2'b11: q <= 1'bx;
    endcase
end
endmodule
