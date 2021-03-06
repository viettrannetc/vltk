--中原南区 扬州府 宠物老板娘对话
IncludeLib("SETTING")
Include("\\script\\global\\titlefuncs.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\task\\newtask\\newtask_head.lua") --调用 nt_getTask 同步变量到客户端的赖
Include("\\script\\task\\partner\\partner_head.lua") --包含了图象调用
Include("\\script\\task\\partner\\partner_problem.lua") --调用 nt_getTask 同步变量到客户端的赖
IncludeLib("PARTNER")
IncludeLib("RELAYLADDER");	--排行榜

function main()
dofile("script/??原南区/扬??/npc/扬??_宠物老板娘对话.lua")
dialog_main()
end
tbChat = 
{
	"<color=green>Nh薾 b筺 уng h祅h b琲 v祇 y",
	"<color=orange>Ch骳 i hi謕 ch琲 game vui v?, nh? like, share k猲h Youtube PGaming nha!"
}
function npcchat_npcmacdinh()
	local nNpcIndex = GetLastDiagNpc();
	local nTaskChat = GetNpcParam(nNpcIndex,1);
	if nTaskChat == 0 then 
		SetNpcParam(nNpcIndex,1,1); --set index u ti猲 c馻 table npc chat.
		SetNpcTimer(nNpcIndex,500); --Tu? ch豱h th阨 gian npc t? chat (20 s)
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
local szTitle = "<npc> Xin ch祇 "..GetName().."! Tng c玭g ta  qua i t? l﹗,  l筰 cho ta ti謒 v藅 nu玦 n祔. M閠 m譶h ta qu竛 xuy課 trong ngo礽, v鮝 nu玦 d箉 con cai v鮝 ph秈 tr玭g coi c竔 ti謒 n祔! Th藅 mu玭 ph莕 v蕋 v?."
tbOpt=
{
	{"Nh薾 Th? Nu玦", partner_givetodo},
	{"Nh薾 S竎h luy謓 c蕄 ng h祅h", sachnv},
	{"Th玦"},
}
CreateNewSayEx(szTitle, tbOpt)
end

function partner_givetodo()                                
	local partnercount = PARTNER_Count()                  
	if ( partnercount == -1 ) then
		Msg2player(".....................................")
	elseif ( partnercount == 5 ) then
		Describe("B? ch? ti謒 v藅 nu玦: Ngi  c? nhi襲 b筺 ng h祅h, ng c? tham n鱝",1, 
                "K誸 th骳 i tho筰 /no")
	else
		Describe("B? ch? ti謒 v藅 nu玦: N誹 m? ngi  FA l﹗ n╩ nh? th? th? ta gi髉 dc, l鵤 ch鋘 1 ngi huynh  甶 n祇 !",8, 
               "Nh薾 b筺 ng h祅h h? kim/kim", 
               "Nh薾 b筺 ng h祅h h? m閏 /moc", 
               "Nh薾 b筺 ng h祅h h? th駓/thuy", 
               "Nh薾 b筺 ng h祅h h? h醓 /hoa", 
               "Nh薾 b筺 ng h祅h h? th? /tho", 
               "K誸 th骳 i tho筰 /no")
	end
end

function tho()
 local partneridex = PARTNER_AddFightPartner(4,4,1,5,5,5,5,5,5)
PARTNER_CallOutCurPartner(1)
end
function moc()
 local partneridex = PARTNER_AddFightPartner(1,1,1,5,5,5,5,5,5)
PARTNER_CallOutCurPartner(1)
end
function thuy()
 local partneridex = PARTNER_AddFightPartner(2,2,1,5,5,5,5,5,5)
PARTNER_CallOutCurPartner(1)
end
function hoa()
 local partneridex = PARTNER_AddFightPartner(3,3,1,5,5,5,5,5,5)
PARTNER_CallOutCurPartner(1)
end
function kim()
 local partneridex = PARTNER_AddFightPartner(5,0,1,5,5,5,5,5,5)
PARTNER_CallOutCurPartner(1)
end

