% .    P88 .    ��5.1 �����ӹ�   Ҫ���÷ֶ����Ժ������������ֲ�ֵ��������
x0=[0   3   5   7   9   11   12   13   14  15];
y0=[0  1.2  1.7  2.0  2.1  2.0  1.8  1.2   1.0  1.6];
x=0:0.1:15;
y1=interp1(x0,y0,x);
y2=interp1(x0,y0,x,'spline');
pp1=csape(x0,y0);
y3=ppval(pp1,x);
pp2=csape(x0,y0,'second');
y4=ppval(pp2,x);
[x',y1',y2',y3',y4']
subplot(1,3,1)   
%subplot�ǽ����ͼ����һ��ƽ���ϵĹ��ߡ�
% ʹ�÷�����subplot��m,n,p������subplot��m n p����
% ���У�m��ʾ��ͼ�ų�m�У�n��ʾͼ�ų�n�У�
% Ҳ��������figure����n��ͼ���ų�һ�еģ�һ��m�У����m=2���Ǳ�ʾ2��ͼ��
% p��ʾͼ���ڵ�λ�ã�p=1��ʾ�����Ҵ��ϵ��µĵ�һ��λ�á�
plot(x0,y0,'+',x,y1)
title('Piecewise linear')
subplot(1,3,2)
plot(x0,y0,'+',x,y2)
title('Spline1')
subplot(1,3,3)
plot(x0,y0,'+',x,y3)
title('Spline2')
dx=diff(x);
dy=diff(y3);
dy_dx=dy./dx;
dy_dx0=dy_dx(1)
ytemp=y3(131:151);
ymin=min(ytemp);
index=find(y3==ymin);
xmin=x(index);
[xmin,ymin]
