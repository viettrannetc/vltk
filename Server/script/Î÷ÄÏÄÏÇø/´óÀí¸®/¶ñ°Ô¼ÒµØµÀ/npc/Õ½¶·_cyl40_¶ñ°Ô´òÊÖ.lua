-- 大理城恶霸秘道 战斗NPC ？？？（翠烟门40级任务）
-- by：Dan_Deng(2003-07-26)

function OnDeath()
	UTask_cy = GetTask(6)
	if (UTask_cy == 40*256+10) and (random(0,100) < 40) then				-- 40%的机率成功
		SetTask(6,40*256+20)
		AddNote("Gi秈 c鴘 nh鱪g thi誹 n� b� b総 trong m藅 o, 頲 bi誸 t猲 竎 b�  mang nh鱪g ngi con g竔 kh竎 甶 觤 Thng s琻 r錳. ")
		Msg2Player("Цnh b筰 tr� th� c馻 t猲 竎 b�, gi秈 c鴘 nh鱪g thi誹 n� b� b総 trong m藅 o, 頲 bi誸 t猲 竎 b�  mang nh鱪g ngi con g竔 kh竎 甶 觤 Thng s琻 r錳. ")
	end
end;
