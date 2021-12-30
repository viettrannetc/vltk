IncludeLib("SETTING")
Include("\\script\\global\\titlefuncs.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\global\\pgaming\\npc\\gift.lua")
------------------------------------------------------------------------------------------------------------
function main()
dofile("script/global/pgaming/npcgifcode.lua")
dialog_main()
end
tbChat = 
{
	"<color=green>Ch�o m�ng qu� nh�n s� <pic=1>",
	"<color=green>Nh�p Gift code Youtube PGaming t�i ��y",
	"<color=orange>L�n Trang Ch� <color=red>192.168.1.200<color> �� nh�n gift code"
}
function npcchat_npcmacdinh()
	local nNpcIndex = GetLastDiagNpc();
	local nTaskChat = GetNpcParam(nNpcIndex,1);
	if nTaskChat == 0 then 
		SetNpcParam(nNpcIndex,1,1); --set index ��u ti�n c�a table npc chat.
		SetNpcTimer(nNpcIndex,500); --Tu� ch�nh th�i gian npc t� chat (20 s)
	end
end
function OnTimer(nNpcIndex,nTimeOut)
	local nTaskChat = GetNpcParam(nNpcIndex,1);
	if not nTaskChat or nTaskChat <= 0 then 
		nTaskChat = 1;
	else
		nTaskChat = nTaskChat + 1;
	end
	if nTaskChat > getn(tbChat) then 	
		nTaskChat = 1;
	end
	NpcChat(nNpcIndex,tbChat[nTaskChat],1);
	SetNpcParam(nNpcIndex,1,nTaskChat)
	SetNpcTimer(nNpcIndex,500);
end

function dialog_main()
npcchat_npcmacdinh()
local szTitle = "<npc> Xin ch�o <color=red>"..GetName().."<color> ! V�o trang ch�: <color=yellow>192.168.1.200<color> �� nh�n gift code. \n\n<color=green>Ch� � b�o v� s�c kh�e v� t�i s�n khi ch�i Game.<pic=115><color>"
tbOpt=
{
	{"Nh�n Qu� Youtube PGaming", Code},
	{"Th�i"},
}
CreateNewSayEx(szTitle, tbOpt)
end


function Code() 
    CodeStrings() 
end 
