//design module
module demux(d0,d1,d2,d3,s0,s1,din);
input s0,s1,din;
wire a,b;
output d0,d1,d2,d3;
assign a=!s0;
assign b=!s1;
assign d0=a&b&din;
assign d1=a&s1&din;
assign d2=b&s0&din;
assign d3=s0&s1&din;
endmodule

//stimulus module
module hassan;
reg s0,s1,din;
wire d0,d1,d2,d3;
demux dd1(d0,d1,d2,d3,s0,s1,din);
initial
begin
s0=1'b0; s1=1'b0; din=1'b1;
#30
s0=1'b0; s1=1'b1; din=1'b1;
#30
s0=1'b1; s1=1'b0; din=1'b1;
#30
s0=1'b1; s1=1'b1; din=1'b1;
#30
$finish;
end
endmodule
