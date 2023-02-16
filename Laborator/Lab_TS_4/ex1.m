A = [-1 0 0; -1 -2 -101; 1 1 0];
B = [0 1; 1 -1; 0 0];
C = [1 0 101];
D = [0 0];

% ex1 a
h = 0.01;
I = eye(length(A));
syms s;
s = s;
S = s*I;
S = S - A;
S = inv(S);
Ad = ilaplace(S, h);
syms t;
syms tau;
Bd = int(ilaplace(S, tau) * B, tau, 0, h);
Cd = C;
Dd = D;

Ad = double(Ad);
Bd = double(Bd);

% ex1 b
[num1s, den1s] = ss2tf(A,B,C,D, 1);
H11s = tf(num1s, den1s);
H11z = c2d(H11s, h);
[num1z, den1z] = tfdata(H11z, 'v');

[num2s, den2s] = ss2tf(A,B,C,D, 2);
H12s = tf(num2s, den2s);
H12z = c2d(H12s, h);
[num2z, den2z] = tfdata(H12z, 'v');

T_z = [H11z H12z];

u_t = [1 *(t^0); -2 *(t^0)];
u_s = laplace(u_t);
u_z = ztrans(u_s);
ut = [1; -2];