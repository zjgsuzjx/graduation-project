function ft=testr(C,num_m,limit,dis) 
sum=0; 
for i=2:size(C,2) 
     sum=sum+dis(C(1,i-1),C(1,i)); 
     if sum>limit 
         fe=1; 
         break; 
     elseif C(1,i)<=1+num_m&sum<=limit 
         sum=0; 
         fe=0; 
     elseif C(1,i)>1+num_m&sum<=limit 
        fe=0; 
     end 
end 
ft=fe; 
