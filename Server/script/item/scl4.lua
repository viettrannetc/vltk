Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\task\\task_addplayerexp.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\vng_lib\\bittask_lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\vng_event\\ngusackettinh\\head.lua")
Include("\\script\\vng_event\\ngusackettinh\\item\\star_head.lua")
IncludeLib("ITEM")

TSK_USED = 5232	

NDAILYTIME = 100

tbNSKT_star_happiness = {}

function main()

	if(tbNSKT_Item_Star:checkCondition() == 0)then
		Talk(1, "", "B�n kh�ng �� �i�u ki�n s� d�ng v�t ph�m! Y�u c�u c�p �� tr�n 50 ")
		return 1
	end


	
	local szFailMsg = format("M�i ng�y m�i nh�n v�t ch� c� th� s� d�ng nhi�u nh�t   %d socola lo�i 4, ��i ng�y mai h�y s� d�ng ti�p",NDAILYTIME)	
	if PlayerFunLib:CheckTaskDaily(TSK_USED, NDAILYTIME, szFailMsg, "<") == 1 then
		PlayerFunLib:AddTaskDaily(TSK_USED, 1) 
		tbAwardTemplet:Give(tbAward, 1, {"ngusackettinh", "use_star_happiness"} )
			PickUp_haohangx_2()
			
	local tbAward = {
		{nExp_tl=1,nCount = 1200000,},
		}
		return 0
	end
	
	
	
	return 1
end



tb_Mareial_haohang_khoa = 
{
	100000,
	{
						{G=6,D=1,P=2527,LV=1,nExpiredTime=43200,szname="H�i Thi�n T�i T�o L� Bao ",nrate=0.085}, 
						{G=6,D=1,P=4822,LV=1,szname="T� Tinh Kho�ng Th�ch",nrate=0.070},
						--{G=6,D=1,P=2125,LV=1,szname="Ng� H�nh K� Th�ch",nrate=0.0098},  
						{G=6,D=1,P=71,nrate=0.010,szname="Ti�n Th�o L�",nExpiredTime=43200,},					
	
						{G=6,D=1,P=4809,LV=1,szname="��ng Long H�n"	 ,nrate=0.0021	},
						{G=6,D=1,P=4810,LV=1,szname="��ng Long HuyOt"	 ,nrate=0.0018	}, 
						{G=6,D=1,P=4811,LV=1,szname="��ng Long Th�ch ",nrate=0.0015}, 
						--{G=6,D=1,P=26,LV=1,szname="V� L�m M�t T�ch"	 ,nrate=0.0014	},		
						--{G=6,D=1,P=22,LV=1,szname="T�y T�y Kinh"	 ,nrate=0.0013},	
						--{G=6,D=1,P=4818,LV=1,szname="�� Ph� ��ng Long B�i",nrate=0.0024	},
					
						--{G=6,D=1,P=4817,LV=1,nExpiredTime=43200,szname="�� Ph� ��ng Long H�ng Li�n",nrate=0.0096},
						--{G=6,D=1,P=4812,LV=10,szname="�� Ph� ��ng Long Kh�i",nrate=0.015},
						--{G=6,D=1,P=4816,LV=10,szname="�� Ph� ��ng Long H� Uy�n"	 ,nrate=0.0007	},
						--{G=6,D=1,P=4815,LV=10,szname="�� Ph� ��ng Long Y�u ��i",nrate=0.0006},
						--{G=6,D=1,P=4814,LV=10,szname="�� Ph� ��ng Long H�i"	 ,nrate=0.0009	},						
						--{G=6,D=1,P=4821,LV=10,szname="�� Ph� ��ng Long V� Kh�",nrate=0.0001},
						--{G=6,D=1,P=4820,LV=10,szname="��ng Long �� Ph� H� Gi�i",nrate=0.002	},
								
						{G=6,D=1,P=3008,LV=10,szname="Ng� Linh Quy Nguy�n Ph�",nrate=0.06	},	
						{G=6,D=1,P=2125,LV=10,szname="Ng� H�nh K� Th�ch",nrate=0.06	},													
						{G=6,D=1,P=3528,LV=10,nExpiredTime=43200,szname="Socola Lo�i 1"	 ,nrate=0.002	},
						--{G=6,D=1,P=4819,LV=10,szname="�� Ph� ��ng Long Th��ng Gi�i",nrate=0.0005},	
						{G=6,D=1,P=3526,LV=10,nExpiredTime=43200,szname="Socola Lo�i 3",nrate=0.008	},						
						{G=6,D=1,P=3527,LV=10,nExpiredTime=43200,szname="Socola Lo�i 2",nrate=0.003	},	
				
		}
}

function PickUp_haohangx_2( nItemIndex, nPlayerIndex )
		local nrate = random(1,tb_Mareial_haohang_khoa[1]);
		local nsum = 0
		for nkey,nitem in tb_Mareial_haohang_khoa[2] do
			nsum = nsum + (nitem["nrate"] * tb_Mareial_haohang_khoa[1])
			if (nsum > nrate) then
				local g = nitem["G"];
				local d = nitem["D"];
				local p = nitem["P"];
				local p = nitem["P"];
				local l = nitem["LV"];
				local stime = nitem["nExpiredTime"]
				local nidx = tbAwardTemplet:GiveAwardByList({tbProp = {g,d,p,1,0,0}, nExpiredTime=stime}, "test", 1)			
				local szitemname = nitem["szname"]
				AddOwnExp(1500000);
				Msg2Player(format("B�n nh�n ���c 1 <color=yellow>%s<color>",szitemname))
				WriteLog(format("[zhongqiu2007]\t Date:%s\t Account:%s\t Name:%s\t GetItem:%s",GetLocalDate("%y-%m-%d %H:%M:%S"),GetAccount(),GetName(),szitemname));
				return 0
			end
		end
		return 0;
end