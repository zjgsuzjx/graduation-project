function locserve=countloc(rf,loc,M) 
m=size(M,1); 
k=size(loc,2); 
locserve=zeros(1,k); 
for i=1:k 
     [a,b]=find(rf==loc(i)); 
     c=sort(a);
     d = [1;diff(c)]; 
e = c(find(d~=0)); 
locserve(i)=size(e,1); 
end 
