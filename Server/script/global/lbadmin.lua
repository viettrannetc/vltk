IncludeLib("SETTING")
IncludeLib("ITEM");
IncludeLib("FILESYS")
Include("\\script\\task\\system\\task_string.lua")
Include("\\script\\global\\titlefuncs.lua")
Include("\\script\\global\\judgeoffline.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
IncludeLib("LEAGUE");
Include("\\script\\global\\skills_table.lua")
Include("\\script\\task\\lv120skill\\head.lua")
Include("\\script\\task\\150skilltask\\g_task.lua")
Include("\\script\\misc\\daiyitoushi\\toushi_function.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\item\\ib\\shenxingfu.lua")
Include("\\script\\global\\findboss.lua") 
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\global\\translife.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")


----------------------------------------------------------------------------------------------------------------------------------------------------------------
LENHBAI_ADMIN = "<#><link=image[0]:\\spr\\item\\sprADMIN.spr>L�nh B�i GM: <link>"
local tbGMAccount = {"pgaming","pgaming1","pgaming2","pgaming3","pgaming4","pgaming5","pgaming6","pgaming7","pgaming8","pgaming9","pgaming10","pgaming11","pgaming12","pgaming13","pgaming14","pgaming15"}
function main()
dofile("script/global/lbadmin.lua")
local szAccount = GetAccount()
	for i=1, getn(%tbGMAccount) do
		if szAccount == %tbGMAccount[i] then
			local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
			local tbOpt =
				{
					--{"Test Toa Do",Test}, 
					{"Qu�n L� Server",QLServer}, 
					{"Ch�c N�ng Bang H�i",DMcreattongtest},
					{"M� r�ng r��ng",moruong},
					{"Nh�n Point",Point}, 
					{"Nh�n Trang B�",TrangBi},				
					{"Nh�n V�t Ph�m",NhanVatPham},
					{"Nh�n Pet",Pet},
					{"Nh�n Skill",NhanSkill},
					{"T�m boss ho�ng kim",TimBoss},
					{"Nh�n Danh Hi�u",nhandanhhieu},
					{"Thay ��i Tr�ng Th�i",TrangThai},
					{"L�y ITEM(MagicScript,QuesKey)",TaoItem},
					{"L�y Trang B�(GoldeQuip)",Glodequip},
					{"H�y v�t ph�m",DisposeItem},
					{"Di Chuy�n V� Ba L�ng Huy�n",GoBLH},
					{"Tho�t"},
				}
				CreateNewSayEx(szTitle, tbOpt)
			return 1;
		end
	end
end

function CS5()
ST_DoTransLife()	
end



function Test()
--local nMap,nX,nY = GetWorldPos();
--if nMap == 80 then
--Say("Map 80")
--else
--Say("Khong Phai Map 80")
--end
end

function DisposeItem()
GiveItemUI("H�y v�t ph�m", "��i hi�p h�y c�n tr�ng trong vi�c h�y v�t ph�m, v�t ph�m �� h�y kh�ng th� l�y l�i ���c!", "DisposeConfirm", "onCancel", 1);
end

function DisposeConfirm(nCount)
	for i=1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local strItem = GetItemName(nItemIndex)
		RemoveItemByIndex(nItemIndex)
		WriteLog(date("%Y%m%d %H%M%S").."\t".." GM H�y Item "..GetAccount().."\t"..GetName().."\t".." Hu� item "..strItem)
	end--for
	Msg2Player("Thao t�c h�y v�t ph�m th�nh c�ng")
	Talk(1, "", "Thao t�c th�nh c�ng, ki�m tra l�i!");	
end



-----------------------------------------------------------------------tbFaction------------------------------------------------------------------------
local tbFaction =
{
	[1] =
	{
		szShowName = "Thi�u L�m",
		szFaction = "shaolin",
		nShortFaction = "sl",
		tbSkill = {318, 319, 321, 709, 1055, 1056, 1057,1220},
		tbRank={72},
	},
	[2] =
	{
		szShowName = "Thi�n V��ng Bang",
		szFaction = "tianwang",
		nShortFaction = "tw",
		tbSkill = {322, 325, 323, 708, 1058, 1059, 1060,1221},
		tbRank={69},
	},
	[3] =
	{
		szShowName = "���ng M�n",
		szFaction = "tangmen",
		nShortFaction = "tm",
		tbSkill = {339, 302, 342, 710, 1069, 1070, 1071,1223},
		tbRank={76},
	},
	[4] =
	{
		szShowName = "Ng� ��c Gi�o",
		szFaction = "wudu",
		nShortFaction = "wu",
		tbSkill = {353, 355, 711, 1066, 1067,1222},
		tbRank={80},
	},
	[5] =
	{
		szShowName = "Nga Mi",
		szFaction = "emei",
		nShortFaction = "em",
		tbSkill = {380, 328, 712, 1061, 1062, 1114,1224},
		tbRank={64},
	},
	[6] =
	{
		szShowName = "Th�y Y�n",
		szFaction = "cuiyan",
		nShortFaction = "cy",
		tbSkill = {336, 337, 713, 1063, 1065,1225},
		tbRank={67},
	},
	[7] =
	{
		szShowName = "C�i Bang",
		szFaction = "gaibang",
		nShortFaction = "gb",
		tbSkill = {357, 359, 714, 1073, 1074,1227},
		tbRank={78},
	},
	[8] =
	{
		szShowName = "Thi�n Nh�n Gi�o",
		szFaction = "tianren",
		nShortFaction = "tr",
		tbSkill = {361, 362, 715, 1075, 1076,1226},
		tbRank={81},
	},
	[9] =
	{
		szShowName = "V� �ang",
		szFaction = "wudang",
		nShortFaction = "wd",
		tbSkill = {365, 368, 716, 1078, 1079,1228},
		tbRank={73},
	},
	[10] =
	{
		szShowName = "C�n L�n",
		szFaction = "kunlun",
		nShortFaction = "kl",
		tbSkill = {372, 375, 717, 1080, 1081,1229 },
		tbRank={75},
	},
}
local tbFactionSeries =
{
[1] = {1, 2},
[2] = {3, 4},
[3] = {5, 6},
[4] = {7, 8},
[5] = {9, 10},
}
-----Quan Ly Server-------------------
function QLServer()
    local nNam = tonumber(GetLocalDate("%Y")); 
    local nThang = tonumber(GetLocalDate("%m")); 
    local nNgay = tonumber(GetLocalDate("%d")); 
    local nGio = tonumber(GetLocalDate("%H")); 
    local nPhut = tonumber(GetLocalDate("%M")); 
    local nGiay = tonumber(GetLocalDate("%S")); 
    local nW, nX, nY = GetWorldPos() 
    local nIdPlay = PlayerIndex 
    local tbSay = {}
			tinsert(tbSay,"Th�ng tin ng��i ch�i./Show")
			tinsert(tbSay,"Thao t�c l�n ng��i ch�i./luachonid1")
			tinsert(tbSay,"Reload Script./ReLoadScript")
			tinsert(tbSay,"Tho�t/no")
			tinsert(tbSay,"Tr� l�i.")
		Say("Xin Ch�o <color=red>"..GetName().."<color>!\nT�a �� hi�n t�i: <color=green>"..nW.."<color> <color=blue>"..nX.."/"..nY.."<color> \n<color>Index:           <color=green>"..nIdPlay.."<color>\nS� SHXT: <color=green>        "..GetTask(T_SonHaXaTac).."<color> m�nh.\nHi�n �ang C�:    <bclr=red><color=yellow>["..GetPlayerCount().."]<color><bclr> ng��i ch�i trong game.\n", getn(tbSay), tbSay)
end 

function TimBoss() 
    findgoldboss(1,12) 
end  

function Show() 
AskClientForNumber("Show1",1,1180,"Nh�p s� ti�n c�n chuy�n") 
end 


function Show1(num) 
local nNum = num + 20 
for i=num,nNum do 
    gmidx=PlayerIndex 
    PlayerIndex=i 
    TarName=GetName() 
    PlayerIndex=gmidx 
    Msg2Player("PlayIndex:<color=green> "..i.."<color> - T�n:<color=green> "..TarName..""); 
end 
end

function luachonid1() 
AskClientForNumber("one",0,5000,"Nh�p ID ng��i ch�i") 
end 

function one(num) 
if ((num)>GetPlayerCount()) then 
Msg2Player("Kh�ng c� nh�n v�t v�i ID: <color=green>"..num.."<color> ���c ch�n !!"); 
else 
SetTaskTemp(200,num) 
    gmName=GetName() 
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    tk=GetAccount() 
    lev=GetLevel() 
    xp=GetExp() 
    cam=GetCamp() 
    fac=GetFaction() 
    cash=GetCash() 
    lif=GetExtPoint(1) 
    man=GetMana() 
    apo=GetEnergy() 
    spo=GetRestSP() 
    cr=GetColdR() 
    pr=GetTask(747) 
    phr=GetPhyR() 
    fr=GetFireR() 
    lr=GetLightR() 
    eng=GetEng() 
    dex=GetDex() 
    strg=GetStrg() 
    vit=GetVit() 
    w,x,y=GetWorldPos() 
    xinxi = GetInfo() 
    ObjName=GetName() 
    PlayerIndex=gmidx 
    Msg2Player("Nh�n v�t t�n:<color=metal> "..ObjName.."<color>"); 
    local tbSay=  {}
			tinsert(tbSay,"T�ng c�p �� cho ng��i ch�i./tangcap1")
			tinsert(tbSay,"H� tr� ti�n ��ng./bufskillsgm1")
			tinsert(tbSay,"H� tr� ti�n v�n./themtienvan1")
			tinsert(tbSay,"Di chuy�n nh�n v�t v� BLH./move")
            tinsert(tbSay,"Add �i�m cho ng��i ch�i../buffpoint")
            tinsert(tbSay,"K�ch nh�n v�t./kick")
			tinsert(tbSay,"C�m Ch�t./camchat")
			tinsert(tbSay,"M� Ch�t./mochat")
            tinsert(tbSay,"Tho�t./no")
			tinsert(tbSay,"Tr� l�i.")            
    Say("T�i Kho�n:<color=green> "..tk.."<color>  - Nh�n V�t   :<color=green> "..ObjName.."<color>\nC�p ��   :<color=green> "..lev.."<color>           - Kinh nghi�m: <color=green>"..xp.."%<color>\nM�u      :<color=green> "..cam.."<color>             - M�n ph�i   :<color=green>"..fac.."<color>\nTi�n M�t :<color=green> "..(cash/10000).." v�n<color> - Ti�n ��ng  :<color=green>"..lif.." ��ng<color>\nV� tr�   : <color=blue>"..w.."<color>,<color=green>"..x.."<color>,<color=green>"..y.."<color>", getn(tbSay), tbSay)
    Msg2Player("Ng��i ch�i <color=cyan>"..xinxi) 
end 
end; 
function themtienvan1() 
AskClientForNumber("themtienvan",0,2000000000,"Nh�p s� ti�n c�n chuy�n") 
end 
function themtienvan(num) 
nNum = num/10000 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=green>"..gmName.."<color> �� th�m <color=metal>"..nNum.."<color> v�n l��ng cho b�n !"); 
Earn(num) 
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c b�n th�m <color=metal>"..nNum.."<color> v�n l��ng th�nh c�ng"); 
end; 
function bufskillsgm1() 
AskClientForNumber("buffskillsgm",0,500,"s� l��ng ti�n ��ng") 
end 
function buffskillsgm(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=green>"..gmName.."<color> �� chuy�n <color=metal>"..num.."<color> ti�n ��ng cho b�n !"); 
AddStackItem(num,4,417,1,1,0,0,0) 
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c b�n t�ng <color=metal>"..num.."<color> ti�n ��ng th�nh c�ng"); 
end;
function buffpoint() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=green>"..gmName.."<color> �� t�ng �i�m theo y�u c�u!"); 

PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c b�n t�ng �i�m theo y�u c�u th�nh c�ng"); 
end; 

function tangcap1() 
AskClientForNumber("tangcap",0,200,"c�p c�n t�ng") 
end 
function tangcap(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=green>"..gmName.."<color> �� t�ng <color=metal>"..num.."<color> c�p �� cho b�n !"); 
for i=1,num  do 
AddOwnExp(999999999999) 
end 
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c b�n t�ng <color=metal>"..num.."<color> c�p �� th�nh c�ng"); 
end; 
function move() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
w,x,y=GetWorldPos() 
if (w~=53) then 
SetFightState(0) 
NewWorld(53,200*8,200*16) 
else 
SetPos(1630, 3255) 
end 
Msg2Player("Qu�n l� <color=green>"..gmName.."<color> �� di chuy�n b�n v� Ba L�ng Huy�n"); 
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c b�n di chuy�n v� Ba L�ng Huy�n th�nh c�ng"); 
end 

function kick() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=green>"..gmName.."<color> �� kick k�t t�i kho�n cho b�n"); 
KickOutSelf() 
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c b�n kick k�t t�i kho�n th�nh c�ng"); 
end; 

function camchat() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
SetChatFlag(1) 
Msg2Player("B�n b� kh�a Ch�t tr�n m�i t�n s� !") 
PlayerIndex=gmidx 
AddGlobalCountNews("Nh�n V�t:<color=red> "..ObjName.."<color> �� B� C�m Chat Tr�n M�i T�n S� !",1) 
end 

function mochat() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
SetChatFlag(0) 
Msg2Player("B�n ���c m� kh�a Ch�t tr�n m�i t�n s� !") 
PlayerIndex=gmidx 
AddGlobalCountNews("Nh�n V�t:<color=green> "..ObjName.."<color> ���c M� Chat Tr�n M�i T�n S� !",1)  
end

function laytoado()
local w,x,y = GetWorldPos()
local nIdPlay = PlayerIndex
Say("M�p s� <color=Green>"..w.."<color> t�a �� <color=Yellow>"..x..", "..y)
end;

function NhapDuongDan(Link)
        local ReloadScript = LoadScript(Link);
        if (FALSE(ReloadScript )) then
            Msg2Player("Xu�t hi�n l�i, kh�ng th� Reload!<enter><color=yellow>"..Link.."");
        else
            Msg2Player("<color=green>Reload th�nh c�ng Script<color><enter><color=blue>"..Link.."");
        end
end

function ReLoadScript()
    return AskClientForString("NhapDuongDan", "", 1, 500, "<#>Nh�p ���ng d�n")
end  
----------BANG HOI--------------
Include("\\script\\global\\repute_head.lua")
Include("\\script\\misc\\league_cityinfo.lua")
function DMcreattongtest()
local strTongName = GetTongName()
if (strTongName == nil or strTongName == "") then
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"Nh�n �i�u Ki�n T�o Bang H�i",dmcreatetong},
		{"Gia Nh�p Bang H�i",dmjointong},
		{"T�o Bang H�i",dmcreateit},
		{"Tr� L�i",main},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
	else
	Say(szTitle,0)
end
end
function dmcreatetong()	
		SetCamp(4)
		SetCurCamp(4)
		AddRepute(1000);
		FuYuan_Start();
		FuYuan_Add(1000);
		AddLeadExp(20000)
		AddEventItem(195)
		if GetLevel() <= 100 then
			for i=1,100 do
				AddOwnExp(100000000)
			end
		end
Msg2Player("<color=yellow>Ng��i �� h�i �� t�t c� �i�u ki�n �� t�o Bang H�i!<color>")
end
function dmjointong()
if  GetCamp() ~= 4 then
		if GetLevel() <= 100 then
			for i=1,100 do
				AddOwnExp(100000000)
			end
		end
		SetCamp(4)
		SetCurCamp(4)
Msg2Player("<color=yellow>Gia nh�p Bang h�i th�nh c�ng!<color>")
else
end
end
function dmcreateit()
	Tong_name,oper = GetTong()
	if (oper == 0) and (GetTask(99) == 1) then
		Say("Ki�m hi�p ch��ng m�n nh�n:Khai s�ng bang h�i, m� r�ng b� nghi�p." ,2,"B�t ��u d�ng bang/Direct_CreateTong","��i ta m�t ch�t/wait_a_moment")
	elseif (oper == 0) and (GetCamp() == 4) and (GetLevel() >= 50) and (GetReputeLevel(GetRepute()) >= 6) and (GetLeadLevel() >= 30) and (HaveItem(195) == 1) then
		Talk(6,"create_pay", "Ng��i ch�i: Ki�m hi�p ch��ng m�n nh�n, xin h�i ta ph�i l�m nh� th� n�o m�i ca th� khai t�ng l�p ph�i tr� th�nh Bang ch� ��y?", "Ki�m hi�p ch��ng m�n nh�n: ��u ti�n ng��i ph�i c� �� n�ng l�c l�nh ��o, c� 16 ng��i c�ng ch� h��ng c�ng ng��i l�p bang, tr�i qua 3 ng�y Kh�o Nghi�m K� ", "Ch��ng m�n nh�n:  N�u trong 3 ng�y c� ng��i r�i bang th� n�i trong 3 ng�y �� ng��i ph�i t�m ng��i kh�c thay th�.", "Ch��ng m�n nh�n:  Ng��i ph�i c� �� t�i l�nh ��o v� t�n v�t �� l� Nh�c V��ng Ki�m", "Ng��i ch�i: Nh�c V��ng Ki�m ? Ng��i n�i l� thanh ki�m n�y � ? ", "Ki�m hi�p ch��ng m�n nh�n : Th� ra l� ng��i �� c� n�... Kh�ng t�, qu� nhi�n tu�i tr� t�i cao!!! ")
	else	
		i = random(0,1)
		if (i == 0) then
			Talk(1,"", "Ki�m hi�p ch��ng m�n nh�n: N�u nh� mu�n th�nh l�p bang h�i, ng��i c� th� v� n� b� ra 1 l��ng l�n th�i gian, s�c l�c c�ng t�m huy�t, kh�ng th� n�a ���ng h�y b�." )
		else
			Talk(6,"", "Ki�m hi�p ch��ng m�n nh�n:  Ng��i mu�n h�i �i�u ki�n l�p bang �? �� ta n�i cho ng��i r�.", "Ki�m hi�p ch��ng m�n nh�n: ��u ti�n ph�i xu�t x�,  ti�p theo ng��i kh�ng th� � b�t k� bang h�i n�o kh�c, ng��i nh�t �inh ph�i c� danh v�ng giang h�, cu�i c�ng l� t�i l�nh ��o ph�i h�n 30 c�p.", "Ki�m hi�p ch��ng m�n nh�n: Sau �� �i chi�n tr��ng t�m m�t thanh Nh�c V��ng Ki�m l�m bang ch� t�n v�t l� ���c r�i.")
		end
	end
end

function create_pay()
	Say("Ki�m hi�p ch��ng m�n nh�n: Ng��i c�n l� phi l� 100 v�n l��ng b�c." ,2,"Kh�ng th�nh v�n ��, ta c� �em 100v l��ng ��y! /create_pay_yes","Ta kh�ng �em �� ti�n r�i. /create_pay_no")
end
function create_pay_yes()
	if (GetCash() >= 1000000) then
		Pay(1000000)		
		DelItem(195)		
		SetTask(99,1)				
		Direct_CreateTong()		
	else
		Talk(1,"", "Ki�m hi�p ch��ng m�n nh�n: Vi�c duy tr� bang h�i r�t t�n k�m, ng��i ph�i c� g�ng c�ng m�i ng��i t�ch g�p �� Bang H�i ���c gi�u m�nh. ")	end
end

function Direct_CreateTong()
	CreateTong(1)				
end
--------Nhan Point--------------
function Point()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"Nh�n C�p ��",capdo},
		{"Nh�n Kinh Nghi�m",kinhnghiem},
		{"Ti�n V�n",tien},
		{"Ti�n ��ng",tiendong},
		{"Kim Nguy�n B�o",knb},
		{"Danh V�ng, Ph�c Duy�n",danhvong},
		{"�i�m K� N�ng",pointkynang},
		{"�i�m Ti�m N�ng",pointtiemnang},
		{"T�i L�nh ��o",lanhdao},
		{"Nh�n c�ng hi�n",conghien},
		{"C�ng �i�m nhanh",add_prop},
		{"Chuy�n Sinh nhanh",CS5},
		{"Tr� L�i",main},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

--------
function add_prop()
	local tbOpt = 
	{
		{"T�ng s�c m�nh.", add_prop_str},
		{"T�ng th�n ph�p.", add_prop_dex},
		{"T�ng sinh kh�.", add_prop_vit},
		{"T�ng n�i c�ng.", add_prop_eng},
		{"Tho�t."}
	}
	CreateNewSayEx("<npc>Xin m�i ch�n ti�m n�ng c�n t�ng!", tbOpt)
end

function add_prop_str()
	AskClientForNumber("enter_str_num", 0, GetProp(), "M�i nh�p ch� s� s�c m�nh: ");
end
function add_prop_dex()
	AskClientForNumber("enter_dex_num", 0, GetProp(), "M�i nh�p ch� s� th�n ph�p: ");
end
function add_prop_vit()
	AskClientForNumber("enter_vit_num", 0, GetProp(), "M�i nh�p ch� s� sinh kh�:");
end
function add_prop_eng()
	AskClientForNumber("enter_eng_num", 0, GetProp(), "M�i nh�p ch� s� n�i c�ng: ");
end
function enter_str_num(n_key)
	if (n_key < 0 or n_key > GetProp()) then
		return
	end
	AddStrg(n_key);
end
function enter_dex_num(n_key)
	if (n_key < 0 or n_key > GetProp()) then
		return
	end
	AddDex(n_key);
end
function enter_vit_num(n_key)
	if (n_key < 0 or n_key > GetProp()) then
		return
	end
	AddVit(n_key);
end
function enter_eng_num(n_key)
	if (n_key < 0 or n_key > GetProp()) then
		return
	end
	AddEng(n_key);
end
-------------
function conghien()
AddContribution(100000)
end
---Cap Do----
function capdo()
AskClientForNumber("level",0,200,"Nh�p C�p ��:") 
end
function level(num)
local nCurLevel = GetLevel()
local nAddLevel = num - nCurLevel
ST_LevelUp(nAddLevel)
Msg2Player("B�n nh�n ���c <color=yellow>"..num.."<color> c�p ��.") 
end
---EXP-----
function kinhnghiem()
AskClientForNumber("kinhnghiem1",0,9999999999999999,"Nh�p EXP") 
end
function kinhnghiem1(nNum)
AddOwnExp(nNum)
Msg2Player("B�n nh�n ���c <color=yellow>"..nNum.."<color> kinh nghi�m.") 
end
---Tien Van---
function tien()
AskClientForNumber("tienvan",0,10000000,"Nh�p S� L��ng:") 
end
function tienvan(slkv)
local money= slkv*10000
local giatrikv=money/10000
Earn(money)
Msg2Player(format("B�n nh�n ���c <color=yellow>%s v�n<color>.",giatrikv))
end
---Tien Dong---
function tiendong()
AskClientForNumber("tiendong1",0,1000,"Nh�p S� L��ng:") 
end;
function tiendong1(sltiendong)
for i = 1, sltiendong do
AddStackItem(1,4,417,1,1,0,0,0)
end
Msg2Player("B�n nh�n ���c <color=yellow>"..sltiendong.." <color>ti�n ��ng.")
end
----KNB------
function knb()
AskClientForNumber("layknb",0,100000,"Nh�p S� L��ng:") 
end
function layknb(slknb)
for i=1, slknb do
AddEventItem(343)
end
Msg2Player("B�n nh�n ���c <color=yellow>"..slknb.." <color>KNB.")
end
----DanhVong-PhucDuyen----
function danhvong()
AskClientForNumber("danhvongINPUT",0,100000,"Nh�p S� L��ng:") 
end
function danhvongINPUT(nNum)
AddRepute(nNum);
FuYuan_Start();			---Nh�n Danh V�ng v� Ph�c Duy�n
FuYuan_Add(nNum);
Msg2Player("B�n nh�n ���c "..nNum.." �i�m Danh V�ng.")
end
-----Ky nang-Tiem nang---
function pointkynang()
AskClientForNumber("pointkynang1",0,1000,"Nh�p S� L��ng:") 
end;
function pointkynang1(nNum)
AddMagicPoint(nNum)		---Nh�n �i�m k� n�ng
Msg2Player("B�n nh�n ���c <color=yellow>"..nNum.."<color> �i�m K� N�ng.")
end
function pointtiemnang()
AskClientForNumber("pointtiemnang1",0,1000000,"Nh�p S� L��ng:") 
end;
function pointtiemnang1(nNum)
AddProp(nNum)		---Nh�n �i�m ti�m n�ng
Msg2Player("B�n nh�n ���c <color=yellow>"..nNum.."<color> �i�m Ti�m N�ng.")
end
---Tai Lanh Dao---
function lanhdao()
AddLeadExp(2000000000)		---Nh�n t�i l�nh ��o.
end

---------Trang Bi--------------
function TrangBi()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"Nh�n �� Xanh",laydoxanh},
		{"Nh�n �� T�m",laydotim},
		{"Nh�n An Bang, Kim Phong, ��nh Qu�c",ab_kp_dq},
		{"Nh�n Trang B� HKMP",setHKMPT1},
		{"Nh�n V� Kh� HKMP", vkHKMP},
		{"Nh�n Nh�n Cao C�p", Nhan},
		{"Nh�n Trang B� Cao C�p", TBCC},
		{"Nh�n Tr�n Bang Chi B�o", TBCB},
		--{"Nh�n Trang B� Cao C�p MAXOPTION", TBCCMAX},
		{"Nh�n Trang B� Hi�m", TBHiem},
		{"Nh�n �n, Phi Phong, Trang S�c", anphiphong},
		{"Nh�n Ng�a", nhanngua},
		{"Nh�n M�t n� chien tr��ng", matna},
		{"Tr� L�i",main},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end


