--Event cau ca bang hoi
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\task\\system\\task_string.lua")
Include("\\script\\lib\\progressbar.lua")
IncludeLib("ITEM")
Include("\\script\\global\\pgaming\\cauca\\head.lua")

function main(nItemIndex)
	local G,D,P,nLevel = GetItemProp(nItemIndex);
	if (G ~= 6) then
		return 1;
	end
	
	if CalcFreeItemCellCount() < 6 then
		CreateTaskSay({"Xin h�y s�p x�p l�i h�nh trang! Nh� �� tr�ng 6 � tr� l�n nh�!",  "���c r�i./Cancel",});
		return 1;
	end
	
	if CheckGioiHan()==1 then
		return 1;
	end

	if P >= 4799 and P <= 4805 then
		Exp(P)
		
		return 0;
	end
	return 1
end
function Exp(P)
	if (P >= 4799 and P <= 4801) then		
		nExp = 1500000
		Msg2Player("Ch�c m�ng b�n nh�n "..nExp.." �i�m kinh nghi�m")
		SetTask(TaskExpCauCa,(nExp+GetTask(TaskExpCauCa)))
		tbAwardTemplet:Give(%ItemAwardNT_cathuong1, 1)
		lay_pt75()
		AddOwnExp(1500000);
	elseif (P >= 4802 and P <= 4804) then
		
		nExp = 2000000
		Msg2Player("Ch�c m�ng b�n nh�n "..nExp.." �i�m kinh nghi�m")
		SetTask(TaskExpCauCa,(nExp+GetTask(TaskExpCauCa)))
		tbAwardTemplet:Give(%ItemAwardNT_cathuong2, 1)
		lay_pt76()
		AddOwnExp(2000000);
	elseif (P == 4805) then
		
		nExp = 3000000
		Msg2Player("Ch�c m�ng b�n nh�n "..nExp.." �i�m kinh nghi�m")
		SetTask(TaskExpCauCa,(nExp+GetTask(TaskExpCauCa)))
		tbAwardTemplet:Give(%ItemAwardNT, 1)
		lay_pt77()
		AddOwnExp(3000000);
	end
end

function lay_pt75()	-----moc 10
local tbAward = {
		[1]={szName="<color=green>Bao L� X�",tbProp={6,1,1350,1,0,0},nCount=15,},	
}
	tbAwardTemplet:GiveAwardByList(tbAward, "Ph�n th��ng m�c event");
end
function lay_pt76()	-----moc 10
local tbAward = {
		[1]={szName="<color=green>Bao L� X�",tbProp={6,1,1350,1,0,0},nCount=25,},	
}
	tbAwardTemplet:GiveAwardByList(tbAward, "Ph�n th��ng m�c event");
end
function lay_pt77()	-----moc 10
local tbAward = {
		[1]={szName="<color=green>Bao L� X�",tbProp={6,1,1350,1,0,0},nCount=70,},
		[2]={szName="Xu(kh�ng kh�a)",tbProp={4,417,1,0,0},nCount=10,},		
}
	tbAwardTemplet:GiveAwardByList(tbAward, "Ph�n th��ng m�c event");
end
