IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
--Include("\\script\\global\\hotrothem.lua")
Include("\\script\\global\\repute_head.lua")
Include("\\script\\misc\\league_cityinfo.lua")


function main() 
dofile("script/global/pgaming/hoason.lua");
dialog_main()	
end


function dialog_main()
	local szTitle = "<npc>L�n n�y ph�i <color=blue>Hoa S�n<color> ta t�i su�t,  giang h� l�i th�m nhi�u bi�n ��ng"
	local tbOpt =
	{
		{"H�i chuy�n", noi},
		{"Tho�t"},
	}
	
	CreateNewSayEx(szTitle, tbOpt)
end




function noi()
if (GetCamp() == 0) and (GetSeries() == 2) and (GetLevel() >= 10) and  (GetTask(169) ~= 10)	  then		
Say("<color=red>Hoa S�n L�o ��u<color>: Ph�i <color=cyan>Hoa S�n<color> ta �� kh�ng tham gia giang h� h�n 10 n�m nay, l�n n�y t�i xu�t �t s� khi�n b�n giang h� t� ph�i ph�i khi�p s�!",2, "Gia nh�p Hoa S�n/go", "�� ta suy ngh� k� l�i xem/no")
elseif (GetCamp() == 0) and (GetSeries() ~= 2) and (GetLevel() >= 10) and (GetSex() == 0) and  (GetTask(169) ~= 10) then
Say("<color=red>Hoa S�n L�o ��u<color>: Ph�i <color=cyan>Hoa S�n<color> ta �� kh�ng tham gia giang h� h�n 10 n�m nay, l�n n�y t�i xu�t �t s� khi�n b�n giang h� t� ph�i ph�i khi�p s�!",2, "Gia nh�p Hoa S�n/go2", "�� ta suy ngh� k� l�i xem/no")
elseif (GetTask(169) >= 10)  then
local szTitle = "<npc>Ng��i mu�n v� ph�i h� "
	local tbOpt =
	{
		{"Phi�n l�o ��a ta �i 1 chuy�n",vep},
		{"Kh�ng c�n"},
	}
	
	CreateNewSayEx(szTitle, tbOpt)
else
Talk(1,"","Ch� c� ng��i h� th�y m�i c� th� gia nh�p Hoa S�n ta")	
end
end


function go() 
Talk(1,"","Ch�c m�ng c�c h� �� gia nh�p <color=blue>Hoa S�n<color>")
NewWorld(987,167*8+7,196*16)
AddMagic(1347)
AddMagic(1372)
SetTask(169,10)
SetCamp(3)
SetCurCamp(3)
SetRank(82)	
SetFaction("huashan")  
SetLastFactionNumber(10)
--SetSex(0)
Msg2Player("Ch�nh th�c gia nh�p Hoa S�n ph�i, h�c � ki�m ph�p c� b�n")
--KickOutSelf()
end 

function go2() 
Talk(1,"","Ch�c m�ng c�c h� �� gia nh�p <color=blue>Hoa S�n<color>")
NewWorld(987,167*8+7,196*16)
SetSeries(2)
SetFaction("huashan")  
SetLastFactionNumber(10)
AddMagic(1347)
AddMagic(1372)
SetTask(169,10)
SetCamp(3)
SetCurCamp(3)
SetRank(82)	
Msg2Player("Ch�nh th�c gia nh�p Hoa S�n ph�i, h�c �ipc� ki�m ph�p c� b�n")
KickOutSelf()
end 

function vep() 
Msg2Player("Ng�i y�n, ch�ng ta �i Hoa S�n ph�i")
NewWorld(987,167*8+7,196*16)
end 

function no() 
end 

