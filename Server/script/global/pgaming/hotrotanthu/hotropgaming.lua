Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\lib\\log.lua")
IncludeLib("SETTING")
IncludeLib("TONG")
IncludeLib("RELAYLADDER");
Include( "\\script\\item\\compound\\compound_header.lua" );
Include( "\\script\\item\\compound\\atlas.lua" );
Include("\\script\\global\\rename_head.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\global\\pgaming\\hotrotanthu\\itemblue.lua")
Include("\\script\\global\\pgaming\\\hotrotanthu\\duatop.lua")
Include("\\script\\tagnewplayer\\tbitemHK.lua");
Include("\\script\\global\\pgaming\\hotrotanthu\\hotroitem.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\global\\pgaming\\hotrotanthu\\hotrogm.lua")
Include("\\script\\global\\pgaming\\hotrotanthu\\nc_topall.lua")
Include("\\script\\task\\partner\\education\\swordking_people.lua")
Include("\\script\\global\\pgaming\\hotrotanthu\\doiraclayvk.lua")
Include("\\script\\global\\pgaming\\hotrotanthu\\diemdanhhangngay.lua")
szNpcName = "<color=yellow>H� tr� T�n th�<color>: "
szPlayer = "��i Hi�p"
if GetSex() == 1 then
	szPlayer = "N� Hi�p"
end


tbSkillBook90 = {
	shaolin = {56,57,58},
	tianwang = {37,38,39},
	tangmen = {27,28,45,46},
	wudu = {47,48,49},
	emei = {42,43,59},
	cuiyan = {40,41},
	gaibang = {54,55},
	tianren = {35,36,53},
	wudang = {33,34},
	kunlun = {50,51,52},
}

tbAllSkill = {
	shaolin = {
		[1] = {10,14},
		[2] = {4,6,8},
		[3] = {15},
		[4] = {16},
		[5] = {20},
		[6] = {11,19,271},
		[7] = {21,273},
		[9] = {318,319,321},
	},
	tianwang = {
		[1] = {29,30,34},
		[2] = {23,24,26},
		[3] = {33},
		[4] = {31,35,37},
		[5] = {40},
		[6] = {42},
		[7] = {32,36,41,324},
		[9] = {322,323,325},
	},
	tangmen = {
		[1] = {45},
		[2] = {43,347},
		[3] = {303},
		[4] = {47,50,54,343},
		[5] = {345},
		[6] = {349},
		[7] = {48,58,249,341},
		[9] = {302,339,342,351},
	},
	wudu = {
		[1] = {63,65},
		[2] = {60,62,67},
		[3] = {66,70},
		[4] = {64,68,69,384},
		[5] = {73,356},
		[6] = {72},
		[7] = {71,74,75},
		[9] = {353,355,390},
	},
	emei = {
		[1] = {80,85},
		[2] = {77,79},
		[3] = {93},
		[4] = {82,89,385},
		[5] = {86},
		[6] = {92},
		[7] = {88,91,252,282},
		[9] = {328,332,380},
	},
	cuiyan = {
		[1] = {99,102},
		[2] = {95,97},
		[3] = {269},
		[4] = {105,113},
		[5] = {100},
		[6] = {109},
		[7] = {108,111,114},
		[9] = {336,337},
	},
	gaibang = {
		[1] = {119,122},
		[2] = {115,116},
		[3] = {129},
		[4] = {124,274},
		[5] = {277},
		[6] = {125,128},
		[7] = {130,360},
		[9] = {357,359},
	},
	tianren = {
		[1] = {135,145},
		[2] = {131,132,136},
		[3] = {137},
		[4] = {138,140,141},
		[5] = {364},
		[6] = {143},
		[7] = {142,148,150},
		[9] = {361,362,391},
	},
	wudang = {
		[1] = {153,155},
		[2] = {151,152},
		[3] = {159},
		[4] = {158,164},
		[5] = {160},
		[6] = {157},
		[7] = {165,166,267},
		[9] = {365,368},
	},
	kunlun = {
		[1] = {169,179},
		[2] = {167,168,171,392},
		[3] = {174},
		[4] = {172,173,178,393},
		[5] = {175,181},
		[6] = {90,176},
		[7] = {182,275,630},
		[9] = {372,375,394},
	},
}


