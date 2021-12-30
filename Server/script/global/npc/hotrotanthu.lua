------------------------------------------------------------------------------
-- File Name: hotrotanthu.lua
-- Npc Name: H� tr� t�n th�
-- ���ng d�n: \\script\\global\\npc\\hotrotanthu.lua
-- Author by AloneScript (Linh Em) @ 05-08-2018
------------------------------------------------------------------------------
IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\npcdailog.lua");
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\itemblue.lua")
Include("\\script\\lib\\alonelib.lua")
Include("\\script\\global\\seasonnpc.lua")

function main()
	dofile("script/global/npc/hotrotanthu.lua")
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex)
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName)
	end
	local tbDailog = DailogClass:new(szNpcName)
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex)
	EventSys:GetType("AddNpcOption"):OnEvent(szNpcName, tbDailog, nNpcIndex)
	tbDailog.szTitleMsg = "<npc>Ch�o m�ng c�c b�n tham gia v�o <color=yellow>V� L�m Truy�n K�<color> phi�n b�n <color=red>C�ng Th�nh Chi�n<color>. Hi�n �ang trong giai �o�n th� nghi�m, h�y nh�n h� tr� r�i tham gia c�c t�nh n�ng �� tr�i nghi�m tr��c khi m�y ch� ch�nh th�c �i v�o ho�t ��ng."
	tbDailog.szTitleMsg = gsub(tbDailog.szTitleMsg , "<dec>", "")
	tbDailog:Show()
end
