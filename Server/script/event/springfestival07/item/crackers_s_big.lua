Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\task\\task_addplayerexp.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\vng_lib\\bittask_lib.lua")
IncludeLib("ITEM")
Include([[\script\event\springfestival07\item\libcracker.lua]]);

GOODSNAME = "Phong ph�o ��i ��c bi�t";
FREECELLCOUNT = 0;
EXPVALUE = 1000;
TAB_GOODS = {

};
function main()
	if CalcFreeItemCellCount() < 6 then
			CreateTaskSay({"C�n �t nh�t 6 � tr�ng m�i c� th� nh�n v�t ph�m",  "�� ta s�p x�p l�i./Cancel",});
				return 1;
			end
			local nGoldPoint = GetExtPoint(3);
			if nGoldPoint > 600 then 
				Talk(1, "", "Max 600 Phong Ph�o ��i ��c Bi�t, Xin h�y �i Reset Event �� nh�n th��ng ti�p ")				
					return 1;
				end			
	PickUp_haohangx_2()
	AddExtPoint(3,1)
	CastSkill(763, 2);
	Msg2Player(str);
	AddOwnExp(30000000)
end;





tb_Mareial_haohang_khoa = 
{
	100000,
	{
						{G=6,D=1,P=2527,LV=1,nExpiredTime=43200,szname="H�i Thi�n T�i T�o L� Bao ",nrate=0.095}, 
						{G=6,D=1,P=4822,LV=1,szname="T� Tinh Kho�ng Th�ch",nrate=0.070},
						{G=6,D=1,P=2125,LV=1,szname="Ng� H�nh K� Th�ch",nrate=0.068},  
						{G=6,D=1,P=71,nrate=0.010,szname="Ti�n Th�o L�",nExpiredTime=43200,},	
						{G=6,D=1,P=2975,LV=1,nExpiredTime=43200,szname="T�c Hi�u B�ch C�u Ho�n c�p 150",nrate=0.025}, 	
						{G=0,D=11,P=647,LV=1,nExpiredTime=43200,szname="M�t n� chi�n tr��ng V��ng Gi�",nrate=0.0018},
						{G=0,D=11,P=806,LV=1,nExpiredTime=43200,szname="M�t n� chi�n tr��ng Th�nh Gi�",nrate=0.0012},
						{G=0,D=11,P=828,LV=1,nExpiredTime=43200,szname="M�t n� chi�n tr��ng B� Gi�",nrate=0.0010},
						{G=0,D=11,P=817,LV=1,nExpiredTime=43200,szname="M�t n� chi�n tr��ng Ho�ng Gi�",nrate=0.0001},
	
						{G=6,D=1,P=4809,LV=1,szname="��ng Long H�n"	 ,nrate=0.0021	},
						{G=6,D=1,P=4810,LV=1,szname="��ng Long HuyOt"	 ,nrate=0.0018	}, 
						{G=6,D=1,P=4811,LV=1,szname="��ng Long Th�ch ",nrate=0.0015}, 
						--{G=6,D=1,P=26,LV=1,szname="V� L�m M�t T�ch"	 ,nrate=0.0014	},		
						--{G=6,D=1,P=22,LV=1,szname="T�y T�y Kinh"	 ,nrate=0.0013},	
						{G=6,D=1,P=4818,LV=1,szname="�� Ph� ��ng Long B�i",nrate=0.0024	},
					
						{G=6,D=1,P=4817,LV=1,szname="�� Ph� ��ng Long H�ng Li�n",nrate=0.0096},
						{G=6,D=1,P=4812,LV=10,szname="�� Ph� ��ng Long Kh�i",nrate=0.015},
						{G=6,D=1,P=4816,LV=10,szname="�� Ph� ��ng Long H� Uy�n"	 ,nrate=0.0007	},
						{G=6,D=1,P=4815,LV=10,szname="�� Ph� ��ng Long Y�u ��i",nrate=0.0006},
						{G=6,D=1,P=4814,LV=10,szname="�� Ph� ��ng Long H�i"	 ,nrate=0.0009	},						
						{G=6,D=1,P=4821,LV=10,szname="�� Ph� ��ng Long V� Kh�",nrate=0.0001},
						{G=6,D=1,P=4820,LV=10,szname="��ng Long �� Ph� H� Gi�i",nrate=0.002	},
								
						{G=6,D=1,P=3008,LV=10,szname="Ng� H�nh K� Th�ch",nrate=0.006	},													
						{G=6,D=1,P=4813,LV=10,szname="�� Ph� ��ng Long Y"	 ,nrate=0.0002	},
						{G=6,D=1,P=4819,LV=10,szname="�� Ph� ��ng Long Th��ng Gi�i",nrate=0.0005},	
						{G=6,D=1,P=3008,LV=10,szname="Ng� Linh Quy Nguy�n Ph� ",nrate=0.0008	},						
						{G=6,D=1,P=30474,LV=10,szname="Minh Ph��ng Chi B�o",nrate=0.0003	},	
				
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