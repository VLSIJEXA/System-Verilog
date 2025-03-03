timescale 1ns/100ps
module array_literals ();

byte a [0:2][0:2] = '{'{1,2,3}, '{5,6,7}, '{8,9,10}};
initial begin
  $display ("a [0][0] = %d", a[0][0]);
  $display ("a [0][1] = %d", a[0][1]);
  $display ("a [0][2] = %d", a[0][2]);
  $display ("a [1][0] = %d", a[1][0]);
  $display ("a [1][1] = %d", a[1][1]);
  $display ("a [1][2] = %d", a[1][2]);
  $display ("a [2][0] = %d", a[2][0]);
  $display ("a [2][1] = %d", a[2][1]);
  $display ("a [2][2] = %d", a[2][2]);
  #1 $finish;
end

endmodule
