//printing of packed arrays
//1D packed arrays

module example;
bit [7:0]data; //1D packed array also similar to vector
initial
begin
data=8'b11011101;
for(int i=0;i<$size(data);i++)
$display("data[%0d]=%b",i,data);
end

endmodule
