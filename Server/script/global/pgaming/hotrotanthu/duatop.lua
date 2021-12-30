--- �ua top by Nam Cung Nhat Thien---

Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\lib\\log.lua")
IncludeLib("SETTING")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")


function duatop()
	dofile("script/global/namcung/hotrotanthu/duatop.lua");	
	local szTitle = "<color=red>H� tr� GM<color>.<enter><color=yellow>V� L�m Truy�n K�<color><enter><color=red>T�nh Trong Thi�n H�<color>.<enter>Hoan ngh�nh c�c anh h�ng h�o ki�t... !"
		local tbOpt =
	{
		--{"Ph�n th��ng 10 Cao th� SERVER", top10},	
		{"Nh�n th��ng c�p 20", levl20},
		{"Nh�n th��ng c�p 40", levl40},
		{"Nh�n th��ng c�p 60", levl60},
		--{"Nh�n th��ng c�p 80", levl80},
		--{"Nh�n th��ng c�p 100", levl100},
		--{"Nh�n th��ng c�p 120", levl120},
		--{"Nh�n th��ng c�p 150", levl150},
		--{"Nh�n th��ng c�p 200", levl200},
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)					
end

function top10()
		dofile("script/global/pgaming/hotrotanthu/duatop.lua");	
if CalcFreeItemCellCount() < 10 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y m�.",0);
		return 1;
end
AskClientForString("checkcode", "", 1, 100, "Xin nh�p code");
end
tbitem  =
	{
		--[1]	=AddGoldItem(0, 143) 			-- B� trang b� ��ng s�t ( May m�n 1)
		--[2]	=AddGoldItem(0, 144) 			-- B� trang b� ��ng s�t ( May m�n 2)
		--[3]	=AddGoldItem(0, 145) 			-- B� trang b� ��ng s�t ( May m�n 3)
		--[4]	=AddGoldItem(0, 146) 			-- B� trang b� ��ng s�t ( May m�n 4)
		--[5]	=Earn(100000000), 			--10k v�ng
		--[6]	=AddStackItem(1000,4,417,1,1,0,0,0)	-- nhan 1000 tien dong
		--[7]	=AddGoldItem(0, 428)		--c�n kh�n gi�i ch�
		--[8]	=AddGoldItem(0, 428)		--c�n kh�n gi�i ch�
		--[9]�	={szName="H�n Huy�t Long C�u", tbProp={0,10,18,1,0,0}, nWidth=2, nHeigth=3},
	
	}
function checkcode(strings)
	if GetTask(3001)==1 then
		Talk(1, "", "B�n �� nh�n r�i m� ");
		return
	end
	if strings=="TOPALS"then
		tbAwardTemplet:GiveAwardByList(tbitem, "Ph�n th��ng top 10");
		SetTask(3001,1)
		str = "Tin ch�n ��ng giang h�, Cao th�<color=red>"..GetName().."<color> Ch�m ch� luy�n t�p �� nh�n ���c <color=green>ph�n th��ng Th�p ��i Cao Th�<color> x�ng b� thi�n h� kh�ng ��ch th� !."
		AddGlobalCountNews(str, 1)
		Msg2Player( "Ch�c m�ng b�n �� nh�n ���c ph�n th��ng Th�p ��i Cao Th�" );
	else
		Talk(1, "", "H�y ch�m ch� luy�n t�p �� nh�n ���c b�o v�t x�ng b� v� l�m");
	end
end

function levl20()
		dofile("script/hotrotanthu/duatop.lua");	
	if GetTask(3002)==1 then
		Talk(1, "", "Ng��i �� nh�n r�i m� c�n mu�n nh�n th�m � ! mau �i �i ! ");
		return
	end

	if GetLevel() < 20 then
		level = 20 - GetLevel()
			Talk(1, "", "��ng c�p c�a ng��i qu� th�p ��ng l�m phi�n ta ! mau �i t�p luy�n th�m <color=Green>"..level .." C�p<color> n�a r�i quay l�i !");
	else
		AddGoldItem(0,184)
		AddGoldItem(0,179)
		Msg2Player("B�n nh�n ���c 2 m�n Trang B� Kim Phong!")	
		SetTask(3002,1)
end
end

function levl40()
		dofile("script/hotrotanthu/duatop.lua");	
	if GetTask(3002)==1 then
		if GetTask(3003)==1 then
			Talk(1, "", "Ng��i �� nh�n r�i m� c�n mu�n nh�n th�m � ! mau �i �i ! ");
			return
		end
	
			if GetLevel() < 40 then
				level = 40 -GetLevel()
				Talk(1, "", "��ng c�p c�a ng��i qu� th�p ��ng l�m phi�n ta ! mau �i t�p luy�n th�m <color=Green>"..level .." C�p<color> n�a r�i quay l�i !");
			else
				AddGoldItem(0,177)
				AddGoldItem(0,178)
				AddGoldItem(0,180)
				AddGoldItem(0,183)	
				Msg2Player("B�n nh�n ���c 4 m�n Trang B� Kim Phong!")	
				SetTask(3003,1)
		end
	else
		Talk(1, "", "Ph�n th��ng cho ��ng c�p th�p c�n ch�a l�y ���c th� g�p ta l�m g� ? Mau �i t�p luy�n th�m r�i ��n ��y t�m ta ! ");
	end	
