//design module
module rrff(q,qb,r,s,clk);
input r,s,clk;
output qb,q;
wire a,b;
nand a1(a,r,clk);
nand a2(b,s,clk);
nand n1(q,a,qb);
nand n2(qb,b,q);
endmodule

//stimulus module
module hassan;
reg r,s,clk;
wire q,qb;
rrff rrff1(q,qb,r,s,clk);
initial
begin
r=1'b0; s=1'b1; clk=1'b1;
#20
r=1'b1; s=1'b0; clk=1'b0;
#20
r=1'b0; s=1'b0; clk=1'b1;
#20
r=1'b1; s=1'b1; clk=1'b0;
#20
$finish;
end
endmodule