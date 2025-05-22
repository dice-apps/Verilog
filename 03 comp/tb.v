`timescale 1ns/1ps
`include "comp1b.v"

module tb();
    reg a;
    reg b; // Kind of a data type, store data
    wire c;

    comp1b ut(.a(a), .b(b), .c(c));
    initial begin
      a = 0;
      b = 1;
      // Dump waveform data (for GTKWave)
      $dumpfile("dump.vcd");
      $dumpvars(0, tb); // tb name of the module

      #10; a = 1;
      #10; b = 1;  // will have delay of 10 ns, as timescale is set to nano seconds
      #10; a = 0;
      #10; a = 1;
      #10; b = 1;
      #10; a = 0;

    end

    initial begin
        // Monitor continously monitors the signal
        // Expected: a = 0, y = 1
        $monitor("a = %b,  b= %b,   c=%b",a ,b, c);//ntax used.
    end

endmodule