local tbGMAccount = {"pgaming", "pgaming2", "pgaming3", "pgaming4", "pgaming5"}
function main()
dofile("script/global/pgaming/hotrotanthu/hotropgaming.lua");		
			str = "Ch�o m�ng c�c b�n �� tham gia th� gi�i <color=red>V� L�m Truy�n K�<color> ���c Edit <color=green>By  PGaming<color> m�i chi ti�t xin li�n h� <color=green>www.youtube.com/c/pgaminggameoffline<color> �� nh�n ���c s� h� tr� khi c�n thi�t."
		AddGlobalCountNews(str, 1)
local szAccount = GetAccount()
	for i=1, getn(%tbGMAccount) do
		if szAccount == %tbGMAccount[i] then
			local szTitle = "<npc><color=red>H� tr� GM<color>.<enter><color=yellow>V� L�m Truy�n K�<color><enter><color=red>Offline edit by PGaming<color>.<enter>Hoan ngh�nh c�c anh h�ng h�o ki�t... ! "
		local tbOpt =
	{
		{"�i�m Danh H�ng Ng�y", DailyMuster},	
		{"Xem Danh ng��i ch�i �ang Online", dkgm9},
		{"Nh�n h� tr� �i train", hotrotrain},
		--{"H� tr� Admin", dkgm2},
		--{"��i t�n nh�n v�t", DoiTenNV},
		--{"G�i b�n ��ng h�nh", partner_getdust1},
		{"Nh�n k� n�ng h� tr� t�n th�.", hotrotanthu},
		--{"Gia nh�p ph�i Hoa S�n", dkgm3},
		--{"H�y trang b� kh�a", deltem},
		{"��i r�c l�y v� kh� ng�u nhi�n", doirac},
		{"H� tr� skill", HoTroSkill},
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)		
	else
			--Talk(1, "", "<color=yellow>V� L�m Truy�n K�<color><enter><color=red>Offline edit by PGaming<color>.<enter>Hoan ngh�nh c�c anh h�ng h�o ki�t... ! ")
			str = "Ch�o m�ng c�c b�n �� tham gia th� gi�i <color=red>V� L�m Truy�n K�<color> ���c Edit <color=green>By  PGaming<color> m�i chi ti�t xin li�n h� <color=green>www.youtube.com/c/pgaminggameoffline<color> �� nh�n ���c s� h� tr� khi c�n thi�t."
		AddGlobalCountNews(str, 2)
