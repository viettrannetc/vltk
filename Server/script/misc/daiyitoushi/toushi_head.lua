-- ====================== Chuyen Phai ======================
--------Script by ThongHon
----------12/04/2017
-- ======================================================

IncludeLib("FILESYS");
IncludeLib("SETTING");
Include("\\script\\global\\skills_table.lua");				-- thu muc skill
Include("\\script\\task\\metempsychosis\\task_func.lua");	-- tassk
Include("\\script\\task\\system\\task_string.lua");			-- dinh dang
Include("\\script\\lib\\common.lua");						--


FILE_SKILLEXP			= "\\settings\\npc\\player\\magic_level_exp.txt";
TB_TOUSHI_SKILLEXP		= {};

function toushiLoadMagicLevelExp()
	local b1			= TabFile_Load(FILE_SKILLEXP, "DaiYiTouShiLevelExp");
	
	if b1~=1 then
		print("Error!!!! Load Magic_Level_Exp File Error!!!");
		return
	end
	
	local nRowCount		= TabFile_GetRowCount("DaiYiTouShiLevelExp");
	
	for y = 2, nRowCount do
		local nSkill				= tonumber(TabFile_GetCell("DaiYiTouShiLevelExp", y, "MAGICID"));
		TB_TOUSHI_SKILLEXP[nSkill]	= {};
		
		for k = 1, 20 do
			TB_TOUSHI_SKILLEXP[nSkill][k]	= tonumber(TabFile_GetCell("DaiYiTouShiLevelExp", y, "LEVEL"..k));
		end
	end
end
toushiLoadMagicLevelExp();

LV120_SKILL_ID				=	2463					-- ID skill 120
TSK_LV150_SKILL				=	2885					-- 150skill ID
TSK_TOUSHI_FLAG				=	1881					-- Xac nhan da nop tin vat													
TSK_ZHENPAILINGDAN_USECNT	=	1882;
TSK_TOUSHI_COUNT			=	1883;					-- so lan nop
TSK_LAST_CHANGE_FACTION     =   2604;                   -- thay doi gia tri mon phai
TOUSHI_FACTION_CHUSHI	=	70*256;					-- ko biet
TOUSHI_FACTION_HUISHI	=	80*256;					-- ko biet
TOUSHI_90SKILL_TASK		=	255;					-- 90skill task
TOUSHI_150SKILL_TASKSTATE	=	14;					-- 150 skill task
TOUSHI_COLDDOWN_TIME    =   60*24*60*60;                     -- thoi gian co the chuyen phai
TOUSHI_UNKNOWN		= -1;				-- ko biet
TOUSHI_SUCCEED		= 1;				-- thanh cong
TOUSHI_LVLERR		= 2;				-- ko biet
TOUSHI_FLAGERR		= 3;				-- ko biet
TOUSHI_LGERR		= 4;				-- ko biet
TOUSHI_EQUIPERR		= 5;				-- xx
TOUSHI_REDOERR		= 6;				-- xx
TOUSHI_EQFACTERR	= 7;				-- xx
TOUSHI_MALEERR		= 8;				-- xx
TOUSHI_FEMALEERR	= 9;				-- xx
TOUSHI_TWFEMALEERR	= 10;				-- xx
TOUSHI_NOFACTERR	= 11;				-- xx
TOUSHI_NOFREEBAG	= 12;				-- xx
TOUSHI_TIMEERR	    = 13;				-- xx

