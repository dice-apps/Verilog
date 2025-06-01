`timescale 1ns/1ps
`include "pipo_reg.v"

module tb();

    localparam width = 8;
    localparam clk_period = 5;

    reg clk;
    reg load;
    reg [(width - 1):0]data_in; //similar to d in dflipflop
    reg reset;
    wire [(width - 1):0]data_out;

    pipo_reg #(.width(width)) uut (.clk(clk), .load(load), .data_in(data_in), .reset(reset), .data_out(data_out));

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
end

always #clk_period begin
    clk <= ~(clk);
end

initial begin
  clk = 0; reset = 1; load = 0; data_in = 0;

  #20 reset = 0;

  #10 data_in = 8'b10101010; load = 1;
  #10 load = 0;

  #20 data_in = 8'b01010101; load = 1;
  #10 load = 0;

  #20 data_in = 8'b11111111;

  #50 $finish;
end

initial begin
  $monitor("reset = %b, clk = %b, load = %b, data_in = %b, data_out = %b", reset, clk, load, data_in, data_out);
end

endmodule