% .  P116 . ��6.5 . ������Գ�΢�ַ����� ��������Է�����
clc,clear
syms x(t) y(t) z(t) %������ű���
X=[x;y;z];A=[1 0 0;2 1 -2;3 2 1];B=[0;0;exp(t)*cos(2*t)];
X0=[0;1;1]; %��ֵ����
X=dsolve(diff(X)==A*X+B,X(0)==X0) %����Ž�
X=simplify([X.x;X.y;X.z]) %��ʾ��ĸ�������
pretty(X) %�����߾��е���ʾ��ʽ

%����...
syms t s
a=[1,0,0;2,1,-2;3,2,1];fs=[0;0;exp(s)*cos(2*s)];
x0=[0;1;1];
tx=int(expm(a*(t-s))*fs,s);  %���󲻶�����
xstar=subs(tx,s,t)-subs(tx,s,0); %���󶨻��֣����������ٶȿ�
x=expm(a*t)*x0+xstar;
x=simplify(x), pretty(x)
