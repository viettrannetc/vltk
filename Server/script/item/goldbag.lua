Include("\\script\\global\\login_head.lua")
function main(nItemIdx)
dofile("script/item/goldbag.lua")
local nDate = tonumber(GetLocalDate("%d"))
if ( GetTask(DAY) ~= nDate ) then
		SetTask(DAY, nDate);
		SetTask(352,0);
	if (GetTask(352) <= 20) then
local k = random(1,120)
SetTask(352,GetTask(352) + 1)
		if (k <= 6) then 
	AddStackItem(1,4,417,1,1,0,0,0)
	AddGlobalNews("��i hi�p <color=green>"..GetName().."<color> m� t�i Ho�ng Kim , may m�n nh�n ���c <color=gold>Ti�n ��ng<color> !")
	Msg2Player("M� c�m nang Ho�ng Kim, nh�n ���c  Ti�n ��ng")
		elseif (k >= 53) and (k <= 62) then
	AddEventItem(343)
	AddGlobalNews("��i hi�p <color=green>"..GetName().."<color> m� t�i Ho�ng Kim , may m�n nh�n ���c <color=gold>Kim Nguy�n B�o<color> !")
	Msg2Player("M� c�m nang Ho�ng Kim, nh�n ���c  Kim Nguy�n B�o")
		elseif (k >= 113) then
		local x = random(1,12)
			if x == 2 then
 	AddEventItem(238)
	AddGlobalNews("��i hi�p <color=green>"..GetName().."<color> m� t�i Ho�ng Kim , may m�n nh�n ���c <color=green>Th�y Tinh<color> !")
	Msg2Player("M� c�m nang Ho�ng Kim, nh�n ���c  Th�y Tinh")
			elseif x == 4 then
	AddEventItem(239)
	AddGlobalNews("��i hi�p <color=green>"..GetName().."<color> m� t�i Ho�ng Kim , may m�n nh�n ���c <color=green>Th�y Tinh<color> !")
	Msg2Player("M� c�m nang Ho�ng Kim, nh�n ���c  Th�y Tinh")
			elseif x == 6 then
	AddEventItem(240)
	AddGlobalNews("��i hi�p <color=green>"..GetName().."<color> m� t�i Ho�ng Kim , may m�n nh�n ���c <color=green>Th�y Tinh<color> !")
	Msg2Player("M� c�m nang Ho�ng Kim, nh�n ���c  Th�y Tinh")
			elseif (x == 1) or (x == 7) or (x == 8) then
	AddEventItem(353)
	AddGlobalNews("��i hi�p <color=green>"..GetName().."<color> m� t�i Ho�ng Kim , may m�n nh�n ���c <color=green>Tinh H�ng B�o Th�ch<color> !")
	Msg2Player("M� c�m nang Ho�ng Kim, nh�n ���c  Tinh H�ng B�o Th�ch")
			elseif (x == 9) or (x == 10) or (x == 11) then
	local p = random(122,124)
	AddItem(6,1,p,1,1,1)
	AddGlobalNews("��i hi�p <color=green>"..GetName().."<color> m� t�i Ho�ng Kim , may m�n nh�n ���c <color=pink>Ph�c Duy�n L�<color> !")
	Msg2Player("M� c�m nang Ho�ng Kim, nh�n ���c  Ph�c Duy�n L�")
			elseif (x == 3) or (x == 12) then
	AddItem(6,1,26,1,1,1)	
	AddGlobalNews("��i hi�p <color=green>"..GetName().."<color> m� t�i Ho�ng Kim , may m�n nh�n ���c <color=gold>V� L�m M�t T�ch<color> !")
	Msg2Player("M� c�m nang Ho�ng Kim, nh�n ���c  V� L�m M�t T�ch")
			else
	AddItem(6,1,22,1,1,1)	
	AddGlobalNews("��i hi�p <color=green>"..GetName().."<color> m� t�i Ho�ng Kim , may m�n nh�n ���c <color=gold>T�y T�y Kinh<color> !")
	Msg2Player("M� c�m nang Ho�ng Kim, nh�n ���c  T�y T�y Kinh")
			end
		elseif (k >=63) and (k <= 112) then
	local m = random (5,45)
	n = GetLevel()
	AddOwnExp(n*m*30)
		else
	local m = random (5,45)
	n = GetLevel()
	Earn(n*m*5)
		end
	else
	Talk(1,"","<color=green>H�m nay �� m� �� 20 C�m nang Ho�ng Kim r�i, ng�y mai h�y m� ti�p<color>")
	end
	
