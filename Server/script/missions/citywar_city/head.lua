--1、入场地点必须在统一的一个地点，可以与拿票的npc统一的一个
--2、票的实现方法？暂时不放了，测完这些再加吧
--
--免费服 攻城战
--2006-11-22
--by 子非鱼
IncludeLib("FILESYS");
IncludeLib("TITLE");
IncludeLib("SETTING");
IncludeLib("BATTLE");


TSK_TEMP_CURTIME = 114
TSK_TEMP_CURCOUNT = 115

tb_CW_MEDICINE =
{
	{10, {6,1,1302,1,1,1}, 1000, "Ng� hoa ng鋍 l� ho祅 - c玭g th祅h chi課."},
	{11, {6,1,1303,1,1,1}, 800, "C鰑 chuy觧 ho祅 h錸 n - c玭g th祅h chi課"},
	{12, {6,1,1304,1,1,1}, 800, "Th� � ho祅 h錸 n - c玭g th祅h chi課"},
	{13, {6,1,1305,1,1,1}, 800, "Long di猲 h鉧 c n - c玭g th祅h chi課"},
}

MISSIONID = 6;
FRAME2TIME = 18;	--18帧游戏时间相当于1秒钟
REPORTTIME 	= 60 * FRAME2TIME; --60秒公布一下战况
GAMETIME 	= 90 * 60  * FRAME2TIME; -- 交战总时间为90分钟
CITYWAR_TOP10_EXP = 3000000;


MS_STATE = 1; --任务中记录任务状态的变量ID
--该变量指向的状态值0表示战役为打开，1表示战役报名中，2表示战役战斗进行中，3表示战役刚刚结束了
MS_STORETASKID = 240;
MS_NEWSVALUE = 10; --任务中存放新闻变量的地方
MS_SYMBOLCOUNT = 3; --石碑的数量
MS_SYMBOLBEGIN = 15;--记录石碑状态的变量ID第一个序号，从MS_SYMBOLBEIN 到MS_SYMBOLBEGIN + MS_SYMBOLCOUNT分别记录各个石碑的状态值

MS_STONENPC1 = 25; 
MS_STONENPC2 = 26;
MS_STONENPC3 = 27;

MS_TSCBEGIN = 50;-- mission中记录投石车是否已有的状态标志
g_nDoorCount = 3; --城门的总数
g_nMaxTscPerDoor = 3; --每个门最大可以出现的投石车数量
MS_GCCBEGIN = MS_TSCBEGIN + g_nDoorCount * g_nMaxTscPerDoor;
g_nMaxGccPerDoor = 1; --攻方每个门最多存在攻城车的数量
--gccbegin = 59
--toolbegin = 62
--doorbegin = 62 + 6 = 68
MS_TOOLBEGIN = MS_GCCBEGIN + g_nMaxGccPerDoor * g_nDoorCount;
g_nMaxToolCount = 6; --守方最大同时存在的雇佣兵人数

MS_DOORBEGIN = MS_TOOLBEGIN + g_nMaxToolCount; --记录城门状态的mission参数index
MS_KEY = 99


TV_TASKID = 230; 	--记录玩家当前任务ID
TV_TASKVALUE = 231; 	--记录玩家当前任务的值,记录所属方,宋为1，金为2
TV_TASKKEY = 232; 	--记录玩家当前任务的key号
TV_CITYID = 233;

CS_RevId 	= 20
CS_RevData 	= 10;

MAX_CAMP1COUNT = 200;--守城方帮会最大可以参加的人数
MAX_CAMP2COUNT = 200;--攻城方帮会最大可以参加的人数
MAX_CAMP3COUNT = 50 ;--允许守城方最大可以要求协助的其它帮会人数
MAX_CAMP4COUNT = 50 ;--允许攻城方最大可以要求协助的其它帮会人数