----AN BANG - KIM PHONG - DINH QUOC----
function ab_kp_dq()
local szTitle = LENHBAI_ADMIN.."<#>Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"An Bang",anbang}, 
		{"Kim Phong",kimphong}, 
		{"��nh Qu�c",dinhquoc}, 
		{"Tr� L�i",TrangBi},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function anbang()
for i=408,411  do
AddGoldItem(0, i)
end
end
function kimphong()
for i=177,185  do
AddGoldItem(0, i)
end
end
function dinhquoc()
for i=389,393  do
AddGoldItem(0, i)
end
end
---HKMP----
function setHKMPT1()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"Thi�u L�m Quy�n",hkmp,{1}},
		{"Thi�u L�m C�n",hkmp,{2}},
		{"Thi�u L�m �ao",hkmp,{3}},
		{"Thi�n V��ng Ch�y",hkmp,{4}},
		{"Thi�n V��ng Th��ng",hkmp,{5}},
		{"Thi�n V��ng �ao",hkmp,{6}},
		{"Nga Mi Ki�m",hkmp,{7}},
		{"Nga Mi Ch��ng",hkmp,{8}},
		{"Nga Mi Buff",hkmp,{9}},
		{"Th�y Y�n ��n �ao",hkmp,{10}},
		{"Th�y Y�n Song �ao",hkmp,{11}},
		{"Ng� ��c Ch��ng Ph�p",hkmp,{12}},
		{"Ng� ��c �ao Ph�p",hkmp,{13}},
		{"Trang K�",setHKMPT2},
		{"Tr� L�i",TrangBi},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function setHKMPT2()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"Ng� ��c B�a Ph�p",hkmp,{14}},
		{"���ng M�n Phi �ao",hkmp,{15}},
		{"���ng M�n T� Ti�n",hkmp,{16}},
		{"���ng M�n Phi Ti�u",hkmp,{17}},
		{"���ng M�n B�y",hkmp,{18}},
		{"C�i Bang R�ng",hkmp,{19}},
		{"C�i Bang C�n Ph�p",hkmp,{20}},
		{"Thi�n Nh�n K�ch",hkmp,{21}},
		{"Thi�n Nh�n �ao",hkmp,{22}},
		{"Thi�n Nh�n B�a",hkmp,{23}},
		{"V� �ang Kh�",hkmp,{24}},
		{"V� �ang Ki�m",hkmp,{25}},
		{"C�n L�n �ao",hkmp,{26}},
		{"C�n L�n Ki�m",hkmp,{27}},
		{"C�n L�n B�a",hkmp,{28}},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function hkmp(nId)
	for i=1,5 do AddGoldItem(0,5*nId+i-5) end
end
---M�t n�-----------
function matna()
local tab_Content =
{
"M�t Thi�u L�m./matna1",
"M�t Thi�n V��ng./matna2",
"M�t Nga My./matna3",
"M�t Th�y Y�n./matna4",
"M�t Ng� ��c./matna5",
"M�t ���ng M�n./matna6",
"M�t C�i Bang./matna7",
"M�t Thi�n Nh�n./matna8",
"M�t V� �ang./matna9",
"M�t C�n L�n./matna10",
"Tho�t./no",
"Tr� l�i."
}
Say("Xin m�i ch�n !", getn(tab_Content), tab_Content);
end
function matna1()
for i=4608,4610 do
AddGoldItem(0, i)
end
end
function matna2()
for i=4611,4613 do
AddGoldItem(0, i)
end
end
function matna3()
for i=4614,4615 do
AddGoldItem(0, i)
end
end
function matna4()
for i=4616,4617 do
AddGoldItem(0, i)
end
end
function matna5()
for i=4618,4619 do
AddGoldItem(0, i)
end
end
function matna6()
for i=4620,4622 do
AddGoldItem(0, i)
end
end
function matna7()
for i=4623,4624 do
AddGoldItem(0, i)
end
end
function matna8()
for i=4625,4626 do
AddGoldItem(0, i)
end
end
function matna9()
for i=4627,4628 do
AddGoldItem(0, i)
end
end
function matna10()
for i=4629,4630 do
AddGoldItem(0, i)
end
end
----VK HKMP----
function vkHKMP()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"Thi�u L�m", VKTL},
		{"Thi�n V��ng", VKTV},
		{"Nga Mi", VKNM},
		{"Th�y Y�n", VKTY},
		{"Ng� ��c", VK5D},
		{"���ng M�n", VKDM},
		{"C�i Bang", VKCB},
		{"Thi�n Nh�n", VKTN},
		{"V� �ang", VKVD},
		{"C�n L�n", VKCL},
		{"Tr� L�i",TrangBi},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function VKTL()
AddGoldItem(0, 11)
AddGoldItem(0, 6)
end
function VKTV()
AddGoldItem(0, 16)
AddGoldItem(0, 21)
AddGoldItem(0, 26)
end
function VKNM()
AddGoldItem(0, 31)
end
function VKTY()
AddGoldItem(0, 46)
end
function VK5D()
AddGoldItem(0, 61)
end
function VKDM()
AddGoldItem(0, 71)
AddGoldItem(0, 76)
AddGoldItem(0, 81)
end
function VKCB()
AddGoldItem(0, 96)
end
function VKTN()
AddGoldItem(0, 101)
end
function VKVD()
AddGoldItem(0, 116)
AddGoldItem(0, 121)
end
function VKCL()
AddGoldItem(0, 126)
end
----Nh�n----
function Nhan()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"H�ng Bang Chi Gi�i", xb_jz},
		{"Tr�n Nh�c Chi Gi�i", zy_jz},
		{"Th��ng Ph��ng Chi Gi�i", sf_jz},
		{"Thi�n H� Gi�i", sh_jz},
		{"�� Ho�ng Chi Gi�i", dh_jz},
		{"Thi�n T� Chi Gi�i", tz_jz},
		{"Th� T�c To�n Gi�i", sz_jz},
		{"V� Danh Gi�i Ch�", vdgc},
		{"C�n Kh�n Gi�i Ch� (C�c ph�m)", jz08},
		{"L�nh B� Nguy�n M�ng Chi Gi�i (M�i)", jz08x},
		{"Tr� L�i",TrangBi},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function vdgc()
AddGoldItem(0, 141)
AddGoldItem(0, 142)
end 

