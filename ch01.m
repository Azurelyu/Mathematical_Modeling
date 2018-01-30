%  ����˥��������y�������İ�����y0    t��ȡֵ��Χ��[0,4��]
t=0:pi/50:4*pi;
y0=exp(-t/3);
y=exp(-t/3).*sin(3*t);
plot(t,y,'-r',t,y0,':b',t,-y0,':b')
grid


%����z����ʾ����ά����   x,y��ȡֵ��Χ��[?8,8] 
clear;
x=-8:0.5:8;
y=x';
X=ones(size(y))*x;
Y=y*ones(size(x));
R=sqrt(X.^2+Y.^2)+eps; %<5>
Z=sin(R)./R; %<6>
surf(X,Y,Z); 
colormap(cool) 
xlabel('x'),ylabel('y'),zlabel('z')

%��ָ������� who, whos ���� MATLAB �ڴ����
who
whos
clear y
whos


%���ƺ��� y = xe ? x �� 0 �� x �� 1 ʱ������
x=0:0.1:1
y=x.*exp(-x);
plot(x,y),xlabel('x'),ylabel('y'),title('y=x*exp(-x)')


%�������Ѱ��(Address)
rand('state',0)
x=rand(1,5)
x(3)
x([1 2 5])
x(1:3)
x(3:end) 
x(3:-1:1) 
x(find(x>0.5))
x([1 2 3 4 4 3 2 1])


%������ĸ�ֵ(Assign)
x(3)=0
x([1 4])=[1 1]