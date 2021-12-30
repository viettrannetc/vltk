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
-------�ֲ��������� ����---
tbConfig = {}
tbConfig[1] = --һ��ϸ��
{
	nId = 1,
	szMessageType = "NpcOnDeath",
	szName = "�߹ֵ�����ź��",
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
tbConfig[2] = --һ��ϸ��
{
	nId = 2,
	szMessageType = "NpcOnDeath",
	szName = "�߹ֵ���̶���",
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
tbConfig[3] = --һ��ϸ��
{
	nId = 3,
	szMessageType = "NpcOnDeath",
	szName = "�߹ֵ�����ͷ",
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
tbConfig[4] = --һ��ϸ��
{
	nId = 4,
	szMessageType = "ClickNpc",
	szName = "��ҵ��������ũ",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"��i S� L�o L�o"},
	tbCondition = 
	{
	},
	tbActition = 
	{
                {"SetDialogTitle",	{"<npc>Socola r�t l� ngon, ��i hi�p c� th� t�ng cho c�c ��i hi�p n� ��i hi�p mu�n Socola g� ��y ?"} },
		{"AddDialogOpt",	{"Ta mu�n ��i Socola.",5} },
                --{"AddDialogOpt",	{"Nh�n ph�n th��ng s� d�ng socola.",10} },
                
	},
}
tbConfig[5] = --һ��ϸ��
{
	nId = 5,
	szMessageType = "CreateDialog",
	szName = "�ϳɻ��ֵȼ�",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {"<npc>C�c h� mu�n h�p th�nh lo�i socola n�o ?"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"H�p th�nh Socola lo�i 4",6} },
		{"AddDialogOpt",	{"H�p th�nh Socola lo�i 3",7} },
		{"AddDialogOpt",	{"H�p th�nh Socola lo�i 2",8} },
		{"AddDialogOpt",	{"H�p th�nh Socola lo�i 1",9} },
	},
}
tbConfig[6] = --һ��ϸ��
{
	nId = 6,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh SoCoLa lo�i 4",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {"H�p th�nh SoCoLa lo�i 4",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"SoCoLa lo�i 5",{tbProp={6,1,3524,1,0,0},},2} },
                {"AddOneMaterial",	{"160000 l��ng",{nJxb=160000,},1} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C�p 50 tr� l�n m�i tham gia ho�t ��ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3525,1,0,0},nExpiredTime=43200, nBindState=-2,},1,"[T�nh n�ng socola] [H�p th�nh socola]"} },
	},
}
tbConfig[7] = --һ��ϸ��
{
	nId = 7,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh SoCoLa lo�i 3",
	nStartDate = 201408090000,
	nEndDate  = 201910110000,
	tbMessageParam = {"H�p th�nh SoCoLa lo�i 3",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"SoCoLa lo�i 5",{tbProp={6,1,3524,1,0,0},},1} },
                {"AddOneMaterial",	{"SoCoLa lo�i 4",{tbProp={6,1,3525,1,0,0},},1} },               
		{"PlayerFunLib:CheckTotalLevel",	{50,"C�p 50 tr� l�n m�i tham gia ho�t ��ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3526,1,0,0},nExpiredTime=43200, nBindState=-2,},1,"[T�nh n�ng socola] [H�p th�nh socola]"} },
	},
}
tbConfig[8] = --һ��ϸ��
{
	nId = 8,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh SoCoLa lo�i 2",
	nnStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {"H�p th�nh SoCoLa lo�i 2",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"SoCoLa lo�i 5",{tbProp={6,1,3524,1,0,0},},1} },
                {"AddOneMaterial",	{"SoCoLa lo�i 3",{tbProp={6,1,3526,1,0,0},},1} },                
		{"PlayerFunLib:CheckTotalLevel",	{50,"C�p 50 tr� l�n m�i tham gia ho�t ��ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3527,1,0,0},nExpiredTime=43200, nBindState=-2,},1,"[T�nh n�ng socola] [H�p th�nh socola]"} },
	},
}
tbConfig[9] = --һ��ϸ��
{
	nId = 9,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh SoCoLa lo�i 1",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {"H�p th�nh SoCoLa lo�i 1",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"SoCoLa lo�i 5",{tbProp={6,1,3524,1,0,0},},1} },
                {"AddOneMaterial",	{"SoCoLa lo�i 2",{tbProp={6,1,3527,1,0,0},},1} },                
		{"PlayerFunLib:CheckTotalLevel",	{50,"C�p 50 tr� l�n m�i tham gia ho�t ��ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3528,1,0,0},nExpiredTime=43200, nBindState=-2,},1,"[T�nh n�ng socola] [H�p th�nh socola]"} },
	},
}
tbConfig[10] = --һ��ϸ��
{
	nId = 10,
	szMessageType = "CreateDialog",
	szName = "Nh�n th��ng SoCoLa",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {"<npc>C�c h� mu�n nh�n ph�n th��ng s� d�ng socola n�o ?"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Nh�n ph�n th��ng 100 c�i Socola lo�i 1",12} },
		{"AddDialogOpt",	{"Nh�n ph�n th��ng 200 c�i Socola lo�i 1",13} },
		{"AddDialogOpt",	{"Nh�n ph�n th��ng 400 c�i Socola lo�i 1",14} },
		{"AddDialogOpt",	{"Nh�n ph�n th��ng 600 c�i Socola lo�i 1",15} },
                {"AddDialogOpt",	{"Nh�n ph�n th��ng 800 c�i Socola lo�i 1",16} },
		{"AddDialogOpt",	{"Nh�n ph�n th��ng 1000 c�i Socola lo�i 1",17} },
	},
}
tbConfig[11] = --һ��ϸ��
{
	nId = 11,
	szMessageType = "ItemScript",
	szName = "S� d�ng SoCoLa lo�i 1",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {{tbProp={6,1,3528,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"C�p 50 tr� l�n m�i c? th� s� d�ng",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:AddExp",	{10000000,0,"[T�nh n�ng socola][S� d�ng Socola lo�i 1]"} },
		{"ThisActivity:AddTask",	{nTask_HuDie,1} },
	},
}
tbConfig[12] = --һ��ϸ��
{
	nId = 12, 
        szMessageType = "nil", 
        szName = "Nh�n ph�n th��ng 100 c�i Socola lo�i 1", 
        nStartDate = nil, 
        nEndDate = nil, 
        tbMessageParam = {nil}, 
        tbCondition = 
        { 
                 {"PlayerFunLib:CheckTotalLevel", {80,"default",">="} }, 
                 {"ThisActivity:CheckTask", {nTask_HuDie,2,"��i hi�p kh�ng �� s� d�ng 100 chi�c Socola lo�i 1, kh�ng th� nh�n th��ng",">="} }, 
                 {"ThisActivity:CheckTask", {TaskVarIdx_IsGet100Award,0,"Ng��i �� nh�n th��ng.","=="} }, 
        }, 
        tbActition = 
        { 
                 {"PlayerFunLib:AddExp", {Get300Award,1,"S� d�ng 100 chi�c Socola lo�i 1 nh�n th��ng."} }, 
                  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4825,1,0,0},},1,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4826,1,0,0},},1,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4827,1,0,0},},1,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4828,1,0,0},},1,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4829,1,0,0},},1,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4830,1,0,0},},1,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4831,1,0,0},},1,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4832,1,0,0},},1,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4833,1,0,0},},1,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4834,1,0,0},},1,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,30226,1,0,0},},1,"[T�nh n�ng socola] [H�p th�nh socola]"} },
                 {"ThisActivity:AddTask", {TaskVarIdx_IsGet100Award,1} }, 
        }, 
}
tbConfig[13] = --һ��ϸ��
{
	nId = 13,
	szMessageType = "nil", 
        szName = "Nh�n ph�n th��ng 200 c�i Socola lo�i 1", 
        nStartDate = nil, 
        nEndDate = nil, 
        tbMessageParam = {nil}, 
        tbCondition = 
        { 
                 {"PlayerFunLib:CheckTotalLevel", {80,"default",">="} }, 
                 {"ThisActivity:CheckTask", {nTask_HuDie,200,"��i hi�p kh�ng �� s� d�ng 200 chi�c Socola lo�i 1, kh�ng th� nh�n th��ng",">="} }, 
                 {"ThisActivity:CheckTask", {TaskVarIdx_IsGet200Award,0,"Ng��i �� nh�n th��ng.","=="} }, 
        }, 
        tbActition = 
        { 
                 {"PlayerFunLib:AddExp", {Get300Award,1,"S� d�ng 200 chi�c Socola lo�i 1 nh�n th��ng."} }, 
                   {"PlayerFunLib:GetItem",	{{tbProp={6,1,4825,1,0,0},},2,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4826,1,0,0},},2,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4827,1,0,0},},2,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4828,1,0,0},},2,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4829,1,0,0},},2,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4830,1,0,0},},2,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4831,1,0,0},},2,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4832,1,0,0},},2,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4833,1,0,0},},2,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4834,1,0,0},},2,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,30226,1,0,0},},2,"[T�nh n�ng socola] [H�p th�nh socola]"} },
                 {"ThisActivity:AddTask", {TaskVarIdx_IsGet200Award,1} }, 
        }, 
}
tbConfig[14] = --һ��ϸ��
{
	nId = 14,
	szMessageType = "nil", 
        szName = "Nh�n ph�n th��ng 400 c�i Socola lo�i 1", 
        nStartDate = nil, 
        nEndDate = nil, 
        tbMessageParam = {nil}, 
        tbCondition = 
        { 
                 {"PlayerFunLib:CheckTotalLevel", {80,"default",">="} }, 
                 {"ThisActivity:CheckTask", {nTask_HuDie,400,"��i hi�p kh�ng �� s� d�ng 400 chi�c Socola lo�i 1, kh�ng th� nh�n th��ng",">="} }, 
                 {"ThisActivity:CheckTask", {TaskVarIdx_IsGet300Award,0,"Ng��i �� nh�n th��ng.","=="} }, 
        }, 
        tbActition = 
        { 
                 {"PlayerFunLib:AddExp", {Get300Award,1,"S� d�ng 400 chi�c Socola lo�i 1 nh�n th��ng."} },
                  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4825,1,0,0},},2,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4826,1,0,0},},3,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4827,1,0,0},},3,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4828,1,0,0},},3,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4829,1,0,0},},3,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4830,1,0,0},},3,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4831,1,0,0},},3,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4832,1,0,0},},3,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4833,1,0,0},},3,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4834,1,0,0},},3,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,30226,1,0,0},},3,"[T�nh n�ng socola] [H�p th�nh socola]"} },
 
                 {"ThisActivity:AddTask", {TaskVarIdx_IsGet300Award,1} }, 
        }, 
}
tbConfig[15] = --һ��ϸ��
{
	nId = 15,
	szMessageType = "nil", 
        szName = "Nh�n ph�n th��ng 600 c�i Socola lo�i 1", 
        nStartDate = nil, 
        nEndDate = nil, 
        tbMessageParam = {nil}, 
        tbCondition = 
        { 
                 {"PlayerFunLib:CheckTotalLevel", {80,"default",">="} }, 
                 {"ThisActivity:CheckTask", {nTask_HuDie,600,"��i hi�p kh�ng �� s� d�ng 600 chi�c Socola lo�i 1, kh�ng th� nh�n th��ng",">="} }, 
                 {"ThisActivity:CheckTask", {TaskVarIdx_IsGet400Award,0,"Ng��i �� nh�n th��ng.","=="} }, 
        }, 
        tbActition = 
        { 
                 {"PlayerFunLib:AddExp", {Get300Award,1,"S� d�ng 600 chi�c Socola lo�i 1 nh�n th��ng."} },
                   {"PlayerFunLib:GetItem",	{{tbProp={6,1,4825,1,0,0},},4,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4826,1,0,0},},4,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4827,1,0,0},},4,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4828,1,0,0},},4,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4829,1,0,0},},4,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4830,1,0,0},},4,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4831,1,0,0},},4,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4832,1,0,0},},4,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4833,1,0,0},},4,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4834,1,0,0},},4,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,30226,1,0,0},},4,"[T�nh n�ng socola] [H�p th�nh socola]"} }, 
                 {"ThisActivity:AddTask", {TaskVarIdx_IsGet400Award,1} }, 
        }, 
}
tbConfig[16] = --һ��ϸ��
{
	nId = 16,
	szMessageType = "nil", 
        szName = "Nh�n ph�n th��ng 800 c�i Socola lo�i 1", 
        nStartDate = nil, 
        nEndDate = nil, 
        tbMessageParam = {nil}, 
        tbCondition = 
        { 
                 {"PlayerFunLib:CheckTotalLevel", {80,"default",">="} }, 
                 {"ThisActivity:CheckTask", {nTask_HuDie,800,"��i hi�p kh�ng �� s� d�ng 800 chi�c Socola lo�i 1, kh�ng th� nh�n th��ng",">="} }, 
                 {"ThisActivity:CheckTask", {TaskVarIdx_IsGet500Award,0,"Ng��i �� nh�n th��ng.","=="} }, 
        }, 
        tbActition = 
        { 
                 {"PlayerFunLib:AddExp", {Get300Award,1,"S� d�ng 800 chi�c Socola lo�i 1 nh�n th��ng."} }, 
                   {"PlayerFunLib:GetItem",	{{tbProp={6,1,4825,1,0,0},},5,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4826,1,0,0},},5,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4827,1,0,0},},5,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4828,1,0,0},},5,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4829,1,0,0},},5,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4830,1,0,0},},5,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4831,1,0,0},},5,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4832,1,0,0},},5,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4833,1,0,0},},5,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4834,1,0,0},},5,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,30226,1,0,0},},5,"[T�nh n�ng socola] [H�p th�nh socola]"} },
                 {"ThisActivity:AddTask", {TaskVarIdx_IsGet500Award,1} }, 
        }, 
}
tbConfig[17] = --һ��ϸ��
{
	nId = 17,
	szMessageType = "nil", 
        szName = "Nh�n ph�n th��ng 1000 c�i Socola lo�i 1", 
        nStartDate = nil, 
        nEndDate = nil, 
        tbMessageParam = {nil}, 
        tbCondition = 
        { 
                 {"PlayerFunLib:CheckTotalLevel", {80,"default",">="} }, 
                 {"ThisActivity:CheckTask", {nTask_HuDie,1000,"��i hi�p kh�ng �� s� d�ng 1000 chi�c Socola lo�i 1, kh�ng th?nh�n th��ng",">="} }, 
                 {"ThisActivity:CheckTask", {TaskVarIdx_IsGet600Award,0,"Ng��i �� nh�n th��ng.","=="} }, 
        }, 
        tbActition = 
        { 
                 {"PlayerFunLib:AddExp", {Get300Award,1,"S?d�ng 1000 chi�c S?c?la lo�i 1 nh�n th��ng."} }, 
                   {"PlayerFunLib:GetItem",	{{tbProp={6,1,4825,1,0,0},},20,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4826,1,0,0},},20,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4827,1,0,0},},20,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4828,1,0,0},},20,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4829,1,0,0},},20,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4830,1,0,0},},20,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4831,1,0,0},},20,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4832,1,0,0},},20,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4833,1,0,0},},20,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,4834,1,0,0},},20,"[T�nh n�ng socola] [H�p th�nh socola]"} },
				  {"PlayerFunLib:GetItem",	{{tbProp={6,1,30226,1,0,0},},20,"[T�nh n�ng socola] [H�p th�nh socola]"} },
                 {"ThisActivity:AddTask", {TaskVarIdx_IsGet600Award,1} }, 
        }, 
}
tbConfig[18] = --һ��ϸ��
{
	nId = 18,
	szMessageType = "ItemScript",
	szName = "S� d�ng Socola lo�i 1",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {{tbProp={6,1,3527,1,0,0},}},

	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"C�p 50 tr� l�n m�i c? th� s� d�ng",">="} },
	},
	tbActition = 
	{

		{"PlayerFunLib:AddExp",	{50000000,0,"[T�nh n�ng socola][S� d�ng Socola lo�i 2]"} },				
		{"ThisActivity:AddTask",	{nTask_HuDie,1} },
	},
}
tbConfig[19] = --һ��ϸ��
{
	nId = 18,
	szMessageType = "ItemScript",
	szName = "S� d�ng Socola lo�i 1",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {{tbProp={6,1,3526,1,0,0},}},

	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"C�p 50 tr� l�n m�i c? th� s� d�ng",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:AddExp",	{10000000,0,"[T�nh n�ng socola][S� d�ng Socola lo�i 3]"} },		
		{"ThisActivity:AddTask",	{nTask_HuDie,1} },
	},
}
tbConfig[20] = --һ��ϸ��
{
	nId = 18,
	szMessageType = "ItemScript",
	szName = "S� d�ng Socola lo�i 1",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {{tbProp={6,1,3525,1,0,0},}},

	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"C�p 50 tr� l�n m�i c? th� s� d�ng",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:AddExp",	{1500000,0,"[T�nh n�ng socola][S� d�ng Socola lo�i 4]"} },			
		{"ThisActivity:AddTask",	{nTask_HuDie,1} },
	},
}
tbConfig[21] = --�ν�1000��
{
	nId = 3,
	szMessageType = "FinishSongJin",
	szName = "�߼��ν�1000��",
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
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3524,1,0,0},nExpiredTime=43200, nBindState=-2,},30,"[T�nh n�ng socola] [H�p th�nh socola]"} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4094,1,0,0},nExpiredTime=1440, nBindState=-2,},1,"[T�nh n�ng socola] [H�p th�nh socola]"} },		
		{"tbVngTransLog:Write", {strTranLogFolder, nPromotionID, "�ν�1000", "20 ���õ��", 1}},
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3198,1,0,0},},20,"[T�nh n�ng socola] [H�p th�nh socola]"} },
		
	},
}
tbConfig[22] = --ɱ��boss
{
	nId = 6,
	szMessageType = "NpcOnDeath",
	szName = "90��ɱ������",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckKillerdBoss",	{90} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3524,1,0,0},nExpiredTime=43200, nBindState=-2,},20,"[T�nh n�ng socola] [H�p th�nh socola]"} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4822,1,0,0},},2,"[T�nh n�ng socola] [H�p th�nh socola]"} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3198,1,0,0},},20,"[T�nh n�ng socola] [H�p th�nh socola]"} },
	},
}
tbConfig[23] =
{
	nId = 23,
	szMessageType = "FinishYesou",
	szName = "һ���������10��Ұ������",
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
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3524,1,0,0},nExpiredTime=20501101, nBindState=-2,},2,"һ���������ʮ��Ұ������"} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4822,1,0,0},},2,"[T�nh n�ng socola] [H�p th�nh socola]"} },
	},
}
tbConfig[24] = --�ν�1000��
{
	nId = 3,
	szMessageType = "FinishSongJin",
	szName = "T�ng kim cao c�p 3000 �i�m",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3524,1,0,0},nExpiredTime=20501101, nBindState=-2,},20,"[T�nh n�ng socola] [H�p th�nh socola]"} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4822,1,0,0},},10,"[T�nh n�ng socola] [H�p th�nh socola]"} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3198,1,0,0},},20,"[T�nh n�ng socola] [H�p th�nh socola]"} },
	},
}
tbConfig[25] = --�ν�1000��
{
	nId = 3,
	szMessageType = "FinishFengLingDu",
	szName = "Ho�n th�nh Phong L�ng ��",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3524,1,0,0},nExpiredTime=43200, nBindState=-2,},20,"[T�nh n�ng socola] [H�p th�nh socola]"} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4093,1,0,0},nExpiredTime=1440, nBindState=-2,},1,"[T�nh n�ng socola] [H�p th�nh socola]"} },			
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4822,1,0,0},},10,"[T�nh n�ng socola] [H�p th�nh socola]"} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3198,1,0,0},},20,"[T�nh n�ng socola] [H�p th�nh socola]"} },
	},
}

