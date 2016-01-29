f = @(x) pi+0.5*sin(x/2) ;
%x_approx = fixed_point(pi+0.5,10^-4,10000,f);


f = @(x) 230*x^4+18*x^3+9*x^2-221*x-9;
g=@(x)230*4*x^3+18*3*x^2+18*x-221;
TOL=10^-5;
x=false_position(-0.5, 0.5, TOL,10000, f);