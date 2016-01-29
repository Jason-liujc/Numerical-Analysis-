%Jiachen Liu  ID:404337478
function y=horner(coeffs,x0)
    n=length(coeffs)-1;
    if(n<0)
        display The coefficients cannot be empty!
        return;  
    end
    
    
    
    c=1;
    b=n;
  
    summ=0;
    while c<=n+1
        temp=coeffs(c);
   
        summ=summ+temp*power(x0,b);
        
        %display "summ: "
        %disp(summ);
        
        %display "mult "
        %disp(temp*power(x0,b))
        
        b=b-1;
        c=c+1;
    end
    
    
    disp(summ);

end