tbConfig[26] = --Boss th� gi�i
{
	nId = 10,
	szMessageType = "NpcOnDeath",
	szName = "Ti�u di�t boss th� gi�i",
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
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3524,1,0,0},nExpiredTime=43200, nBindState=-2,},20,"[T�nh n�ng socola] [H�p th�nh socola]"} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3198,1,0,0},},20,"[T�nh n�ng socola] [H�p th�nh socola]"} },
	},
}

tbConfig[27] = --Vi�m ��
{
	nId = 9,
	szMessageType = "YDBZguoguan",
	szName = "V��t qua �i Vi�m �� th� 10",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {10},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3524,1,0,0},nExpiredTime=43200, nBindState=-2,},20,"[T�nh n�ng socola] [H�p th�nh socola]"} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3198,1,0,0},},20,"[T�nh n�ng socola] [H�p th�nh socola]"} },
	},
}

tbConfig[28] = --thu� t�c ��i ��u l�nh
{
	nId = 8,
	szMessageType = "NpcOnDeath",
	szName = "Ti�u di�t thu� t�c ��i ��u l�nh",
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
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3524,1,0,0},nExpiredTime=43200, nBindState=-2,},20,"[T�nh n�ng socola] [H�p th�nh socola]"} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3198,1,0,0},},20,"[T�nh n�ng socola] [H�p th�nh socola]"} },
	},
}
tbConfig[29] = --Th�y t�c ��u l�nh
{
	nId = 7,
	szMessageType = "NpcOnDeath",
	szName = "Gi�t ch�t 1 th�y t�c ��u l�nh",
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
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3524,1,0,0},nExpiredTime=43200, nBindState=-2,},20,"[T�nh n�ng socola] [H�p th�nh socola]"} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3198,1,0,0},},20,"[T�nh n�ng socola] [H�p th�nh socola]"} },
	},
}

tbConfig[30] =
{
	nId = 6,
	szMessageType = "Chuanguan",
	szName = "V��t qua �i 28",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"28"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
{"PlayerFunLib:GetItem",	{{tbProp={6,1,3524,1,0,0},nExpiredTime=43200, nBindState=-2,},20,"[T�nh n�ng socola] [H�p th�nh socola]"} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3198,1,0,0},},20,"[T�nh n�ng socola] [H�p th�nh socola]"} },
	},
}

tbConfig[31] =
{
	nId = 5,
	szMessageType = "Chuanguan",
	szName = "V��t qua �i 17",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"17"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3524,1,0,0},nExpiredTime=43200, nBindState=-2,},20,"[T�nh n�ng socola] [H�p th�nh socola]"} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3198,1,0,0},},20,"[T�nh n�ng socola] [H�p th�nh socola]"} },
	},
}