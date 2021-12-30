-------------------------------------------------------------------------
-- FileName		:	posthouse.lua
-- Author		:	xiaoyang
-- CreateTime	:	2005-04-05 16:28:14
-- Desc			:	送信任务车夫脚本
-------------------------------------------------------------------------
Include("\\script\\task\\tollgate\\messenger\\posthouse.lua") --包含玩家任务数据表格的赖
Include("\\script\\task\\newtask\\newtask_head.lua") --调用 nt_getTask 同步变量到客户端的赖
Include("\\script\\task\\tollgate\\messenger\\playerdead_tollgate.lua") --包含玩家死亡脚本
Include("\\script\\task\\tollgate\\messenger\\messenger_timeer.lua")    --调用计时器

function messenger_wagoner()
	Uworld1201 = nt_getTask(1201)
	Uworld1202 = nt_getTask(1202)
	Uworld1203 = nt_getTask(1203)
	Uworld1204 = nt_getTask(1204)	
	if ( messenger_gettime() == 10 ) then
		Msg2Player("Xin l鏸, nhi謒 v� t輓 s� c馻 ng礽  qu� h筺.")
		return
	end

	if ( Uworld1201 ~= 0 ) then
		if ( Uworld1201 == 10 ) then
			Say("Ti課 v祇 b秐  sao ?",2,"Mu鑞/messenger_flywagoner","Kh玭g/no")
		elseif ( Uworld1201 == 30 ) then
			for i=1,getn(citygo) do 
				if ( Uworld1204 == citygo[i][2]) then
					Msg2Player("Th藅 xin l鏸, ngi c遪 c� nhi謒 v� t輓 s� ch璦 ho祅 th祅h, xin m阨 甶 n "..citygo[i][4].." D辌h Tr筸  tho竧 nhi謒 v�")
				end
			end
		end
	elseif ( Uworld1202 ~= 0 ) then
		if ( Uworld1202 == 10 ) then
			Say("B筺 mu鑞 v祇 khu v鵦",2,"Mu鑞/messenger_templewagoner","Kh玭g/no")
		elseif ( Uworld1202 == 30 ) then
			for i=1,getn(citygo) do   --表格应该有所不同？？
				if ( Uworld1204 == citygo[i][2]) then   --？？
					Msg2Player("Th藅 xin l鏸, ngi c遪 c� nhi謒 v� t輓 s� ch璦 ho祅 th祅h, xin m阨 甶 n "..citygo[i][4].." D辌h Tr筸  tho竧 nhi謒 v�")
				end
			end
		end
	elseif ( Uworld1203 ~= 0 ) then
		if ( Uworld1203 == 10 or Uworld1203 == 20 or Uworld1203 == 21 ) then
			Say("Ti課 v祇 b秐  sao ?",2,"Mu鑞/messenger_storewagoner","Kh玭g/no")
		elseif ( Uworld1203 == 30 ) then
			for i=1,getn(citygo) do   --表格应该有所不同？？
				if ( Uworld1204 == citygo[i][2]) then   --？？
					Msg2Player("Th藅 xin l鏸, ngi t輓 cho nhi謒 v�  ho祅 th祅h, nh璶g l� c遪 ch璦 giao v�, xin ngi giao v� nhi謒 v�"..citygo[i][4].."� d辌h tr筸 tho竧 nhi謒 v�") --？？
				end
			end
		end
	else
		Msg2Player("Th藅 xin l鏸, ngi nh� c� c遪 ch璦 t 頲 a t輓 s� nhi謒 v� , xin m阨 t譵 d辌h quan ti誴 nh薾 v�.")
	end
end
function messenger_flywagoner()
	SetRevPos(80,40)
	if ( GetLevel() >=60 ) and ( GetLevel() <= 89 ) then
		NewWorld(387,1582,3137)
	elseif ( GetLevel() >=90 ) and ( GetLevel() <= 119 ) then
		NewWorld(388,1582,3137)
	elseif ( GetLevel() >= 120 ) then
		NewWorld(389,1582,3137)
	end
end
function messenger_templewagoner()
	SetRevPos(176,70)
	if ( GetLevel() >=60 ) and ( GetLevel() <= 89 ) then
		NewWorld(390,1312,3198)
	elseif ( GetLevel() >=90 ) and ( GetLevel() <= 119 ) then
		NewWorld(391,1312,3198)
	elseif ( GetLevel() >= 120 ) then
		NewWorld(392,1312,3198)
	end
end

function messenger_storewagoner()
	--SetRevPos(11,10)
	
	--NewWorld(395,1417,3207)
	
	if ( GetLevel() >=60 ) and ( GetLevel() <= 89 ) then
		NewWorld(393,1417,3207)
	elseif ( GetLevel() >=90 ) and ( GetLevel() <= 119 ) then
		NewWorld(394,1417,3207)
	elseif ( GetLevel() >= 120 ) then
		NewWorld(395,1417,3207)
	end

end
