
syms l;

d = det(l * eye(3) - A_o);

pol = sym2poly(d);

[H, delta] = hurwitz(pol);

ok = 1;
for k = delta
    if k < 0
        disp("Nu e stabil intern!")
        ok = 0;
        break;
    end
end

if ok == 1
   disp("E stabil exern!")
end

c = roots(pol);
c = real(c);
ok = 0;
cnt = 0;

for k=c
   if cnt > 1
       ok = 1;
       break;
   end
   if k == 0
       cnt = cnt + 1;
   end
   if k > 0
       ok = 1;
       break;
   end
end

if ok == 1
    disp("Nu e stabil extern!");
else
    disp("E stabil extern!");
end
