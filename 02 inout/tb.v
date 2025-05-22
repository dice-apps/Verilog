`timescale 1ns/1ps
`include "dflipflop.v"

module tb();
    reg d;
    reg clk;
    reg en;
    reg reset;
    wire q;

    dflipflop uut(
      .d(d), 
      .clk(clk),
      .en(en),
      .reset(reset),
      .q(q)
      
      );

    initial begin
      a = 0;
      // Dump waveform data (for GTKWave)
      $dumpfile("dump.vcd");
      $dumpvars(0, tb); // tb name of the module
    end

    initial begin
        clk <= 0;
        forever begin
          #5;
          clk <= ~clk;
        end
    end

    initial begin
      en = 0;
      reset = 0;
      d = 0;

      #3; d = 1;  //Waiting 3 time units and then showing d=1
      #9; d = 0;  //Waiting 9 time units in the previous value of d and then changing d = 0
      #6; d = 1;
      #10; d = 0;
      #10; d = 1;
      #10; en = 1;
      #



    end

    intial begin
      
    end

endmodule