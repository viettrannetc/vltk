Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\event\\valentine2007\\event.lua")

function main()
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex)
	
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName);
	end
	
	local tbDailog = DailogClass:new(szNpcName);
	tbDailog.szTitleMsg = "<color=yellow>T� 13/02/2007 ��n h�t 15/02/2050<color>, c�c nh�n s� v� l�m c�p tr�n 80 m�i c� th� t�m l�o phu �� nh�n <color=yellow>1<color> h�t hoa h�ng, b�n mu�n nh�n kh�ng?";
	
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex)
	
	tbDailog:AddOptEntry("Nh�n h�t hoa h�ng.", Valentine2007_main)
	

	
	tbDailog:Show();
end