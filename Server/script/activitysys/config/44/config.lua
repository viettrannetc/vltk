Include("\\script\\activitysys\\config\\44\\variables.lua") 
Include("\\script\\task\\task_addplayerexp.lua");
Include("\\script\\lib\\awardtemplet.lua");



local nTask_HuDie		= 1
local nTask_XinXin		= 2
local nTask_ZhuXin_YuanXin		= 3
local nTask_ChenDu		= 4
local nTask_DaLi		= 5
local nTask_FengXiang		= 6
local nTask_XiangYang		= 7
local nTask_BianJin		= 8
local nTask_LinAn		= 9
local nTask_YangZhou		= 10
local nTask_GiveCount		= 11
local nTask_Activi_Point		= 2794
local TaskVarIdx_YeSou		= 23
-------局部变量定义 结束---
tbConfig = {}
tbConfig[1] = --一个细节
{
	nId = 1,
	szMessageType = "NpcOnDeath",
	szName = "催怪但莲藕饼",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckNormalMonster",	{"90"} },
		{"NpcFunLib:CheckInMap",	{"322,321,144,124,93"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,1350,1,0,0},},1,"5"} },
	},
}
tbConfig[2] = --一个细节
{
	nId = 2,
	szMessageType = "NpcOnDeath",
	szName = "催怪但⑻豆饼",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckNormalMonster",	{"90"} },
		{"NpcFunLib:CheckInMap",	{"225,226,227,224,340,75"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,1350,1,0,0},},1,"5"} },
	},
}
tbConfig[3] = --一个细节
{
	nId = 3,
	szMessageType = "NpcOnDeath",
	szName = "催怪但鱼头",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckNormalMonster",	{"10,20,30,40,50,60,70,80"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,1350,1,0,0},},1,"1"} },
	},
}
tbConfig[4] = --一个细节
{
	nId = 4,
	szMessageType = "ClickNpc",
	szName = "玩家点击勤劳老农",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Чi S? L穙 L穙"},
	tbCondition = 
	{
	},
	tbActition = 
	{
                {"SetDialogTitle",	{"<npc>Socola r蕋 l? ngon, i hi謕 c? th? t苙g cho c竎 i hi謕 n? Чi hi謕 mu鑞 Socola g? y ?"} },
		{"AddDialogOpt",	{"Ta mu鑞 i Socola.",5} },
                --{"AddDialogOpt",	{"Nh薾 ph莕 thng s? d鬾g socola.",10} },
                
	},
}
tbConfig[5] = --一个细节
{
	nId = 5,
	szMessageType = "CreateDialog",
	szName = "合成划分等级",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {"<npc>C竎 h? mu鑞 h頿 th祅h lo筰 socola n祇 ?"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"H頿 th祅h Socola lo筰 4",6} },
		{"AddDialogOpt",	{"H頿 th祅h Socola lo筰 3",7} },
		{"AddDialogOpt",	{"H頿 th祅h Socola lo筰 2",8} },
		{"AddDialogOpt",	{"H頿 th祅h Socola lo筰 1",9} },
	},
}
tbConfig[6] = --一个细节
{
	nId = 6,
	szMessageType = "CreateCompose",
	szName = "H頿 th祅h SoCoLa lo筰 4",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {"H頿 th祅h SoCoLa lo筰 4",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"SoCoLa lo筰 5",{tbProp={6,1,3524,1,0,0},},2} },
                {"AddOneMaterial",	{"160000 lng",{nJxb=160000,},1} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C蕄 50 tr? l猲 m韎 tham gia ho箃 ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3525,1,0,0},nExpiredTime=43200, nBindState=-2,},1,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
	},
}
tbConfig[7] = --一个细节
{
	nId = 7,
	szMessageType = "CreateCompose",
	szName = "H頿 th祅h SoCoLa lo筰 3",
	nStartDate = 201408090000,
	nEndDate  = 201910110000,
	tbMessageParam = {"H頿 th祅h SoCoLa lo筰 3",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"SoCoLa lo筰 5",{tbProp={6,1,3524,1,0,0},},1} },
                {"AddOneMaterial",	{"SoCoLa lo筰 4",{tbProp={6,1,3525,1,0,0},},1} },               
		{"PlayerFunLib:CheckTotalLevel",	{50,"C蕄 50 tr? l猲 m韎 tham gia ho箃 ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3526,1,0,0},nExpiredTime=43200, nBindState=-2,},1,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
	},
}
tbConfig[8] = --一个细节
{
	nId = 8,
	szMessageType = "CreateCompose",
	szName = "H頿 th祅h SoCoLa lo筰 2",
	nnStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {"H頿 th祅h SoCoLa lo筰 2",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"SoCoLa lo筰 5",{tbProp={6,1,3524,1,0,0},},1} },
                {"AddOneMaterial",	{"SoCoLa lo筰 3",{tbProp={6,1,3526,1,0,0},},1} },                
		{"PlayerFunLib:CheckTotalLevel",	{50,"C蕄 50 tr? l猲 m韎 tham gia ho箃 ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3527,1,0,0},nExpiredTime=43200, nBindState=-2,},1,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
	},
}
tbConfig[9] = --一个细节
{
	nId = 9,
	szMessageType = "CreateCompose",
	szName = "H頿 th祅h SoCoLa lo筰 1",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {"H頿 th祅h SoCoLa lo筰 1",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"SoCoLa lo筰 5",{tbProp={6,1,3524,1,0,0},},1} },
                {"AddOneMaterial",	{"SoCoLa lo筰 2",{tbProp={6,1,3527,1,0,0},},1} },                
		{"PlayerFunLib:CheckTotalLevel",	{50,"C蕄 50 tr? l猲 m韎 tham gia ho箃 ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3528,1,0,0},nExpiredTime=43200, nBindState=-2,},1,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
	},
}
tbConfig[10] = --一个细节
{
	nId = 10,
	szMessageType = "CreateDialog",
	szName = "Nh薾 thng SoCoLa",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {"<npc>C竎 h? mu鑞 nh薾 ph莕 thng s? d鬾g socola n祇 ?"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Nh薾 ph莕 thng 100 c竔 Socola lo筰 1",12} },
		{"AddDialogOpt",	{"Nh薾 ph莕 thng 200 c竔 Socola lo筰 1",13} },
		{"AddDialogOpt",	{"Nh薾 ph莕 thng 400 c竔 Socola lo筰 1",14} },
		{"AddDialogOpt",	{"Nh薾 ph莕 thng 600 c竔 Socola lo筰 1",15} },
                {"AddDialogOpt",	{"Nh薾 ph莕 thng 800 c竔 Socola lo筰 1",16} },
		{"AddDialogOpt",	{"Nh薾 ph莕 thng 1000 c竔 Socola lo筰 1",17} },
	},
}
tbConfig[11] = --一个细节
{
	nId = 11,
	szMessageType = "ItemScript",
	szName = "S? d鬾g SoCoLa lo筰 1",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {{tbProp={6,1,3528,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"C蕄 50 tr? l猲 m韎 c? th? s? d鬾g",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:AddExp",	{10000000,0,"[T輓h n╪g socola][S? d鬾g Socola lo筰 1]"} },
		{"ThisActivity:AddTask",	{nTask_HuDie,1} },
	},
}
tbConfig[12] = --一个细节
{
	nId = 12, 
        szMessageType = "nil", 
        szName = "Nh薾 ph莕 thng 100 c竔 Socola lo筰 1", 
        nStartDate = nil, 
        nEndDate = nil, 
        tbMessageParam = {nil}, 
        tbCondition = 
        { 
                 {"PlayerFunLib:CheckTotalLevel", {80,"default",">="} }, 
                 {"ThisActivity:CheckTask", {nTask_HuDie,2,"Чi hi謕 kh玭g  s? d鬾g 100 chi誧 Socola lo筰 1, kh玭g th? nh薾 thng",">="} }, 
                 {"ThisActivity:CheckTask", {TaskVarIdx_IsGet100Award,0,"Ngi  nh薾 thng.","=="} }, 
        }, 
        tbActition = 
        { 
                 {"PlayerFunLib:AddExp", {Get300Award,1,"S? d鬾g 100 chi誧 Socola lo筰 1 nh薾 thng."} }, 
                  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4825,1,0,0},},1,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4826,1,0,0},},1,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4827,1,0,0},},1,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4828,1,0,0},},1,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4829,1,0,0},},1,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4830,1,0,0},},1,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4831,1,0,0},},1,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4832,1,0,0},},1,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4833,1,0,0},},1,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4834,1,0,0},},1,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,30226,1,0,0},},1,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
                 {"ThisActivity:AddTask", {TaskVarIdx_IsGet100Award,1} }, 
        }, 
}
tbConfig[13] = --一个细节
{
	nId = 13,
	szMessageType = "nil", 
        szName = "Nh薾 ph莕 thng 200 c竔 Socola lo筰 1", 
        nStartDate = nil, 
        nEndDate = nil, 
        tbMessageParam = {nil}, 
        tbCondition = 
        { 
                 {"PlayerFunLib:CheckTotalLevel", {80,"default",">="} }, 
                 {"ThisActivity:CheckTask", {nTask_HuDie,200,"Чi hi謕 kh玭g  s? d鬾g 200 chi誧 Socola lo筰 1, kh玭g th? nh薾 thng",">="} }, 
                 {"ThisActivity:CheckTask", {TaskVarIdx_IsGet200Award,0,"Ngi  nh薾 thng.","=="} }, 
        }, 
        tbActition = 
        { 
                 {"PlayerFunLib:AddExp", {Get300Award,1,"S? d鬾g 200 chi誧 Socola lo筰 1 nh薾 thng."} }, 
                   {"PlayerFunLib:GetItem",	{{tbProp={6,1,4825,1,0,0},},2,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4826,1,0,0},},2,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4827,1,0,0},},2,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4828,1,0,0},},2,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4829,1,0,0},},2,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4830,1,0,0},},2,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4831,1,0,0},},2,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4832,1,0,0},},2,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4833,1,0,0},},2,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4834,1,0,0},},2,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,30226,1,0,0},},2,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
                 {"ThisActivity:AddTask", {TaskVarIdx_IsGet200Award,1} }, 
        }, 
}
tbConfig[14] = --一个细节
{
	nId = 14,
	szMessageType = "nil", 
        szName = "Nh薾 ph莕 thng 400 c竔 Socola lo筰 1", 
        nStartDate = nil, 
        nEndDate = nil, 
        tbMessageParam = {nil}, 
        tbCondition = 
        { 
                 {"PlayerFunLib:CheckTotalLevel", {80,"default",">="} }, 
                 {"ThisActivity:CheckTask", {nTask_HuDie,400,"Чi hi謕 kh玭g  s? d鬾g 400 chi誧 Socola lo筰 1, kh玭g th? nh薾 thng",">="} }, 
                 {"ThisActivity:CheckTask", {TaskVarIdx_IsGet300Award,0,"Ngi  nh薾 thng.","=="} }, 
        }, 
        tbActition = 
        { 
                 {"PlayerFunLib:AddExp", {Get300Award,1,"S? d鬾g 400 chi誧 Socola lo筰 1 nh薾 thng."} },
                  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4825,1,0,0},},2,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4826,1,0,0},},3,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4827,1,0,0},},3,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4828,1,0,0},},3,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4829,1,0,0},},3,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4830,1,0,0},},3,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4831,1,0,0},},3,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4832,1,0,0},},3,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4833,1,0,0},},3,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4834,1,0,0},},3,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,30226,1,0,0},},3,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
 
                 {"ThisActivity:AddTask", {TaskVarIdx_IsGet300Award,1} }, 
        }, 
}
tbConfig[15] = --一个细节
{
	nId = 15,
	szMessageType = "nil", 
        szName = "Nh薾 ph莕 thng 600 c竔 Socola lo筰 1", 
        nStartDate = nil, 
        nEndDate = nil, 
        tbMessageParam = {nil}, 
        tbCondition = 
        { 
                 {"PlayerFunLib:CheckTotalLevel", {80,"default",">="} }, 
                 {"ThisActivity:CheckTask", {nTask_HuDie,600,"Чi hi謕 kh玭g  s? d鬾g 600 chi誧 Socola lo筰 1, kh玭g th? nh薾 thng",">="} }, 
                 {"ThisActivity:CheckTask", {TaskVarIdx_IsGet400Award,0,"Ngi  nh薾 thng.","=="} }, 
        }, 
        tbActition = 
        { 
                 {"PlayerFunLib:AddExp", {Get300Award,1,"S? d鬾g 600 chi誧 Socola lo筰 1 nh薾 thng."} },
                   {"PlayerFunLib:GetItem",	{{tbProp={6,1,4825,1,0,0},},4,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4826,1,0,0},},4,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4827,1,0,0},},4,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4828,1,0,0},},4,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4829,1,0,0},},4,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4830,1,0,0},},4,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4831,1,0,0},},4,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4832,1,0,0},},4,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4833,1,0,0},},4,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4834,1,0,0},},4,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,30226,1,0,0},},4,"[T輓h n╪g socola] [H頿 th祅h socola]"} }, 
                 {"ThisActivity:AddTask", {TaskVarIdx_IsGet400Award,1} }, 
        }, 
}
tbConfig[16] = --一个细节
{
	nId = 16,
	szMessageType = "nil", 
        szName = "Nh薾 ph莕 thng 800 c竔 Socola lo筰 1", 
        nStartDate = nil, 
        nEndDate = nil, 
        tbMessageParam = {nil}, 
        tbCondition = 
        { 
                 {"PlayerFunLib:CheckTotalLevel", {80,"default",">="} }, 
                 {"ThisActivity:CheckTask", {nTask_HuDie,800,"Чi hi謕 kh玭g  s? d鬾g 800 chi誧 Socola lo筰 1, kh玭g th? nh薾 thng",">="} }, 
                 {"ThisActivity:CheckTask", {TaskVarIdx_IsGet500Award,0,"Ngi  nh薾 thng.","=="} }, 
        }, 
        tbActition = 
        { 
                 {"PlayerFunLib:AddExp", {Get300Award,1,"S? d鬾g 800 chi誧 Socola lo筰 1 nh薾 thng."} }, 
                   {"PlayerFunLib:GetItem",	{{tbProp={6,1,4825,1,0,0},},5,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4826,1,0,0},},5,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4827,1,0,0},},5,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4828,1,0,0},},5,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4829,1,0,0},},5,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4830,1,0,0},},5,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4831,1,0,0},},5,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4832,1,0,0},},5,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4833,1,0,0},},5,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4834,1,0,0},},5,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,30226,1,0,0},},5,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
                 {"ThisActivity:AddTask", {TaskVarIdx_IsGet500Award,1} }, 
        }, 
}
tbConfig[17] = --一个细节
{
	nId = 17,
	szMessageType = "nil", 
        szName = "Nh薾 ph莕 thng 1000 c竔 Socola lo筰 1", 
        nStartDate = nil, 
        nEndDate = nil, 
        tbMessageParam = {nil}, 
        tbCondition = 
        { 
                 {"PlayerFunLib:CheckTotalLevel", {80,"default",">="} }, 
                 {"ThisActivity:CheckTask", {nTask_HuDie,1000,"Чi hi謕 kh玭g  s? d鬾g 1000 chi誧 Socola lo筰 1, kh玭g th?nh薾 thng",">="} }, 
                 {"ThisActivity:CheckTask", {TaskVarIdx_IsGet600Award,0,"Ngi  nh薾 thng.","=="} }, 
        }, 
        tbActition = 
        { 
                 {"PlayerFunLib:AddExp", {Get300Award,1,"S?d鬾g 1000 chi誧 S?c?la lo筰 1 nh薾 thng."} }, 
                   {"PlayerFunLib:GetItem",	{{tbProp={6,1,4825,1,0,0},},20,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4826,1,0,0},},20,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4827,1,0,0},},20,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4828,1,0,0},},20,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4829,1,0,0},},20,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4830,1,0,0},},20,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4831,1,0,0},},20,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4832,1,0,0},},20,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4833,1,0,0},},20,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4834,1,0,0},},20,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,30226,1,0,0},},20,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
                 {"ThisActivity:AddTask", {TaskVarIdx_IsGet600Award,1} }, 
        }, 
}
tbConfig[18] = --一个细节
{
	nId = 18,
	szMessageType = "ItemScript",
	szName = "S? d鬾g Socola lo筰 1",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {{tbProp={6,1,3527,1,0,0},}},

	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"C蕄 50 tr? l猲 m韎 c? th? s? d鬾g",">="} },
	},
	tbActition = 
	{

		{"PlayerFunLib:AddExp",	{50000000,0,"[T輓h n╪g socola][S? d鬾g Socola lo筰 2]"} },				
		{"ThisActivity:AddTask",	{nTask_HuDie,1} },
	},
}
tbConfig[19] = --一个细节
{
	nId = 18,
	szMessageType = "ItemScript",
	szName = "S? d鬾g Socola lo筰 1",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {{tbProp={6,1,3526,1,0,0},}},

	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"C蕄 50 tr? l猲 m韎 c? th? s? d鬾g",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:AddExp",	{10000000,0,"[T輓h n╪g socola][S? d鬾g Socola lo筰 3]"} },		
		{"ThisActivity:AddTask",	{nTask_HuDie,1} },
	},
}
tbConfig[20] = --一个细节
{
	nId = 18,
	szMessageType = "ItemScript",
	szName = "S? d鬾g Socola lo筰 1",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {{tbProp={6,1,3525,1,0,0},}},

	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"C蕄 50 tr? l猲 m韎 c? th? s? d鬾g",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:AddExp",	{1500000,0,"[T輓h n╪g socola][S? d鬾g Socola lo筰 4]"} },			
		{"ThisActivity:AddTask",	{nTask_HuDie,1} },
	},
}
tbConfig[21] = --宋金1000点
{
	nId = 3,
	szMessageType = "FinishSongJin",
	szName = "高级宋金1000点",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{500,">="} },
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,"<"} },
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3524,1,0,0},nExpiredTime=43200, nBindState=-2,},30,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4094,1,0,0},nExpiredTime=1440, nBindState=-2,},1,"[T輓h n╪g socola] [H頿 th祅h socola]"} },		
		{"tbVngTransLog:Write", {strTranLogFolder, nPromotionID, "宋金1000", "20 朵红玫瑰", 1}},
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3198,1,0,0},},20,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
		
	},
}
tbConfig[22] = --杀手boss
{
	nId = 6,
	szMessageType = "NpcOnDeath",
	szName = "90级杀手任务",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckKillerdBoss",	{90} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3524,1,0,0},nExpiredTime=43200, nBindState=-2,},20,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4822,1,0,0},},2,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3198,1,0,0},},20,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
	},
}
tbConfig[23] =
{
	nId = 23,
	szMessageType = "FinishYesou",
	szName = "一天内已完成10个野叟任务",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {1},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTaskDaily",	{TaskVarIdx_YeSou,0,"","=="} },
		{"PlayerFunLib:CheckTaskDaily",	{TaskVarIdx_XinXiaLinMax,25,"","<"} },		
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3524,1,0,0},nExpiredTime=20501101, nBindState=-2,},2,"一天内已完成十个野叟任务"} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4822,1,0,0},},2,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
	},
}
tbConfig[24] = --宋金1000点
{
	nId = 3,
	szMessageType = "FinishSongJin",
	szName = "T鑞g kim cao c蕄 3000 甶觤",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3524,1,0,0},nExpiredTime=20501101, nBindState=-2,},20,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4822,1,0,0},},10,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3198,1,0,0},},20,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
	},
}
tbConfig[25] = --宋金1000点
{
	nId = 3,
	szMessageType = "FinishFengLingDu",
	szName = "Ho祅 th祅h Phong L╪g ч",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3524,1,0,0},nExpiredTime=43200, nBindState=-2,},20,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4093,1,0,0},nExpiredTime=1440, nBindState=-2,},1,"[T輓h n╪g socola] [H頿 th祅h socola]"} },			
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4822,1,0,0},},10,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3198,1,0,0},},20,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
	},
}

