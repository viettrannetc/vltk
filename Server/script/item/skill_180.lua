-- �ļ�������jinengmiji_90.lua
-- �����ߡ���wangjingjun
-- ���ݡ����������ɵ��ؼ��� ����ѧϰ90������
-- ����ʱ�䣺2011-07-12 15:59:01

Include("\\script\\dailogsys\\dailogsay.lua")
--������0 ����1  ����2  �嶾3   ��ü4  ����5   ؤ��6   ����7   �䵱8   ����9��
sbook_list =
{	-- ��ʽ��{����ID, ���ܵȼ�, ����ID, ���輶��, ����������, ��������}
	[4040] = {	
		{1220, 20, 0, 150, "Thi�u L�m M�t T�ch", "Thi�u L�m Th�t Truy�n - Kim Quy�n La H�n"},
	},
	[4039] = {	
		{1221, 20, 1, 150, "Thi�n V��ng M�t T�ch", "Thi�n V��ng Th�t Truy�n - Chinh Chi�n B�t Ph��ng"},
	},
	[4041] = {	 
		{1223, 20, 2, 150, "���ng M�n M�t T�ch ", "���ng M�n Th�t Truy�n - H�p Tinh Tr�n"},
	},
	[4042] = {	 
		{1222, 20, 3, 150, "Ng� ��c M�t T�ch", "Ng� ��c Th�t Truy�n - S�m La ��c H�i"},
	},
	[4043] = {	 
		{1224, 20, 4, 150, "Nga Mi M�t T�ch", "Nga My Th�t Truy�n - Ba La T�m Kinh"},
	},
	[4044] = {	 
		{1225, 20, 5, 150, "Th�y Y�n M�t T�ch", "Th�y Y�n Th�t Truy�n - Huy�n B�ng V� T�c"},
	},
	[4045] = {	 
		{1227, 20, 6, 150, "C�i Bang M�t T�ch", "C�i Bang Th�t Truy�n - � Y Quy�t"},
	},
	[4046] = {	 
		{1226, 20, 7, 150, "Thi�n Nh�n M�t T�ch", "Thi�n Nh�n Th�t Truy�n - Li�t H�a Ph�n Thi�n"},
	},
	[4047] = {	 
		{1228, 20, 8, 150, "V� �ang M�t T�ch ", "V� �ang Th�t Truy�n - Ch�n V� Th�t Ti�t"},
	},
	[4048] = {	 
		{1229, 20, 9, 150, "C�n L�n M�t T�ch", "C�n L�n Th�t Truy�n - Thi�n C��ng Kh�t K�nh"},
	},
}

function LearnSkillByBook(index, list, nItemIndex, nPlayerIndex)

	if(GetLastFactionNumber() ~= list[index][3]) then							-- ����ָ������
		Msg2Player("B�n c�m l�y "..list[index][5].."Nghi�n c�u c� n�a ng�y, k�t qu� c�ng kh�ng l�nh ng� ���c g� ")
		return 1
	end
	if(GetLevel() < list[index][4]) then							-- ��δ��ָ������
		Msg2Player("B�n c�m l�y "..list[index][5].."Nghi�n c�u c� n�a ng�y, k�t qu� l�nh ng� r�t �t. ")
		return 1
	end
	if(HaveMagic(list[index][1]) ~= -1) then							-- ��ѧ���ü���
		Msg2Player("B�n �� c�m "..list[index][5].."Nghi�n t�i ng�m lui, nh�ng c�ng kh�ng h�c ���c g� trong �� ")
		return 1
	end
	
	-- �жϵ�ǰ����Ʒ�Ƿ�Ϊ�����ؼ���������ɾ���������Ӽ���
	if CallPlayerFunction(nPlayerIndex, IsMyItem, nItemIndex) ~= 1 then
		return 
	end
	if CallPlayerFunction(nPlayerIndex, RemoveItemByIndex, nItemIndex) ~= 1 then
		WriteLog("H�y B� Thi�u L�m M�t T�ch th�t b�i")
		return 
	end
	
	AddMagic(list[index][1], list[index][2])										-- ѧ�Ἴ��

	WriteLog(date("%H%M%S")..": T�i kho�n:"..GetAccount()..", nh�n v�t:"..GetName()..", S� d�ng: "..list[index][5].."�� h�c ���c: "..list[index][6]);
	Msg2Player("�� h�c ���c k� n�ng "..list[index][6].."'. ")
	return 0
end

function selectskill(list, nItemIndex, nPlayerIndex)
	local szTitle = "��i hi�p mu�n h�c lo�i k� n�ng n�o"
	local tbOpt = {}
	for index,v in list do
		tinsert(tbOpt, {v[6], LearnSkillByBook, {index, list, nItemIndex, PlayerIndex}})
	end
	tinsert(tbOpt, {"�� ta suy ngh� l�i", cancel})
	CreateNewSayEx(szTitle, tbOpt)
end

function main(nItemIndex)
	Genre, DetailType, Particular=GetItemProp(nItemIndex)
	selectskill(sbook_list[Particular], nItemIndex, PlayerIndex)
	return 1
end
