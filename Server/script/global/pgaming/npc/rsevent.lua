
Include("\\script\\global\\translife.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\task\\system\\task_string.lua"); 
Include("\\script\\lib\\basic.lua"); 
Include("\\script\\lib\\composeex.lua")
IncludeLib("LEAGUE");
Include("\\script\\dailogsys\\g_dialog.lua")

function main(NpcIndex)
dofile("script/global/pgaming/rsevent.lua");
local tbDialog = 
{ 
"<dec><npc>B�n mu�n Reset Event n�o?", 
" Reset Event L�a/reseteventlua",
" Reset Event Ph�o/reseteventphao",
" K�t th�c ��i tho�i /no",
} 
CreateTaskSay(tbDialog) 
end;


---------------Lua--------------------

function reseteventlua()
local tbDialog = 
{ 
"<dec><npc>B�n mu�n Reset Event n�o?", 
" Reset L�a V�ng - 500 Ti�n ��ng/reset_luavang",
" Reset L�a Xanh - 300 Ti�n ��ng/reset_luaxanh",
" K�t th�c ��i tho�i /no",
} 
CreateTaskSay(tbDialog) 
end;


function reset_luavang()
local nGoldPoint = GetExtPoint(1);

if nGoldPoint < 1500 then 
		Talk(1,"",""..GetName().." ch�a �n <color=yellow>Max 1.500 L�a V�ng <color>...! \n<color=red>Kh�ng th� Reset...!")
		return
end

	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 500) then 
		Talk(1,"","Tr�n ng��i c�c h� kh�ng c� ��<color=red> 500 Ti�n ��ng.")
	return end
	ConsumeEquiproomItem(500,4,417,1,1) 
	PayExtPoint(1,1500)	
Msg2Player("�� Reset Event L�a V�ng Th�nh C�ng! ")
Msg2SubWorld("<color=green>Xin ch�c m�ng  <color>"..GetName().." <color=green> ��  Reset Event <color=yellow>L�a V�ng <color> th�nh c�ng !!!")
end

function reset_luaxanh()
local nGoldPoint = GetExtPoint(2);

if nGoldPoint < 4000 then 
		Talk(1,"",""..GetName().." ch�a �n <color=yellow>Max 4.000 L�a Xanh <color>...! \n<color=red>Kh�ng th� Reset...!")
		return
end

	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 300) then 
		Talk(1,"","Tr�n ng��i c�c h� kh�ng c� ��<color=red> 500 Ti�n ��ng.")
	return end
	ConsumeEquiproomItem(500,4,417,1,1) 
	PayExtPoint(2,4000)	
Msg2Player("�� Reset Event L�a Xanh Th�nh C�ng! ")
Msg2SubWorld("<color=green>Xin ch�c m�ng  <color>"..GetName().." <color=green> ��  Reset Event <color=yellow>L�a Xanh <color> th�nh c�ng !!!")
end

-----------Phao--------------


function reseteventphao()
local tbDialog = 
{ 
"<dec><npc>B�n mu�n Reset Event n�o?", 
--" Reset Phong Ph�o Ti�u Th��ng - 400 Ti�n ��ng/reset_phaotieu",
" Reset Phong Ph�o Trung Th��ng - 500 Ti�n ��ng/reset_phaotrung",
" Reset Phong Ph�o ��i Th��ng - 600 Ti�n ��ng/reset_phaodai",
" Reset Phong Ph�o Ti�u ��c Bi�t - 500 Ti�n ��ng/reset_phaotieudb",
" Reset Phong Ph�o Trung ��c Bi�t - 700 Ti�n ��ng/reset_phaotrungdb",
" Reset Phong Ph�o ��i ��c Bi�t - 800 Ti�n ��ng/reset_phaodaidb",
" K�t th�c ��i tho�i /no",
} 
CreateTaskSay(tbDialog) 
end;



function reset_phaotieu()
local nGoldPoint = GetExtPoint(3);

if nGoldPoint < 1500 then 
		Talk(1,"",""..GetName().." ch�a �n <color=yellow>Max 1.500 Phong Ph�o Ti�u Th��ng <color>...! \n<color=red>Kh�ng th� Reset...!")
		return
end

	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 400) then 
		Talk(1,"","Tr�n ng��i c�c h� kh�ng c� ��<color=red> 400 Ti�n ��ng.")
	return end
	ConsumeEquiproomItem(400,4,417,1,1) 
	PayExtPoint(3,1500)	
Msg2Player("�� Reset Event Phong Ph�o Ti�u Th��ng Th�nh C�ng! ")
Msg2SubWorld("<color=green>Xin ch�c m�ng  <color>"..GetName().." <color=green> ��  Reset Event <color=yellow>Phong Ph�o Ti�u Th��ng <color> th�nh c�ng !!!")
end

