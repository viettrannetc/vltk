-------------------------------------------------------------------------
-- FileName		:	NewWorldScript_H.lua
-- Author		:	LuoBaohang
-- CreateTime	:	2005-09-02
-- Desc			:  	��ͼ�л������ű�
-------------------------------------------------------------------------
Include("\\script\\lib\\string.lua")
Include("\\script\\maps\\newworldscript_h.lua")
Include("\\script\\item\\tianziyuxi.lua");	-- ��������

Include("\\script\\misc\\eventsys\\type\\map.lua")
aryChangeWorldExec = {}
function PraseParam(szParam)
	if (szParam == nil) then
		return nil
	end
	if (aryChangeWorldExec[SubWorld] == nil) then	--��û�к���������������
		aryChangeWorldExec[SubWorld] = {}
		local aryFuns = split(szParam, '|')
		local j=1;
		for i = 1,getn(aryFuns) do
			local ExecFun = aryFuncStore[aryFuns[i]]
			if (ExecFun == nil)then
				print(format("Error: (Never world: %d) Ch�a ��nh ngh� h�m s� %s", SubWorld, aryFuns[i]))
			else
				aryChangeWorldExec[SubWorld][j] =  ExecFun;
				j = j+1;
			end	
		end
	end
	return 1;
end

function OnNewWorldDefault(szParam)
	if (PraseParam(szParam) == 1) then
		for i = 1,getn(aryChangeWorldExec[SubWorld]) do	--ִ�к�����
			aryChangeWorldExec[SubWorld][i](1)
		end
	end
	
	YuXiChangeMapMsg();
	EventSys:GetType("EnterMap"):OnPlayerEvent(SubWorldIdx2ID(SubWorld), PlayerIndex)
end

function OnLeaveWorldDefault(szParam)
	if (PraseParam(szParam) == 1) then
		for i = 1,getn(aryChangeWorldExec[SubWorld]) do	--ִ�к�����
			aryChangeWorldExec[SubWorld][i](0)
		end
	end
	EventSys:GetType("LeaveMap"):OnPlayerEvent(SubWorldIdx2ID(SubWorld), PlayerIndex)
end