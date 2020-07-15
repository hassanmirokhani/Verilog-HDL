//design module
module invertlogic(out,a,b,c);
input a,b,c;
output out;
wire x,y;
supply1 vdd;
supply0 gnd;
pmos p1(x,vdd,a);
pmos p2(out,x,b);
pmos p3(out,vdd,c);
nmos n1(out,y,a);
nmos n2(out,y,b);
nmos n3(x,gnd,c);
endmodule

//stimulus module
module hassan;
reg a,b,c;
wire out;
invertlogic a1(out,a,b,c);
initial
begin
a=1'b0; b=1'b0; c=1'b0;
#30
a=1'b0; b=1'b1; c=1'b1;
#30
a=1'b1; b=1'b0; c=1'b0;
#30
a=1'b1; b=1'b1; c=1'b1;
#30
$finish;
end
endmodule