TB_TOUSHI_MENPAIXINWU		= {6, 1, 1670}				-- xx ID Key
TB_TOUSHI_YANGYINGXINWU		= {6, 1, 1671}				-- xx ID Key
TB_TOUSHI_ZHENPAILINGDAN	= {6, 1, 1704, 1, 0, 0}		-- xx
TB_TOUSHI_ZHENPAILINGYAO	= {6, 1, 1705, 1, 0, 0}		-- xx
TB_TOUSHI_HIERARCH			= {"Ch��ng m�n", "Gi�o ch�", "Bang ch� "};	-- xung ho tuy mon phai
TB_TOUSHI_ERR_MSG			= 							-- doi thoai
	{
		[TOUSHI_UNKNOWN]		= "<dec><npc>Kh�ng th� l�m nh� v�y ���c.",
		[TOUSHI_LVLERR]			= "<dec><npc>Hi�n t�i ng��i v�n ch�a �� {c�p 120}, h�y �i r�n luy�n th�m �i!",
		[TOUSHI_FLAGERR]		= "<dec><npc>Mu�n gia nh�p b�n bang, ch��ng m�n c�a ng��i �� ��ng � ch�a?",
		[TOUSHI_LGERR]			= "<dec><npc>Mu�n gia nh�p b�n bang, c�n ph�i {gi�i t�n quan h� chi�n ��i li�n ��u}.",
		[TOUSHI_EQUIPERR]		= "<dec><npc>Mu�n gia nh�p b�n bang, c�n ph�i c�i h�t trang b� tr�n ng��i xu�ng!",
		[TOUSHI_REDOERR]		= "<dec><npc><sex> �� chuy�n th�nh c�ng sang m�n ph�i m�i.",
		[TOUSHI_EQFACTERR]		= "<dec><npc>S� ph� cho ph�p ng��i xu�ng n�i t�m con ���ng v� h�c m�i, v� c�ng hi v�ng ng��i c� ng�y h�ng b� thi�n h�",
		[TOUSHI_MALEERR]		= "<dec><npc>V� <sex> �� t�m ��y ��n ��y, ch�c c�ng �� bi�t t�t c� s� vi�c t� ch��ng m�n m� ��n. Nh�ng m� ng��i kh�ng ph� h�p gia nh�p v�i m�n ph�i.",
		[TOUSHI_TWFEMALEERR]	= "<dec><npc>Ng��i v�n ch�a c� t�n v�t c�a b�n bang ch�, kh�ng th� gia nh�p ���c m�n ph�i.",
		[TOUSHI_NOFACTERR]		= "<dec><npc>Th�t l� k� l�! Ta nh�n kh�ng ra ng��i tu luy�n v� c�ng thu�c m�n ph�i n�o?",
		[TOUSHI_NOFREEBAG]		= "<dec><npc>H�nh trang kh�ng ��, h�y s�p x�p r�i quay l�i nh�.",
		[TOUSHI_TIMEERR]		= format("<dec><npc>Sau khi chuy�n m�n ph�i <color=green>%d<color> ng�y m�i c� th� ti�p t�c chuy�n.", TOUSHI_COLDDOWN_TIME/(24*60*60)),
	}

TB_TOUSHI_ERR_MSG[TOUSHI_FEMALEERR] = TB_TOUSHI_ERR_MSG[TOUSHI_MALEERR];