function xb_jz()
AddGoldItem(0, 508)
end 
function zy_jz()
AddGoldItem(0, 509)
end 
function sf_jz()
AddGoldItem(0, 510)
end 
function sh_jz()
AddGoldItem(0, 511)
end 
function dh_jz()
AddGoldItem(0, 530)
end 
function tz_jz()
AddGoldItem(0, 531)
end 
function sz_jz()
AddGoldItem(0, 498)
end 
function jz08()
AddGoldItem(0, 3878)
end 
function jz08x()
AddGoldItem(0, 3541)
end
----------L�y �� Xanh------------------
tbDoXanh =
{
[1]=
{
szName = "D�y Chuy�n",
tbEquip =
{
{"To�n th�ch h�ng li�n",0,4,0},
{"L�c Ph� Th�y H� Th�n ph� ",0,4,1},
}
},
[2]=
{
szName = "�o Gi�p",
tbEquip =
{
{"Th�t B�o C� Sa",0,2,0},
{"Ch�n V� Th�nh Y",0,2,1},
{"Thi�n Nh�n M�t Trang",0,2,2},
{"Gi�ng Sa B�o",0,2,3},
{"���ng Ngh� gi�p",0,2,4},
{"V�n L�u Quy T�ng Y",0,2,5},
{"Tuy�n Long b�o",0,2,6},
{"Long Ti�u ��o Y",0,2,8},
{"C�u V� B�ch H� trang",0,2,9},
{"Tr�m H��ng sam",0,2,10},
{"T�ch L�ch Kim Ph�ng gi�p",0,2,11},
{"V�n Ch�ng T� T�m Y",0,2,12},
{"L�u Ti�n Qu�n",0,2,13},
}
},
[3]=
{
szName = "�ai L�ng",
tbEquip =
{
{"Thi�n T�m Y�u ��i",0,6,0},
{"B�ch Kim Y�u ��i",0,6,1},
}
},
[4]=
{
szName = "Gi�y",
tbEquip =
{
{"C�u Ti�t X��ng V� Ngoa",0,5,0},
{"Thi�n T�m Ngoa",0,5,1},
{"Kim L� h�i",0,5,2},
{"Phi Ph�ng Ngoa",0,5,3},
}
},
[5]=
{
szName = "Bao Tay",
tbEquip =
{
{"Long Ph�ng Huy�t Ng�c Tr�c",0,8,0},
{"Thi�n T�m H� Uy�n",0,8,1},
}
},
[6]=
{
szName = "N�n",
tbEquip =
{
{"T� L� m�o",0,7,0},
{"Ng� l�o qu�n",0,7,1},
{"Tu La Ph�t k�t",0,7,2},
{"Th�ng Thi�n Ph�t Qu�n",0,7,3},
{"Y�m Nh�t kh�i",0,7,4},
{"Tr�ch Tinh ho�n",0,7,5},
{"� T�m M�o",0,7,6},
{"Quan �m Ph�t Qu�n",0,7,7},
{"�m D��ng V� C�c qu�n",0,7,8},
{"Huy�n T� Di�n Tr�o",0,7,9},
{"Long Huy�t ��u ho�n",0,7,10},
{"Long L�n Kh�i",0,7,11},
{"Thanh Tinh Thoa",0,7,12},
{"Kim Ph�ng Tri�n S� ",0,7,13},
}
},
[7]=
{
szName = "V� Kh� C�n Chi�n",
tbEquip =
{
{"Huy�n Thi�t Ki�m",0,0,0},
{"��i Phong �ao",0,0,1},
{"Kim C� B�ng",0,0,2},
{"Ph� Thi�n K�ch",0,0,3},
{"Ph� Thi�n ch�y",0,0,4},
{"Th�n Nh�t Tr�m",0,0,5},
}
},
[8]=
{
szName = "Ng�c B�i",
tbEquip =
{
{"Long Ti�n H��ng Nang",0,9,0},
{"D��ng Chi B�ch Ng�c",0,9,1},
}
},
[9]=
{
szName = "V� Kh� T�m Xa",
tbEquip =
{
{"B� V��ng Ti�u",0,1,0},
{"To�i Nguy�t �ao",0,1,1},
{"Kh�ng T��c Linh",0,1,2},
}
},
[10]=
{
szName = "Nh�n",
tbEquip =
{
{"To�n Th�ch Gi�i Ch� ",0,3,0},
}
},
}

function laydoxanh()
local tbOpt = {}
for i=1, getn(tbDoXanh) do
tinsert(tbOpt, {tbDoXanh[i].szName, laydoxanh1, {i}})
end

tinsert(tbOpt, {"Tho�t."})
CreateNewSayEx(LENHBAI_ADMIN.."Xin m�i l�a ch�n trang b�:", tbOpt)
end
function laydoxanh1(nType)
local tbEquip = %tbDoXanh[nType]["tbEquip"]
local tbOpt = {}
for i=1, getn(tbEquip) do
tinsert(tbOpt, {tbEquip[i][1], laydoxanh2, {i, nType}})
end

tinsert(tbOpt, {"Tho�t."})
local szTitle = format(LENHBAI_ADMIN.."Xin m�i l�a ch�n trang b�:")
CreateNewSayEx(szTitle, tbOpt)
end
function laydoxanh2(nIndex, nType)
local tbOpt = {}
tinsert(tbOpt, {"Kim", laydoxanh3, {nIndex, nType, 0}})
tinsert(tbOpt, {"M�c", laydoxanh3, {nIndex, nType, 1}})
tinsert(tbOpt, {"Th�y", laydoxanh3, {nIndex, nType, 2}})
tinsert(tbOpt, {"H�a", laydoxanh3, {nIndex, nType, 3}})
tinsert(tbOpt, {"Th� ", laydoxanh3, {nIndex, nType, 4}})


tinsert(tbOpt, {"Tho�t."})
local szTitle = format(LENHBAI_ADMIN.."M�i ch�n h�:")
CreateNewSayEx(szTitle, tbOpt)
end
function laydoxanh3(nIndex, nType, nSeries)
g_AskClientNumberEx(0, 60, "S� L��ng:", {laydoxanh4, {nIndex, nType, nSeries}})
end
function laydoxanh4(nIndex, nType, nSeries, nCount)
local tbEquipSelect = %tbDoXanh[nType]["tbEquip"][nIndex]
for i=1,nCount do AddItem(tbEquipSelect[2], tbEquipSelect[3], tbEquipSelect[4], 10, nSeries, 100, 10) end
end

-----L�y �� T�m------------------------------------------------
function laydotim()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"Trang B� MaxOp", dotimmax},
		{"V� Kh�", weapon},
		{"Y Ph�c", shirt},
		{"�inh M�o", hat},
		{"H� Uy�n", glove},
		{"Y�u ��i", belt},
		{"H�i T�", shoe},
		{"Tr� L�i",TrangBi},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function dotimmax()
	local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
	local tbOpt =
	{
		{"V� Kh�", vukhi},
		{"Ki�m", kiem},
		{"Trang Ph�c", trangphuc},
		{"�inh M�o", non},
		{"Bao Tay", baotay},
		{"�ai L�ng", dailung},
		{"Gi�y", giay},
		{"Tr� L�i", TrangBi},	
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function vukhi()
AddQualityItem(2,0,0,1,10,0,0,483,510,481,503,496,492)
end
function kiem()
AddQualityItem(2,0,0,0,10,2,0,483,512,481,505,496,514)
end
function trangphuc()
AddQualityItem(2,0,2,0,10,2,0,488,512,496,515,497,514)
end
function non()
AddQualityItem(2,0,7,0,10,3,0,496,509,497,518,499,519)
end
function baotay()
AddQualityItem(2,0,8,1,10,1,0,496,513,497,508,499,492)
end
function dailung()
AddQualityItem(2,0,6,0,10,2,0,496,512,497,515,499,514)
end
function giay()
AddQualityItem(2,0,5,0,10,4,0,487,511,496,520,497,492)
end
function weapon()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"Ki�m", kiem},
		{"�ao", dao},
		{"B�ng", bong},
		{"K�ch", kick},
		{"Ch�y", chuy},
		{"Song �ao", songdao},
		{"Phi Ti�u", phitieu},
		{"Phi �ao", phidao},
		{"T� Ti�n", tutien},
		{"Tr� L�i",TrangBi},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function kiem()
AddQualityItem(2,0,0,0,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,0,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,0,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,0,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,0,10,4,0,-1,-1,-1,-1,-1,-1) 
end


function dao()
AddQualityItem(2,0,0,1,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,1,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,1,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,1,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,1,10,4,0,-1,-1,-1,-1,-1,-1) 
end


function bong()
AddQualityItem(2,0,0,2,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,2,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,2,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,2,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,2,10,4,0,-1,-1,-1,-1,-1,-1) 
end


function kick()
AddQualityItem(2,0,0,3,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,3,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,3,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,3,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,3,10,4,0,-1,-1,-1,-1,-1,-1) 
end


function chuy()
AddQualityItem(2,0,0,4,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,4,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,4,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,4,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,4,10,4,0,-1,-1,-1,-1,-1,-1) 
end


function songdao()
AddQualityItem(2,0,0,5,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,5,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,5,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,5,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,5,10,4,0,-1,-1,-1,-1,-1,-1) 
end


function phitieu()
AddQualityItem(2,0,1,0,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,0,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,0,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,0,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,0,10,4,0,-1,-1,-1,-1,-1,-1) 
end


function phidao()
AddQualityItem(2,0,1,1,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,1,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,1,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,1,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,1,10,4,0,-1,-1,-1,-1,-1,-1) 
end


function tutien()
AddQualityItem(2,0,1,2,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,2,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,2,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,2,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,2,10,4,0,-1,-1,-1,-1,-1,-1) 
end

function shirt()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"Th�t B�o C� Sa", aothieulam},
		{"Ch�n V� Th�nh Y", aovodang},
		{"Thi�n Nh�n M�t Trang", aothiennhan},
		{"Gi�ng Sa B�o", sabao},
		{"���ng Ngh� Gi�p", dng},
		{"V�n L�u Quy T�ng Y", aocaibang},
		{"Tuy�n Long B�o", longbao},
		{"Long Ti�u ��o Y", daoy},
		{"C�u V� B�ch H� Trang", hotrang},
		{"Tr�m H��ng Sam", huongsam},
		{"T�ch L�ch Kim Ph�ng Gi�p", kimphung},
		{"V�n Ch�ng T� T�m Y", tamy},
		{"L�u Ti�n Qu�n", tienquan},
		{"Tr� L�i",TrangBi},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function aothieulam()
AddQualityItem(2,0,2,0,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,0,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,0,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,0,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function aovodang()
AddQualityItem(2,0,2,1,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,1,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,1,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,1,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function aothiennhan()
AddQualityItem(2,0,2,2,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,2,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,2,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,2,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,2,10,4,0,-1,-1,-1,-1,-1,-1)
end


function sabao()
AddQualityItem(2,0,2,3,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,3,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,3,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,3,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,3,10,4,0,-1,-1,-1,-1,-1,-1)
end


function dng()
AddQualityItem(2,0,2,4,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,4,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,4,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,4,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,4,10,4,0,-1,-1,-1,-1,-1,-1)
end


function aocaibang()
AddQualityItem(2,0,2,5,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,5,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,5,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,5,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,5,10,4,0,-1,-1,-1,-1,-1,-1)
end


function longbao()
AddQualityItem(2,0,2,6,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,6,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,6,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,6,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,6,10,4,0,-1,-1,-1,-1,-1,-1)
end


function daoy()
AddQualityItem(2,0,2,8,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,8,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,8,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,8,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,8,10,4,0,-1,-1,-1,-1,-1,-1)
end


function hotrang()
AddQualityItem(2,0,2,9,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,9,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,9,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,9,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,9,10,4,0,-1,-1,-1,-1,-1,-1)
end


function huongsam()
AddQualityItem(2,0,2,10,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,10,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,10,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,10,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,10,10,4,0,-1,-1,-1,-1,-1,-1)
end


function kimphung()
AddQualityItem(2,0,2,11,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,11,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,11,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,11,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,11,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tamy()
AddQualityItem(2,0,2,12,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,12,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,12,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,12,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,12,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tienquan()
AddQualityItem(2,0,2,13,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,13,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,13,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,13,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,13,10,4,0,-1,-1,-1,-1,-1,-1)
end

function hat()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"T� L� M�o", lomao},
		{"Ng� L�o Qu�n", laoquan},
		{"Tu La Ph�t K�", phatket},
		{"Th�ng Thi�n Ph�t Qu�n", phatquan},
		{"Y�m Nh�t Kh�i", nhatkhoi},
		{"Tr�ch Tinh Ho�n", tinhhoan},
		{"� T�m M�o", tammao},
		{"Quan �m Ph�t Qu�n", quanam},
		{"�m D��ng V� C�c Qu�n", amduong},
		{"Huy�n T� Di�n Tr�o", dientrao},
		{"Long Huy�t ��u Ho�n", longhuyet},
		{"Long L�n Kh�i", lankhoi},
		{"Thanh Tinh Thoa", tinhthoa},
		{"Kim Ph�ng Tri�n S�", triensi},
		{"Tr� L�i",TrangBi},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function lomao()
AddQualityItem(2,0,7,0,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,0,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,0,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,0,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function laoquan()
AddQualityItem(2,0,7,1,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,1,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,1,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,1,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function phatket()
AddQualityItem(2,0,7,2,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,2,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,2,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,2,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,2,10,4,0,-1,-1,-1,-1,-1,-1)
end


function phatquan()
AddQualityItem(2,0,7,3,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,3,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,3,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,3,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,3,10,4,0,-1,-1,-1,-1,-1,-1)
end


function nhatkhoi()
AddQualityItem(2,0,7,4,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,4,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,4,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,4,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,4,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tinhhoan()
AddQualityItem(2,0,7,5,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,5,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,5,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,5,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,5,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tammao()
AddQualityItem(2,0,7,6,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,6,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,6,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,6,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,6,10,4,0,-1,-1,-1,-1,-1,-1)
end


function quanam()
AddQualityItem(2,0,7,7,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,7,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,7,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,7,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,7,10,4,0,-1,-1,-1,-1,-1,-1)
end


function amduong()
AddQualityItem(2,0,7,8,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,8,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,8,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,8,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,8,10,4,0,-1,-1,-1,-1,-1,-1)
end


function dientrao()
AddQualityItem(2,0,7,9,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,9,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,9,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,9,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,9,10,4,0,-1,-1,-1,-1,-1,-1)
end


function longhuyet()
AddQualityItem(2,0,7,10,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,10,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,10,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,10,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,10,10,4,0,-1,-1,-1,-1,-1,-1)
end


function lankhoi()
AddQualityItem(2,0,7,11,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,11,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,11,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,11,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,11,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tinhthoa()
AddQualityItem(2,0,7,12,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,12,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,12,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,12,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,12,10,4,0,-1,-1,-1,-1,-1,-1)
end


function triensi()
AddQualityItem(2,0,7,13,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,13,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,13,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,13,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,13,10,4,0,-1,-1,-1,-1,-1,-1)
end

function glove()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"Long Ph�ng Huy�t Ng�c Tr�c", ngoctrac},
		{"Thi�n T�m H� Uy�n", houyen},
		{"Tr� L�i",TrangBi},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function ngoctrac()
AddQualityItem(2,0,8,0,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,0,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,0,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,0,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function houyen()
AddQualityItem(2,0,8,1,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,1,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,1,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,1,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,1,10,4,0,-1,-1,-1,-1,-1,-1)
end

function belt()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"Thi�n T�m Y�u ��i", thientamyeu},
		{"B�ch Kim Y�u ��i", bachkimyeudai},
		{"Tr� L�i",TrangBi},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function thientamyeu()
AddQualityItem(2,0,6,0,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,0,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,0,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,0,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function bachkimyeudai()
AddQualityItem(2,0,6,1,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,1,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,1,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,1,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,1,10,4,0,-1,-1,-1,-1,-1,-1)
end

function shoe()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"C�u Ti�t X��ng V� Ngoa", cuutien},
		{"Thi�n T�m Ngoa", thientam},
		{"Kim L� H�i", kimlu},
		{"Phi Ph�ng Ngoa", phiphung},
		{"Tr� L�i",TrangBi},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function cuutien()
AddQualityItem(2,0,5,0,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,0,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,0,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,0,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function thientam()
AddQualityItem(2,0,5,1,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,1,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,1,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,1,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function kimlu()
AddQualityItem(2,0,5,2,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,2,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,2,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,2,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,2,10,4,0,-1,-1,-1,-1,-1,-1)
end


function phiphung()
AddQualityItem(2,0,5,3,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,3,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,3,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,3,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,3,10,4,0,-1,-1,-1,-1,-1,-1)
end
------Trang Bi Cao Cap-----
function TBCC()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"Trang B� T� M�ng",setumangT1},
		{"Trang B� Kim �",sekimoT1},
		{"Trang B� B�ch H�",sebachhoT1},
		{"Trang B� X�ch L�n",sexichlanT1},
		{"Trang B� Minh Ph��ng",seminhphuongT1},
		{"Trang B� ��ng Long",sedanglongT1},
		{"Trang B� Tinh S��ng",setinhsuongT1},
		{"Trang B� Nguy�t Khuy�t",setnguyetkhuyet},
		{"Trang B� Di�u D��ng",setdieuduong},
		{"Tr� L�i",TrangBi},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
-----SET Tu Mang----------
function setumangT1()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"Thi�u L�m Quy�n",setumang,{1}},
		{"Thi�u L�m C�n",setumang,{2}},
		{"Thi�u L�m �ao",setumang,{3}},
		{"Thi�n V��ng Ch�y",setumang,{4}},
		{"Thi�n V��ng Th��ng",setumang,{5}},
		{"Thi�n V��ng �ao",setumang,{6}},
		{"Nga Mi Ki�m",setumang,{7}},
		{"Nga Mi Ch��ng",setumang,{8}},
		{"Th�y Y�n ��n �ao",setumang,{9}},
		{"Th�y Y�n Song �ao",setumang,{10}},
		{"Ng� ��c Ch��ng Ph�p",setumang,{11}},
		{"Ng� ��c �ao Ph�p",setumang,{12}},
		{"Trang K�",setumangT2},
		{"Tr� L�i",TBCC},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function setumangT2()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"���ng M�n Phi �ao",setumang,{13}},
		{"���ng M�n T� Ti�n",setumang,{14}},
		{"���ng M�n Phi Ti�u",setumang,{15}},
		{"C�i Bang R�ng",setumang,{16}},
		{"C�i Bang C�n Ph�p",setumang,{17}},
		{"Thi�n Nh�n K�ch",setumang,{18}},
		{"Thi�n Nh�n �ao",setumang,{19}},
		{"V� �ang Kh�",setumang,{20}},
		{"V� �ang Ki�m",setumang,{21}},
		{"C�n L�n �ao",setumang,{22}},
		{"C�n L�n Ki�m",setumang,{23}},
		{"Hoa S�n Ki�m T�ng",setumanghs,{2}},
		{"Hoa S�n Kh� T�ng",setumanghs,{1}},
		{"Tr� L�i",TBCC},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function setumang(nId)
for i = 1825, 1834 do
AddGoldItem(0,10*nId+i-10)
end
end
function setumanghs(nId)
for i = 4713, 4722 do
AddGoldItem(0,10*nId+i-10)
end
end
-----SET Kim O----------
function sekimoT1()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"Thi�u L�m Quy�n",sekimo,{1}},
		{"Thi�u L�m C�n",sekimo,{2}},
		{"Thi�u L�m �ao",sekimo,{3}},
		{"Thi�n V��ng Ch�y",sekimo,{4}},
		{"Thi�n V��ng Th��ng",sekimo,{5}},
		{"Thi�n V��ng �ao",sekimo,{6}},
		{"Nga Mi Ki�m",sekimo,{7}},
		{"Nga Mi Ch��ng",sekimo,{8}},
		{"Th�y Y�n ��n �ao",sekimo,{9}},
		{"Th�y Y�n Song �ao",sekimo,{10}},
		{"Ng� ��c Ch��ng Ph�p",sekimo,{11}},
		{"Ng� ��c �ao Ph�p",sekimo,{12}},
		{"Trang K�",sekimoT2},
		{"Tr� L�i",TBCC},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function sekimoT2()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"���ng M�n Phi �ao",sekimo,{13}},
		{"���ng M�n T� Ti�n",sekimo,{14}},
		{"���ng M�n Phi Ti�u",sekimo,{15}},
		{"C�i Bang R�ng",sekimo,{16}},
		{"C�i Bang C�n Ph�p",sekimo,{17}},
		{"Thi�n Nh�n K�ch",sekimo,{18}},
		{"Thi�n Nh�n �ao",sekimo,{19}},
		{"V� �ang Kh�",sekimo,{20}},
		{"V� �ang Ki�m",sekimo,{21}},
		{"C�n L�n �ao",sekimo,{22}},
		{"C�n L�n Ki�m",sekimo,{23}},
		{"Hoa S�n Ki�m T�ng",sekimohs,{2}},
		{"Hoa S�n Kh� T�ng",sekimohs,{1}},
		{"Tr� L�i",TBCC},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function sekimo(nId)
for i = 2055, 2064 do
AddGoldItem(0,10*nId+i-10)
end
end
function sekimohs(nId)
for i = 4733, 4742 do
AddGoldItem(0,10*nId+i-10)
end
end
-----SET Bach Ho----------
function sebachhoT1()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"Thi�u L�m Quy�n",sebachho,{1}},
		{"Thi�u L�m C�n",sebachho,{2}},
		{"Thi�u L�m �ao",sebachho,{3}},
		{"Thi�n V��ng Ch�y",sebachho,{4}},
		{"Thi�n V��ng Th��ng",sebachho,{5}},
		{"Thi�n V��ng �ao",sebachho,{6}},
		{"Nga Mi Ki�m",sebachho,{7}},
		{"Nga Mi Ch��ng",sebachho,{8}},
		{"Th�y Y�n ��n �ao",sebachho,{9}},
		{"Th�y Y�n Song �ao",sebachho,{10}},
		{"Ng� ��c Ch��ng Ph�p",sebachho,{11}},
		{"Ng� ��c �ao Ph�p",sebachho,{12}},
		{"Trang K�",sebachhoT2},
		{"Tr� L�i",TBCC},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function sebachhoT2()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"���ng M�n Phi �ao",sebachho,{13}},
		{"���ng M�n T� Ti�n",sebachho,{14}},
		{"���ng M�n Phi Ti�u",sebachho,{15}},
		{"C�i Bang R�ng",sebachho,{16}},
		{"C�i Bang C�n Ph�p",sebachho,{17}},
		{"Thi�n Nh�n K�ch",sebachho,{18}},
		{"Thi�n Nh�n �ao",sebachho,{19}},
		{"V� �ang Kh�",sebachho,{20}},
		{"V� �ang Ki�m",sebachho,{21}},
		{"C�n L�n �ao",sebachho,{22}},
		{"C�n L�n Ki�m",sebachho,{23}},
		{"Hoa S�n Ki�m T�ng",sebachhohs,{2}},
		{"Hoa S�n Kh� T�ng",sebachhohs,{1}},
		{"Tr� L�i",TBCC},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function sebachho(nId)
for i = 2285, 2294 do
AddGoldItem(0,10*nId+i-10)
end
end
function sebachhohs(nId)
for i = 4753, 4762 do
AddGoldItem(0,10*nId+i-10)
end
end
-----SET Xich Lan----------
function sexichlanT1()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"Thi�u L�m Quy�n",sexichlan,{1}},
		{"Thi�u L�m C�n",sexichlan,{2}},
		{"Thi�u L�m �ao",sexichlan,{3}},
		{"Thi�n V��ng Ch�y",sexichlan,{4}},
		{"Thi�n V��ng Th��ng",sexichlan,{5}},
		{"Thi�n V��ng �ao",sexichlan,{6}},
		{"Nga Mi Ki�m",sexichlan,{7}},
		{"Nga Mi Ch��ng",sexichlan,{8}},
		{"Th�y Y�n ��n �ao",sexichlan,{9}},
		{"Th�y Y�n Song �ao",sexichlan,{10}},
		{"Ng� ��c Ch��ng Ph�p",sexichlan,{11}},
		{"Ng� ��c �ao Ph�p",sexichlan,{12}},
		{"Trang K�",sexichlanT2},
		{"Tr� L�i",TBCC},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function sexichlanT2()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"���ng M�n Phi �ao",sexichlan,{13}},
		{"���ng M�n T� Ti�n",sexichlan,{14}},
		{"���ng M�n Phi Ti�u",sexichlan,{15}},
		{"C�i Bang R�ng",sexichlan,{16}},
		{"C�i Bang C�n Ph�p",sexichlan,{17}},
		{"Thi�n Nh�n K�ch",sexichlan,{18}},
		{"Thi�n Nh�n �ao",sexichlan,{19}},
		{"V� �ang Kh�",sexichlan,{20}},
		{"V� �ang Ki�m",sexichlan,{21}},
		{"C�n L�n �ao",sexichlan,{22}},
		{"C�n L�n Ki�m",sexichlan,{23}},
		{"Hoa S�n Ki�m T�ng",sexichlanhs,{2}},
		{"Hoa S�n Kh� T�ng",sexichlanhs,{1}},
		{"Tr� L�i",TBCC},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function sexichlan(nId)
