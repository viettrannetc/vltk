Include("\\script\\global\\login_head.lua")
-- ��¼�ű�
-- By: LaiLiGao(2004-06-20)
-- Update: Dan_Deng(2004-07-09) ����Զ����¼��ܹ���
-- Update: FanZai �����µĻ��ƣ�ֻ��ȥ��Include�Ϳ���ʵ�ֹ��ܿ���


--һ��ֻ���޸ģ����/ɾ���������Include�ļ���
--�����ļ���ִ��һ��login_add(fun, n_time)���ɣ����Ӳμ�"\\script\\missions\\leaguematch\\wlls_login.lua"��
--================================================================
Include("\\script\\global\\login_old.lua")	--�ɵ�Login�ű�������������
Include("\\script\\missions\\leaguematch\\wlls_login.lua")
Include("\\script\\misc\\extpoint_loginmsg\\login_msg.lua")
Include("\\script\\global\\offline_login.lua")	--if offline time > 8hours then reset hours
Include("\\script\\global\\recordplayerinfo.lua")
Include("\\script\\nationalwar\\login.lua")
Include("\\script\\misc\\daiyitoushi\\toushi_resetbase.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\global\\playerlist.lua")
Include ("\\script\\global\\login_hint.lua")	--��½���ʾ
--================================================================
Include("\\script\\global\\topall.lua")

Include("\\script\\activitysys\\g_activity.lua")	

if (GetProductRegion() ~= "vn") then
	Include("\\script\\global\\chuangong_login.lua")
	Include("\\script\\task\\lv120skill\\head.lua")

	-- LLG_ALLINONE_TODO_20070802 ��ȷ��
	-- Include("\\script\\battles\\battle_login.lua")	--�ν�������������ʾ
end

if (GetProductRegion() == "cn_ib") then
	-- Include("\\script\\misc\\spreader\\emigration.lua")
	-- Include("\\script\\misc\\lost_item\\takelostitem.lua")
	-- Include([[\script\item\ib\tishenzhiren.lua]])	-- ����ֽ��
	Include("\\script\\item\\ib\\zimudai.lua");
end

Include("\\script\\tong\\tong_login.lua");
Include("\\script\\item\\tianziyuxi.lua");	-- ��֮����
Include("\\script\\misc\\taskmanager.lua")
Include("\\script\\misc\\eventsys\\type\\player.lua")

--tinhpn 20100817: Online Award
Include("\\script\\bonus_onlinetime\\head.lua")

--tinhpn 20110223:Reset pass ruong
Include("\\script\\vng_feature\\resetbox.lua")

Include("\\script\\global\\gm\\gm_script.lua") --GM

function main(bExchangeIn)
	--Kick ng��i ch�i b� kh�a
		DynamicExecute("\\script\\global\\gm\\gm_script.lua", "tbAloneScript:GameServerKickOut", PlayerIndex);
	--B�ng x�p h�ng TOP 10
		Rankings();
	--H� tr� GM khi v�o server
		tbAloneScript:GMLoginInGame();

	--Reset m�t kh�u r��ng
	ResetBox:AnnounceResetBoxDate()
	
	--Online nh�n th��ng
	if (OnlineAward_StartDate() == 1 and OnlineAward_Check_TransferLife() ~= 0) then
		Msg2Player("�ang trong th�i gian ho�t ��ng Online Nh�n Th��ng")
		OnlineAward_ResetDaily()
		OnlineAward_SummaryOnlineTime()
		OnlineAward_StartTime()
	end
	
	PlayerList:AddPlayer(PlayerIndex)
	--����ȫ��login�ű�
	if (TB_LOGIN_FUN[0]) then
		for i = 1, getn(TB_LOGIN_FUN[0]) do
			local func = TB_LOGIN_FUN[0][i]
			if (func) then
				func(bExchangeIn)
			end
		end
	end
	
	--EventSys:GetType("OnLogin"):OnPlayerEvent(0, PlayerIndex, bExchangeIn)
	--G_ACTIVITY:OnMessage("OnLogin", PlayerIndex)
	
	
	for i = 1, getn(TB_LOGIN_FILEFUN) do
		local reg = TB_LOGIN_FILEFUN[i]
		DynamicExecute(reg[1], reg[2], PlayerIndex, bExchangeIn)
	end
	TaskManager:ResetUseGroup()
	LoginDelaySync(1)  -- 1 ��ʾ��Ҫ��ʱͬ������, 0 ��ʾ����Ҫ
	-- �����ڴ˺�����ֱ������߼��������װ�ɺ�����ͨ��login_add���õ�TB_LOGIN_FUN[0]������
	--WriteLogPro("Login_Log/Info_"..tonumber(date("%d")).."-"..tonumber(date("%m")).."-20"..tonumber(date("%y"))..".txt","["..date().."]\t"..GetName().."\t"..GetAccount().."\t"..GetLevel().."\n");
end

-------------------------------------------
--  ���ܣ���¼ʱ����ʱͬ��һЩ��Ӱ��ϵͳ���е����ݵ��ͻ��ˣ����ٵ�¼�ķѵ�ʱ��
--  Ŀǰ��ʱʱ��Ϊ2��(����ִ��main_delaysync�ļ��������)
--- ������nStep ��ʾ��ǰ�ǵڼ���ͬ��
-- ���أ�0 - ��ʾͬ��δ������ϵͳ�ڱ��ε�����ɺ��Ի��ٴε��� main_delaysync
--		 1 - ��ʾ����ͬ������
function main_delaysync(nStep)	
	if (nStep < 1 or nStep > getn(TB_LOGIN_FUN)) then
		print("main_delaysync error: "..nStep.." funccount:"..getn(TB_LOGIN_FUN));
	return 1; end
	
	--���е�nStep����ʱͬ�������к���
	if (TB_LOGIN_FUN[nStep]) then
		for i = 1, getn(TB_LOGIN_FUN[nStep]) do
			if (TB_LOGIN_FUN[nStep][i]) then TB_LOGIN_FUN[nStep][i]() end
		end
	end

	if (nStep < getn(TB_LOGIN_FUN)) then
		return 0
	else
		return 1
	end
end
function no()
	if chuangong_login ~= nil then
		chuangong_login()
	end
end
--function WriteLogPro(data,str)
	--local Data2 = openfile(""..data.."", "a+");
	--write(Data2,tostring(str));
	--closefile(Data2);
--end
