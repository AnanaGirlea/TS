function [] = f(A, B, C, x0, ut)

A = [-1 0 0
     -1 -2 -101
      1 1 0];

B = [0 1
     1 -1    
     0 0];

C = [1 0 101]; 

D = [0 0]; 

x0 = [1
      0
     -1];

ut = [1
     -2];

syms s;
disp('a) Matricea de tranzitie a starii')
k = ilaplace(inv(s * eye(3) - A))

disp("b) Starea sistemului in regim liber")
xlt = k * x0

disp("c) Iesirea sistemului in regim liber")
ylt = C * k * x0

disp("d) Matricea de transfer")
Ts = C * inv(s * eye(3) - A) * B

disp("e) Raspunsul sistemului in regim fortat")
us = laplace(ut, s);
yfs = C * xlt;
yft = ilaplace(yfs)
end