for i = 2515, 2524 do
AddGoldItem(0,10*nId+i-10)
end
end
function sexichlanhs(nId)
for i = 4773, 4782 do
AddGoldItem(0,10*nId+i-10)
end
end
-----SET Minh Phuong----------
function seminhphuongT1()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"Thi�u L�m Quy�n",seminhphuong,{1}},
		{"Thi�u L�m C�n",seminhphuong,{2}},
		{"Thi�u L�m �ao",seminhphuong,{3}},
		{"Thi�n V��ng Ch�y",seminhphuong,{4}},
		{"Thi�n V��ng Th��ng",seminhphuong,{5}},
		{"Thi�n V��ng �ao",seminhphuong,{6}},
		{"Nga Mi Ki�m",seminhphuong,{7}},
		{"Nga Mi Ch��ng",seminhphuong,{8}},
		{"Th�y Y�n ��n �ao",seminhphuong,{9}},
		{"Th�y Y�n Song �ao",seminhphuong,{10}},
		{"Ng� ��c Ch��ng Ph�p",seminhphuong,{11}},
		{"Ng� ��c �ao Ph�p",seminhphuong,{12}},
		{"Trang K�",seminhphuongT2},
		{"Tr� L�i",TBCC},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function seminhphuongT2()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"���ng M�n Phi �ao",seminhphuong,{13}},
		{"���ng M�n T� Ti�n",seminhphuong,{14}},
		{"���ng M�n Phi Ti�u",seminhphuong,{15}},
		{"C�i Bang R�ng",seminhphuong,{16}},
		{"C�i Bang C�n Ph�p",seminhphuong,{17}},
		{"Thi�n Nh�n K�ch",seminhphuong,{18}},
		{"Thi�n Nh�n �ao",seminhphuong,{19}},
		{"V� �ang Kh�",seminhphuong,{20}},
		{"V� �ang Ki�m",seminhphuong,{21}},
		{"C�n L�n �ao",seminhphuong,{22}},
		{"C�n L�n Ki�m",seminhphuong,{23}},
		{"Hoa S�n Ki�m T�ng",seminhphuonghs,{2}},
		{"Hoa S�n Kh� T�ng",seminhphuonghs,{1}},
		{"Tr� L�i",TBCC},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function seminhphuong(nId)
for i = 2745, 2754 do
AddGoldItem(0,10*nId+i-10)
end
end
function seminhphuonghs(nId)
for i = 4793, 4802 do
AddGoldItem(0,10*nId+i-10)
end
end
-----SET Dang Long----------
function sedanglongT1()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"Thi�u L�m Quy�n",sedanglong,{1}},
		{"Thi�u L�m C�n",sedanglong,{2}},
		{"Thi�u L�m �ao",sedanglong,{3}},
		{"Thi�n V��ng Ch�y",sedanglong,{4}},
		{"Thi�n V��ng Th��ng",sedanglong,{5}},
		{"Thi�n V��ng �ao",sedanglong,{6}},
		{"Nga Mi Ki�m",sedanglong,{7}},
		{"Nga Mi Ch��ng",sedanglong,{8}},
		{"Th�y Y�n ��n �ao",sedanglong,{9}},
		{"Th�y Y�n Song �ao",sedanglong,{10}},
		{"Ng� ��c Ch��ng Ph�p",sedanglong,{11}},
		{"Ng� ��c �ao Ph�p",sedanglong,{12}},
		{"Trang K�",sedanglongT2},
		{"Tr� L�i",TBCC},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function sedanglongT2()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"���ng M�n Phi �ao",sedanglong,{13}},
		{"���ng M�n T� Ti�n",sedanglong,{14}},
		{"���ng M�n Phi Ti�u",sedanglong,{15}},
		{"C�i Bang R�ng",sedanglong,{16}},
		{"C�i Bang C�n Ph�p",sedanglong,{17}},
		{"Thi�n Nh�n K�ch",sedanglong,{18}},
		{"Thi�n Nh�n �ao",sedanglong,{19}},
		{"V� �ang Kh�",sedanglong,{20}},
		{"V� �ang Ki�m",sedanglong,{21}},
		{"C�n L�n �ao",sedanglong,{22}},
		{"C�n L�n Ki�m",sedanglong,{23}},
		{"Hoa S�n Ki�m T�ng",sedanglonghs,{1}},
		{"Hoa S�n Kh� T�ng",sedanglonghs,{2}},
		{"Tr� L�i",TBCC},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function sedanglong(nId)
for i = 2975, 2984 do
AddGoldItem(0,10*nId+i-10)
end
end
function sedanglonghs(nId)
for i = 4813, 4822 do
AddGoldItem(0,10*nId+i-10)
end
end
-----SET Tinh Suong----------
function setinhsuongT1()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"Thi�u L�m Quy�n",setinhsuong,{1}},
		{"Thi�u L�m C�n",setinhsuong,{2}},
		{"Thi�u L�m �ao",setinhsuong,{3}},
		{"Thi�n V��ng Ch�y",setinhsuong,{4}},
		{"Thi�n V��ng Th��ng",setinhsuong,{5}},
		{"Thi�n V��ng �ao",setinhsuong,{6}},
		{"Nga Mi Ki�m",setinhsuong,{7}},
		{"Nga Mi Ch��ng",setinhsuong,{8}},
		{"Th�y Y�n ��n �ao",setinhsuong,{9}},
		{"Th�y Y�n Song �ao",setinhsuong,{10}},
		{"Ng� ��c Ch��ng Ph�p",setinhsuong,{11}},
		{"Ng� ��c �ao Ph�p",setinhsuong,{12}},
		{"Trang K�",setinhsuongT2},
		{"Tr� L�i",TBCC},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function setinhsuongT2()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"���ng M�n Phi �ao",setinhsuong,{13}},
		{"���ng M�n T� Ti�n",setinhsuong,{14}},
		{"���ng M�n Phi Ti�u",setinhsuong,{15}},
		{"C�i Bang R�ng",setinhsuong,{16}},
		{"C�i Bang C�n Ph�p",setinhsuong,{17}},
		{"Thi�n Nh�n K�ch",setinhsuong,{18}},
		{"Thi�n Nh�n �ao",setinhsuong,{19}},
		{"V� �ang Kh�",setinhsuong,{20}},
		{"V� �ang Ki�m",setinhsuong,{21}},
		{"C�n L�n �ao",setinhsuong,{22}},
		{"C�n L�n Ki�m",setinhsuong,{23}},
		{"Hoa S�n Ki�m T�ng",setinhsuonghs,{1}},
		{"Hoa S�n Kh� T�ng",setinhsuonghs,{2}},
		{"Tr� L�i",TBCC},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function setinhsuong(nId)
for i = 5379, 5388 do
AddGoldItem(0,10*nId+i-10)
end
end
function setinhsuonghs(nId)
for i = 5609, 5618 do
AddGoldItem(0,10*nId+i-10)
end
end
------Trang Bi MaxOp-----
function TBCCMAX()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		--{"Trang B� T� M�ng",setumangmaxT1},
		{"Trang B� Kim �",sekimomaxT1},
		{"Trang B� B�ch H�",sebachhomaxT1},
		{"Trang B� X�ch L�n",sexichlanmaxT1},
		{"Trang B� Minh Ph��ng",seminhphuongmaxT1},
		{"Trang B� ��ng Long",sedanglongmaxT1},
		{"Trang B� Tinh S��ng",setinhsuongmaxT1},
		{"Tr� L�i",TrangBi},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
-----SET KIM O MAX----------
function sekimomaxT1()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"Thi�u L�m Quy�n",sekimomax,{1}},
		{"Thi�u L�m C�n",sekimomax,{2}},
		{"Thi�u L�m �ao",sekimomax,{3}},
		{"Thi�n V��ng Ch�y",sekimomax,{4}},
		{"Thi�n V��ng Th��ng",sekimomax,{5}},
		{"Thi�n V��ng �ao",sekimomax,{6}},
		{"Nga Mi Ki�m",sekimomax,{7}},
		{"Nga Mi Ch��ng",sekimomax,{8}},
		{"Th�y Y�n ��n �ao",sekimomax,{9}},
		{"Th�y Y�n Song �ao",sekimomax,{10}},
		{"Ng� ��c Ch��ng Ph�p",sekimomax,{11}},
		{"Ng� ��c �ao Ph�p",sekimomax,{12}},
		{"Trang K�",sekimomaxT2},
		{"Tr� L�i",TBCC},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function sekimomaxT2()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"���ng M�n Phi �ao",sekimomax,{13}},
		{"���ng M�n T� Ti�n",sekimomax,{14}},
		{"���ng M�n Phi Ti�u",sekimomax,{15}},
		{"C�i Bang R�ng",sekimomax,{16}},
		{"C�i Bang C�n Ph�p",sekimomax,{17}},
		{"Thi�n Nh�n K�ch",sekimomax,{18}},
		{"Thi�n Nh�n �ao",sekimomax,{19}},
		{"V� �ang Kh�",sekimomax,{20}},
		{"V� �ang Ki�m",sekimomax,{21}},
		{"C�n L�n �ao",sekimomax,{22}},
		{"C�n L�n Ki�m",sekimomax,{23}},
		{"Hoa S�n Ki�m T�ng",sekimohsmax,{1}},
		{"Hoa S�n Kh� T�ng",sekimohsmax,{2}},
		{"Tr� L�i",TBCC},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function sekimomax(nId)
for i = 3235, 3244 do
AddGoldItem(0,10*nId+i-10)
end
end
-----SET BACH HO MAX----------
function sebachhomaxT1()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"Thi�u L�m Quy�n",sebachhomax,{1}},
		{"Thi�u L�m C�n",sebachhomax,{2}},
		{"Thi�u L�m �ao",sebachhomax,{3}},
		{"Thi�n V��ng Ch�y",sebachhomax,{4}},
		{"Thi�n V��ng Th��ng",sebachhomax,{5}},
		{"Thi�n V��ng �ao",sebachhomax,{6}},
		{"Nga Mi Ki�m",sebachhomax,{7}},
		{"Nga Mi Ch��ng",sebachhomax,{8}},
		{"Th�y Y�n ��n �ao",sebachhomax,{9}},
		{"Th�y Y�n Song �ao",sebachhomax,{10}},
		{"Ng� ��c Ch��ng Ph�p",sebachhomax,{11}},
		{"Ng� ��c �ao Ph�p",sebachhomax,{12}},
		{"Trang K�",sebachhomaxT2},
		{"Tr� L�i",TBCC},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function sebachhomaxT2()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"���ng M�n Phi �ao",sebachhomax,{13}},
		{"���ng M�n T� Ti�n",sebachhomax,{14}},
		{"���ng M�n Phi Ti�u",sebachhomax,{15}},
		{"C�i Bang R�ng",sebachhomax,{16}},
		{"C�i Bang C�n Ph�p",sebachhomax,{17}},
		{"Thi�n Nh�n K�ch",sebachhomax,{18}},
		{"Thi�n Nh�n �ao",sebachhomax,{19}},
		{"V� �ang Kh�",sebachhomax,{20}},
		{"V� �ang Ki�m",sebachhomax,{21}},
		{"C�n L�n �ao",sebachhomax,{22}},
		{"C�n L�n Ki�m",sebachhomax,{23}},
		{"Hoa S�n Ki�m T�ng",sebachhohsmax,{2}},
		{"Hoa S�n Kh� T�ng",sebachhohsmax,{1}},
		{"Tr� L�i",TBCC},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function sebachhomax(nId)
