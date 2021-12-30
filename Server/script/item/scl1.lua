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

TSK_USED = 5229	

NDAILYTIME = 20

tbNSKT_star_happiness = {}

function main()

	if(tbNSKT_Item_Star:checkCondition() == 0)then
		Talk(1, "", "B�n kh�ng �� �i�u ki�n s� d�ng v�t ph�m! Y�u c�u c�p �� tr�n 50 ")
		return 1
	end


	
	local szFailMsg = format("M�i ng�y m�i nh�n v�t ch� c� th� s� d�ng nhi�u nh�t   %d socola lo�i 1, ��i ng�y mai h�y s� d�ng ti�p",NDAILYTIME)	
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
						{G=6,D=1,P=2975,LV=1,nExpiredTime=43200,szname="T�c Hi�u B�ch C�u Ho�n c�p 150",nrate=0.045}, 
						{G=6,D=1,P=4822,LV=1,szname="T� Tinh Kho�ng Th�ch",nrate=0.070},
						{G=0,D=11,P=647,LV=1,nExpiredTime=43200,szname="M�t n� chi?n tr��ng V��ng Gi�",nrate=0.0018},
						{G=0,D=11,P=806,LV=1,nExpiredTime=43200,szname="M�t n� chi?n tr��ng Th�nh Gi�",nrate=0.0012},
						{G=0,D=11,P=828,LV=1,nExpiredTime=43200,szname="M�t n� chi?n tr��ng B� Gi�",nrate=0.0010},
						{G=0,D=11,P=817,LV=1,nExpiredTime=43200,szname="M�t n� chi?n tr��ng Ho�ng Gi�",nrate=0.0001},
						{G=6,D=1,P=71,nrate=0.010,szname="Ti�n Th�o L�",nExpiredTime=43200,},					
	
						{G=6,D=1,P=4809,LV=1,szname="��ng Long H�n"	 ,nrate=0.0021	},
						{G=6,D=1,P=4810,LV=1,szname="��ng Long HuyOt"	 ,nrate=0.0018	}, 
						{G=6,D=1,P=4811,LV=1,szname="��ng Long Th�ch ",nrate=0.0015}, 
						{G=6,D=1,P=26,LV=1,szname="V� L�m M�t T�ch"	 ,nrate=0.0014	},		
						{G=6,D=1,P=22,LV=1,szname="T�y T�y Kinh"	 ,nrate=0.0013},	
						{G=6,D=1,P=4848,LV=1,szname="�� Ph� Nguy�t KhuyOt H�ng Li�n",nrate=0.0024	},
					
						{G=6,D=1,P=4849,LV=1,szname="�� Ph� Nguy�t KhuyOt Kh�i",nrate=0.0096},
						{G=6,D=1,P=4850,LV=10,szname="�� Ph� Nguy�t KhuyOt Th��ng Gi�i",nrate=0.0005},
						{G=6,D=1,P=4851,LV=10,szname="�� Ph� Nguy�t KhuyOt H� Uy�n"	 ,nrate=0.007	},
						{G=6,D=1,P=4852,LV=10,szname="�� Ph� Nguy�t KhuyOt Y�u ��i",nrate=0.006},
						{G=6,D=1,P=4853,LV=10,szname="�� Ph� Nguy�t KhuyOt Y"	 ,nrate=0.0002	},						
						{G=6,D=1,P=4854,LV=10,szname="�� Ph� Nguy�t KhuyOt V� Kh�",nrate=0.001},
						{G=6,D=1,P=4855,LV=10,szname="�� Ph� Nguy�t KhuyOt H�i",nrate=0.0007},
						
								
						{G=6,D=1,P=3008,LV=10,szname="Ng� Linh Quy Nguy�n Ph�",nrate=0.06	},	
						{G=6,D=1,P=2125,LV=10,szname="Ng� H�nh K� Th�ch",nrate=0.06	},	
						{G=6,D=1,P=4856,LV=10,szname="�� Ph� Nguy�t KhuyOt B�i",nrate=0.006},		
						{G=6,D=1,P=4857,LV=10,szname="�� Ph� Nguy�t KhuyOt H� Gi�i",nrate=0.0005},	
						{G=6,D=1,P=4858,LV=10,szname="Nguy�t KhuyOt Tinh Th�ch",nrate=0.005},	
						{G=6,D=1,P=4859,LV=10,szname="Nguy�t KhuyOt Th�ch",nrate=0.005},	
						{G=6,D=1,P=4847,LV=10,szname="Tinh S��ng Th�ch",nrate=0.005},	
						{G=6,D=1,P=4846,LV=10,szname="Huy�n ThiOt",nrate=0.005},	
						
				
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
				AddOwnExp(5000000);
				Msg2Player(format("B�n nh�n ���c 1 <color=yellow>%s<color>",szitemname))
				WriteLog(format("[zhongqiu2007]\t Date:%s\t Account:%s\t Name:%s\t GetItem:%s",GetLocalDate("%y-%m-%d %H:%M:%S"),GetAccount(),GetName(),szitemname));
				return 0
			end
		end
		return 0;
end