function y = fcn(t)
    y = [exp(-t)
         exp(-t)*(cos(10*t)-sin(10*t)/10)-exp(-t)+(101*sin(10*t)*exp(-t))/10
         (sin(10*t)*exp(-t))/10-exp(-t)*(cos(10*t)+sin(10*t)/10)]
end