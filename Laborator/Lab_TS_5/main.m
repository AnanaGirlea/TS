syms s;

T = [1/((s+1)*(s+3)) (s-2)/((s+1)*(s+2))];

[p,m] = size(T);
pol = (s + 1) * (s + 2) * (s + 3);
r = polynomialDegree(pol);
coef = sym2poly(pol);

R2 = [0 1];
R1 = [1 1];
R0 = [2 -6];

A_c = [zeros(m, m) eye(m) zeros(m, m);
    zeros(m, m) zeros(m, m) eye(m);
    -coef(r + 1)*eye(m) -coef(r)*eye(m) -coef(r - 1)*eye(m)];

B_c = [zeros(m,m); 
      zeros(m,m);
      eye(m)];
  
C_c = [R2 R1 R0];

A_o = [zeros(p, p) zeros(p, p) -coef(r + 1);
      eye(p) zeros(p, p) -coef(r);
      zeros(p, p) eye(p) -coef(r - 1)];
B_o = [R0; R1; R2];

C_o = [zeros(p, p) zeros(p, p) eye(p)]; 

A_o = double(A_o);
B_o = double(B_o);
C_o = double(C_o);

A_c = double(A_c);
B_c = double(B_c);
C_c = double(C_c);
