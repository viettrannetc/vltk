Include("\\script\\global\\login_head.lua")
Include("\\script\\lib\\awardtemplet.lua")
IncludeLib("SETTING")
function Login_Server()
	local OrgPlayer = PlayerIndex;
	 local autochat = "Trang ch�: <color=blue>http://www.youtube.com/c/pgaminggameoffline<color>\n<color=green>Server mi�n ph� cho c�c b�n �am m� game V� L�m Truy�n K�. Ch�c c�c b�n c� nh�ng gi�y ph�t th� gi�n vui v�.<pic=115><pic=115><color>"        
	 Msg2Player(format(autochat)) 
	PlayerIndex = OrgPlayer
end
if login_add then login_add(Login_Server, 2) end
function CGSupportNewPlayer_Login()
	local szAccount = GetAccount()
	if szAccount=="administrator" then
		return
	end
	if GetLevel() == 1 and GetTask(5003,20) == 0 then 
	local tanthu =
	{
		{szName="<color=yellow>Th�n H�nh Ph�", tbProp={6,1,1266}, nCount = 1, nBindState = -2, nExpiredTime = 43200},
		{szName="<color=yellow>Th� ��a Ph�", tbProp={6,1,438}, nCount = 1, nBindState = -2, nExpiredTime = 43200},
	}
		tbAwardTemplet:GiveAwardByList(tanthu, "T�n Th�")
			Msg2SubWorld("Ch�o m�ng t�n th� <color=yellow>"..GetName().."<color> �� tham gia v�o <color=blue>http://www.youtube.com/c/pgaminggameoffline<color>");
			SetTask(5003,20)	
	end
end
if login_add then login_add(CGSupportNewPlayer_Login,1) end
------Mod-----
local tbModAccount = {"pgaming","pgaming2","pgaming3","pgaming4","pgaming5","pgaming6","pgaming7","pgaming8","pgaming9","pgaming10","pgaming11","pgaming12"}
function Mod()
local szAccount = GetAccount()
	for i=1, getn(%tbModAccount) do
		if szAccount == %tbModAccount[i] then
			if GetTask(5002,20) == 0 then 
				local index = AddItem(6,1,4636,0,0,0,0)
				SetItemBindState(index,-2)
				SetTask(5002,20)
			end
		end
	end
end
if login_add then login_add(Mod,1) end

function loginGamer()
local szAccount = GetAccount()
	if szAccount=="administrator" then
		if GetTask(5001,20) == 0 then 
			AddStackItem(50,4,417,1,1,0,0,0) --Ti�n ��ng
			Earn(50000000) --- 5K v�n
			AddLeadExp(20000)		--Nh�n t�i l�nh ��o.
			AddItem(6,1,1266,0,0,0) --Nh�n Th�n H�nh Ph�
			AddItem(6,1,438,0,0,0) --Nh�n Th� ��a Ph�	
			ST_LevelUp(179)
			local index = AddItem(6,1,4636,0,0,0,0)
			SetItemBindState(index,-2)
			--AddMagic(732,60)
			--AddMagic(733,60)
			SetTask(5001,20)
		end
		return
	end	
----Thong Bao NV Online
	Msg2SubWorld("<color=yellow>��i hi�p<color><color=green> "..GetName().."<color> l�n m�ng r�i...")	
end