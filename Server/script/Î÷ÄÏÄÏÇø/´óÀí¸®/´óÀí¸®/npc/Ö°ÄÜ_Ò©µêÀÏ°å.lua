-- ���� ְ�� ҩ���ϰ�
-- By: Dan_Deng(2003-09-16)
Include( "\\script\\event\\teacherday\\teacherdayhead.lua" )
Include( "\\script\\event\\teacherday\\medicine.lua" )
Include("\\script\\config\\cfg_features.lua")
OPTIONS = {}

function refine()
	DynamicExecute("\\script\\global\\jingli.lua", "dlg_entrance", PlayerIndex)
end

function main()
	Say("Ti�m ta s�ng nh� �i�m Th��ng s�n, tr�n �� c� h�ng ng�n lo�i th�o d��c.",
		getn(OPTIONS),
		OPTIONS)
end;

function yes()
	Sale(12)  			--�������׿�
end

if TEACHERSWITCH then
	tinsert(OPTIONS, "Gi�p ta c�t d��c t�u/brew")
end
tinsert(OPTIONS, "Giao d�ch/yes")
if CFG_HONNGUYENLINHLO == 1 then
	tinsert(OPTIONS, "Ta mu�n ch� t�o H�n Nguy�n Linh L�/refine")
end
tinsert(OPTIONS, "Kh�ng giao d�ch/Cancel")
