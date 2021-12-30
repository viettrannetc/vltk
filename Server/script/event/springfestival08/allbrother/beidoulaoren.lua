Include("\\script\\event\\springfestival08\\allbrother\\event.lua");	-- 
Include("\\script\\event\\BeiDouChuanGong\\zhizuochuangongwan.lua");	-- 
Include("\\script\\event\\other\\xunmashu\\dialog.lua")
Include("\\script\\task\\metempsychosis\\npc_saodiseng.lua");			-- ����ת���Ի�
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
	tbDailog.szTitleMsg = "<npc>Xin ch�o, t�i h� l� truy�n nh�n c�a B�c ��u M�n, ch�ng hay c�c h� c�n g�?";
	
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex)
	tbDailog:AddOptEntry("H�c k� n�ng tr�ng sinh 5", kynangtrungsinh5);
	tbDailog:AddOptEntry("Nhi�m v� t� h�i giai huynh ��", allbrother_0801_main);
	tbDailog:AddOptEntry("H�c B�c ��u Tr��ng Sinh Thu�t v� Tr�ng Sinh", beidou_translife_main);
	tbDailog:AddOptEntry("Luy�n ti�n �an truy�n c�ng", BeiDouChuanGong_main, {1});
	--T�m ��ng k� n�ng TS 4 - Modified By DinhHQ - 20111102
	--tbDailog:AddOptEntry("Ta mu�n h�c k� n�ng Chi�n � Thi�n Thu", beidou_learn_specialskill);
	
	if tbXunMaShu0903:IsActDate() then
	--	tbDailog:AddOptEntry("Ho�t ��ng [B�o r��ng th�n b�]", tbXunMaShu0903.DialogMain_Box, {tbXunMaShu0903});
	--	tbDailog:AddOptEntry("B�c ��u Thu�n M� Thu�t", tbXunMaShu0903.DialogMain_Horse, {tbXunMaShu0903});
	end
	
	tbDailog:Show();
end

function kynangtrungsinh5()
	local szTitle = "C�n nh�c k� tr��c khi ch�n. M�i nh�n v�t ch� ���c ch�n 1 l�n. Ng��i mu�n nh�n k� n�ng n�o?"
	local tbOpt =
	{
	
		{"��i Di�p Kh� Tr�o",daidiepkhitrao},
		{"Tr�ng K�ch Tuy�t ��i",trongkichtuyetdoi},
		{"Tr� l�i",main},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end


function daidiepkhitrao()
local nlevel = GetLevel();
local ntranscount = ST_GetTransLifeCount();

if (HaveMagic(993) >= 0) or (HaveMagic(998) >= 0) then
Talk(1,"","M�i nh�n v�t ch� ���c nh�n 1 l�n")
return 1	
end

if (ntranscount == 5) and (HaveMagic(993) < 0) and (HaveMagic(998) < 0) then
		AddMagic(993,1)
	else
Talk(1,"","Tr�ng Sinh 5 r�i h�y nh�n skill")
end
	
end

function trongkichtuyetdoi()
local nlevel = GetLevel();
local ntranscount = ST_GetTransLifeCount();

if (HaveMagic(993) >= 0) or (HaveMagic(998) >= 0) then
Talk(1,"","M�i nh�n v�t ch� ���c nh�n 1 l�n")
return 1	
end

if (ntranscount == 5) and (HaveMagic(993) < 0) and (HaveMagic(998) < 0) then
		AddMagic(998,1)
	SetTask(6565,1)
else
Talk(1,"","Tr�ng Sinh 5 r�i h�y nh�n skill")
end
	
end