function sachnv()
local szTitle = "<npc> Xin ch祇 "..GetName().."! Tng c玭g ta  qua i t? l﹗,  l筰 cho ta ti謒 v藅 nu玦 n祔. M閠 m譶h ta qu竛 xuy課 trong ngo礽, v鮝 nu玦 d箉 con cai v鮝 ph秈 tr玭g coi c竔 ti謒 n祔! Th藅 mu玭 ph莕 v蕋 v?."
local tbOpt =
	{
		{"Nh薾 s竎h luy謓 c蕄 ng h祅h 1-20",sach20},
		{"Nh薾 s竎h luy謓 c蕄 ng h祅h 20-40",sach40},
		{"Nh薾 s竎h luy謓 c蕄 ng h祅h 40-60",sach60},
		{"Nh薾 s竎h luy謓 c蕄 ng h祅h 60-80",sach80},
		{"Nh薾 s竎h luy謓 c蕄 ng h祅h 80-100",sach100},
		{"Nh薾 s竎h luy謓 c蕄 ng h祅h 100-120",sach120},
		{"Trang Sau",sachnv2},
		{"Tho竧"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function sachnv2()
local szTitle = "<npc> Xin ch祇 "..GetName().."! Tng c玭g ta  qua i t? l﹗,  l筰 cho ta ti謒 v藅 nu玦 n祔. M閠 m譶h ta qu竛 xuy課 trong ngo礽, v鮝 nu玦 d箉 con cai v鮝 ph秈 tr玭g coi c竔 ti謒 n祔! Th藅 mu玭 ph莕 v蕋 v?."
local tbOpt =
	{
		{"Nh薾 s竎h luy謓 c蕄 ng h祅h 120-140",sach140},
		{"Nh薾 s竎h luy謓 c蕄 ng h祅h 140-160",sach160},
		{"Nh薾 s竎h luy謓 c蕄 ng h祅h 160-180",sach180},
		{"Nh薾 s竎h luy謓 c蕄 ng h祅h 180-200",sach200},
		{"Nh薾 s竎h luy謓 c蕄 ng h祅h 200-220",sach220},
		{"Nh薾 s竎h luy謓 c蕄 ng h祅h 220-240",sach240},
		{"Trang Sau",sachnv3},
		{"Tr? l筰",sachnv},
		{"Tho竧"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function sachnv3()
local szTitle = "<npc> Xin ch祇 "..GetName().."! Tng c玭g ta  qua i t? l﹗,  l筰 cho ta ti謒 v藅 nu玦 n祔. M閠 m譶h ta qu竛 xuy課 trong ngo礽, v鮝 nu玦 d箉 con cai v鮝 ph秈 tr玭g coi c竔 ti謒 n祔! Th藅 mu玭 ph莕 v蕋 v?."
local tbOpt =
	{
		{"Nh薾 s竎h luy謓 c蕄 ng h祅h 240-260",sach260},
		{"Nh薾 s竎h luy謓 c蕄 ng h祅h 260-280",sach280},
		{"Nh薾 s竎h luy謓 c蕄 ng h祅h 280-300",sach300},
		{"Nh薾 s竎h luy謓 c蕄 ng h祅h 300-320",sach320},
		{"Nh薾 s竎h luy謓 c蕄 ng h祅h 320-340",sach340},
		{"Nh薾 s竎h luy謓 c蕄 ng h祅h 340-360",sach360},
		{"Nh薾 s竎h luy謓 c蕄 ng h祅h 340-381",sach380},
		{"Tr? l筰",sachnv2},
		{"Tho竧"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end


function sach20()
for i =447,466 do
AddItem(6,1,i,0,0,0)
end
end

function sach40()
for i =467,486 do
AddItem(6,1,i,0,0,0)
end
end

function sach60()
for i =487,506 do
AddItem(6,1,i,0,0,0)
end
end

function sach80()
for i =507,526 do
AddItem(6,1,i,0,0,0)
end
end

function sach100()
for i =527,546 do
AddItem(6,1,i,0,0,0)
end
end

function sach120()
for i =547,566 do
AddItem(6,1,i,0,0,0)
end
end

function sach140()
for i =567,586 do
AddItem(6,1,i,0,0,0)
end
end

function sach160()
for i =587,606 do
AddItem(6,1,i,0,0,0)
end
end

function sach180()
for i =607,626 do
AddItem(6,1,i,0,0,0)
end
end

function sach200()
for i =627,646 do
AddItem(6,1,i,0,0,0)
end
end

function sach220()
for i =647,666 do
AddItem(6,1,i,0,0,0)
end
end

function sach240()
for i =667,686 do
AddItem(6,1,i,0,0,0)
end
end

function sach260()
for i =687,706 do
AddItem(6,1,i,0,0,0)
end
end

function sach280()
for i =707,726 do
AddItem(6,1,i,0,0,0)
end
end

function sach300()
for i =727,746 do
AddItem(6,1,i,0,0,0)
end
end

function sach320()
for i =747,766 do
AddItem(6,1,i,0,0,0)
end
end

function sach340()
for i =767,786 do
AddItem(6,1,i,0,0,0)
end
end

function sach360()
for i =787,806 do
AddItem(6,1,i,0,0,0)
end
end

function sach380()
for i =807,827 do
AddItem(6,1,i,0,0,0)
end
end