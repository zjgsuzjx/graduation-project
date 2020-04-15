function [tempdis1 tempdis2 tempdis3 tempdis4 tempdis5 k1 k2 m2 k3 m3 x3 k4 m4 x4 y4 k5 m5 x5 y5 f5] = findis(i,rin,loc,dis)
tempdis1=9999999;
tempdis2=9999999;
tempdis3=9999999;
tempdis4=9999999;
tempdis5=9999999;
k1=-1;
k2=-1;m2=-1;
k3=-1;m3=-1;x3=-1;
k4=-1;m4=-1;x4=-1;y4=-1;
k5=-1;m5=-1;x5=-1;y5=-1;f5=-1;
if size(loc,2)==2
    for k=1:2
        if dis(1,rin(i,2))+dis(rin(i,2),loc(1,k))+dis(1,loc(1,k))<tempdis1
            tempdis1=dis(1,rin(i,2))+dis(rin(i,2),loc(1,k))+dis(1,loc(1,k));
            k1=k;
        end
    end
    for k=1:2
        for m=1:2
            if dis(loc(1,k),rin(i,2))+dis(1,loc(1,k))+dis(1,loc(1,m))+dis(loc(1,m),rin(i,2))<tempdis2
                tempdis2=dis(loc(1,k),rin(i,2))+dis(1,loc(1,k))+dis(1,loc(1,m))+dis(loc(1,m),rin(i,2));
                k2=k;m2=m;
            end
        end
    end
end

if size(loc,2)==3
    for k=1:3
        if dis(1,rin(i,2))+dis(rin(i,2),loc(1,k))+dis(1,loc(1,k))<tempdis1
            tempdis1=dis(1,rin(i,2))+dis(rin(i,2),loc(1,k))+dis(1,loc(1,k));
            k1=k;
        end
    end
    for k=1:3
        for m=1:3
            if dis(loc(1,k),rin(i,2))+dis(1,loc(1,k))+dis(1,loc(1,m))+dis(loc(1,m),rin(i,2))<tempdis2
                tempdis2=dis(loc(1,k),rin(i,2))+dis(1,loc(1,k))+dis(1,loc(1,m))+dis(loc(1,m),rin(i,2));
                k2=k;m2=m;
            end
        end
    end
    for k=1:3
        for m=1:3
            for x=1:3
                if k~=m&&dis(1,loc(1,k))+dis(loc(1,k),loc(1,m))+dis(loc(1,m),rin(i,2))+dis(rin(i,2),loc(1,x))+dis(loc(1,x),1)<tempdis3
                    tempdis3=dis(1,loc(1,k))+dis(loc(1,k),loc(1,m))+dis(loc(1,m),rin(i,2))+dis(rin(i,2),loc(1,x))+dis(loc(1,x),1);
                    k3=k;m3=m;x3=x;
                end
            end
        end
    end
end

if size(loc,2)==4
    for k=1:4
        if dis(1,rin(i,2))+dis(rin(i,2),loc(1,k))+dis(1,loc(1,k))<tempdis1
            tempdis1=dis(1,rin(i,2))+dis(rin(i,2),loc(1,k))+dis(1,loc(1,k));
             k1=k;
        end
    end
    for k=1:4
        for m=1:4
            if dis(loc(1,k),rin(i,2))+dis(1,loc(1,k))+dis(1,loc(1,m))+dis(loc(1,m),rin(i,2))<tempdis2
                tempdis2=dis(loc(1,k),rin(i,2))+dis(1,loc(1,k))+dis(1,loc(1,m))+dis(loc(1,m),rin(i,2));
                k2=k;m2=m;
            end
        end
    end
    for k=1:4
        for m=1:4
            for x=1:4
                if k~=m&&dis(1,loc(1,k))+dis(loc(1,k),loc(1,m))+dis(loc(1,m),rin(i,2))+dis(rin(i,2),loc(1,x))+dis(loc(1,x),1)<tempdis3
                    tempdis3=dis(1,loc(1,k))+dis(loc(1,k),loc(1,m))+dis(loc(1,m),rin(i,2))+dis(rin(i,2),loc(1,x))+dis(loc(1,x),1);
                    k3=k;m3=m;x3=x;
                end
            end
        end
    end
    for k=1:4
        for m=1:4
            for x=1:4
                for y=1:4
                    if k~=m&&x~=y&&dis(1,loc(1,k))+dis(loc(1,k),loc(1,m))+dis(loc(1,m),rin(i,2))+dis(rin(i,2),loc(1,x))+dis(loc(1,x),1)<tempdis4
                        tempdis4=dis(1,loc(1,k))+dis(loc(1,k),loc(1,m))+dis(loc(1,m),rin(i,2))+dis(rin(i,2),loc(1,x))+dis(loc(1,x),loc(1,y))+dis(loc(1,y),1);
                        k4=k;m4=m;x4=x;y4=y;
                    end
                end
            end
        end
    end
