Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\vng_event\\ngusackettinh\\head.lua")
Include("\\script\\vng_event\\ngusackettinh\\item\\star_head.lua")

TSK_USED = 2762	-- ��������u��
--1 ng�y dc s� d�ng 5 l�n v�t ph�m Ti�n Linh ��n - Modified by DinhHQ - 20111013
NDAILYTIME = 150

tbNSKT_star_happiness = {}

function main()

	if(tbNSKT_Item_Star:checkCondition() == 0)then
		Talk(1, "", "B�n kh�ng �� �i�u ki�n s� d�ng v�t ph�m! Y�u c�u c�p �� tr�n 50 ")
		return 1
	end
	
	local tbAward = {
		{nExp_tl=1,nCount = 1200000,},
		}
	local szFailMsg = format("M�i ng�y m�i nh�n v�t ch� c� th� s� d�ng nhi�u nh�t   %d Ng�i Sao H�nh Ph�c, ��i ng�y mai h�y s� d�ng ti�p",NDAILYTIME)	
	if PlayerFunLib:CheckTaskDaily(TSK_USED, NDAILYTIME, szFailMsg, "<") == 1 then
		PlayerFunLib:AddTaskDaily(TSK_USED, 1) 
		tbAwardTemplet:Give(tbAward, 1, {"ngusackettinh", "use_star_happiness"} )
		return 0
	end
	
	return 1
end