for i = 3895, 3904 do
AddGoldItem(0,10*nId+i-10)
end
end
function sebachhohsmax(nId)
for i = 6129, 6138 do
AddGoldItem(0,10*nId+i-10)
end
end
-----SET XICH LAN MAX----------
function sexichlanmaxT1()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"Thi�u L�m Quy�n",sexichlanmax,{1}},
		{"Thi�u L�m C�n",sexichlanmax,{2}},
		{"Thi�u L�m �ao",sexichlanmax,{3}},
		{"Thi�n V��ng Ch�y",sexichlanmax,{4}},
		{"Thi�n V��ng Th��ng",sexichlanmax,{5}},
		{"Thi�n V��ng �ao",sexichlanmax,{6}},
		{"Nga Mi Ki�m",sexichlanmax,{7}},
		{"Nga Mi Ch��ng",sexichlanmax,{8}},
		{"Th�y Y�n ��n �ao",sexichlanmax,{9}},
		{"Th�y Y�n Song �ao",sexichlanmax,{10}},
		{"Ng� ��c Ch��ng Ph�p",sexichlanmax,{11}},
		{"Ng� ��c �ao Ph�p",sexichlanmax,{12}},
		{"Trang K�",sexichlanmaxT2},
		{"Tr� L�i",TBCC},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function sexichlanmaxT2()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"���ng M�n Phi �ao",sexichlanmax,{13}},
		{"���ng M�n T� Ti�n",sexichlanmax,{14}},
		{"���ng M�n Phi Ti�u",sexichlanmax,{15}},
		{"C�i Bang R�ng",sexichlanmax,{16}},
		{"C�i Bang C�n Ph�p",sexichlanmax,{17}},
		{"Thi�n Nh�n K�ch",sexichlanmax,{18}},
		{"Thi�n Nh�n �ao",sexichlanmax,{19}},
		{"V� �ang Kh�",sexichlanmax,{20}},
		{"V� �ang Ki�m",sexichlanmax,{21}},
		{"C�n L�n �ao",sexichlanmax,{22}},
		{"C�n L�n Ki�m",sexichlanmax,{23}},
		{"Hoa S�n Ki�m T�ng",sexichlanhsmax,{2}},
		{"Hoa S�n Kh� T�ng",sexichlanhsmax,{1}},
		{"Tr� L�i",TBCC},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function sexichlanmax(nId)
for i = 4136, 4145 do
AddGoldItem(0,10*nId+i-10)
end
end
function sexichlanhsmax(nId)
for i = 6149, 6158 do
AddGoldItem(0,10*nId+i-10)
end
end
-----SET MINH PHUONG MAX----------
function seminhphuongmaxT1()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"Thi�u L�m Quy�n",seminhphuongmax,{1}},
		{"Thi�u L�m C�n",seminhphuongmax,{2}},
		{"Thi�u L�m �ao",seminhphuongmax,{3}},
		{"Thi�n V��ng Ch�y",seminhphuongmax,{4}},
		{"Thi�n V��ng Th��ng",seminhphuongmax,{5}},
		{"Thi�n V��ng �ao",seminhphuongmax,{6}},
		{"Nga Mi Ki�m",seminhphuongmax,{7}},
		{"Nga Mi Ch��ng",seminhphuongmax,{8}},
		{"Th�y Y�n ��n �ao",seminhphuongmax,{9}},
		{"Th�y Y�n Song �ao",seminhphuongmax,{10}},
		{"Ng� ��c Ch��ng Ph�p",seminhphuongmax,{11}},
		{"Ng� ��c �ao Ph�p",seminhphuongmax,{12}},
		{"Trang K�",seminhphuongmaxT2},
		{"Tr� L�i",TBCC},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function seminhphuongmaxT2()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"���ng M�n Phi �ao",seminhphuongmax,{13}},
		{"���ng M�n T� Ti�n",seminhphuongmax,{14}},
		{"���ng M�n Phi Ti�u",seminhphuongmax,{15}},
		{"C�i Bang R�ng",seminhphuongmax,{16}},
		{"C�i Bang C�n Ph�p",seminhphuongmax,{17}},
		{"Thi�n Nh�n K�ch",seminhphuongmax,{18}},
		{"Thi�n Nh�n �ao",seminhphuongmax,{19}},
		{"V� �ang Kh�",seminhphuongmax,{20}},
		{"V� �ang Ki�m",seminhphuongmax,{21}},
		{"C�n L�n �ao",seminhphuongmax,{22}},
		{"C�n L�n Ki�m",seminhphuongmax,{23}},
		{"Hoa S�n Ki�m T�ng",seminhphuonghsmax,{2}},
		{"Hoa S�n Kh� T�ng",seminhphuonghsmax,{1}},
		{"Tr� L�i",TBCC},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function seminhphuongmax(nId)
for i = 4863, 4872 do
AddGoldItem(0,10*nId+i-10)
end
end
function seminhphuonghsmax(nId)
for i = 5290, 5299 do
AddGoldItem(0,10*nId+i-10)
end
end
-----SET DANG LONG MAX----------
function sedanglongmaxT1()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"Thi�u L�m Quy�n",sedanglongmax,{1}},
		{"Thi�u L�m C�n",sedanglongmax,{2}},
		{"Thi�u L�m �ao",sedanglongmax,{3}},
		{"Thi�n V��ng Ch�y",sedanglongmax,{4}},
		{"Thi�n V��ng Th��ng",sedanglongmax,{5}},
		{"Thi�n V��ng �ao",sedanglongmax,{6}},
		{"Nga Mi Ki�m",sedanglongmax,{7}},
		{"Nga Mi Ch��ng",sedanglongmax,{8}},
		{"Th�y Y�n ��n �ao",sedanglongmax,{9}},
		{"Th�y Y�n Song �ao",sedanglongmax,{10}},
		{"Ng� ��c Ch��ng Ph�p",sedanglongmax,{11}},
		{"Ng� ��c �ao Ph�p",sedanglongmax,{12}},
		{"Trang K�",sedanglongmaxT2},
		{"Tr� L�i",TBCC},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function sedanglongmaxT2()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"���ng M�n Phi �ao",sedanglongmax,{13}},
		{"���ng M�n T� Ti�n",sedanglongmax,{14}},
		{"���ng M�n Phi Ti�u",sedanglongmax,{15}},
		{"C�i Bang R�ng",sedanglongmax,{16}},
		{"C�i Bang C�n Ph�p",sedanglongmax,{17}},
		{"Thi�n Nh�n K�ch",sedanglongmax,{18}},
		{"Thi�n Nh�n �ao",sedanglongmax,{19}},
		{"V� �ang Kh�",sedanglongmax,{20}},
		{"V� �ang Ki�m",sedanglongmax,{21}},
		{"C�n L�n �ao",sedanglongmax,{22}},
		{"C�n L�n Ki�m",sedanglongmax,{23}},
		{"Hoa S�n Ki�m T�ng",sedanglonghsmax,{1}},
		{"Hoa S�n Kh� T�ng",sedanglonghsmax,{2}},
		{"Tr� L�i",TBCC},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function sedanglongmax(nId)
for i = 5629, 5638 do
AddGoldItem(0,10*nId+i-10)
end
end
-----SET TINH SUONG MAX----------
function setinhsuongmaxT1()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"Thi�u L�m Quy�n",setinhsuongmax,{1}},
		{"Thi�u L�m C�n",setinhsuongmax,{2}},
		{"Thi�u L�m �ao",setinhsuongmax,{3}},
		{"Thi�n V��ng Ch�y",setinhsuongmax,{4}},
		{"Thi�n V��ng Th��ng",setinhsuongmax,{5}},
		{"Thi�n V��ng �ao",setinhsuongmax,{6}},
		{"Nga Mi Ki�m",setinhsuongmax,{7}},
		{"Nga Mi Ch��ng",setinhsuongmax,{8}},
		{"Th�y Y�n ��n �ao",setinhsuongmax,{9}},
		{"Th�y Y�n Song �ao",setinhsuongmax,{10}},
		{"Ng� ��c Ch��ng Ph�p",setinhsuongmax,{11}},
		{"Ng� ��c �ao Ph�p",setinhsuongmax,{12}},
		{"Trang K�",setinhsuongmaxT2},
		{"Tr� L�i",TBCC},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function setinhsuongmaxT2()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"���ng M�n Phi �ao",setinhsuongmax,{13}},
		{"���ng M�n T� Ti�n",setinhsuongmax,{14}},
		{"���ng M�n Phi Ti�u",setinhsuongmax,{15}},
		{"C�i Bang R�ng",setinhsuongmax,{16}},
		{"C�i Bang C�n Ph�p",setinhsuongmax,{17}},
		{"Thi�n Nh�n K�ch",setinhsuongmax,{18}},
		{"Thi�n Nh�n �ao",setinhsuongmax,{19}},
		{"V� �ang Kh�",setinhsuongmax,{20}},
		{"V� �ang Ki�m",setinhsuongmax,{21}},
		{"C�n L�n �ao",setinhsuongmax,{22}},
		{"C�n L�n Ki�m",setinhsuongmax,{23}},
		{"Hoa S�n Ki�m T�ng",setinhsuongmax,{24}},
		{"Hoa S�n Kh� T�ng",setinhsuongmax,{25}},
		{"Tr� L�i",setinhsuongmaxT1},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function setinhsuongmax(nId)
for i = 5879, 5888 do
AddGoldItem(0,10*nId+i-10)
end
end
-------Trang B� Hi�m-------------
function TBHiem()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"Long T��ng Chi L�n",longtuong},
		{"H�c Th�n",hacthan},
		{"V� Li�t",vuliet},
		{"Huynh ��",huynhde},
		{"��ng S�t",dongsat},
		{"C� S�n",coson},
		{"Nh�n ��c C�",docco},
		{"Nh�n Set C� Th�p",cothap},
		{"Th��ng Khung",unknow},
		{"Admin PGaming",pgaming},
		{"Tr� L�i",TrangBi},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
---------C�c Trang B� Long T��ng-H�c Th�n---��ng S�t--V� Li�t--------------------------
function cothap()
for i=5360,5363 do
AddGoldItem(0, i)
end
end


function longtuong()
for i=5219,5227 do
AddGoldItem(0, i)
end
end

function docco()
for i=4134,4135 do
AddGoldItem(0, i)
end
end

function hacthan()
for i=4838,4842 do
AddGoldItem(0, i)
end
end

function vuliet()
for i=5208,5212 do
AddGoldItem(0, i)
end
end

function huynhde()
AddGoldItem(0, 4436)
AddGoldItem(0, 4481)
end

function dongsat()
for i=494,497 do
AddGoldItem(0, i)
end
end 

function unknow()
for i=5198,5202 do
AddGoldItem(0, i)
end
end

function pgaming()
for i=5203,5207 do
AddGoldItem(0, i)
end
end

function coson()
AddGoldItem(0, 4129)
AddGoldItem(0, 4133)
AddGoldItem(0, 4441)
AddGoldItem(0, 4445)
AddGoldItem(0, 4449)
AddGoldItem(0, 4453)
AddGoldItem(0, 4457)
AddGoldItem(0, 4461)
AddGoldItem(0, 4465)
AddGoldItem(0, 4469)
end
-------�n Phi Phong-------------
function anphiphong()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"�n",an},
		{"Phi Phong",phiphong},
		{"Trang S�c",trangsuc},
		{"H�ng �nh",honganh},
		{"Tr� L�i",TrangBi},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
---�n------
function an()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{	
		{"T�n Nh�m H�nh �n Gi�m (H�)",anha1},
		{"T�n Nh�m H�nh �n Gi�m (Trung)",antrung1},
		{"T�n Nh�m H�nh �n Gi�m (Th��ng)",anthuong1},
		{"C��ng H�a",cuonghoa},
		{"Nh��c H�a",nhuochoa},
		{"C��ng H�a v� Nh��c H�a",cuonghoanhuochoa},
		{"Tr� L�i",anphiphong},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function cuonghoa()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"Ho�ng Kim �n (C��ng h�a) 1",nguhanhan,{1}},
		{"Ho�ng Kim �n (C��ng h�a) 2",nguhanhan,{2}},
		{"Ho�ng Kim �n (C��ng h�a) 3",nguhanhan,{3}},
		{"Ho�ng Kim �n (C��ng h�a) 4",nguhanhan,{4}},
		{"Ho�ng Kim �n (C��ng h�a) 5",nguhanhan,{5}},
		{"Ho�ng Kim �n (C��ng h�a) 6",nguhanhan,{6}},
		{"Ho�ng Kim �n (C��ng h�a) 7",nguhanhan,{7}},
		{"Ho�ng Kim �n (C��ng h�a) 8",nguhanhan,{8}},
		{"Ho�ng Kim �n (C��ng h�a) 9",nguhanhan,{9}},
		{"Ho�ng Kim �n (C��ng h�a) 10",nguhanhan,{10}},
		{"Tr� L�i",an},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function nhuochoa()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"Ho�ng Kim �n (Nh��c h�a) 1",nguhanhan,{11}},
		{"Ho�ng Kim �n (Nh��c h�a) 2",nguhanhan,{12}},
		{"Ho�ng Kim �n (Nh��c h�a) 3",nguhanhan,{13}},
		{"Ho�ng Kim �n (Nh��c h�a) 4",nguhanhan,{14}},
		{"Ho�ng Kim �n (Nh��c h�a) 5",nguhanhan,{15}},
		{"Ho�ng Kim �n (Nh��c h�a) 6",nguhanhan,{16}},
		{"Ho�ng Kim �n (Nh��c h�a) 7",nguhanhan,{17}},
		{"Ho�ng Kim �n (Nh��c h�a) 8",nguhanhan,{18}},
		{"Ho�ng Kim �n (Nh��c h�a) 9",nguhanhan,{19}},
		{"Ho�ng Kim �n (Nh��c h�a) 10",nguhanhan,{20}},
		{"Tr� L�i",an},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function cuonghoanhuochoa()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"Ng� H�nh �n 1",nguhanhan,{21}},
		{"Ng� H�nh �n 2",nguhanhan,{22}},
		{"Ng� H�nh �n 3",nguhanhan,{23}},
		{"Ng� H�nh �n 4",nguhanhan,{24}},
		{"Ng� H�nh �n 5",nguhanhan,{25}},
		{"Ng� H�nh �n 6",nguhanhan,{26}},
		{"Ng� H�nh �n 7",nguhanhan,{27}},
		{"Ng� H�nh �n 8",nguhanhan,{28}},
		{"Ng� H�nh �n 9",nguhanhan,{29}},
		{"Ng� H�nh �n 10",nguhanhan,{30}},
		{"Tr� L�i",an},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function nguhanhan(nId)
for i = 3205, 3205 do
AddGoldItem(0,1*nId+i-1)
end
end
---Phi Phong------
function phiphong()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"Phi Phong C�p Th�p",phiphong1},
		{"Phi Phong Ph� Quang",phiphongphequang},
		{"Phi Phong Kh�p Th�n",phiphongkhapthan},
		{"Phi Phong K�nh Thi�n",phiphongkinhthien},
		{"Phi Phong V� C�c",phiphongvocuc},
		{"Phi Phong Cao C�p",phiphongcaocap},
		{"Tr� L�i",TrangBi},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end


function anha1()
AddGoldItem(0, 5930)
end

function antrung1()
AddGoldItem(0, 5931)
end

function anthuong1()
AddGoldItem(0, 5932)
end


function phiphong1()
for i=3465,3475 do
AddGoldItem(0, i)
end
end
function phiphongphequang()
for i=3476,3478 do
AddGoldItem(0, i)
end
end
function phiphongkhapthan()
for i=3479,3481 do
AddGoldItem(0, i)
end
end
function phiphongkinhthien()
for i=3482,3484 do
AddGoldItem(0, i)
end
end
function phiphongvocuc()
for i=3485,3487 do
AddGoldItem(0, i)
end
end
function phiphongcaocap()
for i=3488,3490 do
AddGoldItem(0, i)
end
end
-----Trang S�c------------
function trangsuc()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"Long Chu�n Vu D�",longchien},
		{"Trang S�c 1",trangsuc1},
		{"Trang S�c 2",trangsuc2},
		{"Long ��m",longdam},
		{"Cu�ng Lan",cuonglan},
		{"Tr� L�i",anphiphong},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function longchien()