--Move t� trap h藆 doanh v祇 c玭g th祅h v� l璾 rng cho ch誸
CS_CampPos1 = {221, 1280, 2912};			--phe th�
CS_CampPos2 = {221, 1632, 3280};			--phe c玭g

STONENPCID1 = 528;				--ID NPC long tr� th�
STONENPCID2 = 530;				--ID NPC long tr� c玭g
STONELEVEL1 = 10; 				--c蕄  long tr� th�
STONELEVEL2 = 20;   				--c蕄  long tr� c玭g
STONENAME = "Bia  nh th祅h ";
DOORNPCID =  532;					--ID NPC c鯽 th祅h
DOORLEVEL = 60;					--c蕄  npc c鯽 th祅h

StonePos = 					--T鋋  v� t猲 c竎 long tr�
{
{x = 47232, y = 94592, Name = "мnh Xuy猲 Tr� "},		
{x = 45312, y = 96800, Name = "L藀 Dng Tr� "},
{x = 43392, y = 98912, Name = "B譶h Giang Tr� "},
};

DoorPos=						--t鋋  v� t猲 c鯽 th祅h
{
{x = 1542*32, y = 3024*32, Name="мnh Xuy猲 m玭"},
{x = 1478*32, y = 3087*32, Name="L藀 Dng m玭"},
{x = 1414*32, y = 3149*32, Name="B譶h Giang m玭"},
};
--DoorPos=						--t鋋  v� t猲 c鯽 th祅h
--{
--{x = 49312, y = 96736, Name="мnh Xuy猲 m玭"},
--{x = 47264, y = 98752, Name="L藀 Dng m玭"},
--{x = 45216, y = 100768, Name="B譶h Giang m玭"},
--};

DOCTORNPCID = 230;				--ID NPC b竛 thu鑓
DoctorPos = 					--t鋋  v� t猲 b竛 thu鑓
{
{41472,92576,"T飝 Qu﹏ dc Y"},
{42272,93408,"T飝 Qu﹏ dc Y"},
{53120,104832,"T飝 Qu﹏ dc Y"},
{52640,104288,"T飝 Qu﹏ dc Y"},
--{61184,114176,"T飝 Qu﹏ dc Y"},
--{61600,114592,"T飝 Qu﹏ dc Y"},
--{60128,115168,"T飝 Qu﹏ dc Y"},
--{60672,115616,"T飝 Qu﹏ dc Y"},
}

--前两个是投石车的坐标，后两个是投点的坐标
TscPos=					--Toa do npc pha thanh
{
{50528,97216,50080,96480},
{49920,97312,49248,96672},
{49664,98112,49120,97504},

{48576,99360,48032,98560},
{47776,99360,47136,98688},
{47712,100192,46848,98656},

{46592,101248,45344,100576},
{45856,101408,45120,100736},
{45856,101984,45216,101472},
};

GccPos = 
{
{49856,97344},
{47808,99296},
{45632,101184},
};

OuterPos = 					
{
{222, 1613, 3185},					--t鋋  v� map v� h藆 doanh phe th�
{223, 1613, 3185},					--t鋋  v� map v� h藆 doanh phe c玭g
}


--ObstaclePos = 					--t鋋  ch苙 khi ch璦 ph� c鯽 th祅h m玭
--{
--{1543*32, 3023*32},					--c鯽 th祅h 1
--{1479*32, 3086*32},					--c鯽 th祅h 2
--{1415*32, 3148*32},					--c鯽 th祅h 3
--}

ObstaclePos = 					--t鋋  ch苙 khi ch璦 ph� c鯽 th祅h m玭
{
{49312, 96736},					--c鯽 th祅h 1
{47264, 98752},					--c鯽 th祅h 2
{45216,100768},					--c鯽 th祅h 3
}

