--���ϱ��� ���� �������ĵ��ӶԻ�
-- Update: Dan_Deng(2003-08-21) ����������ֻ��������

function main(sel)
	Uworld37 = GetByte(GetTask(37),1)
	if (GetFaction() == "tangmen") or (Uworld37 == 127) then
		Say("Nh�ng binh kh� n�y ��u do 'Ph�ng �m kh�' v� 'Ph�ng h�a kh�' b�n m�n ta ch� t�o, kh�ng � n�i n�o c�!", 2, "Giao d�ch/yes", "Kh�ng giao d�ch/no")
	else
		Talk(1,"","M�n ch� c� l�nh, binh kh� c�a b�n m�n kh�ng th� b�n cho ng��i ngo�i!")
	end
end;

function yes()
Sale(54)
end;

function no()
end;
