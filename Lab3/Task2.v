//design module
module mux(out1,out2,s0,s1,i0,i1,i2,i3);
input s0,s1,i0,i1,i2,i3;
wire s0m,s1m,a,b,c,d;
output out1,out2;
not n1(s0m,s0);
not n2(s1m,s1);
and a1(a,s0m,s1m,i0);
and a2(b,s0m,s1,i1);
or o1(out1,a,b);
and a3(c,s0,s1m,i2);
and a4(d,s0,s1,i3);
or o2(out2,c,d);
endmodule

//stimulus module
module hassan;
reg s0,s1,i0,i1,i2,i3;
wire out1,out2;
mux m1(out1,out2,s0,s1,i0,i1,i2,i3);
initial
begin
s0=1'b0; s1=1'b0; i0=1'b0; i1=1'b0; i2=1'b0; i3=1'b0;
#30
s0=1'b0; s1=1'b0; i0=1'b0; i1=1'b0; i2=1'b1; i3=1'b1;
#30
s0=1'b0; s1=1'b1; i0=1'b1; i1=1'b1; i2=1'b0; i3=1'b0;
#30
s0=1'b0; s1=1'b1; i0=1'b1; i1=1'b1; i2=1'b1; i3=1'b1;
#30
s0=1'b1; s1=1'b0; i0=1'b0; i1=1'b0; i2=1'b0; i3=1'b0;
#30
s0=1'b1; s1=1'b0; i0=1'b0; i1=1'b0; i2=1'b1; i3=1'b1;
#30
s0=1'b1; s1=1'b1; i0=1'b1; i1=1'b1; i2=1'b0; i3=1'b0;
#30
s0=1'b1; s1=1'b1; i0=1'b1; i1=1'b1; i2=1'b1; i3=1'b1;
#30
$finish;
end
endmodule