AddGoldItem(0, 5657)
end

function trangsuc1()
for i=3542,3554 do
AddGoldItem(0, i)
end
for i=3491,3506 do
AddGoldItem(0, i)
end
end
function trangsuc2()
AddGoldItem(0,3506)
AddGoldItem(0,3880)
AddGoldItem(0,3881)
AddGoldItem(0,3882)
AddGoldItem(0,3883)
AddGoldItem(0,3884)
AddGoldItem(0,3885)
AddGoldItem(0,3886)
AddGoldItem(0,3887)
AddGoldItem(0,3888)
end
function longdam()
for i=4483,4487 do
AddGoldItem(0, i)
end
end
function cuonglan()
for i=4488,4492 do
AddGoldItem(0, i)
end
end
---H�ng �nh------
function honganh()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"H�ng �nh Th��ng",honganh1},
		{"H�ng �nh Ho�ng M�",honganh2},
		{"Tr� L�i",anphiphong},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function honganh1()
for i=204,207 do
AddGoldItem(0, i)
end
end
function honganh2()
for i=434,437 do
AddGoldItem(0, i)
end
end
-----Ng�a------------
function nhanngua()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"Ng�a Nh�m 1",vip1},
		{"Ng�a Nh�m 2",vip2},
		{"Ng�a Nh�m 3",vip3},
		{"Ng�a Nh�m 4",vip4},
		{"Ng�a Nh�m 5",vip5},
		{"Ng�a Nh�m 6",vip6},
		{"Ng�n Gi�p Huy�n Tru�",huyentrue},
		{"Tr� L�i",trangbi},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function huyentrue()
AddGoldItem(0, 6264)
end



function vip1()
AddItem(0,10,6,10,0,0,0)
AddItem(0,10,7,10,0,0,0)
AddItem(0,10,8,10,0,0,0)
AddItem(0,10,9,10,0,0,0)
AddItem(0,10,10,10,0,0,0)
AddItem(0,10,33,10,0,0,0)

end
function vip2()
AddItem(0,10,11,10,0,0,0)
AddItem(0,10,12,10,0,0,0)
AddItem(0,10,13,10,0,0,0)
AddItem(0,10,14,10,0,0,0)
AddItem(0,10,15,10,0,0,0)

end
function vip3()
AddItem(0,10,16,10,0,0,0)
AddItem(0,10,17,10,0,0,0)
AddItem(0,10,18,10,0,0,0)
AddItem(0,10,19,10,0,0,0)
AddItem(0,10,20,10,0,0,0)

end
function vip4()
--AddItem(0,10,21,10,0,0,0)
AddItem(0,10,22,10,0,0,0)
AddItem(0,10,23,10,0,0,0)
AddItem(0,10,24,10,0,0,0)
AddItem(0,10,25,10,0,0,0)
end
function vip5()
for i=5093,5097 do
AddGoldItem(0, i)
end
end
function vip6()
AddGoldItem(0, 4480)
AddGoldItem(0, 4366)
AddGoldItem(0, 3879)
AddGoldItem(0, 5933)
AddGoldItem(0, 6263)
AddGoldItem(0, 6262)
end

------Nh�n V�t Ph�m-----------
function NhanVatPham()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"V�t Ph�m Tr�ng Sinh",trungsinh},
		{"Nh�n 50 item",TaoItem2},
		{"Nh�n 100 item",TaoItem3},
		{"Nguy�n Li�u Ch� T�o �� T�m",epdotim},
		{"V�t Ph�m Kh�c",vatphamkhac},
		{"Tr� L�i",main},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end






-----------Tr�ng Sinh----------------------------------------------------------------------------------------------
local VPTrungSinh =
{
{szName="<B�c ��u Tr��ng Sinh Thu�t - C� S� Thi�n>", tbProp={6,1,1390,0,0,0}, tbParam={60}},
{szName="<B�c ��u Tr��ng Sinh Thu�t - ��i Th�a T�m Ph�p>", tbProp={6,1,2974,0,0,0}, tbParam={60}},
--{szName="T�ch L�ch ��n", tbProp={6,1,2973,0,0,0}},
{szName="B�c ��u T�y T�y ��n", tbProp={6,1,30127,0,0,0}, tbParam={60}},
}
function trungsinh()
local szTitle = LENHBAI_ADMIN.."<#>Xin ch�o <color=red>"..GetName().."<color>. Xin m�i ch�n V�t Ph�m c�n s� d�ng.\n\nHi�n t�i c� <color=red>"..GetPlayerCount().." <color>ng��i ch�i �ang tr�c tuy�n.<color>"
local tbOpt = {}
local nCount = getn(%VPTrungSinh)
local szOption = ""
for i=1, nCount do
szOption = format("Nh�n %s", %VPTrungSinh[i].szName)
tinsert(tbOpt, {szOption, get_itemTS, {i}})
end
tinsert(tbOpt, {"T�ch L�ch ��n", tichlichdon})
tinsert(tbOpt, {"Tr� V�", NhanVatPham})
tinsert(tbOpt, {"Tho�t"})
CreateNewSayEx(szTitle, tbOpt)
end
function get_itemTS(nIndex)
local nMaxCount = CalcFreeItemCellCount()
g_AskClientNumberEx(0, nMaxCount, "Nh�p S� L��ng:", {get_item_TS, {nIndex}})
end
function get_item_TS(nIndex, nCount)
if nCount <= 0 then
return
end
if CalcFreeItemCellCount() < nCount then
Talk(1, "", format("H�nh trang c�n �t nh�t <color=yellow>%d<color> � tr�ng", nCount))
return
end
local szLogTitle = format("[liguan]get_free_item_%s", %VPTrungSinh[nIndex].szName)
tbAwardTemplet:GiveAwardByList(%VPTrungSinh[nIndex], szLogTitle, nCount)
end
function tichlichdon()
for i =1,999 do
AddItem(6,1,2973,0,0,0)
end
end
-----------�p �� t�m----------------------------------------------------------------------------------------------
function epdotim()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"Huy�n Tinh",HuyenTinh},
		{"Th�y Tinh",ThuyTinh},
		{"Ph�c Duy�n",PhucDuyen},
		{"Kho�ng Th�ch Ch� T�o",khoangthach},
		{"Manh Thi�n Th�ch",manhthienthach},
		{"Tr� L�i",NhanVatPham},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
-----------Huy�n Tinh----------------------------------------------------------------------------------------------
local NhanHuyenTinh =
{
{szName="Huy�n Tinh C�p 1", tbProp={6,1,147,1,0,0,0}, tbParam={60}},
{szName="Huy�n Tinh C�p 2", tbProp={6,1,147,2,0,0,0}, tbParam={60}},
{szName="Huy�n Tinh C�p 3", tbProp={6,1,147,3,0,0,0}, tbParam={60}},
{szName="Huy�n Tinh C�p 4", tbProp={6,1,147,4,0,0,0}, tbParam={60}},
{szName="Huy�n Tinh C�p 5", tbProp={6,1,147,5,0,0,0}, tbParam={60}},
{szName="Huy�n Tinh C�p 6", tbProp={6,1,147,6,0,0,0}, tbParam={60}},
{szName="Huy�n Tinh C�p 7", tbProp={6,1,147,7,0,0,0}, tbParam={60}},
{szName="Huy�n Tinh C�p 8", tbProp={6,1,147,8,0,0,0}, tbParam={60}},
{szName="Huy�n Tinh C�p 9", tbProp={6,1,147,9,0,0,0}, tbParam={60}},
{szName="Huy�n Tinh C�p 10", tbProp={6,1,147,10,0,0,0}, tbParam={60}},
}
function HuyenTinh()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt = {}
local nCount = getn(%NhanHuyenTinh)
local szOption = ""
for i=1, nCount do
szOption = format("Nh�n %s", %NhanHuyenTinh[i].szName)
tinsert(tbOpt, {szOption, get_itemHT, {i}})
end
tinsert(tbOpt, {"Tr� V�", NhanVatPham})
tinsert(tbOpt, {"Tho�t"})
CreateNewSayEx(szTitle, tbOpt)
end
function get_itemHT(nIndex)
local nMaxCount = CalcFreeItemCellCount()
g_AskClientNumberEx(0, nMaxCount, "Nh�p S� L��ng:", {get_item_HT, {nIndex}})
end
function get_item_HT(nIndex, nCount)
if nCount <= 0 then
return
end
if CalcFreeItemCellCount() < nCount then
Talk(1, "", format("H�nh trang c�n �t nh�t <color=yellow>%d<color> � tr�ng", nCount))
return
end
local szLogTitle = format("[liguan]get_free_item_%s", %NhanHuyenTinh[nIndex].szName)
tbAwardTemplet:GiveAwardByList(%NhanHuyenTinh[nIndex], szLogTitle, nCount)
end
-----Thuy Tinh---------
local NhanThuyTinh =
{
{szName="T� Th�y Tinh", tbProp={4,239,1,1,0,0}, tbParam={60}},
{szName="Lam Th�y Tinh", tbProp={4,238,1,1,0,0}, tbParam={60}},
{szName="L�c Th�y Tinh", tbProp={4,240,1,1,0,0}, tbParam={60}},
}
function ThuyTinh()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt = {}
local nCount = getn(%NhanThuyTinh)
local szOption = ""
for i=1, nCount do
szOption = format("Nh�n %s", %NhanThuyTinh[i].szName)
tinsert(tbOpt, {szOption, get_itemTT, {i}})
end
tinsert(tbOpt, {"Tr� V�", NhanVatPham})
tinsert(tbOpt, {"Tho�t"})
CreateNewSayEx(szTitle, tbOpt)
end
function get_itemTT(nIndex)
local nMaxCount = CalcFreeItemCellCount()
g_AskClientNumberEx(0, nMaxCount, "Nh�p S� L��ng:", {get_item_TT, {nIndex}})
end
function get_item_TT(nIndex, nCount)
if nCount <= 0 then
return
end
if CalcFreeItemCellCount() < nCount then
Talk(1, "", format("H�nh trang c�n �t nh�t <color=yellow>%d<color> � tr�ng", nCount))
return
end
local szLogTitle = format("[liguan]get_free_item_%s", %NhanThuyTinh[nIndex].szName)
tbAwardTemplet:GiveAwardByList(%NhanThuyTinh[nIndex], szLogTitle, nCount)
end
-----Phuc Duyen---------
local NhanPhucDuyen =
{
{szName="Ph�c Duy�n Ti�u", tbProp={6,1,122,1,0,0,0}, tbParam={60}},
{szName="Ph�c Duy�n Trung", tbProp={6,1,123,1,0,0,0}, tbParam={60}},
{szName="Ph�c Duy�n ��i", tbProp={6,1,124,1,0,0,0}, tbParam={60}},
}
function PhucDuyen()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt = {}
local nCount = getn(%NhanPhucDuyen)
local szOption = ""
for i=1, nCount do
szOption = format("Nh�n %s", %NhanPhucDuyen[i].szName)
tinsert(tbOpt, {szOption, get_itemPD, {i}})
end
tinsert(tbOpt, {"Tr� V�", NhanVatPham})
tinsert(tbOpt, {"Tho�t"})
CreateNewSayEx(szTitle, tbOpt)
end
function get_itemPD(nIndex)
local nMaxCount = CalcFreeItemCellCount()
g_AskClientNumberEx(0, nMaxCount, "Nh�p S� L��ng:", {get_item_PD, {nIndex}})
end
function get_item_PD(nIndex, nCount)
if nCount <= 0 then
return
end
if CalcFreeItemCellCount() < nCount then
Talk(1, "", format("H�nh trang c�n �t nh�t <color=yellow>%d<color> � tr�ng", nCount))
return
end
local szLogTitle = format("[liguan]get_free_item_%s", %NhanPhucDuyen[nIndex].szName)
tbAwardTemplet:GiveAwardByList(%NhanPhucDuyen[nIndex], szLogTitle, nCount)
end
-----Kho�ng Th�ch---------
function khoangthach()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"Trang Ph�c H� Kim",hekim},
		{"Trang Ph�c H� M�c",hemoc},
		{"Trang Ph�c H� Th�y",hethuy},
		{"Trang Ph�c H� H�a",hehoa},
		{"Trang Ph�c H� Th�",hetho},
		{"Tr� L�i",epdotim},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function hekim()
