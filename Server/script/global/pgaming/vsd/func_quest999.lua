Include("\\script\\global\\pgaming\\vsd\\head.lua");
Include("\\script\\global\\pgaming\\vsd\\killmonster.lua");
Include("\\script\\task\\task_addplayerexp.lua");
Include("\\script\\lib\\awardtemplet.lua");

function AcceptQuest()
	SetTask(VLMC_Task_IsQuest, 1)
	VLMC:AcceptTask(1, 21)
end

function FinishQuest()

	if (VLMC:CheckTaskComplete() ~= 1) then
		return
	end

	 VLMC:CompleteTask()
	 SetTask(VLMC_Task_IsFinishQuest, 1)-- settask da hoan thanh nhiem vu
	 tl_addPlayerExp(20000000); -- add 20 tr EXP co cong don
	tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4095,0,0,0}, nExpiredTime=1440, nBindState=-2}, "test", 1);
	 WriteLog(date("%Y%m%d %H%M%S").."\t".."VLMC"..GetAccount().."\t"..GetName().."\t".."ho�n th�nh chu�i nhi�m v� nh�n nh�n  20000000 �i�m kinh nghi�m"<enter>"Nh�n Kim M� L�nh 6")

end

function ReviewQuest()
		 VLMC:ReviewCurKillMonsterTask()
end
