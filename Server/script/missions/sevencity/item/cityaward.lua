-- 攻城礼包使用脚本
Include("\\script\\lib\\awardtemplet.lua")

--Gi韎 h筺 甶觤 kinh nghi謒 m鏸 ng祔 l? 50tri謚 khi s? d鬾g c竎 lo筰 b秓 rng - Modified by DinhHQ - 20110428
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")

tbAward = {
--	{szName="觤 kinh nghi謒 1", 
--				pFun = function (tbItem, nItemCount, szLogTitle)
--					%tbvng_ChestExpAward:ExpAward(1500000, "C玭g Th祅h L? Bao (m韎)")
--				end,
--				nRate = 60,
--	},
	{szName="觤 kinh nghi謒 1", 
				pFun = function (tbItem, nItemCount, szLogTitle)
					%tbvng_ChestExpAward:ExpAward(2000000, "C玭g Th祅h L? Bao (m韎)")
				end,
				nRate = 1,
	},
	{szName="C萴 Nang Thay фi Tr阨 t", tbProp={6,1,1781,1,0,0}, tbParam={60}, nRate=31.5},
	{szName="Th? Ho祅g Kim", tbProp={6,1,4654,1,0,0}, nRate=2},
	{szName="L謓h B礽 Th駓 T芻", tbProp={6,1,4659,1,0,0}, nRate=5},
	{szName="B秓 Rng V? Danh", tbProp={6,1,4663,1,0,0}, nRate=0.5},
	{szName="B秓 Rng Vinh Di謚", tbProp={6,1,4662,1,0,0}, nRate=0.5},
	{szName="L謓h B礽 Chi課 M?", tbProp={6,1,4664,1,0,0}, nRate=5},
	{szName="Ch譨 Kh鉧 Ho祅g Kim", tbProp={6,1,4650,1,0,0}, nRate=2, nExpiredTime=20160},
	{szName="Thi猲 Vng Ho祅g Kim Trang B? B秓 Rng (Ng蓇 nhi猲)", tbProp={6,1,4640,1,0,0}, nRate=5, nExpiredTime=10080},
	{szName="Ng? чc Ho祅g Kim Trang B? B秓 Rng (Ng蓇 nhi猲)", tbProp={6,1,4641,1,0,0}, nRate=5, nExpiredTime=10080},
	{szName="Th髖 Y猲 Ho祅g Kim Trang B? B秓 Rng (Ng蓇 nhi猲)", tbProp={6,1,4642,1,0,0}, nRate=5, nExpiredTime=10080},
	{szName="C玭 L玭 Ho祅g Kim Trang B? B秓 Rng (Ng蓇 nhi猲)", tbProp={6,1,4643,1,0,0}, nRate=5, nExpiredTime=10080},
	{szName="Thi猲 Nh蒼 Ho祅g Kim Trang B? B秓 Rng (Ng蓇 nhi猲)", tbProp={6,1,4644,1,0,0}, nRate=5, nExpiredTime=10080},
	{szName="Thi誹 L﹎ Ho祅g Kim Trang B? B秓 Rng (Ng蓇 nhi猲)", tbProp={6,1,4645,1,0,0}, nRate=5, nExpiredTime=10080},
	{szName="Л阯g M玭 Ho祅g Kim Trang B? B秓 Rng (Ng蓇 nhi猲)", tbProp={6,1,4646,1,0,0}, nRate=5, nExpiredTime=10080},
	{szName="Nga Mi Ho祅g Kim Trang B? B秓 Rng (Ng蓇 nhi猲)", tbProp={6,1,4647,1,0,0}, nRate=5, nExpiredTime=10080},
	{szName="V? ng Ho祅g Kim Trang B? B秓 Rng (Ng蓇 nhi猲)", tbProp={6,1,4648,1,0,0}, nRate=5, nExpiredTime=10080},
	{szName="C竔 Bang Ho祅g Kim Trang B? B秓 Rng (Ng蓇 nhi猲)", tbProp={6,1,4649,1,0,0}, nRate=5, nExpiredTime=10080},
	{szName="M? B礽-Si猽 Quang", tbProp={6,1,3483,1,0,0}, nRate=0.5, nExpiredTime=43200},
	{szName="M? b礽 - B玭 Ti猽", tbProp={6,1,2333,1,0,0}, nRate=1, nExpiredTime=43200},
	{szName="M? b礽 - Phi猲 V?", tbProp={6,1,2334,1,0,0}, nRate=1, nExpiredTime=43200},
	
--Gi韎 h筺 甶觤 kinh nghi謒 m鏸 ng祔 l? 50tri謚 khi s? d鬾g c竎 lo筰 b秓 rng - Modified by DinhHQ - 20110428
--	{nExp = 1500000,  nRate = 48.02},
--	{nExp = 2000000,  nRate = 30},
--	{nExp = 5000000,  nRate = 5},
--	{nExp = 10000000, nRate	= 3},
--	{nExp = 20000000, nRate	= 2},
--	{nExp = 50000000, nRate	= 1},	
}

function main(nItemIndex)
	if (CalcFreeItemCellCount() < 1) then
		Say("H祅h trang 輙 nh蕋 ph秈 c? <color=red>1<color> ? tr鑞g m韎 nh薾 頲 ph莕 thng.")
		return 1
	end
	tbAwardTemplet:Give(tbAward, 1, {"SEVENCITY", "UseCityAward"})
	return 0
end

function test()
	local rate = 0
	for i = 1, getn(tbAward) do
		rate = rate + tbAward[i].nRate
	end
	if (floor(rate) ~= 100) then
		error(format("total rate is wrong", rate))
	end
end

test()
