Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\task\\task_addplayerexp.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\vng_lib\\bittask_lib.lua")
IncludeLib("ITEM")

function main()
	AddOwnExp(5000000);
	PickUp_haohangx_2()
end;





tb_Mareial_haohang_khoa = 
{
	100000,
	{
						{G=6,D=1,P=2527,LV=1,nExpiredTime=43200,szname="H�i Thi�n T�i T�o L� Bao ",nrate=0.085}, 
						{G=6,D=1,P=4822,LV=1,szname="T� Tinh Kho�ng Th�ch",nrate=0.070},
						--{G=6,D=1,P=2125,LV=1,szname="Ng� H�nh K� Th�ch",nrate=0.0098},  
						{G=6,D=1,P=71,nrate=0.010,szname="Ti�n Th�o L�",nExpiredTime=43200,},	
						{G=6,D=1,P=2975,LV=1,nExpiredTime=43200,szname="T�c Hi�u B�ch C�u Ho�n c�p 150",nrate=0.045}, 	
						{G=0,D=11,P=647,LV=1,nExpiredTime=43200,szname="M�t n� chi�n tr��ng V��ng Gi�",nrate=0.0018},
						{G=0,D=11,P=806,LV=1,nExpiredTime=43200,szname="M�t n� chi�n tr��ng Th�nh Gi�",nrate=0.0012},
						{G=0,D=11,P=828,LV=1,nExpiredTime=43200,szname="M�t n� chi�n tr��ng B� Gi�",nrate=0.0010},
						{G=0,D=11,P=817,LV=1,nExpiredTime=43200,szname="M�t n� chi�n tr��ng Ho�ng Gi�",nrate=0.0001},
	
						{G=6,D=1,P=4809,LV=1,szname="��ng Long H�n"	 ,nrate=0.0021	},
						{G=6,D=1,P=4810,LV=1,szname="��ng Long HuyOt"	 ,nrate=0.0018	}, 
						{G=6,D=1,P=4811,LV=1,szname="��ng Long Th�ch ",nrate=0.0015}, 
						{G=6,D=1,P=26,LV=1,szname="V� L�m M�t T�ch"	 ,nrate=0.0014	},		
						{G=6,D=1,P=22,LV=1,szname="T�y T�y Kinh"	 ,nrate=0.0013},	
						{G=6,D=1,P=4841,LV=1,szname="�� Ph� Tinh S��ng H�ng Li�n",nrate=0.0024	},
					
						{G=6,D=1,P=4836,LV=1,szname="�� Ph� Tinh S��ng Kh�i",nrate=0.0096},
						{G=6,D=1,P=4843,LV=10,szname="�� Ph� Tinh S��ng Th��ng Gi�i",nrate=0.0005},
						{G=6,D=1,P=4840,LV=10,szname="�� Ph� Tinh S��ng H� Uy�n"	 ,nrate=0.007	},
						{G=6,D=1,P=4839,LV=10,szname="�� Ph� Tinh S��ng Y�u ��i",nrate=0.006},
						{G=6,D=1,P=4837,LV=10,szname="�� Ph� Tinh S��ng Y"	 ,nrate=0.0002	},						
						{G=6,D=1,P=4845,LV=10,szname="�� Ph� Tinh S��ng KhU Gi�i",nrate=0.001},
						{G=6,D=1,P=4838,LV=10,szname="�� Ph� Tinh S��ng H�i",nrate=0.0007},
								
						{G=6,D=1,P=3008,LV=10,szname="Ng� Linh Quy Nguy�n Ph�",nrate=0.06	},	
						{G=6,D=1,P=2125,LV=10,szname="Ng� H�nh K� Th�ch",nrate=0.06	},				
						{G=6,D=1,P=4842,LV=10,szname="�� Ph� Tinh S��ng Ng�c B�i",nrate=0.006},		
						{G=6,D=1,P=4844,LV=10,szname="�� Ph� Tinh S��ng H� Gi�i",nrate=0.0005},	
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
				Msg2Player(format("B�n nh�n ���c 1 <color=yellow>%s<color>",szitemname))
				WriteLog(format("[zhongqiu2007]\t Date:%s\t Account:%s\t Name:%s\t GetItem:%s",GetLocalDate("%y-%m-%d %H:%M:%S"),GetAccount(),GetName(),szitemname));
				return 0
			end
		end
		return 0;
end