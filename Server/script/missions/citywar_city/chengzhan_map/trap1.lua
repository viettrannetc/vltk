--攻城战 中转地图to城战地图（守城方）
--Trap ID：攻城战

function main()
	if (GetCurCamp() ~= 1) then 
		Msg2Player("Kh玭g th? 甶 頲, n誹 甶 s? n n琲 ph鬰 k輈h c馻 ch qu﹏. ");
	else
		SetCurCamp(GetCamp())
		SetFightState(0)
		SetLogoutRV(0)
		NewWorld(222, 1613, 3185)
		AddStation(10)			-- 记录角色曾经到过巴陵县
		SetProtectTime(18*5)
		AddSkillState(963, 1, 0, 18*5) 
	end;
end;
