-- �ٰ���ְ�ܡ�ҩ���ϰ�
-- by��Dan_Deng(2003-09-16)
Include("\\script\\config\\cfg_features.lua")

-- ���ƻ�Ԫ��¶
function refine()
	DynamicExecute("\\script\\global\\jingli.lua", "dlg_entrance", PlayerIndex)
end

function main()
	local tbSay = {}
	tinsert(tbSay,"Giao d�ch/yes")
	if CFG_HONNGUYENLINHLO == 1 then
	tinsert(tbSay,"Ta mu�n ch� t�o H�n Nguy�n Linh L�/refine")
	end
	tinsert(tbSay,"Kh�ng giao d�ch/Cancel")
	Say(10855,getn(tbSay),tbSay)
end;

function yes()
	Sale(12)  				--�������׿�
end
