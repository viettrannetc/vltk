


function OnDeath(nNpcIndex)
	local nPlayerIndex	= NpcIdx2PIdx(nNpcIndex);
	if nPlayerIndex > 0 then
		local szDeadName	= GetName()
		local szKiller		= doFunByPlayer(nPlayerIndex, GetName)
		local nCount		= doFunByPlayer(nPlayerIndex, GetTask, tbMissionClass.TSK_Kills)
		szMsg		= format("<color=green>%s<color> �� h� ch�ng ��t <color=yellow>%s<color> trong l�i ��i Hoa S�n", szKiller, szDeadName)

		doFunByPlayer(nPlayerIndex, SetTask, tbMissionClass.TSK_Kills, nCount + 1)
		doFunByPlayer(nPlayerIndex, Msg2Player, format("S� ng��i �� ��nh b�i: %d", nCount + 1))
		doFunByPlayer(nPlayerIndex, Msg2Player, szMsg)
		Msg2Player(szMsg)
	end
	Msg2Player("B�n �� hi sinh anh d�ng ���c ban th��ng<color=green> 1 nh�t k� c�ng kh�n ph�.")
                        Msg2SubWorld("��i hi�p <color=green>"..GetName().."<color=yellow> B� h� ch�ng ��t trong l�i ��i <color=green>Hoa S�n")
                        AddItem(6,1,4640,1,0,0)
                        AddItem(6,1,4696,1,0,0)
                        AddItem(6,1,4696,1,0,0)
	tbMissionClass:GotoSignUpPlace()
	
	local nPlayerCount = tbMissionClass:GetMSPlayerCount(0)
	
	if nPlayerCount == 1 then
		tbMissionClass:OnClose()
	end
end