--description: 西南北区 成都府 铁匠铺老板 峨嵋派10级任务
--author: yuanlan	
--date: 2003/5/24
-- Update: Dan_Deng(2003-08-12)

Include("\\script\\global\\global_tiejiang.lua")

TIEJIANG_DIALOG = "<dec><npc>C� h鴑g th� n ta l祄   kh玭g? C� ch� ╪ ch� � ng ho祅g!"

function main(sel)
	UTask_em = GetTask(1)
	if ((UTask_em == 10*256+20) and (HaveItem(18) == 1) and (HaveItem(19) == 1)) then
		Talk(5, "", "Чi ca! C� th� gi髉 ta h祅 l筰 hai m秐h gng ng n祔 kh玭g?", "N誹 i cho ngi kh竎 mu鑞 kh玦 ph鬰 gng ng th� kh� nh� l猲 tr阨, nh璶g i v韎 ta th� c� m閠 b� truy襫  v� l筰, ngi t譵 ng ngi r錳 , nh璶g m�...", "C莕 bao nhi猽 ti襫  kh玦 ph鬰 gng ng?", "Ch� c莕 ngi gi髉 ta t譵 m閠 lo筰 kho竛g c� t猲 Lng Ng﹏ Kho竛g, ta s� gi髉 ngi v� l筰 gng ng, nghe n鉯 kho竛g n祔 c� � khu r鮪g b猲 Th祅h T﹜, nh璶g v� n琲  c� nhi襲 d� th� n猲 kh玭g ai d竚 lui t韎.","Л頲 r錳, ta  hai m秐h gng � y, l藀 t鴆 甶 t譵 Lng Ng﹏ Kho竛g.")
		DelItem(18)
		DelItem(19)
		SetTask(1, 10*256+40)
		AddNote("дn Th祅h Й t譵 頲 th� r蘮, bi誸 頲 c莕 c� Lng Ng﹏ Kho竛g  v� gng ng")
		Msg2Player("дn Th祅h Й t譵 頲 th� r蘮, bi誸 頲 c莕 c� Lng Ng﹏ Kho竛g  v� gng ng")
	elseif (UTask_em == 10*256+40) then
		if (HaveItem(118) == 1) then
			Talk(1, "", "T鑤! Х c� Lng Ng﹏ Kho竛g, ta s� gi髉 ngi v� l筰 gng ng.")
			DelItem(118)
			AddEventItem(20)
			SetTask(1, 10*256+60)
			AddNote("Giao Lng Ng﹏ Kho竛g cho th� r蘮, l蕐 頲 gng ng ho祅 ch豱h")
			Msg2Player("Nh薾 頲 頲 gng ng ho祅 ch豱h")
		else
			tiejiang_city("<dec><npc>Nghe n鉯 khu r鮪g � ph輆 t﹜ th祅h c� Lng Ng﹏ Kho竛g, kh玭g c� Lng Kho竛g th筩h th� kh玭g th� s鯽 ch鱝 gng b籲g ng 頲.");
		end
	elseif ((UTask_em == 10*256+60) and (HaveItem(20) == 0)) then		-- 任务中，铜镜丢了
		AddEventItem(20)
		Msg2Player("C� 頲 gng ng  v� xong.")
		Talk(1,"","Gng ng ngi  y kh玭g l蕐 n鱝 礹?")
	else
		tiejiang_city(TIEJIANG_DIALOG);
	end
end;

function yes()
Sale(13)  			--弹出交易框
end;

