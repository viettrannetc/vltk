Include("\\script\\dailogsys\\dailogsay.lua")

function MenuPlayerCard()

	do Talk(1, "", "Ph�n th��ng ch�a ���c c�p nh�t")
	return end
	
	local tbOpt = {"<dec><npc>Ng��i mu�n nh�n m�c n�p th� n�o?"};
		tinsert(tbOpt, "Ph�n th��ng ��t m�c n�p th� m�nh gi� 20.000 VN�/PlayerCard20k")
		tinsert(tbOpt, "Ph�n th��ng ��t m�c n�p th� m�nh gi� 50.000 VN�/PlayerCard20k")
		tinsert(tbOpt, "Ph�n th��ng ��t m�c n�p th� m�nh gi� 100.000 VN�/PlayerCard20k")
		tinsert(tbOpt, "K�t th�c ��i tho�i./no")
	CreateTaskSay(tbOpt)
end

function PlayerCard20k()
	if (CalcFreeItemCellCount() < 24) then
		Talk(1, "", "Vui l�ng s�p x�p l�i t�i h�nh trang c�a b�n r�i h�y nh�n th��ng")
	return end
	
	local nCount = GetCardPayment();
	if (nCount < 20) then
		Talk(1, "", "B�n �� �i�u ki�n �� nh�n m�c n�p th� n�y, vui l�ng l�m th�m ti�n �� nh�n h� tr� n�y")
	return end

	if (GetTaskModule(PLAYER_CHARGECARD, GetName(), TASKMODULE_CHARGECARD_20K) ~= 0) then
		Talk(1, "", "B�n �� nh�n ph�n th��ng n�y r�i, kh�ng th� nh�n th�m ���c n�a")
	return end
	-------------------------------- D� li�u nh�n th��ng -------------------------------------------------
	local tbAward = {
	}
	tbAwardTemplet:GiveAwardByList(tbAward, "H� tr� ph�n th��ng n�p th� - m�c 20k")
	SetTaskModule(PLAYER_CHARGECARD, GetName(), TASKMODULE_CHARGECARD_20K, 1)
	-----------------------------------------------------------------------------------------------------------
end

function PlayerCard50k()
	if (CalcFreeItemCellCount() < 24) then
		Talk(1, "", "Vui l�ng s�p x�p l�i t�i h�nh trang c�a b�n r�i h�y nh�n th��ng")
	return end
	
	local nCount = GetCardPayment();
	if (nCount < 50) then
		Talk(1, "", "B�n �� �i�u ki�n �� nh�n m�c n�p th� n�y, vui l�ng l�m th�m ti�n �� nh�n h� tr� n�y")
	return end

	if (GetTaskModule(PLAYER_CHARGECARD, GetName(), TASKMODULE_CHARGECARD_50K) ~= 0) then
		Talk(1, "", "B�n �� nh�n ph�n th��ng n�y r�i, kh�ng th� nh�n th�m ���c n�a")
	return end
	-------------------------------- D� li�u nh�n th��ng -------------------------------------------------
	local tbAward = {
	}
	tbAwardTemplet:GiveAwardByList(tbAward, "H� tr� ph�n th��ng n�p th� - m�c 50k")
	SetTaskModule(PLAYER_CHARGECARD, GetName(), TASKMODULE_CHARGECARD_50K, 1)
	-----------------------------------------------------------------------------------------------------------
end

function PlayerCard100k()
	if (CalcFreeItemCellCount() < 24) then
		Talk(1, "", "Vui l�ng s�p x�p l�i t�i h�nh trang c�a b�n r�i h�y nh�n th��ng")
	return end
	
	local nCount = GetCardPayment();
	if (nCount < 50) then
		Talk(1, "", "B�n �� �i�u ki�n �� nh�n m�c n�p th� n�y, vui l�ng l�m th�m ti�n �� nh�n h� tr� n�y")
	return end

	if (GetTaskModule(PLAYER_CHARGECARD, GetName(), TASKMODULE_CHARGECARD_100K) ~= 0) then
		Talk(1, "", "B�n �� nh�n ph�n th��ng n�y r�i, kh�ng th� nh�n th�m ���c n�a")
	return end
	-------------------------------- D� li�u nh�n th��ng -------------------------------------------------
	local tbAward = {
	}
	tbAwardTemplet:GiveAwardByList(tbAward, "H� tr� ph�n th��ng n�p th� - m�c 100k")
	SetTaskModule(PLAYER_CHARGECARD, GetName(), TASKMODULE_CHARGECARD_100K, 1)
	-----------------------------------------------------------------------------------------------------------
end