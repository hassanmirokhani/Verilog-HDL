//design module
module demux(d0,d1,d2,d3,d4,d5,d6,d7,s0,s1,s2,din);
input s0,s1,s2,din;
wire a,b,c;
output d0,d1,d2,d3,d4,d5,d6,d7;
assign a=!s0;
assign b=!s1;
assign c=!s2;
assign d0=a&b&c&din;
assign d1=a&b&s2&din;                         
assign d2=a&s1&c&din;              
assign d3=a&s1&s2&din; 
assign d4=s0&b&c&din; 
assign d5=s0&b&s2&din;                          
assign d6=s0&s1&c&din;            ;           
assign d7=s0&s1&s2&din;
endmodule

//stimulus module
module hassan;
reg s0,s1,s2,din;
wire d0,d1,d2,d3,d4,d5,d6,d7;
demux dd1(d0,d1,d2,d3,d4,d5,d6,d7,s0,s1,s2,din);
initial
begin
s0=1'b0; s1=1'b0; s2=1'b0; din=1'b1;
#30
s0=1'b0; s1=1'b0; s2=1'b1; din=1'b1;
#30
s0=1'b0; s1=1'b1; s2=1'b0; din=1'b1;
#30
s0=1'b0; s1=1'b1; s2=1'b1; din=1'b1;
#30
s0=1'b1; s1=1'b0; s2=1'b0; din=1'b1;
#30
s0=1'b1; s1=1'b0; s2=1'b1; din=1'b1;
#30
s0=1'b1; s1=1'b1; s2=1'b0; din=1'b1;
#30
s0=1'b1; s1=1'b1; s2=1'b1; din=1'b1;
#30
$finish;
end
endmodule
