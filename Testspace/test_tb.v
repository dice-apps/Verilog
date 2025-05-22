`timescale 1ns/1ps
`include "test1.v"

module test_tb();

    reg a;
    wire nota;

    testnotGate uut(.a(a), .nota(nota));

    initial begin
      
      a = 0;
      $dumpfile("dump.vcd");
      $dumpvars(0, test_tb);

      #10; a = 1;
      #10; a = 0;
      #10; a = 1;
      #10; a = 1;
      #10; a = 0;
      #10; a = 1;
      #10; a = 1;
      #10; a = 0;
      #10; a = 1;
      #10; a = 1;
      #10; a = 0;
      #10; a = 1;

    end

    initial begin
      $monitor("a = %b, nota = %b", a, nota);
    end

endmodule