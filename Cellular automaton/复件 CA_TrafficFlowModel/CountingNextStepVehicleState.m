function [CellSpace_nextstep VehicleSpace] = CountingNextStepVehicleState(CellSpace_current,CellSpace_nextstep,VehicleSpace,TakenMat, TakenCarIDMat,VMAX,signalFlag,UseLaneChangingModelFlag)
%������һʱ�̵�Ԫ���ռ�״̬

%��ȡ��ǰʱ��Ԫ���ռ��еĳ�����Ϣ��
[VehicleInCellSpaceMat]=GetVehicleInCellSpace(CellSpace_current,TakenMat,TakenCarIDMat);

if isempty(VehicleInCellSpaceMat) == 1 %���Ϊ��
    return;
end;
%��ÿ���������б�����%��ȡÿ�����������ݣ��Լ��ھӳ���������
%����ÿ����������һʱ��״̬�����µ���һʱ�̵�Ԫ���ռ���

[CellSpace_nextstep VehicleSpace] = UpdataCellSpaceWithVehicleInfo(CellSpace_current,CellSpace_nextstep,VehicleSpace,VehicleInCellSpaceMat,VMAX,signalFlag,UseLaneChangingModelFlag);

end