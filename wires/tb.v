`timescale 1ns/1ps
`include "intmwire.v"

module tb();
    reg a; // Kind of a data type, store data
    wire nota;

    intmwire (.a(a), .b(b), .c(c), .p(p), .q(q));
    initial begin
      a = 0;
      b = 0;
      c = 0;
      // Dump waveform data (for GTKWave)
      $dumpfile("dump.vcd");
      $dumpvars(0, tb); // tb name of the module

      #10; a = 1; // will have delay of 10 ns, as timescale is set to nano seconds
      #10; a = 0;
      #10; c = 1;
      #10; b = 1;
      #10; a = 1;
      #10; a = 0;
      #10; b = 0;

    end

    initial begin
        // Monitor continously monitors the signal
        // Expected: a = 0, y = 1
        $monitor("a = %b, not a = %b", a, nota); // %b is a syntax used.
    end

endmodule