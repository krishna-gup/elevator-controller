`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.07.2022 00:55:07
// Design Name: 
// Module Name: Controller_TB
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


module Controller_TB();

reg clk,reset;
reg [4:0] requested_floor;
wire [1:0] wait_floor,door,Up,Down; 
wire [4:0] y;

Controller dut(clk,reset,requested_floor,wait_floor,door,Up,Down,y);

initial 
begin
    clk=0;
    forever #5 clk =~ clk;
end

initial 
begin 
    reset = 1;
    #10;
    reset=0;
    requested_floor=4'd12;
    #600
    requested_floor=4'd3;
    #400
    requested_floor=4'd13;
    #600
    requested_floor=4'd5;
    
    #2000 
    $finish;
    
end



endmodule
