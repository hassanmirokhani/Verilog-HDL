//design module
module mux(out,s0,s1,s2,i0,i1,i2,i3,i4,i5,i6,i7);
input s0,s1,s2,i0,i1,i2,i3,i4,i5,i6,i7;
wire s0m,s1m,s2m,a,b,c,d,e,f,g,h;
output out;
not n1(s0m,s0);
not n2(s1m,s1);
not n3(s2m,s2);
and a1(a,s0m,s1m,s2m,io);
and a2(b,s0m,s1m,s2,i1);
and a3(c,s0m,s1,s2m,i2);
and a4(d,s0,s1m,s2m,i3);
and a5(e,s0m,s1,s2,i4);
and a6(f,s0,s1,s2m,i5);
and a7(g,s0,s1m,s2,i6);
and a8(h,s0,s1,s2,i7);
or o1(out,a,b,c,d,e,f,g,h);
endmodule

//stimulus module
module hassan;
reg s0,s1,s2,i0,i1,i2,i3,i4,i5,i6,i7;
wire out;
mux m1(out,s0,s1,s2,i0,i1,i2,i3,i4,i5,i6,i7);
initial 
begin
s0=1'b1; s1=1'b0; s2=1'b0; i0=1'b0; i1=1'b0; i2=1'b0; i3=1'b0; i4=1'b0; i5=1'b0; i6=1'b0; i7=1'b0;; 
#30
s0=1'b0; s1=1'b0; s2=1'b0; i0=1'b0; i1=1'b0; i2=1'b0; i3=1'b0; i4=1'b0; i5=1'b0; i6=1'b1; i7=1'b1;; 
#30
s0=1'b0; s1=1'b0; s2=1'b1; i0=1'b0; i1=1'b0; i2=1'b0; i3=1'b0; i4=1'b1; i5=1'b1; i6=1'b0; i7=1'b0;; 
#30
s0=1'b0; s1=1'b0; s2=1'b1; i0=1'b0; i1=1'b0; i2=1'b0; i3=1'b0; i4=1'b1; i5=1'b1; i6=1'b1; i7=1'b1;; 
#30
s0=1'b0; s1=1'b1; s2=1'b0; i0=1'b0; i1=1'b0; i2=1'b1; i3=1'b1; i4=1'b0; i5=1'b0; i6=1'b0; i7=1'b0;; 
#30
s0=1'b0; s1=1'b1; s2=1'b0; i0=1'b0; i1=1'b0; i2=1'b1; i3=1'b1; i4=1'b0; i5=1'b0; i6=1'b1; i7=1'b1;; 
#30
s0=1'b0; s1=1'b1; s2=1'b1; i0=1'b0; i1=1'b0; i2=1'b1; i3=1'b1; i4=1'b1; i5=1'b1; i6=1'b0; i7=1'b0;; 
#30
s0=1'b0; s1=1'b1; s2=1'b1; i0=1'b0; i1=1'b0; i2=1'b1; i3=1'b1; i4=1'b1; i5=1'b1; i6=1'b1; i7=1'b1;; 
#30
s0=1'b1; s1=1'b0; s2=1'b0; i0=1'b1; i1=1'b1; i2=1'b0; i3=1'b0; i4=1'b0; i5=1'b0; i6=1'b0; i7=1'b0;; 
#30
s0=1'b1; s1=1'b0; s2=1'b0; i0=1'b1; i1=1'b1; i2=1'b0; i3=1'b0; i4=1'b0; i5=1'b0; i6=1'b1; i7=1'b1;; 
#30
s0=1'b1; s1=1'b0; s2=1'b1; i0=1'b1; i1=1'b1; i2=1'b0; i3=1'b0; i4=1'b1; i5=1'b1; i6=1'b0; i7=1'b0;; 
#30
s0=1'b1; s1=1'b0; s2=1'b1; i0=1'b1; i1=1'b1; i2=1'b0; i3=1'b0; i4=1'b1; i5=1'b1; i6=1'b1; i7=1'b1;; 
#30
s0=1'b1; s1=1'b1; s2=1'b0; i0=1'b1; i1=1'b1; i2=1'b1; i3=1'b1; i4=1'b0; i5=1'b0; i6=1'b0; i7=1'b0;; 
#30
s0=1'b1; s1=1'b1; s2=1'b0; i0=1'b1; i1=1'b1; i2=1'b1; i3=1'b1; i4=1'b0; i5=1'b0; i6=1'b1; i7=1'b1;; 
#30
s0=1'b1; s1=1'b1; s2=1'b1; i0=1'b1; i1=1'b1; i2=1'b1; i3=1'b1; i4=1'b1; i5=1'b1; i6=1'b0; i7=1'b0;; 
#30
s0=1'b1; s1=1'b1; s2=1'b1; i0=1'b1; i1=1'b1; i2=1'b1; i3=1'b1; i4=1'b1; i5=1'b1; i6=1'b1; i7=1'b1;; 
#30
$finish;
end
endmodule