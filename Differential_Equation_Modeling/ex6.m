% .  P115 . ��6.3 . ��ⳣ΢�ַ�����
clc,clear
syms f(x) g(x) %������ű���
df=diff(f); %����f��һ�׵��������ڳ�ֵ���ֵ�����ĸ�ֵ
[f1,g1]=dsolve(diff(f,2)+3*g==sin(x),diff(g)+df==cos(x)) %��ͨ��
f1=simplify(f1),g1=simplify(g1) %�Է��Ž���л���
[f2,g2]=dsolve(diff(f,2)+3*g==sin(x),diff(g)+df==cos(x),df(2)==0,f(3)==3,g(5)==1)
f2=simplify(f2),g2=simplify(g2) %�Է��Ž���л���

%����...
equ1='D2f+3*g=sin(x)';
equ2='Dg+Df=cos(x)';
[general_f,general_g]=dsolve(equ1,equ2,'x')  %��ͨ��
[f,g]=dsolve(equ1,equ2,'Df(2)=0,f(3)=3,g(5)=1','x')
