TAB_NPC_DIALOG_BLH = {
	--ID	PosX	PosY	script	Name

}

Include("\\script\\activitysys\\config\\2\\ambience.lua")

function BLH()
	print("-----Load NPC Custom Ba Lang Huyen Success!--------")
	AddNpcBLH()
	--Add_Npc_Hello()
end

function AddNpcBLH()
	local nMapIndex = SubWorldID2Idx(53)
	for i=1,getn(TAB_NPC_DIALOG_BLH) do
		local npcdialog = AddNpc(TAB_NPC_DIALOG_BLH[i][1],0,nMapIndex,TAB_NPC_DIALOG_BLH[i][2]*32,TAB_NPC_DIALOG_BLH[i][3]*32,0,TAB_NPC_DIALOG_BLH[i][5])
		SetNpcKind(npcdialog,3)
		SetNpcScript(npcdialog,TAB_NPC_DIALOG_BLH[i][4])
	end
end

function OnTimer(nNpcIndex,nTimeOut)
	local tab_Chat = {
		"<color=green>Ch�o qu� qu� nh�n s� �� ��n v�i <color=red>V� L�m Offline Edit By PGaming<color>.",
		"<color=green>��i ng� k� thu�t c� kinh nghi�m trong vi�c v�n h�nh Game.",
		"<color=green><color=red>V� L�m Offline Edit By PGaming<color> n�i h�a h�n �em ��n 1 s�n ch�i c�c k� h�p d�n",
		"<color=green>H�y mau ch�ng ho�n th�nh nhi�m v� �� c� th� nh�n ���c �i�m <color=red>Tinh L�c",
		"<color=green>C�n ch� g� n�a h�y nhanh ch�n b�n t�u giang h� n�o.",
		"<color=green>Server l�u d�i qu� nh�n s� c� an t�m m� chi�n.",
		"<color=green>H�y Share v� Like Youtube PGaming �� c� th� gi�i thi�u ��n m�i ng��i.",
		"<color=green>Ch�ng ta h�y chung tay v� 1 c�ng ��ng Game V� L�m Offline v�ng m�nh.",
	}
	local ran = random(1,getn(tab_Chat))
	NpcChat(nNpcIndex,tab_Chat[ran])
	local ranTimer = random(15,30)
	SetNpcTimer(nNpcIndex,ranTimer*18)
	SetNpcScript(nNpcIndex,"\\script\\global\\pgaming\\vsd\\initmonster.lua")
end

function Add_Npc_Hello()
	local tb_npc_hello = {
		{1613,3212},
		{1628,3218},
		{1600,3195},
		{1595,3177},
		{1613,3212},
		{1579,3159},
		{1597,3226},
		{1584,3244},
		{1604,3212},
		{1595,3219},
		{1606,3207},
		{1589,3232},
	}
	local nMapIndex = SubWorldID2Idx(53)
	for i=1,getn(tb_npc_hello) do
		--for j=1,5 do
			local npcID	= random(1786,1795)
			local npcName = "Ch�o M�ng T�n Th�"
			local ranX = random(1,5)
			local ranY = random(1,5)
			local npcdialog = AddNpc(npcID,0,nMapIndex,(tb_npc_hello[i][1]+ranX)*32,(tb_npc_hello[i][2]+ranY)*32,0,npcName,1)
			SetNpcTimer(npcdialog,5*18)
			SetNpcScript(npcdialog,"\\script\\global\\pgaming\\vsd\\initmonster.lua")
		--end
	end
end