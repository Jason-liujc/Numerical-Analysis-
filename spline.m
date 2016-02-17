function S=spline(x,y)
    %here, 0 is 1, 1 is 2, 2 is 3..etc
    % the size here is n+1
    
    n=max(size(x))-1;

    for i=1:n
        h(i)=x(i+1)-x(i);
    end
    
    
    for i=2:n
        y(i)=3/h(i)*(y(i+1)-y(i))-3/h(i-1)*(y(i)-y(i-1));
    end
    
    l(1)=1;
    u(1)=0;
    z(1)=0;
    
    for i=2:n
        l(i)=2*(y(i+1)-y(i-1))-h(i-1)*u(i-1);
        u(i)=h(i)/l(i);
        z(i)=(y(i)-h(i-1)*z(i-1))/l(i);
        
    end
    
    l(n+1)=1;
    z(n+1)=0;
    c(n+1)=0;
    
    temp=n;
    while temp>0
        c(temp)=z(temp)-u(temp)*c(temp+1);
        b(temp)=(y(temp+1)-y(temp))/h(temp)-h(temp)*(c(temp+1)+2*c(temp))/3;
        d(temp)=(c(temp+1)-c(temp))/3/h(temp);
        
        temp=temp-1;
    end
    
    S(:,1)=y;
    S(:,2)=b;
    S(:,3)=c;
    S(:,4)=d;
    
        

end
