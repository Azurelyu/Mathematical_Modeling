function ResultsPlotting()
%% ��ȡ������Ϣ
SavingSettingsMat = load('OutputDataSettings.ini');
%����������ļ���
subfoldername = SavingSettingsMat(1);
%%
lanenodatafile = [num2str(subfoldername) '\����ռ�ó�������.txt'];
positiondatafile = [num2str(subfoldername) '\��������λ��.txt'];
speeddatafile = [num2str(subfoldername) '\����ÿһʱ���ٶ�.txt'];
cartypeinfofile = [num2str(subfoldername) '\����������Ϣ.txt'];

%%
LaneTakenDMat = importdata(lanenodatafile);
VehPositionDMat = importdata(positiondatafile);
SpeedDMat = importdata(speeddatafile);
VehicleInfoMat = load(cartypeinfofile);

%% 
[stepNum, carNum] = size(SpeedDMat);
[Volume SimTime TimeStep LaneNum CellNum VMAX] = GetBasicInfo();


%% 
travelTime = zeros(1,carNum);%ÿ����������ʱ��

for i = 1:carNum
    travelTime(1,i) = length(find(SpeedDMat(:,i)>=0));
end;
%%
meanSpeed = zeros(stepNum,1);%ƽ���ٶ�
meanQueue = zeros(stepNum,1);%ƽ���Ŷӳ���
volDensity = zeros(stepNum,1);%�ܶ�

for j = 1:stepNum
    existedCarIDs = find(SpeedDMat(j,:)>=0);
    volDensity(j,1) = sum(GetVehicleLength(existedCarIDs)) / (LaneNum * CellNum);
    meanQueue(j,1) = sum(GetVehicleLength(find(SpeedDMat(j,:)<=1)))/LaneNum;
    meanSpeed(j,1) = mean(SpeedDMat(j,SpeedDMat(j,:)>=0));
end;



%%
%%
%%
%%
end