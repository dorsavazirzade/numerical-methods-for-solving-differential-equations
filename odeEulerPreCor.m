function [x,y] = odeEulerPreCor(ODE,a,b,h,yINI)
threshold = 0.00001;
    x = a:h:b;
    y = zeros(1,length(x));
    y(1) = yINI;
    for i = 1:length(x)-1
        y(i+1) = y(i) + h*ODE(x(i),y(i));
        epsilon = 1;
        while epsilon > threshold
            c = y(i+1);
            y(i+1) = y(i) + 0.5*h*(ODE(x(i),y(i)) + ODE(x(i+1),c));
            epsilon = abs((y(i+1) - c)/c);
        end
    end
end