-- Sript by ThongHonPro
--Auto : ThongHonPro
-- Date : 2-1-2017
-------Doi Phi Phong 10
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")

function myplayersex()
	if GetSex() == 1 then 
		return "N� hi�p";
	else
		return "��i hi�p";
	end
	--      "..myplayersex().."
end

function main()
	dofile("script/global/pgaming/phiphong10.lua");
		doi_ff_cap10()
		return -1
end
--- Phi Phong 10
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")

function doi_ff_cap10()
	local opt = 
	{
		"<dec><npc>M�i "..myplayersex().." ch�n phi phong? ",
		"Phi Phong - Tr�ng K�ch/ff_trong_kich",
		"Phi Phong - D�ch Chuy�n T�c Th�i/ff_dich_chuyen",
		"Phi Phong - H�a Gi�i S�t Th��ng/ff_sat_thuong",
	}
	tinsert(opt,"�� ta suy ngh� th�m/cancel")
	CreateTaskSay(opt);
end
function ff_dich_chuyen()	
	--AddGoldItem(0,3485)
	tbAwardTemplet:GiveAwardByList(tb_ff_dich_chuyen, "Mo tui phi phong");
	ConsumeEquiproomItem(1,6,1,30469,-1)--xoa Item ff
	--ConsumeEquiproomItem(6,1,30469,0,0,0) ---  xoa tui ff	
	Talk(1, "", "Ch�c m�ng "..myplayersex().." �� nh�n ���c <color=green>Phi Phong 10 - D�ch Chuy�n T�c Th�i"); 		
end
function ff_sat_thuong()	
	tbAwardTemplet:GiveAwardByList(tb_ff_sat_thuong, "Mo tui phi phong");
	ConsumeEquiproomItem(1,6,1,30469,-1)--xoa Item ff
	Talk(1, "", "Ch�c m�ng "..myplayersex().." �� nh�n ���c <color=green>Phi Phong 10 - H�a Gi�i S�t Th��ng"); 		
end

function ff_trong_kich()	
	tbAwardTemplet:GiveAwardByList(tb_ff_trong_kich, "Mo tui phi phong");
	ConsumeEquiproomItem(1,6,1,30469,-1)--xoa Item ff
	Talk(1, "", "Ch�c m�ng "..myplayersex().." �� nh�n ���c <color=green>Phi Phong 10 - Tr�ng K�ch"); 		
end

-------------lay phi phong-----
tb_ff_dich_chuyen  =
{
		[1]	={szName = "Phi Phong 10", tbProp = {0,3485}, nQuality = 1, nCount = 1, nExpiredTime = 43200},
}
tb_ff_sat_thuong  =
{
		[1]	={szName = "Phi Phong 10", tbProp = {0,3486}, nQuality = 1, nCount = 1, nExpiredTime = 43200},
}
tb_ff_trong_kich  =
{
		[1]	={szName = "Phi Phong 10", tbProp = {0,3487}, nQuality = 1, nCount = 1, nExpiredTime = 43200},
}

--4772