t0=5;
a=1;
c=1;
d=2;
e=1;

s = tf('s');
H = (a * s + 1)/(c * s ^ 2 + d * s + e);
[Y,T] = step(H, t0);

figure(3);
plot(T,Y);
legend('H function');
title('Output Equation');

figure(4);
plot(out.simout);
legend('H function');
title('Output Simulink');
