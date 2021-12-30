Include("\\script\\event\\springfestival08\\allbrother\\event.lua");	-- 
Include("\\script\\event\\BeiDouChuanGong\\zhizuochuangongwan.lua");	-- 
Include("\\script\\event\\other\\xunmashu\\dialog.lua")
Include("\\script\\task\\metempsychosis\\npc_saodiseng.lua");			-- 多重转生对话
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\task\\metempsychosis\\translife_4_ex.lua")
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\task\\metempsychosis\\task_head.lua")
function main()
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex)
	
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName);
	end
	
	local tbDailog = DailogClass:new(szNpcName);
	tbDailog.szTitleMsg = "<npc>Xin ch祇, t筰 h� l� truy襫 nh﹏ c馻 B綾 u M玭, ch糿g hay c竎 h� c莕 g�?";
	
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex)
	tbDailog:AddOptEntry("H鋍 k� n╪g tr飊g sinh 5", kynangtrungsinh5);
	tbDailog:AddOptEntry("Nhi謒 v� t� h秈 giai huynh ", allbrother_0801_main);
	tbDailog:AddOptEntry("H鋍 B綾 u Trng Sinh Thu藅 v� Tr飊g Sinh", beidou_translife_main);
	tbDailog:AddOptEntry("Luy謓 ti猲 產n truy襫 c玭g", BeiDouChuanGong_main, {1});
	--T筸 ng k� n╪g TS 4 - Modified By DinhHQ - 20111102
	--tbDailog:AddOptEntry("Ta mu鑞 h鋍 k� n╪g Chi課 � Thi猲 Thu", beidou_learn_specialskill);
	
	if tbXunMaShu0903:IsActDate() then
	--	tbDailog:AddOptEntry("Ho箃 ng [B秓 rng th莕 b輂", tbXunMaShu0903.DialogMain_Box, {tbXunMaShu0903});
	--	tbDailog:AddOptEntry("B綾 u Thu莕 M� Thu藅", tbXunMaShu0903.DialogMain_Horse, {tbXunMaShu0903});
	end
	
	tbDailog:Show();
end

function kynangtrungsinh5()
	local szTitle = "C﹏ nh綾 k� trc khi ch鋘. M鏸 nh﹏ v藅 ch� 頲 ch鋘 1 l莕. Ngi mu鑞 nh薾 k� n╪g n祇?"
	local tbOpt =
	{
	
		{"Чi Di謕 Kh� Tr竜",daidiepkhitrao},
		{"Tr鋘g K輈h Tuy謙 цi",trongkichtuyetdoi},
		{"Tr� l筰",main},
		{"Tho竧"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end


function daidiepkhitrao()
local nlevel = GetLevel();
local ntranscount = ST_GetTransLifeCount();

if (HaveMagic(993) >= 0) or (HaveMagic(998) >= 0) then
Talk(1,"","M鏸 nh﹏ v藅 ch� 頲 nh薾 1 l莕")
return 1	
end

if (ntranscount == 5) and (HaveMagic(993) < 0) and (HaveMagic(998) < 0) then
		AddMagic(993,1)
	else
Talk(1,"","Tr飊g Sinh 5 r錳 h穣 nh薾 skill")
end
	
end

function trongkichtuyetdoi()
local nlevel = GetLevel();
local ntranscount = ST_GetTransLifeCount();

if (HaveMagic(993) >= 0) or (HaveMagic(998) >= 0) then
Talk(1,"","M鏸 nh﹏ v藅 ch� 頲 nh薾 1 l莕")
return 1	
end

if (ntranscount == 5) and (HaveMagic(993) < 0) and (HaveMagic(998) < 0) then
		AddMagic(998,1)
	SetTask(6565,1)
else
Talk(1,"","Tr飊g Sinh 5 r錳 h穣 nh薾 skill")
end
	
end

