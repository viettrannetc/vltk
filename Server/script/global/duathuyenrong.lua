IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\missions\\dragonboat\\npc\\dragonboat_main.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
IncludeLib("ITEM")



function KickOutAllServer(IDTeam)
	if IDTeam == nil then return end
	local OldPlayer = PlayerIndex
	for i=1,GetPlayerCount() do
		PlayerIndex = i
		if (GetTeam() ~= IDTeam) then
			KickOutSelf()
		end
	end
	PlayerIndex = OldPlayer
end

function as()
	if GetAccount() == "tester1" then
	end
end

function main()
	dofile("script/global/duathuyenrong.lua")
	as()
	local szTitle = "<npc>"..GetPlayerSex().." t�m ta c� vi�c g�"
	local tbOpt =
	{
	
		{"�ua thuy�n r�ng",dragonboat_main},
		{"Bao Danh �ua thuy�n r�ng",want_playboat},
		{"Nh�n th��ng h�ng ng�y",NhanThuongHN},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end



function NhanThuongHN()
local nNam = tonumber(GetLocalDate("%Y")); 
local nThang = tonumber(GetLocalDate("%m")); 
local nNgay = tonumber(GetLocalDate("%d")); 
local PTTanThu = 
{
{szName="<color=yellow>Thuy�n R�ng", tbProp={6,1,423}, nCount = 1, nExpiredTime = 1440, nBindState = -2},
}
	local EMPTY = 10
	if (CalcFreeItemCellCount() < EMPTY) then
	Say("H�y thu d�n h�nh trang c�n <color=yellow>"..EMPTY.."<color> ch� tr�ng.", 0)
	return
	end
    local nTaskDayCount = PlayerFunLib:GetTaskDailyCount(nTaskDayhangngay)
    if nTaskDayCount > 0 then 
    Talk(1, "", "H�m nay ng��i �� nh�n ph�n th��ng n�y r�i, h�m sau h�y quay l�i.") 
    return 1; 
   else
    PlayerFunLib:AddTaskDaily(nTaskDayhangngay, 1)
	tbAwardTemplet:GiveAwardByList(PTTanThu, "Ph�n th��ng");
	Msg2Player("Nh�n ph�n th��ng ng�y  <color=yellow>"..nNgay.." - "..nThang.." - "..nNam.."<color> th�nh c�ng."); 
    end 
end


function onCancel()
end