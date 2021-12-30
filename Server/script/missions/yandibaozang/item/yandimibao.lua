-- ====================== 文件信息 ======================

-- 剑侠情缘网络版越南收费版 - 战胜礼包
-- 文件名　：zhansheng_libao.lua
-- 创建者　：子非魚
-- 创建时间：2009-04-14 14:08:44

-- ======================================================

Include("\\script\\lib\\pay.lua");
Include("\\script\\lib\\awardtemplet.lua");
IncludeLib("ITEM")

SONGJIN_LIBAO_TASK_NO = 2619
SONGJIN_LIBAO_LIMIT   = 50


if not TB_QIANQIU_YINGLIE0904 then
	Include("\\script\\event\\jiefang_jieri\\200904\\qianqiu_yinglie\\head.lua");
end


function main(nItemIdx)
	local n_item_date = tonumber(FormatTime2String("%Y%m%d%H%M",ITEM_GetExpiredTime(nItemIdx)));
	local n_cur_date = tonumber(GetLocalDate("%Y%m%d%H%M"));
	if n_cur_date > n_item_date then
		Msg2Player("V藅 ph萴 qu� h筺 s� d鬾g, t� ng m蕋 甶.")
		return 0;
	end
	
--	TB_QIANQIU_YINGLIE0904:reset_task()
	
	if IsCharged() == 0 or GetLevel() < 50 then
		Say("Ch� c� ngi ch琲 c蕄 tr猲 50  n筽 th� m韎 c� th� s� d鬾g.", 0)
		return 1;
	end
	
	if (CalcFreeItemCellCount() < 5) then
		Say(format("в tr竛h m蕋 m竧 t礽 s秐, h穣 b秓 m h祅h trang c遪  %d � tr鑞g.", 5), 0);
		return 1;
	end
	
	local tb_award = {
--		{szName = "Khi猽 chi課 L� bao", tbProp = {6,1,2006,1,1,0}, nRate = 50},
--		{szName = "Th莕 b� kho竛g th筩h", tbProp = {6,1,398,1,0,0}, nRate = 0.05},
--		{szName = "T� Th駓 Tinh", tbProp = {4,239,1,1,1,0}, nRate = 0.2},
--		{szName = "L鬰 Th駓 Tinh", tbProp = {4,240,1,1,1,0}, nRate = 0.2},
--		{szName = "Lam Th駓 Tinh", tbProp = {4,238,1,1,1,0}, nRate = 0.2},
--		{szName = "Tinh H錸g B秓 Th筩h", tbProp = {4,353,1,1,1,0}, nRate = 0.5},
--		{szName = "B筩h Ch﹏ Кn", tbProp = {6,1,1676,1,0,0}, nRate = 0.03, tbParam = {500000000}},
--		{szName = "Huy誸 Ch﹏ Кn", tbProp = {6,1,1677,1,0,0}, nRate = 0.02, tbParam = {1000000000}},
--		{szName = "Huy襫 Ch﹏ Кn", tbProp = {6,1,1678,1,0,0}, nRate = 0.01, tbParam = {1500000000}},
--		{szName = "An Bang B╪g Tinh Th筩h H筺g Li猲", nQuality=1, tbProp = {0,164}, nRate = 0.01},
--		{szName = "An Bang K� Huy誸 Th筩h Gi韎 Ch� ", nQuality=1, tbProp = {0,167}, nRate = 3},
--		{szName = "An Bang C骳 Hoa Th筩h Ch� ho祅", nQuality=1, tbProp = {0,165}, nRate = 3},
--		{szName = "An Bang 襫 Ho祅g Th筩h Ng鋍 B閕", nQuality=1, tbProp = {0,166}, nRate = 3},
		{szName = "K� Nghi謕 Kim B礽", nQuality=1, tbProp = {6,1,2075,1,1,0}, nRate = 3},
		{szName = "M閚g Long Kim B礽", nQuality=1, tbProp = {6,1,2076,1,1,0},nRate = 3},
		{szName = "Minh 秓 Kim B礽", nQuality=1, tbProp = {6,1,2077,1,1,0}, nRate = 3},
		{szName = "B輈h H秈 Kim B礽", nQuality=1, tbProp = {6,1,2080,1,1,0}, nRate = 3},
		{szName = "Ma Th� Kim B礽", nQuality=1, tbProp = {6,1,2082,1,1,0}, nRate = 3},
		{szName = "U lung kim b礽", nQuality=1, tbProp = {6,1,2204,1,1,0}, nRate = 3},
		{szName = "Ma s竧 kim b礽", nQuality=1, tbProp = {6,1,2205,1,1,0}, nRate = 3},	
		{szName = "мch kh竔 kim b礽", nQuality=1, tbProp = {6,1,2206,1,1,0}, nRate = 3},	
		{szName = "H竚 Thi猲 Kim B礽", nQuality=1, tbProp = {6,1,2237,1,1,0}, nRate = 3},
		{szName = "Thi猲 Quang Kim B礽", nQuality=1, tbProp = {6,1,2238,1,1,0}, nRate = 3},
		{szName = "V� Ma Kim B礽", nQuality=1, tbProp = {6,1,2240,1,1,0}, nRate = 3},
		{szName = "L╪g Nh筩 Kim B礽", nQuality=1, tbProp = {6,1,2241,1,1,0}, nRate = 3},	
		{szName = "Sng Tinh Kim B礽", nQuality=1, tbProp = {6,1,2242,1,1,0}, nRate = 3},	
		{szName = "V� Danh Kim B礽", nQuality=1, tbProp = {6,1,4320,1,1,0}, nRate = 3},
		{szName = "Vinh Di謚 Kim B礽", nQuality=1, tbProp = {6,1,4321,1,1,0}, nRate = 3},
		{szName = "T� Kh玭g Kim B礽", nQuality=1, tbProp = {6,1,4309,1,1,0}, nRate = 3},
		{szName = "Ph鬰 Ma Kim B礽", nQuality=1, tbProp = {6,1,4310,1,1,0}, nRate = 3},	
		{szName = "Ng� Long Kim B礽", nQuality=1, tbProp = {6,1,4311,1,1,0}, nRate = 3},	
		{szName = "V� Gian Kim B礽", nQuality=1, tbProp = {6,1,4312,1,1,0}, nRate = 3},
		{szName = "T� Ho祅g Kim B礽", nQuality=1, tbProp = {6,1,4313,1,1,0}, nRate = 3},
		{szName = "B╪g H祅 Kim B礽", nQuality=1, tbProp = {6,1,4314,1,1,0}, nRate = 3},
		{szName = "S﹎ Ho祅g Kim B礽", nQuality=1, tbProp = {6,1,4315,1,1,0}, nRate = 3},	
		{szName = "уng C鮱 Kim B礽", nQuality=1, tbProp = {6,1,4316,1,1,0}, nRate = 3},	
		{szName = "C藀 Phong Kim B礽", nQuality=1, tbProp = {6,1,4317,1,1,0}, nRate = 3},
		{szName = "L玦 Khung Kim B礽", nQuality=1, tbProp = {6,1,4318,1,1,0}, nRate = 3},
		{szName = "Sng Tinh Kim B礽", nQuality=1, tbProp = {6,1,2242,1,1,0}, nRate = 3},
		{szName = "Sng Tinh Kim B礽", nQuality=1, tbProp = {6,1,2242,1,1,0}, nRate = 3},		
		{szName = "Hai tr╩ v筺 甶觤 kinh nghi謒", nExp = 2000000, nRate = 4},
		{szName = "Hai tr╩ v筺 甶觤 kinh nghi謒", nExp = 3000000, nRate = 3},
		{szName = "Hai tr╩ v筺 甶觤 kinh nghi謒", nExp = 4000000, nRate = 3},
		{szName = "Hai tr╩ v筺 甶觤 kinh nghi謒", nExp = 5000000, nRate = 3},
		{szName = "Hai tr╩ v筺 甶觤 kinh nghi謒", nExp = 6000000, nRate = 3},
		{szName = "Hai tr╩ v筺 甶觤 kinh nghi謒", nExp = 7000000, nRate = 3},
		{szName = "Hai tr╩ v筺 甶觤 kinh nghi謒", nExp = 8000000, nRate = 3},
	
	}
	
	local rtotal = 10000000
	local rcur=random(1,rtotal);
	local rstep=0;
	local n_award_idx = 0;
	for i=1,getn(tb_award) do
		rstep=rstep+floor(tb_award[i].nRate*rtotal/100);
		if(rcur <= rstep) then
			n_award_idx = i;
			break
		end
	end
	
	if (n_award_idx == 0 or n_award_idx > getn(tb_award)) then
		return 1;
	end
	
	-- 限制每天使用20个
	local ndate = tonumber(GetLocalDate("%m%d"));
	local nUseTimes = GetBitTask(SONGJIN_LIBAO_TASK_NO, 0, 8) -- 使用次数
	local nLastUseDate = GetBitTask(SONGJIN_LIBAO_TASK_NO, 8, 24) -- 上次使用时间
	
	if( nLastUseDate ~= ndate) then
		nLastUseDate =  ndate;
		nUseTimes = 0;
	end
	
	if (nUseTimes >= SONGJIN_LIBAO_LIMIT) then
		Say(format("M閠 ng祔 ch� c� th� s� d鬾g %d T鑞g Kim l� bao", SONGJIN_LIBAO_LIMIT), 0)
		return 1;
	end
		
	nUseTimes = nUseTimes + 1;
	SetBitTask(SONGJIN_LIBAO_TASK_NO, 0, 8,  nUseTimes);
	SetBitTask(SONGJIN_LIBAO_TASK_NO, 8, 24, nLastUseDate);
	
	tbAwardTemplet:GiveAwardByList(tb_award[n_award_idx], "T鑞g Kim l� bao");
end