TB_DAIYITOUSHI_FACTS = 					-- xxx
	{
		{-- Thieu Lam
			szFacName		=	"shaolin",	nFacNumb	=	0,	nCamp	=	1,	nRankId	=	72,	nSeries	=	0,
			nTaskId_Fact	=	7,
			nTaskId_90Skill	=	122,
			nTaskId_137 	=	137,		nValue_137	=	67,
			tbSkillID		=	{
							[10]	=	{
											14,		
											10,		
										},
										
							[20]	=	{
											8,		
											4,		
											6,		
										},
										
							[30]	=	{
											15,		
										},
										
							[40]	=	{
											16,		
										},
										
							[50]	=	{
											20,		
										},
										
							[60]	=	{
											271,	
											11,		
											19,		
										},
										
							[70]	=	{
											273,	
											21,	
											318,
											319,
											321,
											709,
											1055,
											1056,
											1057,
												
										},
										
							[90]	=	{
											{318, 1, "Quy�n ph�p"},			
											{319, 1, "C�n ph�p"},
											{321, 1, "�ao ph�p"},	
										},
										
							[120]	=	{
											{709, 1}
										},
										
							[150]	=	{
											{1055, 1, "Quy�n ph�p"},	
											{1056, 1, "C�n ph�p"},	
											{1057, 1, "�ao ph�p"},	
										},
						},
			szMsg = "K� t� h�m nay %s gia nh�p m�n ph�i Thi�u L�m, sau n�y nh� c�c huynh ch� gi�o!",
		},	
		
		{-- Thien Vuong
			szFacName		=	"tianwang",	nFacNumb	=	1,	nCamp	=	3,	nRankId	=	69,	nSeries	=	0,
			nTaskId_Fact	=	3,
			nTaskId_90Skill	=	121,
			nTaskId_137		=	137,		nValue_137	=	63,
			tbSkillID		=	{
							[10]	=	{
											34,		
											30,		
											29,		
										},
										
							[20]	=	{
											26,		
											23,		
											24,		
										},
										
							[30]	=	{
											33,		
										},
										
							[40]	=	{
											37,		
											35,		
											31,		
										},
										
							[50]	=	{
											40,		
										},
										
							[60]	=	{
											42,		
										},
										
							[70]	=	{
											32,		
											36,		
											41,		
											324,
											322,
											323,
											325,
											708,
											1058,
											1060,
											1059,
										},
										
							[90]	=	{
											{322, 1, "�ao ph�p"},	
											{323, 1, "Th��ng ph�p"},	
											{325, 1, "Ch�y ph�p"},	
										},
										
							[120]	=	{
											{708, 1}	--
										},
										
							[150]	=	{
											{1058, 1, "�ao ph�p"},	
											{1060, 1, "Th��ng ph�p"},	
											{1059, 1, "Ch�y ph�p"},	
										},
						},
			szMsg = "K� t� h�m nay %s gia nh�p Thi�n V��ng, nh� c�c s� huynh ch� gi�o!",
		},
		
		{-- Ngu Doc
			szFacName		=	"tangmen",	nFacNumb	=	2,	nCamp	=	3,	nRankId	=	76,	nSeries	=	1,
			nTaskId_Fact	=	2,
			nTaskId_90Skill	=	123,
			nTaskId_137		=	137,	nValue_137	=	62,
			tbSkillID		=	{
							[10]	=	{
											45,		-- ������[45 ]�����ţ�
										},
										
							[20]	=	{
											43,		-- ���Ű���[43 ]��10����
											347,	-- �����[347]��10����
										},
										
							[30]	=	{
											303,	-- ���̹�  [303]��20����
										},
										
							[40]	=	{
											50,		-- ׷�ļ�  [50 ]��30����
											54,		-- ���컨��[54 ]��30����
											47,		-- �����  [47 ]��30����
											343,	-- ���Ĵ�  [343]��30����
										},
										
							[50]	=	{
											345,	-- ������  [345]��40����
										},
										
							[60]	=	{
											349,	-- �׻���[349]��50����
										},
										
							[70]	=	{
											249,	-- С��ɵ�[249]��60����
											48,		-- ����  [48 ]�����ɣ�
											58,		-- ���޵���[58 ]��60����
											341,
											339,-------
											302,
											342,
											351,
											710,
											1069,
											1070,
											1071,
											1110,
											-- ɢ����  [341]��60����
										},
										
							[90]	=	{
											{339, 1, "Phi �ao"},	-- �����Ӱ[339]��90����
											{302, 1, "N� ti�n"},	-- �����滨[302]��90����
											{342, 1, "Phi Ti�u"},	-- �Ź�����[342]��90����
											351,	-- �һ���  [351]��90����
										},
										
							[120]	=	{
											{710, 1}
										},
										
							[150]	=	{
											{1069, 1, "Phi �ao"},	-- ��Ӱ��
											{1070, 1, "N� ti�n"},	-- ������ɱ
											{1071, 1, "Phi Ti�u"},	-- Ǭ��һ��
											1110,	-- �����һ���
										},
						},
			szMsg = "K� t� h�m nay, %s gia nh�p ���ng m�n, c�m phi�n c�c s� huynh s� t� ch� gi�o!",
		},
		
		{-- Duong Mon
			szFacName		=	"wudu",	nFacNumb	=	3,	nCamp	=	2,	nRankId	=	80,	nSeries	=	1,
			nTaskId_Fact	=	10,
			nTaskId_90Skill	=	124,
			nTaskId_137		=	137,	nValue_137	=	70,
			tbSkillID		=	{
							[10]	=	{
											63,		-- ��ɰ��  [63]�����ţ�
											65,		-- Ѫ����ɱ[65]�����ţ�
										},
										
							[20]	=	{
											62,		-- �嶾�Ʒ�[62]��10����
											60,		-- �嶾����[60]��10����
											67,		-- �������[67]��10����
										},
										
							[30]	=	{
											70,		-- ����ʴ��[70]��20����
											66,		-- ����ҩ��[66]��20����
										},
										
							[40]	=	{
											68,		-- ��ڤ����[68 ]��30����
											384,	-- �ٶ�����[384]��30����
											64,		-- ��������[64 ]��30����
											69,		-- ���ι�  [69]��30����
										},
										
							[50]	=	{
											356,	-- �����Ƽ�  [356]��40����
											73,		-- ���ʴ��[73 ]��40����
										},
										
							[60]	=	{
											72,		-- ���Ķ���[72]��50����
											
										},
										
							[70]	=	{
											71,		-- ���ɷ��[71 ]��60����
											75,		-- �嶾�澭[75]�����ɣ�
											74,	
											353,----------------
											355,
											390,
											711,
											1066,
											1067,
											-- �����ڤ  [74 ]��60����
										},
										
							[90]	=	{
											{353, 1, "Ch��ng ph�p"},	-- ����ʴ��[353]��90����
											{355, 1, "�ao ph�p"},	-- ����ն  [355]��90����
											390,	-- [390]��90����
										},
										
							[120]	=	{
											{711, 1}
										},
										
							[150]	=	{
											{1066, 1, "Ch��ng ph�p"},	-- ��������
											{1067, 1, "�ao ph�p"},	-- �Ļ���Ӱ
										},
						},
			szMsg = "K� t� h�m nay, %s gia nh�p m�n Ng� ��c gi�o, c�m phi�n c�c s� huynh s� t� ch� gi�o!",
		},
		
		{-- Nga My
			szFacName		=	"emei",	nFacNumb	=	4,	nCamp	=	1,	nRankId	=	64,	nSeries	=	2,
			nTaskId_Fact	=	1,
			nTaskId_90Skill	=	125,
			nTaskId_137		=	137,	nValue_137 = 61,
			tbSkillID		=	{
							[10]	=	{
											85,		
											80,		
										},
										
							[20]	=	{
											77,		
											79,		
										},
										
							[30]	=	{
											93,		
										},
										
							[40]	=	{
											385,	
											82,		
											89,		
										},
										
							[50]	=	{
											86,		
										},
										
							[60]	=	{
											92,		
										},
										
							[70]	=	{
											88,		
											252,	
											91,		
											282,
											328,---------
											380,
											332,
											712,
											1061,
											1062,
											1114,
										},
										
							[90]	=	{
											{328, 1, "Ki�m ph�p"},	
											{380, 1, "Ch��ng ph�p"},	
											332,	
										},
										
							[120]	=	{
											{712, 1}
										},
										
							[150]	=	{
											{1061, 1, "Ki�m ph�p"},	
											{1062, 1, "Ch��ng ph�p"},	
											{1114, 1, "H� tr� "},	
										},
						},
			szMsg = "K� t� h�m nay, %s gia nh�p Nga My ph�i, c�m phi�n c�c s� t� ch� gi�o",
		},
		
		{-- Thuy Yen
			szFacName		=	"cuiyan",	nFacNumb	=	5,	nCamp	=	3,	nRankId	=	67,	nSeries	=	2,
			nTaskId_Fact	=	6,
			nTaskId_90Skill	=	126,
			nTaskId_137		=	137,	nValue_137	=	66,
			tbSkillID = {
							[10]	=	{
											99,		-- �绨ѩ��[99 ]�����ţ�
											102,	-- ����ѩ[102]�����ţ�
										},
										
							[20]	=	{
											95,		-- ���̵���[95 ]��10����
											97,		-- ����˫��[97 ]��10����
										},
										
							[30]	=	{
											269,	-- ����ٻӰ[269]��20����
										},
										
							[40]	=	{
											105,	-- ����滨[105]��30����
											113,	-- ����ɢѩ[113]��30����
										},
										
							[50]	=	{
											100,	-- ���庮��[100]��30����
										},
										
							[60]	=	{
											109,	-- ѩӰ    [109]��40����
										},
										
							[70]	=	{
											108,	-- ��Ұ����[108]��60����
											114,	-- ����ѩ��[114]�����ɣ�
											111,
											336,----------------------------
											337,
											713,
											1063,
											1065,
											-- �̺�����[111]��60����
										},
										
							[90]	=	{
											{336, 1, "�ao ph�p"},	-- ������Ӱ[336]��90����
											{337, 1, "Song �ao"},	-- ��������[337]��90����
										},
										
							[120]	=	{
											{713, 1}
										},
										
							[150]	=	{
											{1063, 1, "�ao ph�p"},	-- ��ȸԽ֦
											{1065, 1, "Song �ao"},	-- ˮӳ����
										},
						},
			szMsg = "K� t� h�m nay, %s gia nh�p Th�y Y�n m�n, c�m phi�n c�c s� t� ch� gi�o!",
		},
		
		{-- Cai Bang
			szFacName		=	"gaibang",	nFacNumb	=	6,	nCamp	=	1,	nRankId	=	78,	nSeries	=	3,
			nTaskId_Fact	=	8,
			nTaskId_90Skill	=	128,
			nTaskId_137		=	137,	nValue_137	=	68,
			tbSkillID		=	{
							[10]	=	{
											122,	-- ��������[122]�����ţ�
											119,	-- �����в�[119]�����ţ�
										},
										
							[20]	=	{
											116,	-- ؤ���Ʒ�[116]��10����
											115,	-- ؤ�����[115]��10����
										},
										
							[30]	=	{
											129,	-- ����Ϊ��[129]��20����
										},
										
							[40]	=	{
											274,	-- ������[274]��30����
											124,	-- ����[124]��30����
										},
										
							[50]	=	{
											277,	-- ��������[277]��40��
										},
										
							[60]	=	{
											128,	-- �����л�[128]��50����
											125,	-- �����[125]��50����
										},
										
							[70]	=	{
											130,	-- �������[130]�����ɣ�
											360,
											357,---------
											359,
											714,
											1073,
											1074,	-- ��ң��[360]��60����
										},
										
							[90]	=	{
											{357, 1, "Ch��ng ph�p"},	-- ��������[357]��90����
											{359, 1, "B�ng ph�p"},	-- �����޹�[359]��90����
										},
										
							[120]	=	{
											{714, 1}
										},
										
							[150]	=	{
											{1073, 1, "Ch��ng ph�p"},	-- ʱ������
											{1074, 1, "B�ng ph�p"},	-- �����ӵ�
										},
						},
			szMsg = "K� t� h�m nay, %s gia nh�p C�i Bang, c�m phi�n c�c ti�n b�i ch� gi�o!",
		},
		
		{-- Thien Nhan
			szFacName		=	"tianren",	nFacNumb	=	7,	nCamp	=	2,	nRankId	=	81,	nSeries	=	3,
			nTaskId_Fact	=	4,
			nTaskId_90Skill	=	127,
			nTaskId_137		=	137,	nValue_137 = 64,
			tbSkillID		=	{
							[10]	=	{
											135,	-- ������Ѫ[135]�����ţ�
											145,	-- ��ָ����[145]�����ţ�
										},
										
							[20]	=	{
											132,	-- ����ì��[132]��10����
											131,	-- ���̵���[131]��10����
											136,	-- �������[136]��10����
										},
										
							[30]	=	{
											137,	--��Ӱ�ɺ�[137]��20����
										},
										
							[40]	=	{
											141,	-- �һ�����[141]��30����
											138,	-- ��ɽ�[138]��30����
											140,	-- �ɺ��޼�[140]��30����
										},
										
							[50]	=	{
											364,	-- �������[364]��40����
										},
										
							[60]	=	{
											143,	-- ��ħ���[143]��50����
										},
										
							[70]	=	{
											142,	-- ͵�컻��[142]��60����
											150,	-- ��ħ����[150]�����ɣ�
											148,
											361,----------------
											362,
											391,
											715,
											1075,
											1076,	-- ħ����ɱ[148]��60����
										},
										
							[90]	=	{
											{361, 1, "Th��ng ph�p"},	-- ������  [361]��90����
											{362, 1, "�ao ph�p"},	-- ��������[362]��90����
											391,	-- [391]��90����
										},
										
							[120]	=	{
											{715, 1}
										},
										
							[150]	=	{
											{1075, 1, "Th��ng ph�p"},	-- ����ŭ��
											{1076, 1, "�ao ph�p"},	-- ������ԭ
										},
						},
			szMsg = "K� t� h�m nay, %s gia nh�p Thi�n Nh�n gi�o, b�i ki�n c�c s� huynh s� t�!",
		},
		
		{-- Vo Dang
			szFacName		=	"wudang",	nFacNumb	=	8,	nCamp	=	1,	nRankId	=	73,	nSeries	=	4,
			nTaskId_Fact	=	5,
			nTaskId_90Skill	=	129,
			nTaskId_137		=	137,	nValue_137	=	65,
			tbSkillID		=	{
							[10]	=	{
											153,	-- ŭ��ָ  [153]�����ţ�
											155,	-- �׺�����[155]�����ţ�
										},
										
							[20]	=	{
											152,	-- �䵱ȭ��[152]��10����
											151,	-- �䵱����[151]��10����
										},
										
							[30]	=	{
											159,	-- ������  [159]��30����
										},
										
							[40]	=	{
											164,	-- ��������[164]��30����
											158,	-- ���ɾ���[158]��30����
										},
										
							[50]	=	{
											160,	-- ������  [160]��40����
										},
										
							[60]	=	{
											157,	-- ��������[157]��50����
										},
										
							[70]	=	{
											165,	-- �����޽�[165]��60����
											166,	-- ̫����[166]�����ɣ�
											267,
											365,-------------------------
											368,
											716,
											1078,
											1079,	-- ��������[267]��60����
										},
										
							[90]	=	{
											{365, 1, "Quy�n ph�p"},	-- ����޼�[365]��90����
											{368, 1, "Ki�m ph�p"},	-- �˽���һ[368]��90����
										},
										
							[120]	=	{
											{716, 1}
										},
										
							[150]	=	{
											{1078, 1, "Quy�n ph�p"},	-- �컯̫��
											{1079, 1, "Ki�m ph�p"},	-- �����Ǻ�
										},
						},
			szMsg = "K� t� h�m nay, %s gia nh�p V� �ang ph�i, tham ki�n c�c s� huynh s� t�!",
		},
		
		{-- Con Lon
			szFacName		=	"kunlun",	nFacNumb	=	9,	nCamp	=	3,	nRankId	=	75,	nSeries	=	4,
			nTaskId_Fact	=	9,
			nTaskId_90Skill	=	130,
			nTaskId_137		=	137,	nValue_137	=	69,
			tbSkillID		=	{
							[10]	=	{
											169,	-- ���編  [169]�����ţ�
											179,	-- �������[179]�����ţ�
										},
										
							[20]	=	{
											167,	-- ���ص���[167]��10����
											168,	-- ���ؽ���[168]��10����
											392,	-- ���־�[392]��10����
											171,	-- ����  [171]��10����
										},
										
							[30]	=	{
											174,	-- ��  [174]��20����
										},
										
							[40]	=	{
											178,	-- һ������[178]��30����
											172,	-- Ѹ����  [172]��30����
											393,	-- ȱ��ID��30����
											173,	-- �������[173]��30����
										},
										
							[50]	=	{
											175,	-- �ۺ���ѩ[175]��40����
											181,	-- ���ķ�  [181]��40����
										},
										
							[60]	=	{
											176,	-- ������[176]��50����
											90,		-- ���ٻ�Ӱ[90 ]��50����
										},
										
							[70]	=	{
											275,	-- ˪������[275]�����ɣ�
											182,	-- ��������[182]��60����
											630,
											372,---------
											375,
											394,
											717,
											1080,
											1081,	-- ��������Ƭ�����������¼���"�����޼�"
										},
										
							[90]	=	{
											{372, 1, "�ao ph�p"},	-- ��ѩХ��[372]��90����
											{375, 1, "Ki�m ph�p"},	-- �׶�����[375]��90����
											394,	-- [394]��90����
										},
										
							[120]	=	{
											{717, 1}
										},
										
							[150]	=	{
											{1080, 1, "�ao ph�p"},	-- �����
											{1081, 1, "Ki�m ph�p"},	-- ��������
										},
						},
			szMsg = "K� t� h�m nay, %s gia nh�p C�n L�n ph�i, b�i ki�n c�c v� ��o huynh!",
		},
		-------------Hoa Son---------	cuiyan  	 huashan	
		--szFacName		=	"emei",	nFacNumb	=	4,	nCamp	=	1,	nRankId	=	64,	nSeries	=	2,
		--	nTaskId_Fact	=	1,
		--{-- Hoa Son		
			--szFacName		=	"huashan",	nFacNumb	=	10,	nCamp	=	3,	nRankId	=	89,	nSeries	=	2,
			--nTaskId_Fact	=	11,
			--nTaskId_90Skill	=	131,
			--nTaskId_137		=	137,	nValue_137	=	71,
		{-- Nga My
			szFacName		=	"huashan",  nFacNumb	=	10,	nCamp	=	3,	nRankId	=	89,	nSeries	=	2,
			nTaskId_Fact	=	11,
			nTaskId_90Skill	=	131,
			nTaskId_137		=	137,	nValue_137 = 71,
			
			tbSkillID		=	{
						[10]	=	{
											1347,
											1372,
											1349,	-- Thanh Van Tong Sang
											1374,	-- Bach Hong Quan Nhat
										},
										
							[20]	=	{
											1350,	-- Long Nhuyen Than
											1375,	-- Kiem Tong Tong Quyet									
											
										},
										
							[30]	=	{
											1351,	-- Long Huyen Kiem Khi
											1376,	-- Kim Nhan Hoanh Khong
											
										},
										
							[40]	=	{
											1354,	-- Khi Chan Son Ha
											1378,	-- Ha Di Kiem Phap
											
											
										},
										
							[50]	=	{
											1355,	-- Ki Quan Truong Hong
											1379,	-- Thien Than Dao Huyen
																							
										},
										
							[60]	=	{
											1358, -- Thuong Tung Nghenh Khach	
											1360,	---Ma van Kiem KHi
											--1358, ---Huyen Nhan Chan Vien
											
										},
										
							[70]	=	{	
											1380, ---Huyen Nhan Chan Vien
											1364,
											1382,
											1365,
											1369,
											1384,
	
											
										},
										
							[90]	=	{
											{1364, 1, "Ki�m T�ng"},	-- Phach Thach Pha Ngoc
											{1382, 1, "Kh� T�ng"},	-- Doat Menh Lien Hoan
										
										},
										
							[120]	=	{
											{1365, 1} --------Xoa Skill
										},
										
							[150]	=	{
											{1369, 1, "Ki�m T�ng"},	--Cuu Kiem Hop Nhat
											{1384, 1, "Kh� T�ng"},	-- Than Quang Toan Nhieu
										},
						},
			szMsg = "K� t� h�m nay, %s gia nh�p Hoa S�n ph�i, b�i ki�n c�c v� ��o huynh!",
		},
				{-- Nga My
			szFacName		=	"huashan",	nFacNumb	=	10,	nCamp	=	3,	nRankId	=	89,	nSeries	=	2,
			nTaskId_Fact	=	11,
			nTaskId_90Skill	=	131,
			nTaskId_137		=	137,	nValue_137 = 71,
			
			tbSkillID		=	{
							[10]	=	{
											1347,
											1372,
											1349,	-- Thanh Van Tong Sang
											1374,	-- Bach Hong Quan Nhat
										},
										
							[20]	=	{
											1350,	-- Long Nhuyen Than
											1375,	-- Kiem Tong Tong Quyet									
											
										},
										
							[30]	=	{
											1351,	-- Long Huyen Kiem Khi
											1376,	-- Kim Nhan Hoanh Khong
											
										},
										
							[40]	=	{
											1354,	-- Khi Chan Son Ha
											1378,	-- Ha Di Kiem Phap
											
											
										},
										
							[50]	=	{
											1355,	-- Ki Quan Truong Hong
											1379,	-- Thien Than Dao Huyen
																							
										},
										
							[60]	=	{
											1358, -- Thuong Tung Nghenh Khach	
											1360,	---Ma van Kiem KHi
											--1358, ---Huyen Nhan Chan Vien
											
										},
										
							[70]	=	{	
											1380, ---Huyen Nhan Chan Vien
											1364,
											1382,
											1365,
											1369,
											1384,
	
											
										},
										
							[90]	=	{
											{1364, 1, "Ki�m T�ng"},	-- Phach Thach Pha Ngoc
											{1382, 1, "Kh� T�ng"},	-- Doat Menh Lien Hoan
										
										},
										
							[120]	=	{
											{1365, 1} --------Xoa Skill
										},
										
							[150]	=	{
											{1369, 1, "Ki�m T�ng"},	--Cuu Kiem Hop Nhat
											{1384, 1, "Kh� T�ng"},	-- Than Quang Toan Nhieu
											--1368,----------Doc Co Cuu Kiem
										},
						},
			szMsg = "K� t� h�m nay, %s gia nh�p Hoa S�n ph�i, b�i ki�n c�c v� ��o huynh!",
		},
}

TB_WUXING_SKILL_ID	= 
	{
		{nMagicId1	=	445, nMagicId2	=	534},
		{nMagicId1	=	446, nMagicId2	=	535},
		{nMagicId1	=	447, nMagicId2	=	536},
		{nMagicId1	=	448, nMagicId2	=	537},
		{nMagicId1	=	449, nMagicId2	=	538},
		{nMagicId1	=	450, nMagicId2	=	539},-----moi them
	}
