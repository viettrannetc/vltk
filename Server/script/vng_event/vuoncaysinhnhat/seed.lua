Include("\\script\\vng_event\\VuonCaySinhNhat\\plant.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
TSK_USED = 5556

NDAILYTIME = 10

DATE_START	= 20160624
DATE_END	= 20500707

function IsAcitve()
	local now = tonumber(GetLocalDate("%Y%m%d"));
	if (now >= DATE_END or now < DATE_START) then
		return 0;
	end
	return 1;	
end

function plant_tree()
	if (tbSeed:Check() == 0) then
		return 0
	end
	local kind = tbSeed:RandomKind()
	if (tbSeed:Grow(kind) == 1) then
		return 1
	else		
		return 0
	end
end

function trongcay()
	if plant_tree() == 1 then
		return 0
	end
	return 1

end

function main(nItemIndex)
	if IsAcitve() ~= 1 then
		Msg2Player("�� qu� th�i gian ho�t ��ng, kh�ng th� tr�ng c�y.")
		return 1
	end
local szFailMsg = format("M�i ng�y m�i nh�n v�t ch� c� th� s� d�ng nhi�u nh�t    %d l�n",NDAILYTIME)
if PlayerFunLib:CheckTaskDaily(TSK_USED, NDAILYTIME, szFailMsg, "<") == 1 then
	PlayerFunLib:AddTaskDaily(TSK_USED, 1)	
trongcay()
return 0
end
return 1
end