----------------Title Value-------------------------------------
	RA_KILL_PL_RANK = {10, 2.334, 0.934, 0.84, 0.56, 0.35}	
 	--7 玩家士兵	--7/3 玩家校尉	--14/15 玩家统领	--21/25 玩家副将	--14/25 玩家大将	--7/20 玩家元帅
 BONUS_KILLPLAYER = 75
	BONUS_MAXSERIESKILL = 150
 	RANK_PKBONUS = {
 	{1,	6/5,7/5	,8/5,2	},
	{4/5,1,	6/5,7/5,8/5	},
	{3/5,4/5,1,	6/5,7/5	},
	{2/5,3/5,4/5,1,	6/5	},
	{1/5,2/5,3/5,4/5,1},
	};
	
	TAB_SERIESKILL =    --记录不同rank的玩家，在PK时，是否记录实际连斩的表，1表示记录，0表示不记录
	{
		{1,1,1,1,1},
		{1,1,1,1,1},
		{1,1,1,1,1},
		{0,1,1,1,1},
		{0,0,1,1,1},
	};
	
	BALANCE_MAMCOUNT = 15
	TAB_RANKBONUS = {0, 1000, 3000, 6000,10000};
	RANK_SKILL = 661;
	TAB_RANKMSG = {
	"B筺 頲 phong l� <color=white>Binh S�<color>!",
	"Hi謓 產ng 頲 t蕁 phong l祄 <color=0xa0ff>Hi謚 髖<color>!",
	"Hi謓 產ng 頲 t蕁 phong l祄 <color=0xff>Th鑞g l躰h<color>!",
	"Hi謓 產ng 頲 t蕁 phong l祄 <color=yellow>Ph� tng<color>!",
	"Hi謓 產ng 頲 t蕁 phong l祄 <color=yellow><bclr=red>Чi tng<bclr><color>!",
	"B筺 頲 phong l� <color=yellow>Nguy猲 So竔<color=>!"}
	
	tbRANKNAME={"<color=white>Binh S�<color>", "<color=0xa0ff>Hi謚 髖<color>", "<color=0xff>Th鑞g L躰h<color>", "<color=yellow>Ph� Tng<color.", "<color=yellow><bclr=red>Чi Tng<bclr><color>" , "<color=black>Nguy猲 So竔<color>"}
	
	TITLE_BONUSRANK1 = 0		--成为相应头衔所需积分值
	TITLE_BONUSRANK2 = 10000
	TITLE_BONUSRANK3 = 20000
	TITLE_BONUSRANK4 = 40000
	TITLE_BONUSRANK5 = 60000
	TITLE_BONUSRANK6 = 80000
	
	TITLE_PL2RANK1_N = 400		--相应头衔的玩家最大人数
	TITLE_PL2RANK2_N = 60
	TITLE_PL2RANK3_N = 25
	TITLE_PL2RANK4_N = 10
	TITLE_PL2RANK5_N = 5
	TITLE_PL2RANK6_N = 1
	
