% mac��excel�����쳣�����д�����ݻ���ʾ 
% ��Warning: Could not start Excel server for export. XLSWRITE will attempt to write file in CSV format. > In xlswrite (line 174)�� 
% �������ص����ݲ��ᱣ�浽excel������½�һ��csv�ļ���ԭ����MAC�ϵ�officeĿǰ��֧��COM�ӿڡ� 
% ����MAC�û�ί����ȫ����csvread/csvwrite�ɣ�csv�ļ���Ӧ��Ҳ�ܹ㷺~
% Ȼ��ò��csvwrite�޷�������д��ָ����...


% .  P174 . ��8.3  ����ָ��ƽ����
clc,clear
yt=load('fadian.txt');  %ԭʼ���������������������ķ�ʽ����ڴ��ı��ļ���
n=length(yt), alpha=0.3; st1(1)=yt(1); st2(1)=yt(1);
for i=2:n
    st1(i)=alpha*yt(i)+(1-alpha)*st1(i-1);
    st2(i)=alpha*st1(i)+(1-alpha)*st2(i-1);
end
xlswrite('fadian.xls',[st1',st2']) %������д���Sheet1�е�ǰ����
at=2*st1-st2;
bt=alpha/(1-alpha)*(st1-st2);
yhat=at+bt;  %����һ������Ϊ1986���Ԥ��ֵ
xlswrite('fadian.xls',yhat','Sheet1','C2') %��Ԥ��ֵд���3��
str=['C',int2str(n+2)]; %׼��д1987��Ԥ��ֵλ�õ��ַ���
xlswrite('fadian.xls',at(n)+2*bt(n),'Sheet1',str)%��1987��Ԥ��ֵд����Ӧλ��
