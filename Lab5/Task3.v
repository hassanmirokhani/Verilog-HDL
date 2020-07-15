//design module
module demux(d0,d1,d2,d3,d4,d5,d6,d7,s0,s1,s2);
input s0,s1,s2;
wire a,b,c;
output d0,d1,d2,d3,d4,d5,d6,d7;
assign a=!s0;
assign b=!s1;
assign c=!s2;
assign d0=a&b&c;
assign d1=a&b&s2;                         
assign d2=a&s1&c;              
assign d3=a&s1&s2; 
assign d4=s0&b&c; 
assign d5=s0&b&s2;                          
assign d6=s0&s1&c;            ;           
assign d7=s0&s1&s2;
endmodule

//stimulus module
module hassan;
reg s0,s1,s2;
wire d0,d1,d2,d3,d4,d5,d6,d7;
demux dd1(d0,d1,d2,d3,d4,d5,d6,d7,s0,s1,s2);
initial
begin
s0=1'b0; s1=1'b0; s2=1'b0; 
#30
s0=1'b0; s1=1'b0; s2=1'b1; 
#30
s0=1'b0; s1=1'b1; s2=1'b0; 
#30
s0=1'b0; s1=1'b1; s2=1'b1; 
#30
s0=1'b1; s1=1'b0; s2=1'b0; 
#30
s0=1'b1; s1=1'b0; s2=1'b1; 
#30
s0=1'b1; s1=1'b1; s2=1'b0; 
#30
s0=1'b1; s1=1'b1; s2=1'b1; 
#30
$finish;
end
endmodule