---------------------------------------------------------------
TV_LASTDEATHTIME = 2306	
TV_LASTDEATHMAPX = 2307
TV_LASTDEATHMAPY = 2308
TV_SERIESKILL_REALY = 2305  --玩家当前的实际连斩值（高级杀比较低级的玩家，计连斩，但不计真实连斩）

	
--BATTLE TASK---------------------
		PL_TOTALPOINT = 1
		PL_KILLPLAYER = 2
		PL_KILLNPC = 3
		PL_BEKILLED = 4
		PL_SNAPFLAG = 5
		PL_KILLRANK1 = 6
		PL_KILLRANK2 = 7
		PL_KILLRANK3 = 8
		PL_KILLRANK4 = 9
		PL_KILLRANK5 = 10
		PL_KILLRANK6 = 11
		PL_KILLRANK7 = 12
		PL_MAXSERIESKILL = 13		--玩家整个战局的最大连斩数
		PL_SERIESKILL = 14			--玩家当前的连斩数
		PL_FINISHGOAL = 15
		PL_1VS1 = 16
		PL_GETITEM = 17
		PL_WINSIDE = 18
		PL_PRISEGRADE = 19	
		PL_AVERAGEGRADE = 20
		PL_WINGRADE = 21	
		PL_PARAM1 = 22
		PL_PARAM2 = 23
		PL_PARAM3 = 24
		PL_PARAM4 = 25
		PL_PARAM5 = 26
		PL_CURRANK = 27	-- =PL_PARAM6 = 27 表示玩家当前的官职，目前使用第6号参数
		
		PL_BATTLEID=41
		PL_RULEID=42
		PL_BATTLECAMP = 43
		PL_BATTLESERIES = 44 --记录玩家上一次参加战役的战役流水号
		PL_KEYNUMBER = 45
		PL_LASTDEATHTIME = 46
		PL_BATTLEPOINT = 47	--记录玩家本战役的总积分，总积分是玩家所参加的各场战局的积分总和, E(PL_TOTALPOINT1 + PL_TOTALPOINT2+ ...)
		PL_ROUND = 48

		GAME_KEY = 1
		GAME_BATTLEID = 2
		GAME_RULEID = 3
		GAME_MAPID = 4	
		GAME_CAMP1 = 5
		GAME_CAMP2 = 6
		GAME_MAPICONID = 7
		GAME_RESTTIME = 8
		GAME_LEVEL = 9 
		GAME_MODE = 10
		GAME_CAMP1AREA= 11
		GAME_CAMP2AREA= 12
		GAME_BATTLESERIES = 13
		GAME_ROUND = 14

--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~华丽的分割线~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

function CheckWin()
	local nResult = 0;--守方石碑的数量
	local nCount = MS_SYMBOLCOUNT;
	for i  = 1, nCount do 
		 if (GetMissionV(MS_SYMBOLBEGIN + i - 1) == 2) then 
		 	nResult = nResult + 1;
		 end;
	end
	return nResult;
end;
--------------------------------------------------------------------------------------
function GameWin(nWinner)
	if (nWinner == 1) then 
		str = "Chung cu閏" .. "phe th�:"..GetGamerName(1).."Th緉g l頸 l韓 r錳, ti誴 t鬰 duy tr�! "..GetGameCity().."Gi祅h quy襫 th鑞g tr�! Ti誴 t鬰 duy tr� ";
		NotifyWarResult(GetWarOfCity(), 0)
	else
		str= "Chung cu閏" .. "phe c玭g:"..GetGamerName(2) .. "Thu 頲 i th緉g l頸! Th緉g l頸 r錳! "..GetGameCity().."Gi祅h quy襫 th鑞g tr�! Ti誴 t鬰 duy tr� ";
	
		NotifyWarResult(GetWarOfCity(), 1)
	end;
	
	WriteLog(date("%m%d-%H:%M")..str)
	AddGlobalNews(str); 
	CloseMission(MISSIONID);
end;

--------------------------------------------------------------------------------------
-----将秒传换成分与秒，比如62s = 1m2s
function GetMinAndSec(nSec)
	nRestMin = floor(nSec / 60);
	nRestSec = mod(nSec,60)
	return nRestMin, nRestSec;
end;
---------------------------------------------------------------------------
--获取城战的城市
function GetWarOfCity()
	for i = 1,7 do
		if (HaveBeginWar(i) ~= 0) then
			return i;
		end;
	end;
	return 0;
end;
---------------------------------------------------------------------------

function GetGamerName(nWinner)
	CityID = GetWarOfCity();
	Tong1, Tong2=GetCityWarBothSides(CityID);
	if (nWinner == 1) then 
		return Tong2;
	else 
		return Tong1;
	end;
end;
----------------------------------------------------------------------------
function GetGameCity()
	CityID = GetWarOfCity();
	return GetCityAreaName(CityID);
end;
----------------------------------------------------------------------------

