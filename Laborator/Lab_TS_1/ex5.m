lineup = [0.5,1]

for i = 1:2
    t = linspace(0, lineup(i), 1000);
    y = zeros(1000);
    y = signalGen(t);
    figure
    plot(t,y, 'b','LineWidth',1.5,'LineStyle','-');
    grid ON;
    legend('y signal');
    title('Output');
end