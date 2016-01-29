%Jiachen Liu  ID:404337478
function p=bisection(a,b,TOL,N,f)


    i=1;
    FA=f(a);
    while i<=N
        temp=(b-a)/2;
        p=a+temp;
        FP=f(p);
        if (FP==0) || (temp<TOL)
            disp('We found it!');
            return
        end
        
        i=i+1;
        
        if(FA*FP>0)
            a=p;
            FA=FP;
        else
            b=p;
        end
        
        
    end
    
    disp('The Biseciton method failed after N iterations.'); 
    return 





end

