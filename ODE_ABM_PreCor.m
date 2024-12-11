function [x,y] = ODE_ABM_PreCor(ODE,a,b,h,yini)
    threshold = 0.00001;
    x = a:h:b;
    y = zeros(1,length(x));
    y(1:3) = yini;
    for i=1:length(x)-3
        y(i+3) = y(i+2) + (h/12)*(23*ODE(x(i+2),y(i+2)) - 16*ODE(x(i+1),y(i+1)) + 5*ODE(x(i),y(i)));
        epsilon = 1;
        while epsilon > threshold
            c = y(i+3);
            y(i+3) = y(i+2) + (h/12)*(5*ODE(x(i+3),c) + 8*ODE(x(i+2),y(i+2)) - ODE(x(i+1),y(i+1)));
            epsilon = abs((y(i+3) - c)/c);
        end
    end
end