//design module
module gate(c,a,b);
input a,b;
output c;
xor x1(c,a,b);
endmodule

//stimulus module
module hassan;
reg a,b;
wire c;
gate g1(c,a,b);
initial 
begin
a=1'b0; b=1'b0;
#20
a=1'b0; b=1'b1;
#20
a=1'b1; b=1'b0;
#20
a=1'b1; b=1'b1;
#20
$finish;
end
endmodule