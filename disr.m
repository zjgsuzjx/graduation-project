function length= disr( C ,dis) 
length=0; 
for i=2:size(C,2) 
     length=dis(C(i-1),C(i))+length; 
end


