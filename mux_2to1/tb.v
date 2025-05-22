`timescale 1ns/1ps
`include "mux_2to1.v"

module tb();
    reg a, b, se, en; // Kind of a data type, store data
    wire y;

    mux_2to1 uut(.a(a), .b(b), .se(se), .en(en), .y(y));
    initial begin
      a = 1'b1;
      b = 1'b0;
      se = 1'b1;
      en = 1;
      // Dump waveform data (for GTKWave)
      $dumpfile("dump.vcd");
      $dumpvars(0, tb); // tb name of the module

      #10; a = 1'b0; b = 1'b0; se = 1'b1; // will have delay of 10 ns, as timescale is set to nano seconds
      #10; a = 1'b1; b = 1'b0; se = 1'b1;
      #10; a = 1'b1; b = 1'b0; se = 1'b1;
      #10; a = 1'b1; b = 1'b0; se = 1'b1;

      en = 0;

      #10; a = 1'b0; b = 1'b0; se = 1'b1;
      #10; a = 1'b1; b = 1'b0; se = 1'b1;
      #10; a = 1'b1; b = 1'b0; se = 1'b1;
      #10; a = 1'b1; b = 1'b0; se = 1'b1;

    end

    initial begin
        // Monitor continously monitors the signal
        // Expected: a = 0, y = 1
        $monitor("se = %b, y = %b", se, y); // %b is a syntax used.
    end

endmodule