function [CellSpace VehicleSpace]= RefreshCellSpaceWithNewPosition(CellSpace,carid,carlength,oldi,oldj,newi,newj,VehicleSpace,speednext)
%����λ�ø�����λ��
[m n] = size(CellSpace);

if newj > n % �Ѿ��ߵ��˾�ͷ
    CellSpace = ReleaseCellTakenState(CellSpace,oldi,oldj,carlength);%��Ԫ�����
    VehicleSpace = ReleaseVehicleState(VehicleSpace,carid);
else
    CellSpace = ReleaseCellTakenState(CellSpace,oldi,oldj,carlength);%��Ԫ�����
    VehicleSpace = ReleaseVehicleState(VehicleSpace,carid);
    CellSpace = DeployCellTakenState(CellSpace,newi,newj,carid,carlength);%���·���
    VehicleSpace = DeployVehicleState(VehicleSpace,carid,speednext);
end;

end