function p=secant(p0, p1, TOL, N, f)

    i=2;
    q0=f(p0);
    q1=f(p1);
    
    
    while i<=N
        p=p1-q1*(p1-p0)/(q1-q0);
        if abs(p-p1) <TOL
            disp('It worked!')
            disp(i);
            return
            
        end
        
        i=i+1;
        
        p0=p1;
        q0=q1;
        p1=p;
        
        q1=f(p);
        
    end
    
    disp('It did not work!')





end