function reset_phaotieudb()
local nGoldPoint = GetExtPoint(4);

if nGoldPoint < 1000 then 
		Talk(1,"",""..GetName().." ch�a �n <color=yellow>Max 1.000 Phong Ph�o Ti�u ��c Bi�t <color>...! \n<color=red>Kh�ng th� Reset...!")
		return
end

	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 500) then 
		Talk(1,"","Tr�n ng��i c�c h� kh�ng c� ��<color=red> 500 Ti�n ��ng.")
	return end
	ConsumeEquiproomItem(500,4,417,1,1) 
	PayExtPoint(4,1000)	
Msg2Player("�� Reset Event Phong Ph�o Ti�u ��c Bi�t Th�nh C�ng! ")
Msg2SubWorld("<color=green>Xin ch�c m�ng  <color>"..GetName().." <color=green> ��  Reset Event <color=yellow>Phong Ph�o Ti�u ��c Bi�t <color> th�nh c�ng !!!")
end

function reset_phaotrung()
local nGoldPoint = GetExtPoint(5);

if nGoldPoint < 700 then 
		Talk(1,"",""..GetName().." ch�a �n <color=yellow>Max 700 Phong Ph�o Trung Th��ng <color>...! \n<color=red>Kh�ng th� Reset...!")
		return
end

	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 500) then 
		Talk(1,"","Tr�n ng��i c�c h� kh�ng c� ��<color=red> 500 Ti�n ��ng.")
	return end
	ConsumeEquiproomItem(500,4,417,1,1) 
	PayExtPoint(5,700)	
Msg2Player("�� Reset Event Phong Ph�o Trung Th��ng Th�nh C�ng! ")
Msg2SubWorld("<color=green>Xin ch�c m�ng  <color>"..GetName().." <color=green> ��  Reset Event <color=yellow>Phong Ph�o Trung Th��ng <color> th�nh c�ng !!!")
end

function reset_phaotrungdb()
local nGoldPoint = GetExtPoint(6);

if nGoldPoint < 500 then 
		Talk(1,"",""..GetName().." ch�a �n <color=yellow>Max 500 Phong Ph�o Trung ��c Bi�t <color>...! \n<color=red>Kh�ng th� Reset...!")
		return
end

	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 700) then 
		Talk(1,"","Tr�n ng��i c�c h� kh�ng c� ��<color=red> 700 Ti�n ��ng.")
	return end
	ConsumeEquiproomItem(700,4,417,1,1) 
	PayExtPoint(6,500)	
Msg2Player("�� Reset Event Phong Ph�o Trung ��c Bi�t Th�nh C�ng! ")
Msg2SubWorld("<color=green>Xin ch�c m�ng  <color>"..GetName().." <color=green> ��  Reset Event <color=yellow>Phong Ph�o Trung ��c Bi�t <color> th�nh c�ng !!!")
end


function reset_phaodai()
local nGoldPoint = GetExtPoint(7);

if nGoldPoint < 700 then 
		Talk(1,"",""..GetName().." ch�a �n <color=yellow>Max 700 Phong Ph�o ��i Th��ng <color>...! \n<color=red>Kh�ng th� Reset...!")
		return
end

	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 600) then 
		Talk(1,"","Tr�n ng��i c�c h� kh�ng c� ��<color=red> 600 Ti�n ��ng.")
	return end
	ConsumeEquiproomItem(600,4,417,1,1) 
	PayExtPoint(7,700)	
Msg2Player("�� Reset Event Phong Ph�o ��i Th��ng Th�nh C�ng! ")
Msg2SubWorld("<color=green>Xin ch�c m�ng  <color>"..GetName().." <color=green> ��  Reset Event <color=yellow>Phong Ph�o ��i Th��ng <color> th�nh c�ng !!!")
end


function reset_phaodaidb()
local nGoldPoint = GetExtPoint(3);

if nGoldPoint < 600 then 
		Talk(1,"",""..GetName().." ch�a �n <color=yellow>Max 600 Phong Ph�o ��i ��c Bi�t <color>...! \n<color=red>Kh�ng th� Reset...!")
		return
end

	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 800) then 
		Talk(1,"","Tr�n ng��i c�c h� kh�ng c� ��<color=red> 800 Ti�n ��ng.")
	return end
	ConsumeEquiproomItem(800,4,417,1,1) 
	PayExtPoint(3,600)	
Msg2Player("�� Reset Event Phong Ph�o ��i ��c Bi�t Th�nh C�ng! ")
Msg2SubWorld("<color=green>Xin ch�c m�ng  <color>"..GetName().." <color=green> ��  Reset Event <color=yellow>Phong Ph�o ��i ��c Bi�t <color> th�nh c�ng !!!")
end