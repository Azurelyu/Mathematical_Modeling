function istaken = IsCellTaken(CellSpace,laneid,startTag,endTag)
%��startTag��ʼ��endTag��������ЩԪ���Ƿ��ǿ��У���һ�������ϱ�ռ�÷���1
for i = startTag:1:endTag
    if GetCellTakenState(CellSpace,laneid,i) == 1
        istaken = 1;
        return;
    end;
end;

istaken = 0;%��ЩԪ��ȫ������

end