--ؤ�� ��װ���ĵ��ӶԻ�

function main(sel)
	Uworld30 = GetByte(GetTask(30),2)
	if (GetFaction() == "gaibang") or (Uworld30 == 127) then
		Say("Th�n l� �� t� C�i Bang, c�n ph�i gian kh� r�n luy�n �� b�o v� ch�nh ngh�a", 2, "Giao d�ch/yes", "Kh�ng giao d�ch/no")
	else
		Talk(1,"","Bang ch� c� l�nh: trang b� c�a b�n m�n kh�ng ���c b�n cho ng��i ngo�i")
	end
end;

function yes()
Sale(73)
end;

function no()
end;
