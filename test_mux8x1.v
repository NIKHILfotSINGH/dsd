`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 20:05:03
// Design Name: 
// Module Name: test_mux8x1
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


module test_mux8x1();

    reg i0, i1, i2, i3, i4, i5, i6, i7;
    reg s0, s1, s2;
    wire y;

    mux_8x1 uut(i0, i1, i2, i3, i4, i5, i6, i7, s0, s1, s2, y);

    initial begin
        
        i0 = 0; i1 = 1; i2 = 0; i3 = 1;
        i4 = 0; i5 = 1; i6 = 0; i7 = 1;

        // Apply select combinations
        s2 = 0; s1 = 0; s0 = 0; #10;
        s2 = 0; s1 = 0; s0 = 1; #10;
        s2 = 0; s1 = 1; s0 = 0; #10;
        s2 = 0; s1 = 1; s0 = 1; #10;
        s2 = 1; s1 = 0; s0 = 0; #10;
        s2 = 1; s1 = 0; s0 = 1; #10;
        s2 = 1; s1 = 1; s0 = 0; #10;
        s2 = 1; s1 = 1; s0 = 1; #10;

        #10;
        $finish;
    end
endmodule
