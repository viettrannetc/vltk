-- 丐帮 执法长老孟苍浪 20级任务
-- by：Dan_Deng(2003-07-28)

Include("\\script\\global\\skills_table.lua")

function main()
	UTask_gb = GetTask(8);
	if (GetSeries() == 3) and (GetFaction() == "gaibang") then
		if (UTask_gb == 20*256+20) then			--带着20级任务
			Talk(2,"L20_prise","Ta v鮝 d箉 cho M筺h Vi詎 T礽 m閠 b礽 h鋍, c秐h c竜 h緉 sau n祔 kh玭g 頲 鴆 hi誴 huynh  trong bang, n誹 nh� ta c� l祄 sai, xin M筺h trng l穙 tr竎h ph箃!","Ngi l祄 r蕋 ng! Ch� t筰 ta thng ng祔 qu� nu玭g chi襲 a ch竨 n祔, l莕 n祔 ngi cho n� m閠 b礽 h鋍. R蕋 t鑤! Ta c玭g t� ph﹏ minh. L莕 n祔 phogn ngi l�  t� c蕄 20!")
		else
			Talk(1,"","M筺h Vi詎 t礽 ng祔 c祅g k猽 ng筼, ch� t筰 v� ta  qu� c璶g chi襲 n�!")
		end
	else
		Talk(1,"","C竔 Bang ch髇g ta i ch v韎 Kim Qu鑓, Kim Qu鑓 xem ch髇g ta nh� c竔 gai trong m総, to祅 l鵦 gi誸  t� C竔 Bang.")
	end
end;

function L20_prise()
	SetTask(8,30*256)
	SetRank(39)
--	AddMagic(129)
	add_gb(30)			-- 调用skills_table.lua中的函数，参数为学到多少级技能。
	Msg2Player("Ch骳 m鮪g B筺!. Х 頲 th╪g l�: C竔 Bang Ch蕄 B竧  t�. H鋍 頲H鉧 hi觤 Vi Di ")
	AddNote("Ch骳 m鮪g B筺!. Х 頲 th╪g l�: C竔 Bang  Ch蕄 B竧  t�. H鋍 頲 H鉧 Hi觤 Vi Di ")
end
