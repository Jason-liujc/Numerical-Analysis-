function [P Q]=divdif(x,y)
    n=max(size(x));
    
    for i=1:n
        for j=1:n
            Q(i,j)=(Q(i,j-1)-Q(i-1,j-1))/(x(i)-x(i-j));
        end
        
    end
    
    
    P=diag(Q);
    

    


end
