% .  P118 . �����Է��ϵĴ��� �����
clc,clear
syms m V rho g k t 
v=dsolve('m*Dv-m*g+rho*g*V+k*v^2','v(0)=0'); 
v=subs(v,{m,V,rho,g,k},{239.46,0.2058,1035.71,9.8,0.6});
v=simplify(v); v=vpa(v,6)  %��ʾС����ʽ���ٶȺ���
tt=solve(v-12.2)   %��ʱ����ٽ�ֵT
tt=double(tt)
s=int(v,0,tt)      %��λ�Ƶ��ٽ�ֵ
