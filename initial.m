function [saving rf numrin loc] = initial(nl,rf,rin,saving,dis,r,I,d,loc)
%INITIAL 初始化路径
numrin=0;
j=1;
z=1;
for i=12:41
    if dis(1,i)*2<100
        rf(j,2)=i;
        j=j+1;
    else
        rin(z,2)=i;
        z=z+1;numrin=numrin+1;
    end
end
zzz=z-1;
z=j;
for i=1:zzz
    [tempdis1 tempdis2 tempdis3 tempdis4 tempdis5 k1 k2 m2 k3 m3 x3 k4 m4 x4 y4 k5 m5 x5 y5 f5] = findis(i,rin,loc,dis);
    if tempdis1<200  %只要其中一条符合要求
        rf(z,2)=loc(1,k1);
        rf(z,3)=rin(i,2);
        rin(i,2)=1;
        z=z+1;
        numrin=numrin-1;
    else 
        if tempdis2<300
            rf(z,2)=loc(1,k2);
            rf(z,4)=loc(1,m2);
            rf(z,3)=rin(i,2);
            rin(i,2)=1;
            z=z+1;
            numrin=numrin-1;
        else
            if tempdis3<400
                rf(z,2)=loc(1,k3);
                rf(z,4)=rin(i,2);
                rf(z,3)=loc(1,m3);
                rf(z,5)=loc(1,x3);
                rin(i,2)=1;
                z=z+1;
                numrin=numrin-1;
            else
                if tempdis4<500
                    rf(z,2)=loc(1,k4);
                    rf(z,4)=rin(i,2);
                    rf(z,3)=loc(1,m4);
                    rf(z,5)=loc(1,x4);
                    rf(z,6)=loc(1,y4);
                    rin(i,2)=1;
                    z=z+1;
                    numrin=numrin-1;
                else
                    if tempdis5<600
                        rf(z,2)=loc(1,k5);
                        rf(z,4)=loc(1,x5);
                        rf(z,3)=loc(1,m5);
                        rf(z,5)=rin(i,2);
                        rf(z,6)=loc(1,y5);
                        rf(z,7)=loc(1,f5);
                        rin(i,2)=1;
                        z=z+1;
                        numrin=numrin-1;
                    end
                end
            end
        end
    end
end