local szTitle = "<npc><color=red>H� tr� GM<color>.<enter><color=yellow>V� L�m Truy�n K�<color><enter><color=red>Offline edit by PGaming<color>.<enter>Hoan ngh�nh c�c anh h�ng h�o ki�t... ! "
		local tbOpt =
	{
		{"�i�m Danh H�ng Ng�y", DailyMuster},	
		{"Xem Danh ng��i ch�i �ang Online", dkgm9},
		{"Nh�n h� tr� �i train", hotrotrain},
		--{"H� tr� Admin", dkgm2},
		--{"��i t�n nh�n v�t", DoiTenNV},
		--{"G�i b�n ��ng h�nh", partner_getdust1},
		{"Nh�n k� n�ng h� tr� t�n th�.", hotrotanthu},
		--{"Gia nh�p ph�i Hoa S�n", dkgm3},
		--{"H�y trang b� kh�a", deltem},
		{"��i r�c l�y v� kh� ng�u nhi�n", doirac},
		{"H� tr� skill", HoTroSkill},
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	

end
				return	

end			
end

function hotrotrain()
AddItem(6,1,4835,0,0,0,10000)
end

function HoTroSkill()
if GetLastFactionNumber(10) and (HaveMagic(1347) >= 0) and (HaveMagic(1364) < 0) and GetTask(169) < 73 then
AddMagic(1349)
AddMagic(1374)
AddMagic(1350)
AddMagic(1375)
AddMagic(1351)
AddMagic(1376)
AddMagic(1354)
AddMagic(1378)
AddMagic(1355)
AddMagic(1379)
AddMagic(1358)
AddMagic(1360)
AddMagic(1380)
AddMagic(1364,20)
AddMagic(1382,20)
Talk(1,"",szNpcName.."V� h�c �� ���c truy�n th�, "..szPlayer .." h�y th� v�n c�ng n�ng th�nh xem sao.")
elseif (HaveMagic(1364) > 0) then
Talk(1,"",szNpcName.."V� h�c �� ���c truy�n th�, "..szPlayer .." h�y th� v�n c�ng n�ng th�nh xem sao.")
end
	local nIndex = floor(GetLevel()/10)
	local szFaction = GetFaction()
	if tbAllSkill[szFaction] == nil then
		return
	end
	if nIndex >= 1 then
		for i=1, min(9,nIndex) do
			if tbAllSkill[szFaction][i] ~= nil then
				for j=1, getn(tbAllSkill[szFaction][i]) do
					if i ==9 then
						if HaveMagic(tbAllSkill[szFaction][i][j]) == -1 then
							AddMagic(tbAllSkill[szFaction][i][j],20)
						end
					else
						if HaveMagic(tbAllSkill[szFaction][i][j]) == -1 then
							AddMagic(tbAllSkill[szFaction][i][j])
						end
					end
				end
			end
		end
	end
	Talk(1,"",szNpcName.."V� h�c �� ���c truy�n th�, "..szPlayer .." h�y th� v�n c�ng n�ng th�nh xem sao.")
end




function dkgm9()
Msg2Player("<color=yellow>Hi�n t�i �ang c�<color><color=green> "..GetPlayerCount().."<color> Ng���i Online !.")
end

function dkgm4()
	LoadFromFile()
	tbTop10:Regist()
	tbTop10:UpdateTopList()
	tbTop10:hangcanhan()
	tbTop10:ShowTopList()
end

function dkgm3()
hoason()

end

function dkgm2()
namcung2()
end

function phanthuong()
if CalcFreeItemCellCount() < 10 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 10 � tr�ng r�i h�y m�.",0);
		return 1;
end
AskClientForString("checkcode", "", 1, 100, "Xin nh�p code");
end
tbitem  =
	{
		[1]	={szName = "Ti�n th�o l�", tbProp = {6, 1, 71, 1,0,0}, nCount = 5, nExpiredTime = 10080, nBindState = -2},
		[2]	={szName = "H�i th�nh ph� (nh�)", tbProp = {6, 1, 1082,1,0,0}, nCount = 1, nExpiredTime = 43200, nBindState = -2},
		[3]	={szName="Kim M� C�m Nang",tbProp={6,1,4088,1,0,0},nCount=1,nExpiredTime=43200,nBindState = -2},
		[4]	={szName = "M�nh b�n �� s�n h� x� t�c (1000 m�nh)", tbProp = {6, 1, 2514,1,0,0}, nCount = 1, nExpiredTime = 10080, nBindState = -2},
		[5]	={szName="Th�n H�nh Ph�",tbProp={6,1,1266,1,0,0},nCount=1,nExpiredTime=43200,nBindState = -2},
		[6]	={szName="T�n Th� L�nh",tbProp={6,1,4265,1,0,0},nCount=1,nExpiredTime=14400,nBindState = -2},
		[7]	={szName="Ph�ng Nguy�t Qu� Dung",tbProp={6,1,127,1,0,0},nCount=2,nBindState = -2},
		[8]	={szName="C�ng Nguy�t Ph� Dung",tbProp={6,1,128,1,0,0},nCount=2,nBindState = -2},
	}
function checkcode(strings)
		if GetTask(3000)==1 then
		Talk(1, "", "B�n �� nh�n r�i m� ");
		return
	end
	if (strings=="PGAMING6" or strings=="PGAMING" or strings=="PGAMING1" or strings=="PGAMING2" or strings=="PGAMING3" or strings=="PGAMING4" or strings=="PGMAING5")then
		tbAwardTemplet:GiveAwardByList(tbitem, "Ph�n th��ng t�n th�");
		SetTask(3000,1)
		str = "Tin ch�n ��ng giang h�, Cao th�<color=red>"..GetName().."<color> Ch�m ch� luy�n t�p �� nh�n ���c <color=green>ph�n th��ng T�n Th�<color> x�ng b� thi�n h� kh�ng ��ch th� !."
		AddGlobalCountNews(str, 1)
		Msg2Player( "Ch�c m�ng b�n �� nh�n ���c ph�n th��ng T�n Th�" );
	else
		Talk(1, "", "Code sai");
	end
end


function hotrotanthu()
	if GetLevel()<50 then
		AddSkillState(512,20,1,60*60*18)
		AddSkillState(527,5,1,60*60*18)
		AddSkillState(313,5,1,60*60*18)  	--Vong duoi chan
		AddSkillState(314,12,1,60*60*18)	 --Vong duoi chan
		AddSkillState(546,1,1,60*60*18)		 --Rong bay
		Talk(1, "", "B�n s� ���c nh�n h� tr� k� n�ng n�y ��n c�p 50");
		Msg2Player( "L�n Trang Ch� <color=yellow>192.168.1.200<color> �� nh�n gift code" );
		tbAwardTemplet:GiveAwardByList(tbItem, "Ph�n th��ng t�n th�");
	end
end

function partner_getdust1()
partner_givetodo()
end

function DoiTenNV()
	AskClientForString("danhten", "", 1, 100, "Xin nh�p t�n mu�n ��i");
end

function danhten(strings)
	RenameRole(strings)
end

function dkgm()
	n_title = 5000 -- S?a ID danh hi?u v�o
	local nServerTime = GetCurServerTime()+ 1728000; --20*24*60*60
	local nDate = FormatTime2Number(nServerTime);
	local nDay = floor(mod(nDate,1000000) / 10000);
	local nMon = mod(floor(nDate / 1000000) , 100)
	local nTime = nMon * 1000000 + nDay * 10000 
	Title_AddTitle(n_title, 2, nTime)
	Title_ActiveTitle(n_title)
	local nCurLevel = GetLevel()
	if nCurLevel < 150 then
		ST_LevelUp(150 - nCurLevel)
	end
	SetFightState(0)
	SetCamp(6)
	SetCurCamp(6)
	AddMagic(732, 50) --Skill GM
	AddMagic(733, 50) --Skill GM
	if CalcFreeItemCellCount() >= 1 then
		local tbItem = {szName="L�nh b�i Gm", tbProp={6,1,4257,1,0,0}, nBindState=-2}
		tbAwardTemplet:GiveAwardByList(tbItem, "L�nh b�i Gm", 1)
	end
end

function deltem()
	if (GetBoxLockState() ~= 0) then
		Say("Xin m� kh�a r��ng tr��c !", 0)
		return
	end
	GiveItemUI("H�y v�t ph�m", "��i hi�p h�y c�n tr�ng trong vi�c h�y v�t ph�m!", "DisposeConfirm", "onCancel", 1);
end

function DisposeConfirm(nCount)
	if (nCount ~= 1) then 
		Talk(1, "", "M�i l�n ch� c� th� h�y ���c m�t v�t ph�m!!");
		return
	end
	
	local nItemIndex = GetGiveItemUnit(nCount)	
	local nBindState = GetItemBindState(nItemIndex)
	
	if (nBindState >=0)  then
		Talk(1, "", "V�t ph�m c�n h�y ph�i l� v�t ph�m kh�a!");
		return
	end
	local strItem = GetItemName(nItemIndex)
	RemoveItemByIndex(nItemIndex)
	Talk(1, "", "��i hi�p c� th� s�p x�p l�i r��ng ch�a �� r�i!");
	Msg2Player("��i hi�p v�a h�y v�t ph�m th�nh c�ng")
	WriteLog(date("%Y%m%d %H%M%S").."\t".." H�y item kh�a "..GetAccount().."\t"..GetName().."\t".." Hu� item "..strItem)
end

function doirac()
weapon_ring()
end


