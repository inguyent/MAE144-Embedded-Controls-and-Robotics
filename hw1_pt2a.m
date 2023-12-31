a = RR_poly([1 0 -46 0 369 0 -324]);
b = RR_poly([1 0 -29 0 100]);
f = RR_poly([1 20 154 576 1089 972 324]);
% RR_diophantine solves for the Diophantine equation and gives x and y where D(s) = y/x
[x,y] = RR_diophantine(a,b,f)
% Test to confirm D(s)
test = trim(a*x+b*y)
residual = norm(f-test)
% Note that a*x + b*y = f has ~0 residual which confirms D(s)
