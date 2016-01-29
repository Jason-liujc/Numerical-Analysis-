function p=newton(p0, TOL, N,g, g2)
    %p0 initial approximation
    %TOL tolerance
    %N number of steps
    %g the function we are approximating

    i=1;
    
    while i<N
        p=p0-g(p0)/g2(p0);
        if abs(p-p0) < TOL
            disp('It worked!')
            disp(i);
            return
        end
        
        
        i=i+1;
        
        p0=p;
        
        
    end
    

    
    disp('The newton method is not working!')
    return 



end

