-- 见性峰山洞 宝箱 昆仑40级任务
-- by：Dan_Deng(2003-07-30)

function main()
	UTask_kl = GetTask(9)
	if ((UTask_kl == 40*256+20) and (HaveItem(212) == 1)) then		-- 钥匙应使用ID号
		Msg2Player("B筺 th� d飊gch譨 kh鉧m� chi誧 rng ")
		DelItem(212)
		AddEventItem(9)
		AddNote("B筺 nh薾 頲 Huy誸 H錸 Th莕 Ki誱 ")
		Msg2Player("B筺 nh薾 頲 Huy誸 H錸 Th莕 Ki誱 ")
	else
		Talk(1,"","B秓 rng n祔  kh鉧 r錳")
	end
end;
