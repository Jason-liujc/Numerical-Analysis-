function p=fixed_point(p0, TOL, N,g)
    %p0 initial approximation
    %TOL tolerance
    %N number of steps
    %g the function we are approximating

    i=1;
    
    while i<=N
        p=g(p0);
        if abs(p-p0) < TOL
            disp('We found it! The number of iterations is');
            disp(i);
            return 
        end
        
    i=i+1;
    
    p0=p;
    
    end
    
    
    disp('The fixed-point method is not working!')
    return 



end

