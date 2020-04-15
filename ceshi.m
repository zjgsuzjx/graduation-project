clc;clear;
vNum=3;  %车数量
cityNum=9; %城市数量
vCapacity=20; %单车容量
demands=[0,1,2,3,2,3,3,2,3]; %需求量
x=[81.5,87,75,80,89,77,76,87,73];
y=[41.5,41,53,38,41,58,45,53,38];
axis=[x' y']; %城市坐标
Cij = zeros(cityNum);%计算城市之间的距离
for i=1:(cityNum)
    for j=1:i
        x1 = axis(i,1);
        y1 = axis(i,2);
        x2 = axis(j,1);
        y2 = axis(j,2);
        Cij(i,j)=sqrt((x1-x2)^2+(y1-y2)^2);
        Cij(j,i)=Cij(i,j);
    end
end
%% 决策变量
Xijk=binvar(cityNum,cityNum,vNum,'full');
%% 目标函数
obj=0;
for i=1:cityNum
    for j=1:cityNum
        for k=1:vNum
            obj=obj+Cij(i,j)*Xijk(i,j,k);
        end
    end
end
f=obj
f
F=[];
%% 求解
ops = sdpsettings( 'solver','cplex');
sol=solvesdp(F,f,ops);
f=value(f);
Xijk=value(Xijk);

