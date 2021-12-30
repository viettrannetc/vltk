Include("\\script\\lib\\composeex.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\event\\equip_publish\\danglong\\equiptabledl.lua")
Include("\\script\\event\\equip_publish\\danglong\\equiptable.lua")

IncludeLib("ITEM")
tbItem2BaiHu = tbActivityCompose:new()
tbItem2BaiHu.bAccessBindItem = 0
MSG_COMPOSE_TITLE = "H�p th�nh 1 trang b� ��ng Long y�u c�u c� 1111 T� Tinh Kho�ng Th�ch, 1 ��ng Long Th�ch, c�n c� 1 �� Ph� ��ng Long t��ng �ng v� trang b� Minh Ph��ng, 20000 v�n l��ng, v� c�c nguy�n li�u kh�c l�m t�ng t� l� th�nh c�ng"

CommonMaterial = 
{
	{szName="T� Tinh Kho�ng Th�ch", tbProp={6, 1, 4822}, nCount = 1111},
	{szName="��ng Long Th�ch", tbProp={6, 1, 4811}, nCount = 1},
	{szName=" l��ng", nJxb=1, nCount = 200000000},
	
}

AdditiveMaterial =
{
	{szName = "��ng Long H�n", tbProp = {6,1,4809}, nSuccessRate = 2, nMaxSuccessRate = 18},
	{szName = "��ng Long HuyOt", tbProp = {6,1,4810}, nSuccessRate = 5, nMaxSuccessRate = 45},
}

tbFormulaList = 
{
	[1] = 
	{
		szName = "��ng Long H�ng Li�n",
		tbSpecialMaterial = 
		{
			{szName = "�� Ph� ��ng Long H�ng Li�n", tbProp = {6,1,4817}, nSuccessRate = 10, nMaxSuccessRate = 80},
		},				
		nWidth = 2,
		nHeight = 1,
		nFreeItemCellLimit = 1,
	},
	[2] = 
	{				
		szName = "��ng Long Kh�i",
		tbSpecialMaterial = 
		{
			{szName = "�� Ph� ��ng Long Kh�i", tbProp = {6,1,4812}, nSuccessRate = 10, nMaxSuccessRate = 80},			
		},
		nWidth = 2,
		nHeight = 2,
		nFreeItemCellLimit = 1,		
	},
	[3] = 
	{
		szName = "��ng Long Th��ng Gi�i",
		tbSpecialMaterial = 
		{
			{szName = "�� Ph� ��ng Long Th��ng Gi�i", tbProp = {6,1,4819}, nSuccessRate = 10, nMaxSuccessRate = 80},			
		},		
		nWidth = 1,
		nHeight = 1,
		nFreeItemCellLimit = 1,
	},
	[4] = 
	{
		szName = "��ng Long H� Uy�n",
		tbSpecialMaterial = 
		{
			{szName = "�� Ph� ��ng Long H� Uy�n", tbProp = {6,1,4816}, nSuccessRate = 10, nMaxSuccessRate = 80},			
		},		
		
		nWidth = 1,
		nHeight = 2,
		nFreeItemCellLimit = 1,
	},
	[5] = 
	{
		szName = "��ng Long Y�u ��i",
		tbSpecialMaterial = 
		{
			{szName = "�� Ph� ��ng Long Y�u ��i", tbProp = {6,1,4815}, nSuccessRate = 10, nMaxSuccessRate = 80},			
		},
		nWidth = 2,
		nHeight = 1,
		nFreeItemCellLimit = 1,
	},
	[6] = 
	{
		szName = "��ng Long Y",
		tbSpecialMaterial = 
		{
			{szName = "�� Ph� ��ng Long Y", tbProp = {6,1,4813}, nSuccessRate = 10, nMaxSuccessRate = 80},			
		},		
		nWidth = 2,
		nHeight = 3,
		nFreeItemCellLimit = 1,
	},
	[7] = 
	{
		szName = "��ng Long V� Kh�",
		tbSpecialMaterial = 
		{
			{szName = "�� Ph� ��ng Long V� Kh�", tbProp = {6,1,4821}, nSuccessRate = 10, nMaxSuccessRate = 80},			
		},		
		
		nWidth = 2,
		nHeight = 4,
		nFreeItemCellLimit = 1,		
	},
	[8] = 
	{
		szName = "��ng Long H�i",
		tbSpecialMaterial = 
		{
			{szName = "�� Ph� ��ng Long H�i", tbProp = {6,1,4814}, nSuccessRate = 10, nMaxSuccessRate = 80},			
		},			
		
		nWidth = 2,
		nHeight = 2,
		nFreeItemCellLimit = 1,
	},
	[9] = 
	{
		szName = "��ng Long B�i",
		tbSpecialMaterial = 
		{
			{szName = "�� Ph� ��ng Long B�i", tbProp = {6,1,4818}, nSuccessRate = 10, nMaxSuccessRate = 80},			
		},				
		
		nWidth = 1,
		nHeight = 2,
		nFreeItemCellLimit = 1,
	},
	[10] = 
	{
		szName = "��ng Long H� Gi�i",
		tbSpecialMaterial = 
		{
			{szName = "��ng Long �� Ph� H� Gi�i", tbProp = {6,1,4820}, nSuccessRate = 10, nMaxSuccessRate = 80},		
		},		

		nWidth = 1,
		nHeight = 1,
		nFreeItemCellLimit = 1,
	},
}


