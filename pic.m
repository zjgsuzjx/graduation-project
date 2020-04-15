function pic( rf ,V) 
%PIC Summary of this function goes here 
%    Detailed explanation goes here 
m=size(rf,1); 
n=size(rf,2); 
X=zeros(1,n); 
Y=zeros(1,n); 
color=['b' 'c' 'g' 'k' 'm' 'r' 'y']; 
for i=1:m 
     for j=1:n 
         X(j)=V(rf(i,j),1); 
         Y(j)=V(rf(i,j),2); 
     end 
     cn=ceil(7*rand(1)); 
     a=color(cn); 
     plot(X,Y,a); 
     hold on; 
end 
