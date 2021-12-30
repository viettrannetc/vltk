IncludeLib("SPREADER")
IncludeLib("SETTING")
Include("\\script\\global\\rename_head.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")

Include("\\script\\global\\pgaming\\cauca\\head.lua")

IncludeLib("LEAGUE");
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\lib\\composeex.lua")
----------
Include("\\script\\lib\\composeex.lua")
IncludeLib("LEAGUE");
Include("\\script\\dailogsys\\g_dialog.lua")

function main()
dofile("script/global/pgaming/cauca/npc_nguphu.lua")	
	AskDeal()
end
function myplayersex()
	if GetSex() == 1 then 
		return "N� hi�p";
	else
		return "��i hi�p";
	end
	--      "..myplayersex().."
end

function AskDeal()
Say("Ta c� b�n c�c lo�i d�ng c� ��nh b�t c�. Kh�ch quan n�u b� l� kh�ng mua th� th�t v� c�ng ��ng ti�c!", 4, 
	"C�n c�u (10 ti�n ��ng)/#DealBuy(1)", 
	"L��i ��nh c� (15 ti�n ��ng)/#DealBuy(2)",
	"��i C� l�y ph�n th��ng/doi_phan_thuong",
	"Kh�ng c�n ��u/OnCancelBuy_xxg");
end;

function DealBuy(ItemID)
	tien = 0
	if (ItemID == 1) then
		SetTaskTemp(15,4807); --- can cau
		tien = 10;
	elseif (ItemID == 2) then
		SetTaskTemp(15,4806);
		tien = 15;
	else
		return
	end;
	if tien == 0 then
		return
	end
	Say("Gi� <color=yellow>"..tien.." Ti�n ��ng<color> C� ��ng � kh�ng?", 2, "Mu�n/#DoBuy(tien)", "ta ngh� l�i xem /OnCancelBuyxx");
end;
function DoBuy(tien)
	TheItem = GetTaskTemp(15);
	if (TheItem >= 4806 and TheItem <= 4807) then ---luoi danh ca
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=tien) then
			ConsumeEquiproomItem(tien, 4, 417, 1, 1)
			AddItem(6,1,TheItem,1,0,0);
			SaveNow();
			Say("Kh�ch quan th�t bi�t xem h�ng!", 0);
		else
			Say("Kh�ch quan �ang tr�u ch�c ti�u nh�n hay th�t s� kh�ng c� <color=yellow>"..tien.." ti�n ��ng<color>?", 0);
		end
	end;
end

function doi_phan_thuong()
	local tbDialog = 
{ 
"<dec><npc>\n<color=yewllow>H� tr� nh�n s� V� L�m khi tham gia V� L�m Truy�n K�?<color>", 
--"��i 50 C� H�ng = 40 Ph�o ��i/doi_ca_hong", 
"��i 50 C� M�p = 55 Ph�o ��i/doi_ca_map",
"��i 50 C� R�ng = 80 Ph�o ��i/doi_ca_rong",
"��i 50 C� S�u = 100 Ph�o ��i /doi_ca_sau",
"��i 50 Con M�c = 130 Ph�o ��i /doi_muc",
"��i 30 Con T�m = 150 Ph�o ��i/doi_tom",
"��i 2 N�ng Ti�n C� = 400 Ph�o ��i /doi_tien_ca",
"K�t th�c ��i tho�i /thonghonafk", 
} 
CreateTaskSay(tbDialog) 
end

function doi_ca_hong()
local ca= 50 ---so  luong
local la= CalcItemCount(3,6, 1, 4799, -1) ;
if la < 50 then --so luong
 Talk(2, "", ""..myplayersex().." c�n thi�u <color=red>"..ca-la.."<color> <color=green>C� H�ng<color> r�i! <color> "); 
 else
		for i=1,ca do
			ConsumeEquiproomItem(1,6,1,4799,-1)
		end
 lay_pt_ca_hong()
 end
end
function lay_pt_ca_hong()	-----ca hong
local tbAward = {
		
		[1]	={szName="Ph�o ��i", tbProp = {6, 1, 1353, 1,0,0}, nCount = 40},
		--[3]={szName="Huy�n Tinh",tbProp={6,1,4654,1,0,0},nCount=5},
		--[4]={szName="M�nh L�nh B�i",tbProp={6,1,4655,1,0,0},nCount=5},
		--[5]={szName="H�nh Hi�p L�nh",tbProp={6,1,2566,1,0,0},nCount=2},			
}
	tbAwardTemplet:GiveAwardByList(tbAward, "Ph�n th��ng ��i c�");
	--Earn(500000) ---500 van
	Msg2SubWorld("<color=green>Xin ch�c m�ng "..myplayersex().." <color>"..GetName().." <color=green> �� ��i th�nh c�ng <color=fire>50 C� H�ng <color>t� NPC Ng� Ph� !!!")
