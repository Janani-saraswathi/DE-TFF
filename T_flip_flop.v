module T_flip_flop(
    input T,        // Toggle input
    input clk,      // Clock input
    input reset,    // Asynchronous reset
    output reg Q    // Output
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            Q <= 0;           // Reset output to 0
        else if (T)
            Q <= ~Q;          // Toggle output when T = 1
        else
            Q <= Q;           // Hold state when T = 0
    end
endmodule
