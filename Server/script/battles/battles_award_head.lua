--宋金结束获得奖励
--edit by 小浪多多
--2007.12.10
--个人获得奖励
--所有玩家,包括胜负平 battles_award_all_singleplayer(玩家index,结束获得的个人总积分,宋金级别[1,初级,2中级,3高级])
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\vonghoa\\item\\head.lua");
Include("\\script\\baoruongthanbi\\head.lua");
--[DinhHQ]
--[20101216]:event ngu thai ket tinh
Include("\\script\\vng_event\\ngusackettinh\\script\\nskt_SongJin.lua");
--new lunar year 2011
Include("\\script\\vng_event\\LunarYear2011\\mission_award.lua")
--[20110225]: 8/3/2011
Include("\\script\\vng_event\\20110225_8_thang_3\\mission_award.lua")


--local tbItem ={szName="� Kim B秓 Rng", tbProp={6, 1, 2192, 1, 0, 0}, nCount = 20, nExpiredTime = 20100125};

function battles_award_all_singleplayer(nplayerindex,nplayer_point,ngame_level)
	if ngame_level == 3 or ngame_level == 2 or ngame_level == 1 then
		if nplayer_point >= 500 then
			local noldplayindex = PlayerIndex
			PlayerIndex = nplayerindex
			battles_award_singleplayer_AddItem(nplayer_point)
			PlayerIndex = noldplayindex
			return
		end
	end
end

function battles_award_singleplayer_AddItem(nplayer_point)
		if nplayer_point < 500 then
		return
	end
	local TAB_KML = {
						{szName="<color=pink>Kim M� L謓h", tbProp={6,1,4094}, nCount = 1, nExpiredTime = 1440, nBindState = -2},
				}
	
	for i = 1,getn(TAB_KML) do
		tbAwardTemplet:GiveAwardByList(TAB_KML[i], "Ph莕 thng Kim M� L謓h");
	end
end