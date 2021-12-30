--Event cau ca bang hoi
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\global\\pgaming\\cauca\\head.lua")
IncludeLib("ITEM")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
MAXCOUNT = 5
local ItemAward = {
	{szName="C� s�u",tbProp={6,1,4802,1,0,0},nCount=2,nRate=45},
	{szName="M�c",tbProp={6,1,4803,1,0,0},nCount=2,nRate=35},
	{szName="T�m",tbProp={6,1,4804,1,0,0},nCount=2,nRate=30},	
	{szName="C� s�u",tbProp={6,1,4802,1,0,0},nCount=2,nRate=25},
	
	{szName="C� s�u",tbProp={6,1,4802,1,0,0},nCount=3,nRate=20},
	{szName="C� s�u",tbProp={6,1,4802,1,0,0},nCount=4,nRate=15},
	
	{szName="M�c",tbProp={6,1,4803,1,0,0},nCount=3,nRate=15},
	{szName="M�c",tbProp={6,1,4803,1,0,0},nCount=4,nRate=10},
	
	{szName="T�m",tbProp={6,1,4804,1,0,0},nCount=3,nRate=10},
	{szName="T�m",tbProp={6,1,4804,1,0,0},nCount=4,nRate=5},	

	{szName="N�ng ti�n c�",tbProp={6,1,4805,1,0,0},nCount=1,nRate=7},
	{szName="N�ng ti�n c�",tbProp={6,1,4805,1,0,0},nCount=2,nRate=5},
	
	{szName = "S� d�ng L��i ��nh c� kh�ng may m�n",
		pFun = function (nItemCount, szLogTitle)
			Msg2Player("L�n n�y kh�ng may m�n, ta ph�i th� th�m l�n n�a")
		end,
		nRate = 100,
	}
}
local _GetFruit = function(nItemIndex)
	tbAwardTemplet:Give(%ItemAward, 1)
	SaveNow()
	DemSoLan(nItemIndex)
end
local _OnBreak = function()
	Msg2Player("Thu th�p ��t �o�n")
end
function main(nItemIdx)
	local G,D,P,nLevel = GetItemProp(nItemIdx);
	if (G ~= 6) then
		return 1;
	end

	w,x,y=GetWorldPos()
	if w ~= 80 then
		--Talk(1, "", "B�n h�y ��n <color=red>D��ng Ch�u (212/193)<color> �� b�t c�");
		CreateTaskSay({"B�n h�y ��n <color=red>D��ng Ch�u (212/193)<color> �� b�t c�","��a ta ��n ��./MoveMap","Tho�t./Cancel",});
		return 1;
	end

	PosId = GetNearstPos(x*32,y*32, GccPos);
	if (PosId == 0) then 
		Say("B�n ��ng c�ch khu v�c qu� xa <color=red>D��ng Ch�u (212/193)<color>, kh�ng th� s� d�ng! ",0)
		return 1
	end;	

	if CalcFreeItemCellCount() < 6 then
		CreateTaskSay({"Xin h�y s�p x�p l�i h�nh trang! Nh� �� tr�ng 6 � tr� l�n nh�!",  "���c r�i./Cancel",});
		return 1;
	end
	if P == 4806 then  ---luoi danh ca
		tbProgressBar:OpenByConfig(21, %_GetFruit,{nItemIdx}, %_OnBreak)
	end
	return 1
end
function DemSoLan(nItemIdx)
	local n_param = tonumber(GetItemParam(nItemIdx,1)) + 1
	local itemname = "<color=yellow>"..GetItemName(nItemIdx).."<color>"
	SetSpecItemParam(nItemIdx,1,n_param)
	SyncItem(nItemIdx)
	if (n_param >= MAXCOUNT) then
		RemoveItemByIndex(nItemIdx)
	else
		Msg2Player(""..itemname.." c�n s� d�ng "..(MAXCOUNT - n_param).." l�n")
	end
end
function MoveMap()
	NewWorld(80, 1702, 3095)
	Msg2Player("B�n �� ��n khu v�c c�u c�!")
end
function GetDesc(nItemIdx)
	local szDesc = ""
	local n_param = tonumber(GetItemParam( nItemIdx, 1 ))
	szDesc = szDesc..format("\nC� th� s� d�ng <color=yellow>%d<color> l�n", (MAXCOUNT - n_param));
	return szDesc;
end
