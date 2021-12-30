
Include("\\script\\activitysys\\playerfunlib.lua")

Include("\\script\\lib\\progressbar.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\activitysys\\config\\38\\award.lua")
Include("\\script\\activitysys\\config\\38\\extend.lua")
Include("\\script\\activitysys\\config\\2\\variables.lua")
Include("\\script\\activitysys\\config\\2\\award.lua")

local AWARD_TABLE = tbAwardList["Gift_npc"] 
local nHideTime = 80

local _limit = function()
local nTime = tonumber(date("%H%M"))
	


	if (nTime > 1010 and nTime <1510) or (nTime > 1610 and nTime <1910) or (nTime > 2010 and nTime <2359) or (nTime > 0000 and nTime <910)  then
	Talk(1,"","M�i ng�y s� c� 3 th�i �i�m di�n ra ho�t ��ng l� <color=yellow> 9h10 - 10h10 , 15h10 - 16h10 , 19h10 - 20h10 <color>")
	
	return 1;
	end

	if (GetLevel() < 50) then
	Talk(1,"","<color=yellow>��ng c�p 50 tr� l�n <color> m�i h�i ���c Ng�i Sao H�nh Ph�c.")
	return 1;
	end
	
	if (0 == GetCamp()) then
	Talk(1,"","B�n ch�a gia nh�p <color=yellow> M�n Ph�i <color> kh�ng th� nh�t Ng�i Sao H�nh Ph�c")
	

	return 1;
end
end
local _OnBreak = function()
	Msg2Player("Thu th�p �� b� gi�n �o�n.")
end


local _GetAward = function(nNpcIndex, dwNpcId)
	if nNpcIndex <= 0 or GetNpcId(nNpcIndex) ~= dwNpcId then
	
		return
	end
	
	if IsNpcHide(nNpcIndex) == 1 then
--		Msg2Player("��Ĳɼ�ʧ���ˡ�")
		return 0
	end

	if PlayerFunLib:CheckFreeBagCell(1,"default") ~= 1 then
		return
	end
	if %_limit() then
		return
	end
	local nRandomKeyValue = random(1, 100)

if (nRandomKeyValue < 5) then
nrace = 100
end
if
(nRandomKeyValue <= 70 and nRandomKeyValue>5) then
nrace = 1
end
if
(nRandomKeyValue <= 80 and nRandomKeyValue>70) then
nrace = 5
end
if
(nRandomKeyValue <= 92 and nRandomKeyValue>80) then
nrace = 10
end
if
(nRandomKeyValue <= 100 and nRandomKeyValue>92)then
nrace = 50
end

	tbAwardTemplet:GiveAwardByList({tbProp = {6,1,30080,0,0,0}, nExpiredTime=43200,nCount = nrace}, "test", 1);
	
	HideNpc(nNpcIndex, %nHideTime * 18)
	
end 


function main()

	local nNpcIndex = GetLastDiagNpc()
	local dwNpcId = GetNpcId(nNpcIndex)
	
	if pActivity:ExpiredTime() == 1 then
		DelNpc(nNpcIndex)
		return 
	end
	
	if %_limit() then
		return
	end
	tbProgressBar:OpenByConfig(1000, %_GetAward, {nNpcIndex, dwNpcId}, %_OnBreak)
end



