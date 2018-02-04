function [ CellSpace_nextstep VehicleSpace ] = TrafficSimulating( SimTime,TimeStep,CellSpace_current, CellSpace_nextstep, VehicleSpace,VMAX )
%TRAFFICSIMULATING Summary of this function goes here
%   �����������
CellSpace_Init = CellSpace_nextstep;
%   ��ȡ�ź���ʱ����
SignalCycleMat = load('SignalCycleInfo.ini');
sCycle = SignalCycleMat(1);%���ڳ���
sGreenTime = SignalCycleMat(2);%�̵�ʱ��
sRedTime = SignalCycleMat(3);%���ʱ��
%% �Ƿ���ػ���ģ��
LaneChangingModelINIMat = load('LaneChangingModeInfo.ini');
UseLaneChangingModelFlag = LaneChangingModelINIMat(1);

%%
%ʱ�䲽����ʱ����������������ϵ
for iStep = 1:TimeStep:SimTime
    %�ж��ź���ʱ
    tCurrentMod = mod(iStep,sCycle);
    if tCurrentMod <= sGreenTime
        signalFlag = 0;
    else
        signalFlag = 1;
    end;
    %��ѰԪ���ϴ��ڵĳ��������ÿ��Ԫ���ĳ���ռ��������Լ�ռ�ó����ı��
    [TakenMat TakenCarHeadMat TakenCarIDMat] = SearchCellSpaceForTaken(CellSpace_current);
    %����ÿ�������ĸ�����Ϣ
    [CellSpace_nextstep VehicleSpace] = CountingNextStepVehicleState(CellSpace_current,CellSpace_nextstep,VehicleSpace,TakenMat, TakenCarIDMat,VMAX,signalFlag,UseLaneChangingModelFlag);
    %�ж��Ƿ��³����������³��ĸ�����Ϣ
    %����Ԫ���ռ�
    [CellSpace_nextstep VehicleSpace] = AddingNewCarsToEntry(CellSpace_current,CellSpace_nextstep,VehicleSpace);
    %
    %ͳ�������Ϣ
    %��������
    SavingDataAsFiles(CellSpace_current,VehicleSpace,TakenMat,TakenCarHeadMat,TakenCarIDMat);
    %����ͼ��
    DrawingCellSpace(TakenMat);
    
    %������һ��ѭ��
    CellSpace_current = CellSpace_nextstep;
    CellSpace_nextstep = CellSpace_Init;
end;



end