AddItem(6,1,149,1,0,0,0) 
AddItem(6,1,150,1,0,0,0) 
AddItem(6,1,151,1,0,0,0) 
AddItem(6,1,152,1,0,0,0) 
AddItem(6,1,153,1,0,0,0) 
AddItem(6,1,154,1,0,0,0)
end
function hemoc()
AddItem(6,1,149,1,0,0,0) 
AddItem(6,1,150,1,1,0,0) 
AddItem(6,1,151,1,0,0,0) 
AddItem(6,1,152,1,1,0,0) 
AddItem(6,1,153,1,0,0,0) 
AddItem(6,1,154,1,1,0,0)
end
function hethuy()
AddItem(6,1,149,1,0,0,0) 
AddItem(6,1,150,1,2,0,0) 
AddItem(6,1,151,1,0,0,0) 
AddItem(6,1,152,1,2,0,0) 
AddItem(6,1,153,1,0,0,0) 
AddItem(6,1,154,1,2,0,0)
end
function hehoa()
AddItem(6,1,149,1,0,0,0) 
AddItem(6,1,150,1,3,0,0) 
AddItem(6,1,151,1,0,0,0) 
AddItem(6,1,152,1,3,0,0) 
AddItem(6,1,153,1,0,0,0) 
AddItem(6,1,154,1,3,0,0)
end
function hetho()
AddItem(6,1,149,1,0,0,0) 
AddItem(6,1,150,1,4,0,0) 
AddItem(6,1,151,1,0,0,0) 
AddItem(6,1,152,1,4,0,0) 
AddItem(6,1,153,1,0,0,0) 
AddItem(6,1,154,1,4,0,0)
end
-----Manh Thien Thach---------
function manhthienthach()
AddEventItem(1317)
AddEventItem(1318) 
AddEventItem(1319)
AddEventItem(1320)
AddEventItem(1321)
AddEventItem(1322)
AddEventItem(1323)
AddEventItem(1324)
AddEventItem(1325)
end
----VP KHAC------------
local VPKHAC =
{
{szName="H�i Thi�n T�i T�o L� Bao", tbProp={6,1,1781,0,0,0}, tbParam={60}},
{szName="Khi�u Chi�n L�nh.", tbProp={6,1,1499,0,0,0}},
{szName="C�n Kh�n Song Tuy�t B�i", tbProp={6,1,2219,0,0,0}},
{szName="Nh�c V��ng Ki�m L� Bao", tbProp={6,1,2340,0,0,0}},
{szName="Long Huy�t Ho�ng", tbProp={6,1,2340,0,0,0}},
{szName="T� M�u L�nh", tbProp={6,1,1427,0,0,0}},
{szName="T�n V�t M�n Ph�i", tbProp={6,1,1670,0,0,0}},
{szName="T�n V�t D��ng Anh", tbProp={6,1,1671,0,0,0}},
{szName="H�n Nguy�n Linh L�", tbProp={6,1,2312,1,0,0}},
{szName="��i L�c Ho�n L� H�p", tbProp={6,1,2517,0,0,0}},
{szName="Th�p To�n ��i B�", tbProp={6,1,1399,0,0,0}},
}
function vatphamkhac()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt = {}
local nCount = getn(%VPKHAC)
local szOption = ""
for i=1, nCount do
szOption = format("Nh�n %s", %VPKHAC[i].szName)
tinsert(tbOpt, {szOption, get_itemKhac, {i}})
end
tinsert(tbOpt, {"Tr� V�", NhanVatPham})
tinsert(tbOpt, {"Tho�t"})
CreateNewSayEx(szTitle, tbOpt)
end
function get_itemKhac(nIndex)
local nMaxCount = CalcFreeItemCellCount()
g_AskClientNumberEx(0, nMaxCount, "Nh�p S� L��ng:", {get_item_Khac, {nIndex}})
end
function get_item_Khac(nIndex, nCount)
if nCount <= 0 then
return
end
if CalcFreeItemCellCount() < nCount then
Talk(1, "", format("H�nh trang c�n �t nh�t <color=yellow>%d<color> � tr�ng", nCount))
return
end
local szLogTitle = format("[liguan]get_free_item_%s", %VPKHAC[nIndex].szName)
tbAwardTemplet:GiveAwardByList(%VPKHAC[nIndex], szLogTitle, nCount)
end
------Nh�n SKILL-----------
function NhanSkill()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{		
		{"V�o Ph�i V� H�c Skill 180",choose_faction},
		{"L�y Skill Theo ID", LaySkillID},
		{"��i T�n Nh�n V�t", doiten},	
		{"Chuy�n ��i ngu h�nh", nguhanh},
		{"T�y T�y",clear_attibute_point},
		{"Tr� L�i",main},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
-------------


function doiten()
	AskClientForString("doitennv", "", 1, 100, "Xin nh�p t�n m�i");
end
function doitennv(strings)
	RenameRole(strings)
end








function nguhanh()
local szTitle = "<npc>Ng��i c�n g�?"
	local tbOpt =
	{
		{"Chuy�n ��i sang n� h� Kim", nukim},
		{"Chuy�n ��i sang nam h� Thuy", namthuy},
		{"Tho�t"},
	}

	CreateNewSayEx(szTitle, tbOpt)
end
function nukim()
if GetSex() == 1 then
SetSeries(0)
KickOutSelf()
	else
	Talk(1,"","Ng��i l� P� �� � ?")
end
end

function namthuy()
if GetSex() == 0 then
SetSeries(2)
KickOutSelf()
	else
	Talk(1,"","Vui l�ng ki�m tra l�i gi�i t�nh")
end
end






function check_faction()
	local szCurFaction = GetFaction()
	if szCurFaction ~= nil and szCurFaction ~= "" then
		return
	end
	return 1
end

function knang150xx()
if check_faction() == 1 then
	Talk(1, "", "Ch�a gia nh�p m�n ph�i kh�ng th� nh�n Skill ���c.")
	return end

if GetLevel() >= 150 then	
if GetLastFactionNumber() == 0 then  ------thieu lam
--if GetFaction() == "shaolin" then
		for i=1220,1229 do
		DelMagic(i,0)
		end
AddMagic(1055,20)
AddMagic(1056,20)
AddMagic(1057,20)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� 150 c�a Thi�u L�m. ")

elseif GetLastFactionNumber() == 1 then --------thien vuong vuong
--elseif GetFaction() == "tianwang" then
AddMagic(1058,20)
AddMagic(1059,20)
AddMagic(1060,20)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� 150 c�a Thi�n V��ng. ")

elseif GetLastFactionNumber() == 2 then ---------duong mon
--elseif GetFaction() == "tangmen" then
		for i=1220,1229 do
		DelMagic(i,0)
		end
AddMagic(1069,20)
AddMagic(1070,20)
AddMagic(1071,20)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� 150 c�a ���ng M�n. ")

elseif GetLastFactionNumber() == 3 then  ----------ngu doc
--elseif GetFaction() == "wudu" then
		for i=1220,1229 do
		DelMagic(i,0)
		end
AddMagic(1066,20)
AddMagic(1067,20)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� 150 c�a Ng� ��c.")

elseif GetLastFactionNumber() == 4 then  ----------nga my
--elseif GetFaction() == "emei" then
		for i=1220,1229 do
		DelMagic(i,0)
		end
AddMagic(1061,20)
AddMagic(1062,20)
AddMagic(1114,20)
AddMagic(332,20)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� 150 c�a Nga My.")

elseif GetFaction() == "cuiyan" then -----thuy yen
		for i=1220,1229 do
		DelMagic(i,0)
		end
AddMagic(1063,20)
AddMagic(1065,20)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� 150 c�a Th�y Y�n.")

elseif GetLastFactionNumber == 5 then  -------thuy yen
--elseif GetFaction() == "cuiyan" then
		for i=1220,1229 do
		DelMagic(i,0)
		end
AddMagic(1063,20)
AddMagic(1065,20)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� 150 c�a Th�y Y�n.")

elseif GetLastFactionNumber() == 6 then -----gaibang
--elseif GetFaction() == "gaibang" then
		for i=1220,1229 do
		DelMagic(i,0)
		end
AddMagic(1073,20)
AddMagic(1074,20)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� 150 c�a C�i Bang.")

elseif GetLastFactionNumber() == 7 then -----thien nhan
--elseif GetFaction() == "tianren" then
AddMagic(1075,20)
AddMagic(1076,20)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� 150 c�a Thi�n Nh�n.")

elseif GetLastFactionNumber() == 8 then -------vo dang
--elseif GetFaction() == "wudang" then
		for i=1220,1229 do
		DelMagic(i,0)
		end
AddMagic(1078,20)
AddMagic(1079,20)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� 150 c�a V� �ang.")

elseif GetLastFactionNumber() == 9 then ------con luon
--elseif GetFaction() == "kunlun" then
		for i=1220,1229 do
		DelMagic(i,0)
		end
AddMagic(1080,20)
AddMagic(1081,20)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� 150 c�a C�n L�n.")

elseif GetLastFactionNumber() == 10 then ------hoa son
--elseif GetFaction() == "kunlun" then
		for i=1220,1229 do
		DelMagic(i,0)
		end
		AddMagic(1364,20) --Skill Hoa son
		AddMagic(1382,20) --Skill Hoa son
		AddMagic(1363,20) --Skill Hoa son --------Skill
		AddMagic(1365,20) --Skill Hoa son
		AddMagic(1370,20) --Skill Hoa son
		AddMagic(1369,20) --Skill Hoa son
		AddMagic(1384,20) --Skill Hoa son
		AddMagic(1368,20) --Skill Hoa son --------Doc Co Cuu Kiem
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� 150 c�a Hoa S�n.")
end
else
Talk(1, "", "Luy�n ��n c�p 150 r�i h�y ��n t�m ta")
end
Talk(1, "", "Ban khong thuoc bat ky phai nao!")
		-- for i=1220,1229 do
		-- DelMagic(i,0)
		-- end
-- AddMagic(1063,20)
-- AddMagic(1065,20)
-- Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� 150 c�a Th�y Y�n.")
end

SKILL_180 = {1220,1221,1223,1222,1224,1225,1227,1226,1228,1229 } --1235, 138, 
--------------------------------------------------------1296 tang toc do di chuye
local tbEquipFreeCell =
{
{2, 1}, {2, 2}, {1, 1}, {1, 2}, {2, 1},
{2, 3}, {2, 4}, {2, 2}, {1, 2}, {1, 1},
}

function knang180()
local nFaction = GetLastFactionNumber() + 1
if nFaction==0 then
Say("Kh�ng c� m�n ph�i m� ��i nh�n skill th�t truy�n, ta kh�ng c� th�i gian ��a v�i ng��i", 0)
return
else
for i=1,10 do
if (nFaction==i) then
if (HaveMagic(SKILL_180[i]) == -1) then
AddMagic(SKILL_180[i],20)
Say("B�n h�c ���c k� n�ng c�p 180 <color=yellow>"..GetSkillName(SKILL_180[i]), 0)
else
Say("Ng��i �� c� k� n�ng th�t truy�n r�i, ��ng tham lam", 0)
return
end
end
end
end
end

----V�o ph�i v� h�c skill 150-----
function check_faction()
	local szCurFaction = GetFaction()
	if szCurFaction ~= nil and szCurFaction ~= "" then
		return
	end
	return 1
end

function choose_faction()
	if check_faction() ~= 1 then
		Talk(1, "", "Ng��i �� gia nh�p m�n ph�i.")
		return
	end
	local nSeries = GetSeries() + 1
	local szTitle = LENHBAI_ADMIN.."<#>Xin ch�o <color=red>"..GetName().."<color>. M�t khi gia nh�p m�n ph�i kh�ng th� thay ��i, h�y suy ngh� k�"
	local tbOpt = {}
	for i=1, getn(%tbFactionSeries[nSeries]) do
		local nIndex = %tbFactionSeries[nSeries][i]
		tinsert(tbOpt, {%tbFaction[nIndex].szShowName, set_faction, {nIndex}})
	end
	tinsert(tbOpt, {"Tr� V�", dialog_main})
	tinsert(tbOpt, {"Tho�t"})
	CreateNewSayEx(szTitle, tbOpt)
end

function set_faction(nIndex)
	local szTitle = format(LENHBAI_ADMIN.."<color=red>"..GetName().."<color> C� ch�c ch�n mu�n gia nh�p ph�i <color=yellow>%s<color> kh�ng?", %tbFaction[nIndex].szShowName)
	local tbOpt =
	{
		{"X�c nh�n!", do_set_faction, {nIndex}},
		{"Tr� V�.", choose_faction},
		{"K�t th�c ��i tho�i."},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function do_set_faction(nIndex)
	if check_faction() ~= 1 then
		Talk(1, "", "Ng��i �� gia nh�p m�n ph�i.")
		return
	end
	local nResult = SetFaction(%tbFaction[nIndex].szFaction)
	if nResult == 0 then
		return
	end
	DynamicExecuteByPlayer(PlayerIndex, "\\script\\gmscript.lua", "AddSkills", %tbFaction[nIndex].nShortFaction, 0)
	for i=1, getn(%tbFaction[nIndex].tbSkill) do--Add Skill 90-120-150-180
		AddMagic(%tbFaction[nIndex].tbSkill[i], 20)
	end
	for i=1, getn(%tbFaction[nIndex].tbRank) do--Add X�ng Hi�u
		SetRank(%tbFaction[nIndex].tbRank[i])
	end
	SetCurCamp(4)----M�u ch� ��
	SetCamp(4) 
	Talk(1, "KickOutSelf", format("Ng��i �� gia nh�p th�nh c�ng ph�i <color=yellow>%s", %tbFaction[nIndex].szShowName))
end
------Tay Tuy------------
function clear_attibute_point()
local szTitle = LENHBAI_ADMIN.."<#>Xin ch�o <color=red>"..GetName().."<color>. B�n c�n t�y �i�m Ti�m N�ng hay K� N�ng?\n\nHi�n t�i c� <color=red>"..GetPlayerCount().." <color>ng��i ch�i �ang tr�c tuy�n.<color>"
local tbOpt =
{
{"T�y �i�m K� N�ng.", do_clear_skill},
{"T�y �i�m Ti�m N�ng.", do_clear_prop},
{"Tr� V�", NhanSkill},
{"Tho�t."},
}
CreateNewSayEx(szTitle, tbOpt)
end
function do_clear_skill()
local i = HaveMagic(210) 
local j = HaveMagic(400) 
local n = RollbackSkill() 
local x = 0
if (i ~= -1) then i = 1; x = x + i end 
if (j ~= -1) then x = x + j end
local rollback_point = n - x 
if (rollback_point + GetMagicPoint() < 0) then 
rollback_point = -1 * GetMagicPoint()
end
AddMagicPoint(rollback_point)
if (i ~= -1) then AddMagic(210, i) end 
if (j ~= -1) then AddMagic(400, j) end
Msg2Player("T�y t�y th�nh c�ng! Ng��i c� "..rollback_point.." �i�m k� n�ng �� ph�n ph�i l�i.")
KickOutSelf()
end
function do_clear_prop()
local base_str = {35,20,25,30,20} 
local base_dex = {25,35,25,20,15}
local base_vit = {25,20,25,30,25}
local base_eng = {15,25,25,20,40}
local player_series = GetSeries() + 1

local Utask88 = GetTask(88)
AddStrg(base_str[player_series] - GetStrg(1) + GetByte(Utask88, 1))
AddDex(base_dex[player_series] - GetDex(1) + GetByte(Utask88, 2))
AddVit(base_vit[player_series] - GetVit(1) + GetByte(Utask88, 3))
AddEng(base_eng[player_series] - GetEng(1) + GetByte(Utask88, 4))
end
------Lay Skill Theo ID--------
function LaySkillID()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
{
	{"L�y Skills", g_AskClientStringEx, {"1200,20", 0, 256, "ID Skill", {AddSkill, {self}} }}, 
	{"X�a Skills", g_AskClientStringEx, {"1200", 0, 300, "ID Skill", {DelSkill, {self}} }},
	--{"X�a Skills", skillmoi},
	{"L�y Danh S�ch Skills", g_AskClientStringEx, {"1200,1210", 0, 256, "ID Skill", {AddDSSkill, {self}} }}, 
	{"X�a Danh S�ch Skills", g_AskClientStringEx, {"1,1500", 0, 256, "ID Skill", {DelDSSkill, {self}} }}, 
	{"Tr� V�", NhanSkill},
	{"Tho�t."},
}
CreateNewSayEx(szTitle, tbOpt)
end
function AddDSSkill(szPos)
       local tbPos = lib:Split(szPos, ",")
       local s = tonumber(tbPos[1])
       local e = tonumber(tbPos[2])
      for i=s,e do AddMagic(i,20) end
end 

function skillmoi()
AddMagic(1656,20)
AddMagic(1646,20)
AddMagic(1636,20)
AddMagic(1631,20)
end 

function DelDSSkill(szPos) 
      local tbPos = lib:Split(szPos, ",")
       local s = tonumber(tbPos[1])
       local e = tonumber(tbPos[2])
      for i=s,e do DelMagic(i) end
end 

function AddSkill(szPos)
       local tbPos = lib:Split(szPos, ",")
       local id = tonumber(tbPos[1])
       local cap = tonumber(tbPos[2])
      AddMagic(id,cap)
end

function DelSkill(szPos) 
      local idskill = tonumber(szPos) 
      DelMagic(idskill) 
end
---------Trang Thai--------------
function TrangThai()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"Luy�n C�ng",luyencong},
		{"Ch�nh Ph�i",chinhphai},
		{"Trung L�p",trunglap},
		{"T� Ph�i",taphai},
		{"S�t Th�",satthu},
		{"Tr� L�i",main},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function luyencong()
SetCurCamp(0)
SetCamp(0)
end
function chinhphai()
SetCurCamp(1)
SetCamp(1)
end
function trunglap()
SetCurCamp(3)
SetCamp(3) 
end
function taphai()
SetCurCamp(2)
SetCamp(2) 
end
function satthu()
SetCurCamp(4)
SetCamp(4) 
end
-------------Tao ITEM-------------------------------------------------------------------
function TaoItem() 
g_AskClientStringEx("6,1,222,0,0,0",1,9000,"Nh�p V�o Item Code:",{TaoItemID}) 
end

function TaoItemID(szItem)
	local szICode = lib:Split(szItem, ",");
	local n = getn(szICode);
	if (n ~= 1) then
	if (n < 6) then Talk(1, "", format("Sai Item Code. Thi�u tr��ng y�u c�u <color=yellow>%s<color>",n)); return end
	if (n > 7) then Talk(1, "", format("Sai Item Code. Qu� nhi�u tr��ng d� li�u <color=yellow>%s<color>",n)); return end
	local itclass = tonumber(szICode[1]); 
	local ittype = tonumber(szICode[2]); 
	local itid = tonumber(szICode[3]); 
	local itlv = tonumber(szICode[4]); 
	local itseri = tonumber(szICode[5]); 
	local itluck = tonumber(szICode[6]); 
	local itmagic = tonumber(szICode[7]); 
	if (itlv < 0) then Talk(1, "", format("C�p �� man �� kh�ng ���c th�p qu� <color=yellow>%s<color>",itlv)); return end
	if (itlv > 10) then Talk(1, "", format("Ch� h� tr� ��n c�p 10. Hi�n t�i nh�p v�o <color=yellow>%s<color>",itlv)); return end
	if (itmagic == nil) then itmagic=0; end
	AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
	else
	local EquipId = tonumber(szICode[1]); 
	AddGoldItem(0, EquipId);
	end
end
-------------Tao ITEM 2-------------------------------------------------------------------
function TaoItem2() 
g_AskClientStringEx("6,1,222,0,0,0",1,9000,"Nh�p V�o Item Code:",{TaoItemID2}) 
end

function TaoItemID2(szItem)
	local szICode = lib:Split(szItem, ",");
	local n = getn(szICode);
	if (n ~= 1) then
	if (n < 6) then Talk(1, "", format("Sai Item Code. Thi�u tr��ng y�u c�u <color=yellow>%s<color>",n)); return end
	if (n > 7) then Talk(1, "", format("Sai Item Code. Qu� nhi�u tr��ng d� li�u <color=yellow>%s<color>",n)); return end
	local itclass = tonumber(szICode[1]); 
	local ittype = tonumber(szICode[2]); 
	local itid = tonumber(szICode[3]); 
	local itlv = tonumber(szICode[4]); 
	local itseri = tonumber(szICode[5]); 
	local itluck = tonumber(szICode[6]); 
	local itmagic = tonumber(szICode[7]); 
	if (itlv < 0) then Talk(1, "", format("C�p �� man �� kh�ng ���c th�p qu� <color=yellow>%s<color>",itlv)); return end
	if (itlv > 10) then Talk(1, "", format("Ch� h� tr� ��n c�p 10. Hi�n t�i nh�p v�o <color=yellow>%s<color>",itlv)); return end
	if (itmagic == nil) then itmagic=0; end
	AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
	AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
	AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
	AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
	AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
	else
	local EquipId = tonumber(szICode[1]); 
	AddGoldItem(0, EquipId);
	end
end
-------------Tao ITEM 3-------------------------------------------------------------------
function TaoItem3() 
g_AskClientStringEx("6,1,222,0,0,0",1,9000,"Nh�p V�o Item Code:",{TaoItemID3}) 
end

function TaoItemID3(szItem)
	local szICode = lib:Split(szItem, ",");
	local n = getn(szICode);
	if (n ~= 1) then
	if (n < 6) then Talk(1, "", format("Sai Item Code. Thi�u tr��ng y�u c�u <color=yellow>%s<color>",n)); return end
	if (n > 7) then Talk(1, "", format("Sai Item Code. Qu� nhi�u tr��ng d� li�u <color=yellow>%s<color>",n)); return end
	local itclass = tonumber(szICode[1]); 
	local ittype = tonumber(szICode[2]); 
	local itid = tonumber(szICode[3]); 
	local itlv = tonumber(szICode[4]); 
	local itseri = tonumber(szICode[5]); 
	local itluck = tonumber(szICode[6]); 
	local itmagic = tonumber(szICode[7]); 
	if (itlv < 0) then Talk(1, "", format("C�p �� man �� kh�ng ���c th�p qu� <color=yellow>%s<color>",itlv)); return end
	if (itlv > 10) then Talk(1, "", format("Ch� h� tr� ��n c�p 10. Hi�n t�i nh�p v�o <color=yellow>%s<color>",itlv)); return end
	if (itmagic == nil) then itmagic=0; end
	AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
	AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
	AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
	AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
	AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
	AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
	AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
	AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
	AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
	else
	local EquipId = tonumber(szICode[1]); 
	AddGoldItem(0, EquipId);
	end
end

-------------Lay Trang B� Glodequip------------------------------------------------------------------
function Glodequip() 
g_AskClientStringEx("111",1,9000,"Nh�p V�o Glodequip Code:",{TaoItemGlodequip}) 
end
function TaoItemGlodequip(idgq)
AddGoldItem(0, ""..idgq.."")
end
---Ve BLH------------
function GoBLH() 
w,x,y=GetWorldPos() 
if (w~=53) then 
SetFightState(0) 
NewWorld(53,200*8,200*16) 
else 
SetPos(200*8, 200*16) 
end 
Msg2Player("B�n di chuy�n v� <color=yellow>Ba L�ng Huy�n<color> th�nh c�ng."); 
end 

----V�ng S�ng - Danh Hi�u------
function vongsang(nindex)
Title_AddTitle(nindex, 1, 4302359);
Title_ActiveTitle(nindex);
SetTask(1122, nindex);
end

function nhandanhhieu()
local szTitle = "<npc>Xin ch�o <color=yellow>"..GetName().."<color> , xin m�i ch�n Danh Hi�u...!!!"
local tbOpt =
{
{"Th�i th� Ph��ng T��ng.", vongsang,{153}},
{"Th�i th� Th�nh ��.", vongsang,{154}},
{"Th�i th� ��i L�.", vongsang,{155}},
{"Th�i th� Bi�n Kinh.", vongsang,{156}},
{"Th�i th� T��ng D��ng.", vongsang,{157}},
{"Th�i th� D��ng Ch�u.", vongsang,{158}},
{"Th�i th� L�m An.", vongsang,{159}},
{"V� L�m Li�n ��u Qu�n Qu�n.", vongsang,{81}},
{"V� L�m Li�n ��u H�ng 2.", vongsang,{82}},
{"V� L�m Li�n ��u H�ng 3.", vongsang,{83}},
{"V� L�m Li�n ��u H�ng 4.", vongsang,{84}},
{"Trang K�",danhhieu2},
{"Tr� L�i",nhandanhhieu},
{"Tho�t"},
}
	CreateNewSayEx(szTitle, tbOpt)
end

function danhhieu2()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
{
{"V�ng S�ng ADM.", vongsang,{228}},
{"Nh�t ��i T�ng S�", vongsang,{239}},
{"Phi�u M� ��i T��ng Qu�n.", vongsang,{185}},
{"V� H�c K� T�i.", vongsang,{258}},
{"Ng� Long Cu�ng �ao.", vongsang,{165}},
{"Tuy�t Th� Cao Th�.", vongsang,{240}},
{"Long Th�n Ki�m.", vongsang,{80}},
{"Th�n Th� B�t Ph�m.", vongsang,{256}},
{"B� Ch� Th�t Th�nh.", vongsang,{193}},
{"Thi�n H� �� Nh�t Bang.", vongsang,{142}},
{"Trang K�",danhhieu3},
{"Tr� L�i",nhandanhhieu},
{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function danhhieu3()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
{
{"��c B� Thi�n H�", vongsang,{325}},
{"Uy M�nh V� Song�", vongsang,{326}},
{"L�c �p Qu�n H�ng", vongsang,{327}},
{"T� Tuy�t chi�n tr��ng", vongsang,{328}},
{"Ng� Tuy�t chi�n tr��ng", vongsang,{329}},
{"L�c Tuy�t chi�n tr��ng", vongsang,{330}},
{"Th�t Tuy�t chi�n tr��ng", vongsang,{331}},
{"B�t Tuy�t chi�n tr��ng", vongsang,{332}},
{"C�u Tuy�t chi�n tr��ng", vongsang,{333}},
{"Th�p Tuy�t chi�n tr��ng", vongsang,{334}},
{"Trang K�",danhhieu4},
{"Tr� L�i",nhandanhhieu2},
{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function danhhieu4()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
{
{"Tri�u M�nh", vongsang,{408}},
{"Thi�n H� V� ��ch", vongsang,{421}},
{"Thi�n H� Th�p C��ng", vongsang,{422}},
{"T�n th�", vongsang,{423}},
{"Vua PK.", vongsang,{229}},
{"��c C� C�u B�i", vongsang,{237}},
{"Long Tranh H� ��u", vongsang,{236}},
{"M�i nh�p giang h� ", vongsang,{244}},
{"V� L�m Minh Ch�", vongsang,{245}},
{"V� L�m Ch� T�n.", vongsang,{238}},
{"Tr� L�i",danhhieu4},
{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end


---------------M� R�ng R��ng--------------------------------------
function moruong()
OpenStoreBox(1)
OpenStoreBox(2)
OpenStoreBox(3)
AddItem(6,1,1427,90,1,0,0)
end
----------------------Nh�n Tr�n Bang Chi B�o-------------------------------------------------------------
function TBCB()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"Thi�u L�m",CBTL},
		{"Thi�n V��ng",CBTV},
		{"Nga My",CBNM},
		{"Th�y Y�n",CBTY},
		{"Ng� ��c",CBND},
		{"���ng M�n",CBDM},
		{"C�i Bang",CBCB},
		{"Thi�n Nh�n",CBTN},
		{"V� �ang",CBVD},
		{"C�n L�n",CBCL},
		{"Tr� L�i",TrangBi},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function CBTL()

AddGoldItem(0,769)
AddGoldItem(0,771)
AddGoldItem(0,776)
end

function CBTV()
AddGoldItem(0,793)
end

function CBNM()
AddGoldItem(0,796)
AddGoldItem(0,801)
AddGoldItem(0,808)
end

function CBTY()
AddGoldItem(0,811)
AddGoldItem(0,816)
end

function CBND()
AddGoldItem(0,829)
AddGoldItem(0,834)
end

function CBDM()
AddGoldItem(0,843)
AddGoldItem(0,854)
end

function CBCB()
AddGoldItem(0,855)
end

function CBTN()
AddGoldItem(0,868)
AddGoldItem(0,874)
AddGoldItem(0,876)
end

function CBVD()
AddGoldItem(0,881)
AddGoldItem(0,888)
end

function CBCL()
AddGoldItem(0,891)
AddGoldItem(0,898)
AddGoldItem(0,901)
end
-----------------------------nhan do nguyet khuyet -----------------------
function setnguyetkhuyet()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"Thi�u L�m Quy�n",thieulam1},
		{"Thi�u L�m C�n",thieulam2},
		{"Thi�u L�m �ao",thieulam3},
		{"Thi�n V��ng Ch�y",thienvuong1},
		{"Thi�n V��ng Th��ng",thienvuong2},
		{"Thi�n V��ng �ao",thienvuong3},
		{"Nga Mi Ki�m",ngami1},
		{"Nga Mi Ch��ng",ngami2},
		{"Th�y Y�n ��n �ao",thuyyen1},
		{"Th�y Y�n Song �ao",thuyyen2},
		{"Ng� ��c Ch��ng Ph�p",ngudoc1},
		{"Ng� ��c �ao Ph�p",ngudoc2},
		{"Trang K�",nguyetkhuyet22},
		{"Tr� L�i",TBCC},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function nguyetkhuyet22()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"���ng M�n Phi �ao",duongmon1},
		{"���ng M�n T� Ti�n",duongmon2},
		{"���ng M�n Phi Ti�u",duongmon3},
		{"C�i Bang R�ng",caibang1},
		{"C�i Bang C�n Ph�p",caibang2},
		{"Thi�n Nh�n K�ch",thiennhan1},
		{"Thi�n Nh�n �ao",thiennhan2},
		{"V� �ang Kh�",vodang1},
		{"V� �ang Ki�m",vodang2},
		{"C�n L�n �ao",conlon1},
		{"C�n L�n Ki�m",conlon2},
		{"Hoa S�n Ki�m T�ng",hoason1},
		{"Hoa S�n Kh� T�ng",hoason2},
		{"Tr� L�i",TBCC},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function thieulam1()
for i=5670,5679 do
AddGoldItem(0, i)
end
end
function thieulam2()
for i=5680,5689 do
AddGoldItem(0, i)
end
end
function thieulam3()
for i=5690,5699 do
AddGoldItem(0, i)
end
end
function thienvuong1()
for i=5700,5709 do
AddGoldItem(0, i)
end
end
function thienvuong2()
for i=5710,5719 do
AddGoldItem(0, i)
end
end
function thienvuong3()
for i=5720,5729 do
AddGoldItem(0, i)
end
end
function ngami1()
for i=5730,5739 do
AddGoldItem(0, i)
end
end
function ngami2()
for i=5740,5749 do
AddGoldItem(0, i)
end
end
function thuyyen1()
for i=5750,5759 do
AddGoldItem(0, i)
end
end
function thuyyen2()
for i=5760,5769 do
AddGoldItem(0, i)
end
end
function ngudoc1()
for i=5770,5779 do
AddGoldItem(0, i)
end
end
function ngudoc2()
for i=5780,5789 do
AddGoldItem(0, i)
end
end
function duongmon1()
for i=5790,5799 do
AddGoldItem(0, i)
end
end
function duongmon2()
for i=5800,5809 do
AddGoldItem(0, i)
end
end
function duongmon3()
for i=5810,5819 do
AddGoldItem(0, i)
end
end
function caibang1()
for i=5820,5829 do
AddGoldItem(0, i)
end
end
function caibang2()
for i=5830,5839 do
AddGoldItem(0, i)
end
end
function thiennhan1()
for i=5840,5849 do
AddGoldItem(0, i)
end
end
function thiennhan2()
for i=5850,5859 do
AddGoldItem(0, i)
end
end
function vodang1()
for i=5860,5869 do
AddGoldItem(0, i)
end
end
function vodang2()
for i=5870,5879 do
AddGoldItem(0, i)
end
end
function conlon1()
for i=5880,5889 do
AddGoldItem(0, i)
end
end
function conlon2()
for i=5890,5899 do
AddGoldItem(0, i)
end
end
function hoason1()
for i=5900,5909 do
AddGoldItem(0, i)
end
end
function hoason2()
for i=5910,5919 do
AddGoldItem(0, i)
end
end

-----------------------------nhan do dieu duong -----------------------
function setdieuduong()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"Thi�u L�m Quy�n",thieulamdd},
		{"Thi�u L�m C�n",thieulamdd2},
		{"Thi�u L�m �ao",thieulamdd3},
		{"Thi�n V��ng Ch�y",thienvuongdd1},
		{"Thi�n V��ng Th��ng",thienvuongdd2},
		{"Thi�n V��ng �ao",thienvuongdd3},
		{"Nga Mi Ki�m",ngamidd1},
		{"Nga Mi Ch��ng",ngamidd2},
		{"Th�y Y�n ��n �ao",thuyyendd1},
		{"Th�y Y�n Song �ao",thuyyendd2},
		{"Ng� ��c Ch��ng Ph�p",ngudocdd1},
		{"Ng� ��c �ao Ph�p",ngudocdd2},
		{"Trang K�",dieuduongdd22},
		{"Tr� L�i",TBCC},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function dieuduongdd22()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"���ng M�n Phi �ao",duongmondd1},
		{"���ng M�n T� Ti�n",duongmondd2},
		{"���ng M�n Phi Ti�u",duongmondd3},
		{"C�i Bang R�ng",caibangdd1},
		{"C�i Bang C�n Ph�p",caibangdd2},
		{"Thi�n Nh�n K�ch",thiennhandd1},
		{"Thi�n Nh�n �ao",thiennhandd2},
		{"V� �ang Kh�",vodangdd1},
		{"V� �ang Ki�m",vodangdd2},
		{"C�n L�n �ao",conlondd1},
		{"C�n L�n Ki�m",conlondd2},
		{"Hoa S�n Ki�m T�ng",hoasondd1},
		{"Hoa S�n Kh� T�ng",hoasondd2},
		{"Tr� L�i",TBCC},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function thieulamdd1()
for i=5962,5971 do
AddGoldItem(0, i)
end
end
function thieulamdd2()
for i=5972,5981 do
AddGoldItem(0, i)
end
end
function thieulamdd3()
for i=5982,5991 do
AddGoldItem(0, i)
end
end
function thienvuongdd1()
for i=5992,6001 do
AddGoldItem(0, i)
end
end
function thienvuongdd2()
for i=6002,6011 do
AddGoldItem(0, i)
end
end
function thienvuongdd3()
for i=6012,6021 do
AddGoldItem(0, i)
end
end
function ngamidd1()
for i=6022,6031 do
AddGoldItem(0, i)
end
end
function ngamidd2()
for i=6032,6041 do
AddGoldItem(0, i)
end
end
function thuyyendd1()
for i=6042,6051 do
AddGoldItem(0, i)
end
end
function thuyyendd2()
for i=6052,6061 do
AddGoldItem(0, i)
end
end
function ngudocdd1()
for i=6062,6071 do
AddGoldItem(0, i)
end
end
function ngudocdd2()
for i=6072,6081 do
AddGoldItem(0, i)
end
end
function duongmondd1()
for i=6082,6091 do
AddGoldItem(0, i)
end
end
function duongmondd2()
for i=6092,6101 do
AddGoldItem(0, i)
end
end
function duongmondd3()
for i=6102,6111 do
AddGoldItem(0, i)
end
end
function caibangdd1()
for i=6112,6121 do
AddGoldItem(0, i)
end
end
function caibangdd2()
for i=6122,6131 do
AddGoldItem(0, i)
end
end
function thiennhandd1()
for i=6132,6141 do
AddGoldItem(0, i)
end
end
function thiennhandd2()
for i=6142,6151 do
AddGoldItem(0, i)
end
end
function vodangdd1()
for i=6152,6161 do
AddGoldItem(0, i)
end
end
function vodangdd2()
for i=6162,6171 do
AddGoldItem(0, i)
end
end
function conlondd1()
for i=6172,6181 do
AddGoldItem(0, i)
end
end
function conlondd2()
for i=6182,6191 do
AddGoldItem(0, i)
end
end
function hoasondd1()
for i=6192,6201 do
AddGoldItem(0, i)
end
end
function hoasondd2()
for i=6202,6211 do
AddGoldItem(0, i)
end
end

-------------------Pet----------------------
function Pet()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"Ch�n Pet �i Ku",Pet1},
		{"X�a Pet",Pet2},
		{"Tr� L�i",Pet},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end


function Pet1()
local szTitle = LENHBAI_ADMIN.."Xin ch�o Admin <color=red>"..GetName().."<color>,Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n ki�m tra Server ho�c h� tr� ng��i ch�i.\n\n<pic=137> Online    : <color=green>"..GetPlayerCount().."<color>"
local tbOpt =
	{
		{"Chu T��c",Pet3},
		{"H�a K� L�n",Pet4},
		{"Thanh Long",Pet5},
		{"Huy�n V�",Pet6},
		{"Dung H��",Pet7},
		{"Tr� L�i",Pet},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function Pet3()
 local partneridex = PARTNER_AddFightPartner(4,4,1,5,5,5,5,5,5)
PARTNER_CallOutCurPartner(1)
end
function Pet4()
 local partneridex = PARTNER_AddFightPartner(1,1,1,5,5,5,5,5,5)
PARTNER_CallOutCurPartner(1)
end
function Pet5()
 local partneridex = PARTNER_AddFightPartner(2,2,1,5,5,5,5,5,5)
PARTNER_CallOutCurPartner(1)
end
function Pet6()
 local partneridex = PARTNER_AddFightPartner(3,3,1,5,5,5,5,5,5)
PARTNER_CallOutCurPartner(1)
end
function Pet7()
 local partneridex = PARTNER_AddFightPartner(5,0,1,5,5,5,5,5,5)
PARTNER_CallOutCurPartner(1)
end

function Pet2()
PARTNER_RemovePartner(1,1,1,5,5,5,5,5,5)
end