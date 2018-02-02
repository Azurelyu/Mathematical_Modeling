% .   P46 .  �����sb���յ�dbͨ�õ�Floyd�㷨����
function [dist,mypath]=myfloyd(a,sb,db);
% ���룺a?�ڽӾ���Ԫ��(aij)�Ƕ���i��j֮���ֱ����룬�����������
% sb?���ı�ţ�db?�յ�ı��
% �����dist?���·�ľ��룻% mypath?���·��·��

%example:
a=zeros(6); %�ڽӾ����ʼ��
a(1,2)=50;a(1,4)=40;a(1,5)=25;a(1,6)=10;
a(2,3)=15;a(2,4)=20;a(2,6)=25;
a(3,4)=10;a(3,5)=20;
a(4,5)=10;a(4,6)=25;
a(5,6)=55;
a=a+a';
sb=1;
db=4;
%

n=size(a,1); path=zeros(n);
for k=1:n
    for i=1:n
        for j=1:n
            if a(i,j)>a(i,k)+a(k,j)
                a(i,j)=a(i,k)+a(k,j);
                path(i,j)=k;
            end
        end
    end
end
dist=a(sb,db);
parent=path(sb,:); %�����sb���յ�db�����·�ϸ������ǰ������
parent(parent==0)=sb; %path�еķ���Ϊ0����ʾ�ö����ǰ�������
mypath=db; t=db;
while t~=sb
        p=parent(t); mypath=[p,mypath];
        t=p;
end
dist
mypath