function tbItem2BaiHu:GetComposeRate()
	local tbRoomItems = self:GetRoomItems(self.nRoomType)
	local nRate = self:CalcRate(%AdditiveMaterial ,tbRoomItems)
	local tbSpecialMaterial = self.tbFormula.tbSpecialMaterial
	nRate = nRate + self:CalcRate(tbSpecialMaterial ,tbRoomItems)
	return nRate
end

function tbItem2BaiHu:CalcRate(tbAdditive, tbRoomItems)	
	-- ��ȡ�ɹ���
	local nSuccessRate = 0
	for k, v in tbAdditive do
		local nCount = self:CalcItemCount(tbRoomItems, v)	
		local nSR = nCount * v.nSuccessRate
		if nSR > v.nMaxSuccessRate then
			nSR = v.nMaxSuccessRate
		end
		nSuccessRate = nSuccessRate + nSR;				
	end
	return nSuccessRate
end

function tbItem2BaiHu:CheckItem(tbItem ,nItemIndex)
	if IsMyItem(nItemIndex) ~= 1 then
		return
	end
	local tbRecItem = self:MakeItem(nItemIndex)
	if tbRecItem.nQuality == 1 then
		if GetItemBindState(nItemIndex) ~= 0 then
			return
		end
		if ITEM_GetExpiredTime(nItemIndex) ~= 0 then
			return
		end
		local nG = GetItemProp(nItemIndex)
		if nG == 7 then
			return
		end
	end
	for k,v in tbItem do
		if k ~= "szName" and type(v) ~= "table" and v ~= -1 and tbRecItem[k] and v~= tbRecItem[k] then
			return
		elseif k == "tbProp" and type(v) == "table" then
			local tbProp = tbRecItem[k]
			for k1,v1 in v do
				if  k1 ~= "n" and v1 ~= -1 and tbProp[k1] and v1~= tbProp[k1] then
					return 
				end
			end
		end
	end	
	return 1
end
function tbItem2BaiHu:ConsumeAdditive(tbAdditive, szLogTitle)
	for i=1,getn(tbAdditive) do
		local tbItem = tbAdditive[i]
		local tbRoomItems =  self:GetRoomItems(self.nRoomType)	
		local nCount = self:CalcItemCount(tbRoomItems, tbItem)
		local nMaxCount = floor(tbItem.nMaxSuccessRate / tbItem.nSuccessRate)
		if nCount > nMaxCount then
			nCount = nMaxCount
		end
		if nCount > 0 then
			self:ConsumeItem(tbRoomItems, nCount, tbItem)
		end
		self:ConsumeLog(nCount.." "..tbItem.szName, szLogTitle)
	end
	return 1;
end

function tbItem2BaiHu:Compose(nProductId)
	local tbProduct		= self.tbFormula.tbProduct[nProductId]
	local tbGoldEquip	= self.tbFormula.tbGoldEquip[nProductId]
	local tbGoldEquipEx	= self.tbFormula.tbGoldEquipEx[nProductId]
	
	if not tbProduct then
		return 
	end
	
	-- ��鱳���ռ�
	local nFreeItemCellLimit = 1
	if self.tbFormula.nWidth ~= 0 and self.tbFormula.nHeight ~= 0 and CountFreeRoomByWH(self.tbFormula.nWidth, self.tbFormula.nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("�� b�o ��m t�i s�n c�a ��i hi�p, xin h�y �� tr�ng %d %dx%d h�nh trang", nFreeItemCellLimit, self.tbFormula.nWidth, self.tbFormula.nHeight))
		return 0
	end
	
	-- ����ɹ���
	
	local nSuccessRate = self:GetComposeRate()
	
	-- �������Ƿ����
	local szFailMsg = "<color=red>��i hi�p mang nguy�n li�u kh�ng �� r�i!<color>"
	if self:CheckMaterial(%CommonMaterial, 1) ~=1 then
		Talk(1, "", szFailMsg)
		return 0;
	end
	if self:CheckMaterial(self.tbFormula.tbSpecialMaterial, 1) ~=1 then
		Talk(1, "", szFailMsg)
		return 0;
	end
	if self:CheckMaterial({tbGoldEquip}, 1) ~=1 and self:CheckMaterial({tbGoldEquipEx}, 1) ~= 1 then
		Talk(1, "", szFailMsg)
		return 0;
	end
	
	
	self:ConsumeMaterial(%CommonMaterial, 1, self.szLogTitle)
	self:ConsumeAdditive(self.tbFormula.tbSpecialMaterial, self.szLogTitle)
	self:ConsumeAdditive(%AdditiveMaterial, self.szLogTitle)

	if random(1, 100) > nSuccessRate then
		Msg2Player("Th�t ��ng ti�c ch� t�o �� th�t b�i")
		return 0
	end
	
	if self:ConsumeMaterial({tbGoldEquip}, 1, self.szLogTitle) ~= 1 then
		self:ConsumeMaterial({tbGoldEquipEx}, 1, self.szLogTitle)
	end
	
	tbAwardTemplet:Give(tbProduct, 1, {self.szLogTitle})

	return 1;
