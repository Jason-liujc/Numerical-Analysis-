f = @(x) x-2*sin(x) ;
x_approx = bisection(1.5,2.5,10^-5,100,f);