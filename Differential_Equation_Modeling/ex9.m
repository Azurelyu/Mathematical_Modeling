%    P116 . ��6.6
clc,clear
syms g t(h) %������ų����ͱ���
t=dsolve(diff(t)==10000*pi/sqrt(2*g)*(h^(3/2)-2*h^(1/2)),t(1)==0) %����Ž�
t=simplify(t) %����
pretty(t) %�����߾��е���ʾ��ʽ

%����...
t=dsolve('Dt=10000*pi/sqrt(2*g)*(h^(3/2)-2*h^(1/2))','t(1)=0','h');
t=simplify(t), pretty(t)