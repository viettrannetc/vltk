--Edit by NamCungNhatThien
--Date: 31-08-2015
--http://www.clbgamesvn.com/
--*****************************************
Include("\\script\\missions\\citywar_global\\infocenter_head.lua")
MapTab = {};
MapTab[1]= {213, 1633, 3292};
MapTab[2]= {214, 1633, 3292};
MapTab[3]= {215, 1633, 3292};
MapTab[4]= {216, 1633, 3292};
MapTab[5]= {217, 1633, 3292};
MapTab[6]= {218, 1633, 3292};
MapTab[7]= {219, 1633, 3292};
MapTab[8]= {220, 1633, 3292};
MapCount = getn(MapTab);

function main()
	dofile("script/missions/citywar_global/infocenter.lua")
	ArenaBaoDanh()				--L�i ��i
	--ArenaMain()				--Khi�u chi�n l�nh
	--Say("M�i th�c m�c v� c�ng th�nh chi�n c� th� ��n NPC <color=red>xa phu c�ng th�nh<color> g�n c�c xa phu th�nh th� �� t�m hi�u")
end
--*******************************Menu L�i ��i*********************************************************************
function ArenaBaoDanh()
	local nCityId = getSigningUpCity(1);--GetArenaTargetCity()
	--if (tonumber(GetLocalDate("%H"))>= 18 and tonumber(GetLocalDate("%H")) < 19 and IsSigningUp(nCityId) == 1) then
	if (IsSigningUp(nCityId) == 1) then
		Say(format("Hi�n gi� <color=yellow>%s<color> l�i ��i C�ng Th�nh Chi�n �ang bao danh, c�c h� c� mu�n b�o danh cho bang h�i c�a m�nh kh�ng?",GetCityAreaName(nCityId)), 
			3, 
			"V�ng ta ��n �� b�o danh/SignUpTheOne", 
			"Kh�ng, ta ch� t�m hi�u th�ng tin v� vi�c d� tuy�n thi ��u/OnHelp",
			"Bi�t r�i, ta �i tr��c ��y /OnCancel");
	else
		if(WhichArenaBegin()~=0) then	
			Say("��y l� n�i ngh� s� c�ng th�nh chi�n, ng��i ��n c� vi�c g�?", 
				3,
				"V�o ��u tr��ng t� v�/PreEnterGame",
				"T�m hi�u th�ng tin v� vi�c d� tuy�n thi ��u/OnHelp",
				"Bi�t r�i, ta �i tr��c ��y /OnCancel");
		else
			Say("��y l� n�i ngh� s� c�ng th�nh chi�n, ng��i ��n c� vi�c g�?", 
				4,
				"Tham gia c�ng th�nh chi�n tr��ng/CTC",
				"T�m hi�u th�ng tin v� vi�c d� tuy�n thi ��u/OnHelp",
				"Mua d�ng c� h� tr� C�ng th�nh chi�n/AskDeal",
				"Bi�t r�i, ta �i tr��c ��y /OnCancel");
		end

	end
end

function CTC()
	CityID = WhichWarBegin();
	if (CityID >= 1 and CityID <= 7) then
		GoCityWar()
	else
		Say("C�ng th�nh chi�n tr��ng l� n�i �ao ki�m v� t�nh, n�u kh�ng t�i tham chi�n th� h�y l�y sinh m�ng l�m tr�ng\nTh�i gian chi�n ��u ch�a ��n h�y mau v� �i", 0);
	end;
end;
--*********************************B�o danh l�i ��i********************************************************
function SignUpTheOne()
	CityID = 0;
	for i = 1, 7 do
		if (IsSigningUp(i) == 1) then		--Ki�m tra b�o danh l�i ��i
			CityID = i;
		end;
	end;

	if (IsSigningUp(CityID) == 1) then
		SetTaskTemp(15, CityID);
		AskClientForNumber("SignUpFinal", 1000000, 99999999, "Xin nh�p s� ti�n B�o Danh v�o:");
	else
		Say("<#><"..GetCityAreaName(CityID).."<#> >th�nh, b�o danh tr�n L�i ��i ch�a b�t ��u ", 0);
	end;
end;
function SignUpFinal(Fee)
	CityID = GetTaskTemp(15);
	SignUpCityWarArena(CityID, Fee);		--B�o danh l�i ��i
end;
--**************************Ki�m tra b�t ��u l�i ��i*****************************
function WhichArenaBegin()
	for i=0, 7 do
		if (IsArenaBegin(i) == 1) then
			return 1;
		end;
	end;
	return 0;
end;
--*************************V�o ��u tr��ng*****************************************
function PreEnterGame()
	TongName, result = GetTong()
	if (TongName ~= "") then
		for i = 0, 7 do
			if (IsArenaBegin(i) == 1) then
				Tong1, Tong2 = GetArenaBothSides(i);			--L�y t�n 2 bang l�i ��i
				if (Tong1 == TongName or Tong2 == TongName) then
					EnterBattle(i);
					return
				end;
			end;
		end;
	end;
	EnterGame();
