--攻城战 中转地图to城战地图（守城方）
--Trap ID：攻城战

Include("\\script\\missions\\citywar_city\\head.lua")

function main()
	ft = GetFightState();
	if (ft == 0) then 
		SetPos(1334,2939)
		SetFightState(1)
		bt_RankEffect(BT_GetData(PL_CURRANK))
	else
		if (GetCurCamp() ~= 1) then
			Msg2Player("Kh玭g th? 甶 頲, n誹 甶 s? n n琲 ph鬰 k輈h c馻 ch qu﹏. ");
			SetPos(1334,2939)
		else
			SetPos(1300,2929)
			SetFightState(0)
			AddStation(10)			-- 记录角色曾经到过巴陵县
			SetProtectTime(18*5)
			AddSkillState(963, 1, 0, 18*5)  
		end;
	end;
end;
