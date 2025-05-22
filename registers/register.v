module dflipflop(
    input wire d,
    input wire clk,
    input wire en,
    input wire reset,

    output reg q //Q output
);


    always @ (posedge clk or posedge reset) begin

        if (reset) q<= 0;
        else if(en) begin
            q <= d;
        end
        
    end
    
endmodule