
// 3. Behavioural Modeling
module comp1bfull(
    input wire [3:0] a, // Here the wire is made a vector type
    input wire [1:0] b,
    output reg c, //As used in an always block need to assign in a reg type
    output reg agb,
    output reg,
);

always @(*) begin // always is used normally in sequential ccts, state machines
    if(a == b) begin
        c = 1'b1; agb = 1'b0; alb = 1'
    else nota = 1; // else set nota to 1
  
end

endmodule
