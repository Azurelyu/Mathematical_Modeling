% .      P25 .  ��3.4 .��Լ����ֵ�������ֵ��    fminunc,fminsearch
clc,clear
f = @(x) x(1)^3-x(2)^3+3*x(1)^2+3*x(2)^2-9*x(1);  %������������
g = @(x) -f(x);
[xy1,z1] = fminunc(f,rand(2,1)) % ��Сֵ
[xy2,z2] = fminsearch(g,rand(2,1)); %�󼫴�ֵ
xy2 , z2 = -z2



% .    https://wenku.baidu.com/view/f9054341a8956bec0875e305.html
% clear;
% x=-4:0.1:4;
% y=-4:0.1:4;
% [X,Y]=meshgrid(x,y);
% Z=X.^2+Y.^2-4*X-2*Y+7;
% contour(X,Y,Z,100)
% xlabel('x'),ylabel('y')
% contour(X,Y,Z,600)
% xlabel('x'),ylabel('y')


