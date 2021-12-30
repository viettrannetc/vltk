SPREADERNPC_ISADD = 1

spreadernpc = { 
	--{87,80,4,20,3545,6213,0," Ho�nh Ba Ti�n T� ",0,"\\script\\misc\\spreader\\spreader.lua"}, 
	--{87,80,4,53,1618,3179,0," Ho�nh Ba Ti�n T� ",0,"\\script\\misc\\spreader\\spreader.lua"}, 
	--{87,80,4,121,2010,4494,0," Ho�nh Ba Ti�n T� ",0,"\\script\\misc\\spreader\\spreader.lua"}, 
	--{87,80,4,99,1625,3184,0," Ho�nh Ba Ti�n T� ",0,"\\script\\misc\\spreader\\spreader.lua"}, 
	--{87,80,4,100,1611,3180,0," Ho�nh Ba Ti�n T� ",0,"\\script\\misc\\spreader\\spreader.lua"}, 
	--{87,80,4,101,1692,3130,0," Ho�nh Ba Ti�n T� ",0,"\\script\\misc\\spreader\\spreader.lua"}, 
	--{87,80,4,174,1639,3301,0," Ho�nh Ba Ti�n T� ",0,"\\script\\misc\\spreader\\spreader.lua"}, 
	--{87,80,4,153,1622,3232,0," Ho�nh Ba Ti�n T� ",0,"\\script\\misc\\spreader\\spreader.lua"}, 

{242,80,4,53,1627,3183,0,"Ng� Ph�",0,"\\script\\global\\pgaming\\cauca\\npc_nguphu.lua"},
{660,80,4,53,1632,3175,0,"Hoa S�n Ki�m Kh�ch",0,"\\script\\global\\pgaming\\npchoason\\hoason.lua"}, 
{660,80,4,20,3567,6190,0,"Hoa S�n Ki�m Kh�ch",0,"\\script\\global\\pgaming\\npchoason\\hoason.lua"}, 
{660,80,4,99,1641,3189,0,"Hoa S�n Ki�m Kh�ch",0,"\\script\\global\\pgaming\\npchoason\\hoason.lua"}, 
{660,80,4,100,1653,3129,0,"Hoa S�n Ki�m Kh�ch",0,"\\script\\global\\pgaming\\npchoason\\hoason.lua"}, 
{660,80,4,101,1693,3167,0,"Hoa S�n Ki�m Kh�ch",0,"\\script\\global\\pgaming\\npchoason\\hoason.lua"}, 
{660,80,4,121,1966,4508,0,"Hoa S�n Ki�m Kh�ch",0,"\\script\\global\\pgaming\\npchoason\\hoason.lua"}, 
{660,80,4,153,1638,3240,0,"Hoa S�n Ki�m Kh�ch",0,"\\script\\global\\pgaming\\npchoason\\hoason.lua"}, 
{660,80,4,174,1596,3271,0,"Hoa S�n Ki�m Kh�ch",0,"\\script\\global\\pgaming\\npchoason\\hoason.lua"}, 
{1528,80,4,176,1585,2953,0,"Th�n T�i",0,"\\script\\event\\springfestival07\\worker.lua"},
{1528,80,4,1,1584,3192,0,"Th�n T�i",0,"\\script\\event\\springfestival07\\worker.lua"},
{1528,80,4,37,1709,3118,0,"Th�n T�i",0,"\\script\\event\\springfestival07\\worker.lua"},
{1528,80,4,162,1621,3183,0,"Th�n T�i",0,"\\script\\event\\springfestival07\\worker.lua"},
{1528,80,4,78,1586,3223,0,"Th�n T�i",0,"\\script\\event\\springfestival07\\worker.lua"},
{1528,80,4,11,3139,5063,0,"Th�n T�i",0,"\\script\\event\\springfestival07\\worker.lua"},
{1867,80,4,53,1621,3180,0,"H� Tr� T�n Th�",0,"\\script\\global\\pgaming\\hotrotanthu\\hotropgaming.lua"},
{1867,80,4,174,1622,3192,0,"H� Tr� T�n Th�",0,"\\script\\global\\pgaming\\hotrotanthu\\hotropgaming.lua"},
{1867,80,4,153,1652,3219,0,"H� Tr� T�n Th�",0,"\\script\\global\\pgaming\\hotrotanthu\\hotropgaming.lua"},
{1867,80,4,121,1951,4499,0,"H� Tr� T�n Th�",0,"\\script\\global\\pgaming\\hotrotanthu\\hotropgaming.lua"},
{1867,80,4,101,1683,3160,0,"H� Tr� T�n Th�",0,"\\script\\global\\pgaming\\hotrotanthu\\hotropgaming.lua"},
{1867,80,4,100,1638,3142,0,"H� Tr� T�n Th�",0,"\\script\\global\\pgaming\\hotrotanthu\\hotropgaming.lua"},
{1867,80,4,99,1626,3209,0,"H� Tr� T�n Th�",0,"\\script\\global\\pgaming\\hotrotanthu\\hotropgaming.lua"},
{1867,80,4,20,3559,6224,0,"H� Tr� T�n Th�",0,"\\script\\global\\pgaming\\hotrotanthu\\hotropgaming.lua"},
{1849,80,4,78,1578,3205,0,"NPC Gift Code",0,"\\script\\global\\pgaming\\npc\\npcgifcode.lua"},
{1802,80,4,53,1617,3203,0,"NPC T� C�ng Full Skill",0,"\\script\\global\\pgaming\\npc\\npccongfullskill.lua"},
{1577,80,4,78,1594,3221,0,"NPC Reset Event",0,"\\script\\global\\pgaming\\npc\\rsevent.lua"},
{1577,80,4,967,1636,3221,0,"Nh�n th��ng h�ng ng�y Skill 150",0,"\\script\\global\\pgaming\\npc\\nhanthuongexpskill150.lua"},

}

function add_spreadernpc(tbnpc) 
	if (SPREADERNPC_ISADD) then 
		for i = 1 , getn(tbnpc) do 
			Mid = SubWorldID2Idx(tbnpc[i][4]); 
				if (Mid >= 0 ) then 
					TabValue5 = tbnpc[i][5] * 32; 
					TabValue6 = tbnpc[i][6] * 32; 
					local nNpcIdx = AddNpc(tbnpc[i][1],tbnpc[i][2],Mid,TabValue5,TabValue6,tbnpc[i][7],tbnpc[i][8]); 
				SetNpcScript(nNpcIdx, tbnpc[i][10]); 
				end; 
		end; 
	end; 
end
