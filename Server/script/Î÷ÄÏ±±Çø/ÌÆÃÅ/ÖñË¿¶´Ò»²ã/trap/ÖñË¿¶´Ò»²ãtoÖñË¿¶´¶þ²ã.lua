--西南北区 竹丝洞一层to竹丝洞二层
--Trap ID：西南北区 7
-- Update: Dan_Deng(2003-08-13)

function main(sel)
	UTask_tm = GetTask(2);
	if ((UTask_tm == 60*256+20) and (HaveItem(99) == 1)) then			--任务中并且有钥匙
		DelItem(99)
		SetFightState(1)
		NewWorld(27, 1522, 3205)
		SetTask(2, 60*256+40)
	elseif (UTask_tm > 60*256+20) and (GetFaction() == "tangmen") then		-- 过了这一步的本门弟子可以自由练级
		SetFightState(1)
		NewWorld(27, 1522, 3205)
	else
		Talk(1,"","Kh玭g c� ch譨 kh鉧, b筺 kh玭g th� v祇 t莕g 2 Tr骳 T� ng.")
	end
end;
