%Jiachen Liu  ID:404337478   Three-digit Chopping
function y=chop3()
format long
a=(1:10)';

%generate the list of 1/i^3 numbers

arr1=1./power(a,3);
arr2=[];
%now we try to chop those numbers

for i=1:10
    num=arr1(i);
    temp=0;  % the temporary counter for counting the number of 10 we 
    %multiply to the number
    
    %make the number larger than 100
    while num<100
        num=num*10;
        temp=temp+1;
    end
    
    num2=floor(num); % close to the number we want
    
    num2=num2/(power(10,temp));
    arr2=cat(1,arr2,num2); %adding the number to the array, arr2 is what we
                           %want.   
end

%now arr2 is the chopped result.

arr3=flipud(arr2);


summ=0;


for i=1:10
    
    counter=0;
    temp=arr2(i);
    summ=summ+temp;
    while summ<100
          summ=summ*10;
          counter=counter+1;  %remember how many 10's did we divid.
    end
    
    summ2=floor(summ);
    summ2=summ2/(power(10,counter));
    %disp(summ2);
    summ=summ2;
 
end
disp('The original array: ');
disp(summ);

%%%%%now we do the reverse array
summ=0;

for i=1:10
    
    counter=0;
    temp=arr3(i);
    summ=summ+temp;
    while summ<100
          summ=summ*10;
          counter=counter+1;  %remember how many 10's did we divid.
    end
    
    summ2=floor(summ);
    summ2=summ2/(power(10,counter));
    %disp(summ2);
    summ=summ2;
 
end
disp('The reversed array: ');
disp(summ);


disp('Without chopping: ');
disp(sum(arr1));
    

end
