--- phi phong 5

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
	dofile("script/global/pgaming/phiphong5.lua");
		doi_ff_cap5()
		return -1
end

function doi_ff_cap5()
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
	ConsumeEquiproomItem(1,6,1,30360,-1)--xoa Item ff
	--ConsumeEquiproomItem(6,1,30360,0,0,0) ---  xoa tui ff	
	Talk(1, "", "Ch�c m�ng "..myplayersex().." �� nh�n ���c <color=green>Phi Phong 5 - D�ch Chuy�n T�c Th�i"); 		
end
function ff_sat_thuong()	
	tbAwardTemplet:GiveAwardByList(tb_ff_sat_thuong, "Mo tui phi phong");
	ConsumeEquiproomItem(1,6,1,30360,-1)--xoa Item ff
	Talk(1, "", "Ch�c m�ng "..myplayersex().." �� nh�n ���c <color=green>Phi Phong 5 - H�a Gi�i S�t Th��ng"); 		
end

function ff_trong_kich()	
	tbAwardTemplet:GiveAwardByList(tb_ff_trong_kich, "Mo tui phi phong");
	ConsumeEquiproomItem(1,6,1,30360,-1)--xoa Item ff
	Talk(1, "", "Ch�c m�ng "..myplayersex().." �� nh�n ���c <color=green>Phi Phong 5 - Tr�ng K�ch"); 		
end

-------------lay phi phong-----
tb_ff_dich_chuyen  =
{
		[1]	={szName = "Phi Phong 5", tbProp = {0,3470}, nQuality = 1, nCount = 1, nExpiredTime = 43200},
}
tb_ff_sat_thuong  =
{
		[1]	={szName = "Phi Phong 5", tbProp = {0,3471}, nQuality = 1, nCount = 1, nExpiredTime = 43200},
}
tb_ff_trong_kich  =
{
		[1]	={szName = "Phi Phong 5", tbProp = {0,3472}, nQuality = 1, nCount = 1, nExpiredTime = 43200},
}
