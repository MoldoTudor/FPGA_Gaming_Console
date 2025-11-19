`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/24/2025 04:22:00 PM
// Design Name: 
// Module Name: tb_sync
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


module tb_sync();


reg clk;
wire InDisplay;
wire clk2;
wire [9:0]Coloana;
wire [9:0]Linie;
wire HS;
wire VS;

    Sync syn_TOP(.clk(clk),
                 .clk2(clk2),
                 .HS(HS),
                 .VS(VS),
                 .Coloana(Coloana),
                 .Linie(Linie),
                 .InDisplay(InDisplay));
                                 
 initial begin
 clk = 0 ;
 forever begin
 #5 clk = ~clk ;
 end 
 end
 

 
 
                                 
endmodule