end
function EnterGame()
	ExtraArenaInfo = {"(Kho�ng tr�ng) ", "(Kho�ng tr�ng) ", "(Kho�ng tr�ng) ", "(Kho�ng tr�ng) ", "(Kho�ng tr�ng) ", "(Kho�ng tr�ng) ", "(Kho�ng tr�ng) ", "(Kho�ng tr�ng) "};
	for i = 0, 7 do
		if (IsArenaBegin(i) == 1) then
			Tong1, Tong2 = GetArenaBothSides(i);
			ExtraArenaInfo[i + 1] = " ("..Tong1.." vs "..Tong2..") "
		end;
	end;

	Say("B�n mu�n v�o c�ng th�nh chi�n d� tuy�n thi ��u l�i ��i kh�ng??", 9, "L�i ��i 1"..ExtraArenaInfo[1].."/EnterBattle", "L�i ��i 2"..ExtraArenaInfo[2].."/EnterBattle", "L�i ��i 3"..ExtraArenaInfo[3].."/EnterBattle", "L�i ��i 4"..ExtraArenaInfo[4].."/EnterBattle", "L�i ��i 5"..ExtraArenaInfo[5].."/EnterBattle", "L�i ��i 6"..ExtraArenaInfo[6].."/EnterBattle", "L�i ��i 7"..ExtraArenaInfo[7].."/EnterBattle", "L�i ��i 8"..ExtraArenaInfo[8].."/EnterBattle","Kh�ng �i n�a/OnCancel");
end
function EnterBattle(nBattleId)

	if (IsArenaBegin(nBattleId) ~= 1) then 
		return 
	end;

	SetFightState(0)
	M,X,Y = GetWorldPos();
	SetTask(300, M);
	SetTask(301, X);
	SetTask(302, Y);
	NewWorld(MapTab[nBattleId + 1][1], MapTab[nBattleId + 1][2], MapTab[nBattleId + 1][3]);
end
--*****************************H��ng d�n**********************************************
function OnHelp()
	Talk(8, "",	"L�i ��i bang h�i l� n�i h�c h�i v� ngh� gi�a c�c bang h�i tr�n giang h�! ��y s� l� n�i thi ��u c�ng b�ng",	"Mu�n tham gia L�i ��i bang h�i, tr��c h�t ph�i g�p ta �� xin ph�p! Ng��i xin ph�p ph�i l� bang ch� c�a bang h�i thi ��u!",	"Sau khi t� ��i, ��i tr��ng 2 b�n s� ��n b�o danh. Bang ch� hai b�n  m�i ng��i ph�i ��t c��c thi ��u <color=yellow>100 v�n l��ng<color>. ",	"Sau khi ��t c��c xong, xin ph�p thi ��u �� ho�n th�nh. Trong l�c c� 2 bang h�i kh�c �ang thi ��u, kh�ng cho ph�p b�o danh",	"Xin ph�p th�nh c�ng xong, th�nh vi�n c�a hai bang h�i c� <color=yellow>10 ph�t<color> gia nh�p ��u tr��ng. Sau �� thi ��u s� ch�nh th�c b�t ��u!" ,"Th�ng b�i ph� thu�c v�o �i�m t�ch l�y thi ��u c�a hai b�n. M�i th�nh vi�n bang h�i l�m tr�ng th��ng ��i ph��ng s� ���c 3 �i�m, ��i ph��ng b� tr� 1 �i�m", 	"K�t th�c thi ��u, bang h�i n�o t�ch l�y �i�m cao h�n s� gi�nh th�ng l�i!",	"Ngo�i ra, trong l�c thi ��u m�t b�n n�o kh�ng c�n th�nh vi�n n�o � l�i ��u tr��ng th� th�ng l�i s� thu�c v� b�n kia. ","Bang h�i chi�n th�ng c� th� thu h�i <color=yellow>100 v�n l��ng<color> �� ��ng, ngo�i ra c�n ���c <color=yellow>80 v�n l��ng<color> ti�n th��ng v� <color=yellow>12.000 �i�m kinh nghi�m bang h�i<color>. Bang h�i thua cu�c s� kh�ng l�y l�i ���c ti�n �� ��ng, m� c�n b� tr� <color=yellow>14.000 �i�m kinh nghi�m bang h�i<color>");
end;




function SignupACity(sel)
	CityID = sel + 1;
	if (IsSigningUp(CityID) == 1) then
		SetTaskTemp(15, CityID);
		AskClientForNumber("SignUpFinal", 1000000, 99999999, "Xin nh�p s� ti�n ��u th�u v�o:");
	else
		Say("<color=yellow>"..GetCityAreaName(CityID).."<color> th�nh, b�o danh tr�n L�i ��i ch�a b�t ��u ", 0);
	end;
end;