else	--Sau khi da set ngay

if (GetTask(352) <= 20) then
local k = random(1,120)
SetTask(352,GetTask(352) + 1)
		if (k <= 6) then 
	AddStackItem(1,4,417,1,1,0,0,0)
	AddGlobalNews("��i hi�p <color=green>"..GetName().."<color> m� t�i Ho�ng Kim , may m�n nh�n ���c <color=gold>Ti�n ��ng<color> !")
	Msg2Player("M� c�m nang Ho�ng Kim, nh�n ���c  Ti�n ��ng")
		elseif (k >= 53) and (k <= 62) then
	AddEventItem(343)
	AddGlobalNews("��i hi�p <color=green>"..GetName().."<color> m� t�i Ho�ng Kim , may m�n nh�n ���c <color=gold>Kim Nguy�n B�o<color> !")
	Msg2Player("M� c�m nang Ho�ng Kim, nh�n ���c  Kim Nguy�n B�o")
		elseif (k >= 113) then
		local x = random(1,12)
			if x == 2 then
 	AddEventItem(238)
	AddGlobalNews("��i hi�p <color=green>"..GetName().."<color> m� t�i Ho�ng Kim , may m�n nh�n ���c <color=green>Th�y Tinh<color> !")
	Msg2Player("M� c�m nang Ho�ng Kim, nh�n ���c  Th�y Tinh")
			elseif x == 4 then
	AddEventItem(239)
	AddGlobalNews("��i hi�p <color=green>"..GetName().."<color> m� t�i Ho�ng Kim , may m�n nh�n ���c <color=green>Th�y Tinh<color> !")
	Msg2Player("M� c�m nang Ho�ng Kim, nh�n ���c  Th�y Tinh")
			elseif x == 6 then
	AddEventItem(240)
	AddGlobalNews("��i hi�p <color=green>"..GetName().."<color> m� t�i Ho�ng Kim , may m�n nh�n ���c <color=green>Th�y Tinh<color> !")
	Msg2Player("M� c�m nang Ho�ng Kim, nh�n ���c  Th�y Tinh")
			elseif (x == 1) or (x == 7) or (x == 8) then
	AddEventItem(353)
	AddGlobalNews("��i hi�p <color=green>"..GetName().."<color> m� t�i Ho�ng Kim , may m�n nh�n ���c <color=green>Tinh H�ng B�o Th�ch<color> !")
	Msg2Player("M� c�m nang Ho�ng Kim, nh�n ���c  Tinh H�ng B�o Th�ch")
			elseif (x == 9) or (x == 10) or (x == 11) then
	local p = random(122,124)
	AddItem(6,1,p,1,1,1)
	AddGlobalNews("��i hi�p <color=green>"..GetName().."<color> m� t�i Ho�ng Kim , may m�n nh�n ���c <color=pink>Ph�c Duy�n L�<color> !")
	Msg2Player("M� c�m nang Ho�ng Kim, nh�n ���c  Ph�c Duy�n L�")
			elseif (x == 3) or (x == 12) then
	AddItem(6,1,26,1,1,1)	
	AddGlobalNews("��i hi�p <color=green>"..GetName().."<color> m� t�i Ho�ng Kim , may m�n nh�n ���c <color=gold>V� L�m M�t T�ch<color> !")
	Msg2Player("M� c�m nang Ho�ng Kim, nh�n ���c  V� L�m M�t T�ch")
			else
	AddItem(6,1,22,1,1,1)	
	AddGlobalNews("��i hi�p <color=green>"..GetName().."<color> m� t�i Ho�ng Kim , may m�n nh�n ���c <color=gold>T�y T�y Kinh<color> !")
	Msg2Player("M� c�m nang Ho�ng Kim, nh�n ���c  T�y T�y Kinh")
			end
		elseif (k >=63) and (k <= 112) then
	local m = random (5,45)
	n = GetLevel()
	AddOwnExp(n*m*30)
		else
	local m = random (5,45)
	n = GetLevel()
	Earn(n*m*5)
		end
	else
	Talk(1,"","<color=green>H�m nay �� m� �� 20 C�m nang Ho�ng Kim r�i, ng�y mai h�y m� ti�p<color>")
	end

end
end 