`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 21:06:07
// Design Name: 
// Module Name: test_full_subtractor
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


module test_full_subtractor(

    );
    reg a0, a1, bin;
wire d, bout;
integer i;

Full_subtractor uut(a0, a1, bin, d, bout);

initial begin

   for (i = 0; i < 8; i = i + 1) begin
            {a0, a1, bin} = i[2:0];  
            #10; 
        end

$finish;
    
end
    
endmodule
