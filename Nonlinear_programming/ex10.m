% .   P31    ��3.14 .   �����ݶ����Լ���Ż�����
options=optimset('GradObj','on','GradConstr','on');
[x,y]=fmincon(@fun10,rand(2,1),[],[],[],[],[],[],@fun11,options)