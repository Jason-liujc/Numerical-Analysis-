function p=false_position(p0,p1,TOL,N,f)


    i=2;
    q0=f(p0);
    q1=f(p1);
    
    while i<=N
        p=p1-q1*(p1-p0)/(q1-q0);
        if abs(p-p1) < TOL
                disp('The procedure was successful');
                disp(i)
                return;
        end
        
        i=i+1;
        
        q=f(p);
        
        if q*q1<0
            p0=p1;
            q0=q1;
        end
        
        p1=p;
        q1=q;
        
    end
    
    disp('Method failed after'+N+' iterations');
    
    return 








end
