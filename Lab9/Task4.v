//design module
module xorgate(out,a,b);
input a,b;
output out;
wire p,q,r,s,x,y;
supply1 vdd;
supply0 gnd;
pmos p1(x,vdd,a);
pmos p2(y,vdd,b);
pmos p3(p,vdd,x);
pmos p4(out,p,a);
pmos p5(q,vdd,b);
pmos p6(out,q,y);
nmos n1(x,gnd,a);
nmos n2(y,gnd,b);
nmos n3(out,r,a);
nmos n4(r,gnd,b);
nmos n5(out,s,x);
nmos n6(s,gnd,y);
endmodule

//stimulus module
module hassan;
reg a,b;
wire out;
xorgate g1(out,a,b);
initial 
begin
a=1'b0; b=1'b0;
#30
a=1'b0; b=1'b1;
#30
a=1'b1; b=1'b0;
#30
a=1'b1; b=1'b1;
#30
$finish;
end
endmodule