end

function doi_ca_map()
local ca= 50 ---so  luong
local la= CalcItemCount(3,6, 1, 4800, -1) ;
if la < 50 then --so luong
 Talk(2, "", ""..myplayersex().." c�n thi�u <color=red>"..ca-la.."<color> <color=green>C� M�p<color> r�i! <color> "); 
 else
		for i=1,ca do
			ConsumeEquiproomItem(1,6,1,4800,-1)
		end
 lay_pt_ca_map()
 end
end
function lay_pt_ca_map()	-----ca hong
local tbAward = {
		[1]	={szName="Ph�o ��i", tbProp = {6, 1, 1353, 1,0,0}, nCount = 55},
		--[2]	={szName="M�c R��ng", tbProp = {6, 1, 4777, 1,0,0}, nCount = 10},
		--[3]={szName="Huy�n Tinh",tbProp={6,1,4654,1,0,0},nCount=10},
		--[4]={szName="M�nh L�nh B�i",tbProp={6,1,4655,1,0,0},nCount=10},
		--[5]={szName="H�nh Hi�p L�nh",tbProp={6,1,2566,1,0,0},nCount=3},			
}
	tbAwardTemplet:GiveAwardByList(tbAward, "Ph�n th��ng ��i c�");
	--Earn(550000) ---500 van
	Msg2SubWorld("<color=green>Xin ch�c m�ng "..myplayersex().." <color>"..GetName().." <color=green> �� ��i th�nh c�ng <color=fire>50 C� R�ng <color>t� NPC Ng� Ph� !!!")
end

function doi_ca_rong()
local ca= 50 ---so  luong
local la= CalcItemCount(3,6, 1, 4801, -1) ;
if la < 50 then --so luong
 Talk(2, "", ""..myplayersex().." c�n thi�u <color=red>"..ca-la.."<color> <color=green>C� R�ng<color> r�i! <color> "); 
 else
		for i=1,ca do
			ConsumeEquiproomItem(1,6,1,4801,-1)
		end
 lay_pt_ca_hong()
 end
end
function lay_pt_ca_rong()	-----ca hong
local tbAward = {
		[1]	={szName="Ph�o ��i", tbProp = {6, 1, 1353, 1,0,0}, nCount = 80},
		--[2]	={szName="M�c R��ng", tbProp = {6, 1, 4777, 1,0,0}, nCount = 15},
		--[3]={szName="Huy�n Tinh",tbProp={6,1,4654,1,0,0},nCount=15},
		--[4]={szName="M�nh L�nh B�i",tbProp={6,1,4655,1,0,0},nCount=15},
		--[5]={szName="H�nh Hi�p L�nh",tbProp={6,1,2566,1,0,0},nCount=4},			
}
	tbAwardTemplet:GiveAwardByList(tbAward, "Ph�n th��ng ��i c�");
	--Earn(600000) ---500 van
	Msg2SubWorld("<color=green>Xin ch�c m�ng "..myplayersex().." <color>"..GetName().." <color=green> �� ��i th�nh c�ng <color=fire>50 C� R�ng <color>t� NPC Ng� Ph� !!!")
end

function doi_ca_sau()
local ca= 50 ---so  luong
local la= CalcItemCount(3,6, 1, 4802, -1) ;
if la < 50 then --so luong
 Talk(2, "", ""..myplayersex().." c�n thi�u <color=red>"..ca-la.."<color> <color=green>C� S�u<color> r�i! <color> "); 
 else
		for i=1,ca do
			ConsumeEquiproomItem(1,6,1,4802,-1)
		end
 lay_pt_ca_sau()
 end
end
function lay_pt_ca_sau()	-----ca hong
local tbAward = {
		[1]	={szName="Ph�o ��i", tbProp = {6, 1, 1353, 1,0,0}, nCount = 100},
		--[2]	={szName="M�c R��ng", tbProp = {6, 1, 4777, 1,0,0}, nCount = 15},
		--[3]={szName="Huy�n Tinh",tbProp={6,1,4654,1,0,0},nCount=15},
		--[4]={szName="M�nh L�nh B�i",tbProp={6,1,4655,1,0,0},nCount=15},
		--[5]={szName="H�nh Hi�p L�nh",tbProp={6,1,2566,1,0,0},nCount=5},			
}
	tbAwardTemplet:GiveAwardByList(tbAward, "Ph�n th��ng ��i c�");
	--Earn(650000) ---500 van
	Msg2SubWorld("<color=green>Xin ch�c m�ng "..myplayersex().." <color>"..GetName().." <color=green> �� ��i th�nh c�ng <color=fire>50 C� S�u <color>t� NPC Ng� Ph� !!!")
