Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\task\\task_addplayerexp.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\vng_lib\\bittask_lib.lua")
IncludeLib("ITEM")

function main()
		 
		if CalcFreeItemCellCount() < 6 then
			CreateTaskSay({"C�n �t nh�t 6 � tr�ng m�i c� th� nh�n v�t ph�m",  "�� ta s�p x�p l�i./Cancel",});
				return 1;
			end
			local nGoldPoint = GetExtPoint(1);
			if nGoldPoint > 1500 then 
				Talk(1, "", "Max 1.500 L�a V�ng r�i, Xin h�y �i Reset Event �� nh�n th��ng ti�p ")				
					return 1;
				end			
				tl_addPlayerExp(5000000)
				AddExtPoint(1,1)
				PickUp_haohangx_2()			
		return 0;
	end






tb_Mareial_haohang_khoa = 
{
	100000,
	{
						{G=6,D=1,P=2527,LV=1,nExpiredTime=43200,szname="H�i Thi�n T�i T�o L� Bao ",nrate=0.085}, 
						{G=6,D=1,P=30109,LV=1,nExpiredTime=43200,szname="H�t Thi�n Tu�",nrate=0.075}, 
						{G=6,D=1,P=4822,LV=1,szname="T� Tinh Kho�ng Th�ch",nrate=0.070},
						{G=6,D=1,P=2975,LV=1,nExpiredTime=43200,szname="T�c Hi�u B�ch C�u Ho�n c�p 150",nrate=0.045}, 
						{G=0,D=11,P=647,LV=1,nExpiredTime=43200,szname="M�t n� chi�n tr��ng V��ng Gi�",nrate=0.0018},
						{G=0,D=11,P=806,LV=1,nExpiredTime=43200,szname="M�t n� chi�n tr��ng Th�nh Gi�",nrate=0.0012},
						{G=0,D=11,P=828,LV=1,nExpiredTime=43200,szname="M�t n� chi�n tr��ng B� Gi�",nrate=0.0010},
						{G=0,D=11,P=817,LV=1,nExpiredTime=43200,szname="M�t n� chi�n tr��ng Ho�ng Gi�",nrate=0.0001},
						--{G=6,D=1,P=2125,LV=1,szname="Ng� H�nh K� Th�ch",nrate=0.0098},  
						{G=6,D=1,P=71,nrate=0.010,szname="Ti�n Th�o L�",nExpiredTime=43200,},					
	
						{G=6,D=1,P=2391,LV=1,nExpiredTime=43200,szname="T� Ng�c"	 ,nrate=0.0021	},
						{G=6,D=1,P=2390,LV=1,nExpiredTime=43200,szname="B�ch Ng�c"	 ,nrate=0.0018	}, 
						{G=6,D=1,P=1181,LV=1,nExpiredTime=43200,szname="Ti�n Th�o L� ��c Bi�t ",nrate=0.0015}, 
						{G=6,D=1,P=26,LV=1,szname="V� L�m M�t T�ch"	 ,nrate=0.0014	},		
						{G=6,D=1,P=22,LV=1,szname="T�y T�y Kinh"	 ,nrate=0.0013},	
						{G=6,D=1,P=30226,LV=1,nExpiredTime=43200,szname="Ch�a Kh�a Ho�ng Kim",nrate=0.070	},
					
						{G=0,D=10,P=11,LV=10,nExpiredTime=43200,szname="Ng�a Duy Huy ",nrate=0.015},
						{G=0,D=10,P=14,LV=10,nExpiredTime=43200,szname="Kim Tinh B�ch H� V��ng"	 ,nrate=0.0007	},
						{G=0,D=10,P=21,LV=10,nExpiredTime=43200,szname="Ng�a Phong V�n Th�n M� ",nrate=0.0006},
						{G=0,D=10,P=15,LV=10,nExpiredTime=43200,szname="H�a Tinh Kim H� V��ng"	 ,nrate=0.0009	},						
						{G=0,D=10,P=24,LV=10,nExpiredTime=43200,szname="D��ng ��",nrate=0.0001},
						{G=0,D=10,P=18,LV=10,nExpiredTime=43200,szname="H�n Huy�t Long C�u (Th��ng) ",nrate=0.002	},
								
						{G=0,D=10,P=25,LV=10,nExpiredTime=43200,szname="H��u ��m",nrate=0.006	},													
						{G=0,D=10,P=23,LV=10,nExpiredTime=43200,szname="Ng�a L�c ��"	 ,nrate=0.0002	},
						{G=0,D=10,P=18,LV=10,nExpiredTime=43200,szname="H�n Huy�t Long C�u (Th��ng) ",nrate=0.0005},	
						{G=0,D=10,P=11,LV=10,nExpiredTime=43200,szname="Ng�a Duy Huy ",nrate=0.0008	},						
						{G=0,D=10,P=21,LV=10,nExpiredTime=43200,szname="Ng�a Phong V�n Th�n M� ",nrate=0.0003	},	
						{G=6,D=1,P=30469,LV=1,nExpiredTime=43200,szname="Phi Phong C�p 10",nrate=0.0024},
						
				
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
				Msg2Player(format("B�n nh�n ���c 1 <color=yellow>%s<color>",szitemname))
				WriteLog(format("[zhongqiu2007]\t Date:%s\t Account:%s\t Name:%s\t GetItem:%s",GetLocalDate("%y-%m-%d %H:%M:%S"),GetAccount(),GetName(),szitemname));
				return 0
			end
		end
		return 0;
end