tbConfig[26] = --Boss th? gi韎
{
	nId = 10,
	szMessageType = "NpcOnDeath",
	szName = "Ti猽 di謙 boss th? gi韎",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckWorldBoss",	{nil} },
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3524,1,0,0},nExpiredTime=43200, nBindState=-2,},20,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3198,1,0,0},},20,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
	},
}

tbConfig[27] = --Vi猰 
{
	nId = 9,
	szMessageType = "YDBZguoguan",
	szName = "Vt qua 秈 Vi猰 д th? 10",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {10},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3524,1,0,0},nExpiredTime=43200, nBindState=-2,},20,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3198,1,0,0},},20,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
	},
}

tbConfig[28] = --thu? t芻 i u l躰h
{
	nId = 8,
	szMessageType = "NpcOnDeath",
	szName = "Ti猽 di謙 thu? t芻 i u l躰h",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"NpcFunLib:CheckId",	{"1692"} },
		{"NpcFunLib:CheckInMap",	{"337,338,339"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3524,1,0,0},nExpiredTime=43200, nBindState=-2,},20,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3198,1,0,0},},20,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
	},
}
tbConfig[29] = --Th駓 t芻 u l躰h
{
	nId = 7,
	szMessageType = "NpcOnDeath",
	szName = "Gi誸 ch誸 1 th駓 t芻 u l躰h",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckBoatBoss",	{nil} },
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3524,1,0,0},nExpiredTime=43200, nBindState=-2,},20,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3198,1,0,0},},20,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
	},
}

tbConfig[30] =
{
	nId = 6,
	szMessageType = "Chuanguan",
	szName = "Vt qua 秈 28",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"28"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
{"PlayerFunLib:GetItem",	{{tbProp={6,1,3524,1,0,0},nExpiredTime=43200, nBindState=-2,},20,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3198,1,0,0},},20,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
	},
}

tbConfig[31] =
{
	nId = 5,
	szMessageType = "Chuanguan",
	szName = "Vt qua 秈 17",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"17"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3524,1,0,0},nExpiredTime=43200, nBindState=-2,},20,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3198,1,0,0},},20,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
	},
}