//design module
module andgate(out,a,b);
input a,b;
output out;
wire x,y;
supply1 vdd;
supply0 gnd;
pmos p1(y,vdd,a);
pmos p2(y,vdd,b);
pmos p3(out,vdd,y);
nmos n1(y,x,a);
nmos n2(x,gnd,b);
nmos n3(out,gnd,y);
endmodule

//stimulus module
module hassan;
reg a,b;
wire out;
andgate g1(out,a,b);
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