end

function tbItem2BaiHu:GiveUIOk(nCount)
	
	local tbMaterial	= self.tbFormula.tbMaterial
	local tbAdditive = self.tbFormula.tbAdditive
	
	-- �������Ƿ����
	
	local szFailMsg = "<color=red>��i hi�p mang nguy�n li�u kh�ng �� r�i!<color>"
	if self:CheckMaterial(%CommonMaterial, 1) ~=1 then
		Talk(1, "", szFailMsg)
		return 0;
	end
	if self:CheckMaterial(self.tbFormula.tbSpecialMaterial, 1) ~=1 then
		Talk(2, "", szFailMsg, self.tbFormula.tbSpecialMaterial[1].szName)
		return 0;
	end
	
	local nSuccessRate = self:GetComposeRate()
	local szMsg = format("��t nguy�n li�u v�o nh�n ���c t� l� th�nh c�ng l�%d%%, ��i hi�p c� mu�n ti�p t�c ch� t�o kh�ng?", nSuccessRate)
	if nSuccessRate > 100 then
		szMsg = "T� l� th�nh c�ng v��t qu� 100% s� l�ng ph� nguy�n li�u c�a ��i hi�p, ng��i c� mu�n ti�p t�c ch� kh�ng?"
	end
	
	local tbOpt = 
	{
		{"Ti�p t�c ch� t�o", self.SelectEquip, {self, 1, 5}},
		{"��t v�o l�n n�a", self.ComposeGiveUI, {self}},
		{"H�y b� "},
	}
	CreateNewSayEx(szMsg, tbOpt)
end

function tbItem2BaiHu:SelectEquip(nId, nCount)
	
	local msg = %MSG_COMPOSE_TITLE
	local szMsg = format("%s,l�a ch�n m�t %s", msg, self.tbFormula.szName)
	local nProductCount = getn(self.tbFormula.tbProduct)
	local nEndId = nCount + nId - 1
	if nEndId > nProductCount then
		nEndId = nProductCount
	end
	local tbOpt = {}
	for i=nId, nEndId  do 
		tinsert(tbOpt, {%tbRepresentName[i], self.Compose, {self, i}})
	end
	if nId >= nCount + 1  then
		tinsert(tbOpt, {"Trang tr��c", self.SelectEquip, {self, nId-nCount, nCount}})
	end
	if nEndId < nProductCount then
		tinsert(tbOpt, {"Trang k� ", self.SelectEquip, {self, nId+nCount, nCount}})
	end
	tinsert(tbOpt, {"H�y b� "})
	CreateNewSayEx(szMsg, tbOpt)
end

local tbDialogOpt = {}
function tbItem2BaiHu:ComposeGiveUI()
		
	local szTitle = format("��i %s", self.tbFormula.szName)
	local szContent = self:GetMaterialList(%CommonMaterial)
	
	szContent = gsub(szContent, "<color=?%w*>", "")
	
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	
	szContent = format("%s<enter>%-20s  %s", szContent, "1 Trang B� Minh Ph��ng t��ng �ng", "1")
	szContent = format("%s<enter>%-20s  %s", szContent, "�� Ph� ��ng Long", "1")
	
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk, {self}}, nil, self.bAccessBindItem)
end

function tbItem2BaiHu:SelectParts()
	CreateNewSayEx(format("%s, l�a ch�n trang b� m� ng��i mu�n ch� t�o:", %MSG_COMPOSE_TITLE), %tbDialogOpt)
end

for i=1, getn(tbFormulaList) do
	tbFormulaList[i].tbProduct = tbEquip_BaiHu[i]
	tbFormulaList[i].tbGoldEquip = tbEquip_jinwu[i]
	tbFormulaList[i].tbGoldEquipEx = tbEquip_JinWuEx[i]
	
	local p = tbItem2BaiHu:new(tbFormulaList[i], "Item2BaiHu", INVENTORY_ROOM.room_giveitem)
	
	local szOpt = format("Ch� t�o %s", tbFormulaList[i].szName)
	tinsert(tbDialogOpt, {szOpt, p.ComposeGiveUI, {p}})
end
tinsert(tbDialogOpt, {"H�y b� "})

--T�m ��ng t�nh n�ng ch� t�o ��ng Long - Modified By DinhHQ - 20120511
pEventType:Reg("Th� r�n trong th�nh", "Ch� T�o Trang B� ��ng Long", tbItem2BaiHu.SelectParts, {tbItem2BaiHu})

