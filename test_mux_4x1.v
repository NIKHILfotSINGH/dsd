`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 19:37:17
// Design Name: 
// Module Name: test_mux_4x1
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


module test_mux_4x1(

    );
    
reg i0, i1, i2, i3;
    reg s0, s1;
    wire y;

   MUX_4X1 uut(i0, i1, i2, i3, s0, s1, y);

    initial begin
        
        i0 = 0; i1 = 1; i2 = 0; i3 = 1;

        // Apply select combinations
        s1 = 0; s0 = 0; #10;
        s1 = 0; s0 = 1; #10;
        s1 = 1; s0 = 0; #10;
        s1 = 1; s0 = 1; #10;

        // End simulation
        #10;
        $finish;
    end
endmodule