end	

function levl60()
		dofile("script/hotrotanthu/duatop.lua");	
	if GetTask(3003)==1 then
		if GetTask(3004)==1 then
			Talk(1, "", "Ng��i �� nh�n r�i m� c�n mu�n nh�n th�m � ! mau �i �i ! ");
			return
		end
	
			if GetLevel() < 60 then
				level = 60 -GetLevel()
					Talk(1, "", "��ng c�p c�a ng��i qu� th�p ��ng l�m phi�n ta ! mau �i t�p luy�n th�m <color=Green>"..level .." C�p<color> n�a r�i quay l�i !");
			else
				AddGoldItem(0,181)
				AddGoldItem(0,182)
				AddGoldItem(0,185)
				local tbAwardItem = {tbProp={0,10,2,1,5,0}}
				tbAwardTemplet:GiveAwardByList(tbAwardItem, "Nh�n ���c Ng�a c�p 60!");	
				Msg2Player("B�n nh�n ���c 4 m�n Trang B� Kim Phong!")	
				SetTask(3004,1)

		end
	else
		Talk(1, "", "Ph�n th��ng cho ��ng c�p th�p c�n ch�a l�y ���c th� g�p ta l�m g� ? Mau �i t�p luy�n th�m r�i ��n ��y t�m ta ! ");
	end
end

function levl80()
		dofile("script/hotrotanthu/duatop.lua");	
	if GetTask(3004)==1 then
		if GetTask(3005)==1 then
			Talk(1, "", "Ng��i �� nh�n r�i m� c�n mu�n nh�n th�m � ! mau �i �i ! ");
			return
		end
	
			if GetLevel() < 80 then
				level = 80 -GetLevel()
				Talk(1, "", "��ng c�p c�a ng��i qu� th�p ��ng l�m phi�n ta ! mau �i t�p luy�n th�m <color=Green>"..level .." C�p<color> n�a r�i quay l�i !");
			else
				AddGoldItem(0,159)
				AddGoldItem(0,160)
				AddGoldItem(0,161)
				AddGoldItem(0,162)
				AddGoldItem(0,163)
				AddItem(0,10,5,5,0,0)
				Msg2Player("B�n nh�n ���c Chi�u D� Ng�c S� T�")
				Msg2Player("B�n nh�n ���c B� Trang B� ��nh Qu�c !")	
				SetTask(3005,1)

		end
	else
		Talk(1, "", "Ph�n th��ng cho ��ng c�p th�p c�n ch�a l�y ���c th� g�p ta l�m g� ? Mau �i t�p luy�n th�m r�i ��n ��y t�m ta ! ");
	end
end

function levl100()
		dofile("script/hotrotanthu/duatop.lua");	
	if GetTask(3005)==1 then
		if GetTask(3006)==1 then
			Talk(1, "", "Ng��i �� nh�n r�i m� c�n mu�n nh�n th�m � ! mau �i �i ! ");
			return
		end
	
			if GetLevel() < 100 then
				level = 100 -GetLevel()
				Talk(1, "", "��ng c�p c�a ng��i qu� th�p ��ng l�m phi�n ta ! mau �i t�p luy�n th�m <color=Green>"..level .." C�p<color> n�a r�i quay l�i !");
			else
				for i=164,167 do
				local ItemIdx=AddGoldItem(0, i);		
			end
				Msg2Player("B�n nh�n ���c B� Trang B� An Bang !")	
				SetTask(3006,1)
		end
	else
		Talk(1, "", "Ph�n th��ng cho ��ng c�p th�p c�n ch�a l�y ���c th� g�p ta l�m g� ? Mau �i t�p luy�n th�m r�i ��n ��y t�m ta ! ");
	end
end

function levl120()
		Talk(1, "", "Ph�n th��ng cho ��ng c�p th�p c�n ch�a l�y ���c th� g�p ta l�m g� ? Mau �i t�p luy�n th�m r�i ��n ��y t�m ta ! ");
end

function levl150()
		Talk(1, "", "Ph�n th��ng cho ��ng c�p th�p c�n ch�a l�y ���c th� g�p ta l�m g� ? Mau �i t�p luy�n th�m r�i ��n ��y t�m ta ! ");
end

function levl200()
		Talk(1, "", "Ph�n th��ng cho ��ng c�p th�p c�n ch�a l�y ���c th� g�p ta l�m g� ? Mau �i t�p luy�n th�m r�i ��n ��y t�m ta ! ");
end




