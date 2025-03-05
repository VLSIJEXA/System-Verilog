module up_counter (
    output reg [7:0] out,  
    input  wire enable,    
    input  wire clk,       
    input  wire reset      
);
  
    always_ff @(posedge clk) begin
        if (reset) begin
            out <= 8'b0;  
        end else if (enable) begin
            out <= out + 1;  
        end
    end
endmodule