end

function doi_muc()
local ca= 50 ---so  luong
local la= CalcItemCount(3,6, 1, 4803, -1) ;
if la < 50 then --so luong
 Talk(2, "", ""..myplayersex().." c�n thi�u <color=red>"..ca-la.."<color> <color=green>Con M�c<color> r�i! <color> "); 
 else
		for i=1,ca do
			ConsumeEquiproomItem(1,6,1,4803,-1)
		end
 lay_pt_muc()
 end
end
function lay_pt_muc()	-----ca hong
local tbAward = {
		[1]	={szName="Ph�o ��i", tbProp = {6, 1, 1353, 1,0,0}, nCount = 130},
		--[2]	={szName="M�c R��ng", tbProp = {6, 1, 4777, 1,0,0}, nCount = 15},
		--[3]={szName="Huy�n Tinh",tbProp={6,1,4654,1,0,0},nCount=15},
		--[4]={szName="M�nh L�nh B�i",tbProp={6,1,4655,1,0,0},nCount=15},
		--[5]={szName="H�nh Hi�p L�nh",tbProp={6,1,2566,1,0,0},nCount=6},			
}
	tbAwardTemplet:GiveAwardByList(tbAward, "Ph�n th��ng ��i c�");
	--Earn(700000) ---500 van
	Msg2SubWorld("<color=green>Xin ch�c m�ng "..myplayersex().." <color>"..GetName().." <color=green> �� ��i th�nh c�ng <color=fire>50 Con M�c <color>t� NPC Ng� Ph� !!!")
end

function doi_tom()
local ca= 30 ---so  luong
local la= CalcItemCount(3,6, 1, 4804, -1) ;
if la < 30 then --so luong
 Talk(2, "", ""..myplayersex().." c�n thi�u <color=red>"..ca-la.."<color> <color=green>Con T�m<color> r�i! <color> "); 
 else
		for i=1,ca do
			ConsumeEquiproomItem(1,6,1,4804,-1)
		end
 lay_pt_muc()
 end
end
function lay_pt_tom()	-----ca hong
local tbAward = {
		[1]	={szName="Ph�o ��i", tbProp = {6, 1, 1353, 1,0,0}, nCount = 150},
		--[2]	={szName="M�c R��ng", tbProp = {6, 1, 4777, 1,0,0}, nCount = 25},
		--[3]={szName="Huy�n Tinh",tbProp={6,1,4654,1,0,0},nCount=25},
		--[4]={szName="M�nh L�nh B�i",tbProp={6,1,4655,1,0,0},nCount=25},
		--[5]={szName="H�nh Hi�p L�nh",tbProp={6,1,2566,1,0,0},nCount=7},			
}
	tbAwardTemplet:GiveAwardByList(tbAward, "Ph�n th��ng ��i c�");
	--Earn(800000) ---1000 van
	Msg2SubWorld("<color=green>Xin ch�c m�ng "..myplayersex().." <color>"..GetName().." <color=green> �� ��i th�nh c�ng <color=fire>30 Con T�m <color>t� NPC Ng� Ph� !!!")
end

function doi_tien_ca()
local ca= 2 ---so  luong
local la= CalcItemCount(3,6, 1, 4805, -1) ;
if la < 2 then --so luong
 Talk(2, "", ""..myplayersex().." c�n thi�u <color=red>"..ca-la.."<color> <color=green>N�ng Ti�n C�<color> r�i! <color> "); 
 else
		for i=1,ca do
			ConsumeEquiproomItem(1,6,1,4805,-1)
		end
 lay_pt_tien_ca()
 end
end
function lay_pt_tien_ca()	-----ca hong
local tbAward = {
		[1]	={szName="Ph�o ��i", tbProp = {6, 1, 1353, 1,0,0}, nCount = 400},
		--[2]	={szName="M�c R��ng", tbProp = {6, 1, 4777, 1,0,0}, nCount = 200},
		--[3]={szName="Huy�n Tinh",tbProp={6,1,4654,1,0,0},nCount=200},
		--[4]={szName="M�nh L�nh B�i",tbProp={6,1,4655,1,0,0},nCount=200},
		--[5]={szName="H�nh Hi�p L�nh",tbProp={6,1,2566,1,0,0},nCount=50},			
}
	tbAwardTemplet:GiveAwardByList(tbAward, "Ph�n th��ng ��i c�");
	--Earn(10000000) ---1000 van
	Msg2SubWorld("<color=green>Xin ch�c m�ng "..myplayersex().." <color>"..GetName().." <color=green> �� ��i th�nh c�ng <color=fire><bclr=yellow> 5 N�ng Ti�n C�<bclr><color> t� NPC Ng� Ph� !!!")
end