function GetNearstPos(X,Y, PosTab)
	PosCount = getn(PosTab);
	PosId = 0;
	MaxDist = 999999999;

	BeyondCount = 0;--超过最大允许距离的数量,如果都超过的话，就返回0

	for i = 1, PosCount do 
		Dist = sqrt( (X-PosTab[i][1]) * (X-PosTab[i][1]) + (Y - PosTab[i][2]) * (Y - PosTab[i][2]))
		if (Dist >= 600) then 
			BeyondCount = BeyondCount + 1;
		end;
		if (i == 1) then 
			PosId = 1
			MaxDist = Dist
		elseif (MaxDist > Dist) then 
			PosId = i
			MaxDist = Dist
		end
	end;

	if (BeyondCount >= PosCount) then
		return 0
	else
		return PosId;
	end;
end;

function CreateObstacle(X,Y)
	for i=-10,3 do 
		AddObstacleObj(359, 221, X + i * 16 ,Y - i * 16)
	end
end;

function ClearObstacle(X,Y)
	for i=-10,3 do 
		ClearObstacleObj(221, X + i * 16 ,Y - i * 16)
	end
end;

function DelNpcSafe(nNpcIndex)
	WriteLog(GetLoop()..": DelNpcSafe:"..nNpcIndex);
	
	if (nNpcIndex <= 0 )  then
		return
	end
	
	PIdx = NpcIdx2PIdx(nNpcIndex);
	if (PIdx > 0) then 
		WriteLog("L鏸!!! DelNpc mu鑞 x鉧 b� m閠 gamer ");
		return
	end;
	
	DelNpc(nNpcIndex)
end;

function sf_onplayerleave()
	RestoreOwnFeature()
end

---------------------L蕐 甶觤 set danh hi謚------------------------------------------
function bt_JudgePLAddTitle()
	local nCurRank = BT_GetData(PL_CURRANK)
	if ( nCurRank >= getn(TAB_RANKBONUS)) then
		return
	end
	if (BT_GetData(PL_TOTALPOINT) < TAB_RANKBONUS[nCurRank + 1]) then
		return	
	end
	local nRankCount = getn(TAB_RANKBONUS)
	for i = 1, getn(TAB_RANKBONUS) do 
		if (BT_GetData(PL_TOTALPOINT) >= TAB_RANKBONUS[nRankCount - i + 1] ) then
				bt_RankEffect(nRankCount - i + 1)
				return
		end
	end
end
function bt_RankEffect(rank)
	if (rank == 0) then
		rank = 1
	end
	local campnum = 89
	if (GetCurCamp() == 2) then
		campnum = campnum + 5
	end
	Title_AddTitle(campnum + rank - 1, 0, 9999999)
	Title_ActiveTitle(campnum + rank - 1)
--	AddSkillState(RANK_SKILL, rank - 1, 0, 999999);
	Msg2Player(TAB_RANKMSG[rank]);
	BT_SetData(PL_CURRANK, rank);
end

-------------------------add 甶觤 c鑞g hi課----------------------------------

function bt_addtotalpoint(point)
	if (point == 0) then
		return
	end
	BT_SetData(PL_TOTALPOINT, BT_GetData(PL_TOTALPOINT) + point)
	bt_JudgePLAddTitle()
end

--------------------------计算积分---------------------------------------
function ResetBonus()
	BT_SetTypeBonus(PL_KILLPLAYER, 1, floor(BONUS_KILLPLAYER))
	BT_SetTypeBonus(PL_MAXSERIESKILL, 1, floor(BONUS_MAXSERIESKILL))
	
	BT_SetTypeBonus(PL_KILLPLAYER, 2, floor(BONUS_KILLPLAYER))
	BT_SetTypeBonus(PL_MAXSERIESKILL, 2, floor(BONUS_MAXSERIESKILL))
end
------------------------------------------------------------------------------------
-------------------------------------------------------------------------
function bt_setnormaltask2type()
--701已经被占用，所以更换到751
BT_SetType2Task(1, 751)
for i = 2, 50 do 
	BT_SetType2Task(i, 700 + i);
end
end
