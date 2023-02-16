t = linspace(0,0.02,10);
y = zeros(1, 10);

y = signalGen(t);

plot(t, y, 'b', 'LineWidth',1.5,'LineStyle','-');
grid ON;
legend('y signal');
title('Output');

