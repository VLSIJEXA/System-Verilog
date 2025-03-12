///declaration of dynamic array 
module tb;
int arr[];  
 initial begin
    arr=new[5]; //constructor of class  for size giving
    for(int i=0;i<5;i++) begin
     arr[i]=5*i;
   end
     $display("arr: %0p", arr);

 end
    initial 
    begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule
output
# KERNEL: arr: 0 5 10 15 20

//// increase size of array but you will not be able to retrieve previous data
module tb;
int arr[];  
 initial begin
    arr=new[5]; //constructor of class  for size giving
    for(int i=0;i<5;i++) begin
     arr[i]=5*i;
   end
     $display("arr: %0p", arr);
 arr=new[30];
   $display("arr: %0p", arr);
   
 end
    initial 
    begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule
output
# KERNEL: arr: 0 5 10 15 20
# KERNEL: arr: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0


/////increase size of array but retrieve  previous data
module tb;
int arr[];  
 initial begin
    arr=new[5]; //constructor of class  for size giving
    for(int i=0;i<5;i++) begin
     arr[i]=5*i;
   end
     $display("arr: %0p", arr);
 arr=new[30](arr);
   $display("arr: %0p", arr);
   
 end
    initial 
    begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule
output
# KERNEL: arr: 0 5 10 15 20
# KERNEL: arr: 0 5 10 15 20 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

///if you want to store your date in fix size array then you need to match eject size of array and same datatype also
module tb;
 
int arr[];  
  int farr[30];  //fixed array ,you need to match eject size of array  and same datatype also
  
 initial begin
   
   arr=new[5]; 
   
   for(int i=0;i<5;i++) begin
     arr[i]=5*i;
   end
     $display("arr: %0p", arr);
      arr=new[30](arr);
   $display("arr: %0p", arr);
   farr=arr;
   $display("farr: %0p", farr);
  
 end
   initial 
    begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule
output  
KERNEL: arr: 0 5 10 15 20 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
# KERNEL: farr: 0 5 10 15 20 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0