end

if size(loc,2)==5
    for k=1:5
        if dis(1,rin(i,2))+dis(rin(i,2),loc(1,k))+dis(1,loc(1,k))<tempdis1
            tempdis1=dis(1,rin(i,2))+dis(rin(i,2),loc(1,k))+dis(1,loc(1,k));
             k1=k;
        end
    end
    for k=1:5
        for m=1:5
            if dis(loc(1,k),rin(i,2))+dis(1,loc(1,k))+dis(1,loc(1,m))+dis(loc(1,m),rin(i,2))<tempdis2
                tempdis2=dis(loc(1,k),rin(i,2))+dis(1,loc(1,k))+dis(1,loc(1,m))+dis(loc(1,m),rin(i,2));
                k2=k;m2=m;
            end
        end
    end
    for k=1:5
        for m=1:5
            for x=1:5
                if k~=m&&dis(1,loc(1,k))+dis(loc(1,k),loc(1,m))+dis(loc(1,m),rin(i,2))+dis(rin(i,2),loc(1,x))+dis(loc(1,x),1)<tempdis3
                    tempdis3=dis(1,loc(1,k))+dis(loc(1,k),loc(1,m))+dis(loc(1,m),rin(i,2))+dis(rin(i,2),loc(1,x))+dis(loc(1,x),1);
                    k3=k;m3=m;x3=x;
                end
            end
        end
    end
    for k=1:5
        for m=1:5
            for x=1:5
                for y=1:5
                    if k~=m&&x~=y&&dis(1,loc(1,k))+dis(loc(1,k),loc(1,m))+dis(loc(1,m),rin(i,2))+dis(rin(i,2),loc(1,x))+dis(loc(1,x),loc(1,y))+dis(loc(1,y),1)<tempdis4
                        tempdis4=dis(1,loc(1,k))+dis(loc(1,k),loc(1,m))+dis(loc(1,m),rin(i,2))+dis(rin(i,2),loc(1,x))+dis(loc(1,x),loc(1,y))+dis(loc(1,y),1);
                        k4=k;m4=m;x4=x;y4=y;
                    end
                end
            end
        end
    end
    for k=1:5
        for m=1:5
            for x=1:5
                for y=1:5
                    for f=1:5
                        if k~=m&&m~=x&&y~=f&&dis(1,loc(1,k))+dis(loc(1,k),loc(1,m))+dis(loc(1,m),rin(i,2))+dis(rin(i,2),loc(1,x))++dis(loc(1,x),loc(1,y))+dis(loc(1,y),loc(1,f))+dis(loc(1,f),1)<tempdis5
                            tempdis5=dis(1,loc(1,k))+dis(loc(1,k),loc(1,m))+dis(loc(1,m),rin(i,2))+dis(rin(i,2),loc(1,x))++dis(loc(1,x),loc(1,y))+dis(loc(1,y),loc(1,f))+dis(loc(1,f),1);
                            k5=k;m5=m;x5=x;y5=y;f5=f;
                        end
                    end
                end
            end
        end
    end
end
