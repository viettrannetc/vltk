-- ��������װ��
Include("\\script\\lib\\composeex.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\event\\equip_publish\\nguyetkhuyet\\equiptablenk.lua")


tbNKEquip = tbActivityCompose:new()

tbJinWuRefineList = 
{
	[1]= {szName="Nguy�t Khuy�t H�ng Li�n", nStone = 1, nWidth = 2, nHeight = 1, nFreeItemCellLimit = 1},
	[2]= {szName="Nguy�t Khuy�t Kh�i",   nStone = 2, nWidth = 2, nHeight = 2, nFreeItemCellLimit = 1},
	[3]= {szName="Nguy�t Khuy�t Th��ng Gi�i Ch�", nStone = 2, nWidth = 1, nHeight = 1, nFreeItemCellLimit = 1},
	[4]= {szName="Nguy�t Khuy�t H� Uy�n", nStone = 1, nWidth = 1, nHeight = 2, nFreeItemCellLimit = 1},
	[5]= {szName="Nguy�t Khuy�t Y�u ��i", nStone = 2, nWidth = 2, nHeight = 1, nFreeItemCellLimit = 1},
	[6]= {szName="Nguy�t Khuy�t Y Ph�c",   nStone = 3, nWidth = 2, nHeight = 3, nFreeItemCellLimit = 1},
	[7]= {szName="Nguy�t Khuy�t V� Kh�", nStone = 4, nWidth = 2, nHeight = 4, nFreeItemCellLimit = 1},
	[8]= {szName="Nguy�t Khuy�t H�i",   nStone = 3, nWidth = 2, nHeight = 2, nFreeItemCellLimit = 1},
	[9]= {szName="Nguy�t Khuy�t B�i",   nStone = 3, nWidth = 1, nHeight = 2, nFreeItemCellLimit = 1},
	[10]={szName="Nguy�t Khuy�t H� Gi�i Ch�", nStone = 2, nWidth = 1, nHeight = 1, nFreeItemCellLimit = 1},
}

function tbNKEquip:ComposeGiveUI()
	
	local szTitle = format("  %-15s\t%s", "Trang b� Nguy�t Khuy�t", "Ng� Linh Quy Nguy�n Ph�")
	local strDesc = format("   %-21s\t%d", "Nguy�t Khuy�t Kh�i", 2)
	strDesc = strDesc..format("\n   %-21s\t%d", "Nguy�t Khuy�t Y Ph�c", 3)
	strDesc = strDesc..format("\n   %-21s\t%d", "Nguy�t Khuy�t H�i", 3)
	strDesc = strDesc..format("\n   %-21s\t%d", "Nguy�t Khuy�t Y�u ��i", 2)
	strDesc = strDesc..format("\n   %-21s\t%d", "Nguy�t Khuy�t H� Uy�n", 1)
	strDesc = strDesc..format("\n   %-21s\t%d", "Nguy�t Khuy�t Ng�c B�i", 3)
	strDesc = strDesc..format("\n   %-21s\t%d", "Nguy�t Khuy�t H�ng Li�n", 1)
	strDesc = strDesc..format("\n   %-21s\t%d", "Nguy�t Khuy�t Gi�i Ch�", 2)
	strDesc = strDesc..format("\n   %-21s\t%d", "Nguy�t Khuy�t V� Kh�", 4)
	
	g_GiveItemUI(szTitle, strDesc, {self.GiveUIOk, {self}}, nil, self.bAccessBindItem)
end

function tbNKEquip:Compose(nComposeCount)
	
	nComposeCount = nComposeCount or 1
	
	if type(self.tbFormula.pLimitFun) == "function" then
		if self.tbFormula:pLimitFun(nComposeCount) ~= 1 then
			return 0
		end
	end
	
	-- ȡ�ý�������ʯ������
  local tbRoomItems =  self:GetRoomItems(self.nRoomType) --  ÿ�ζ����»�ȡ���Է�ֹ�б仯	
	local tbGoldEquip = nil
	local nEquType = 0		-- �������
	local nEqIndex = 0
	for i = 1, getn(tbRoomItems) do 
		nItemQuality = GetItemQuality(tbRoomItems[i])
		--�����ƷƷ��
		if nItemQuality == 1 then
			nEqIndex = GetGlodEqIndex(tbRoomItems[i])
			if nEqIndex >= 5670 and nEqIndex <= 5919 then -- ����װ��
				--����״̬
				local nBindState = GetItemBindState(tbRoomItems[i])
				if nBindState ~= 0 then
					Say("Trang b� c�a ng��i �ang trong tr�ng th�i kh�a, kh�ng th� tr�ng luy�n.")
					return 0
				end
				
				--����Ƿ�������װ��
				local nG, _, _ = GetItemProp(tbRoomItems[i])
				if nG == 7 then
					Say("Trang b� c�a ng��i �� b� h� h�i kh�ng th� tr�ng luy�n.")
					return 0
				end
				
				nEquType = mod(nEqIndex - 5670, 10) + 1
				tbGoldEquip = {0, nEqIndex}
				break
			end
		end	
	end
	
	if tbGoldEquip == nil then
		Say("Ng��i ch�a ��t trang b� Nguy�t Khuy�t n�o v�o ��y c�.")
		return 0	
	end
		
	local nFreeItemCellLimit = tbJinWuRefineList[nEquType].nFreeItemCellLimit or 1
	
	nFreeItemCellLimit = ceil(nFreeItemCellLimit * nComposeCount)
	
	if tbJinWuRefineList[nEquType].nWidth ~= 0 and tbJinWuRefineList[nEquType].nHeight ~= 0 and CountFreeRoomByWH(tbJinWuRefineList[nEquType].nWidth, tbJinWuRefineList[nEquType].nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("�� b�o ��m t�i s�n c�a ��i hi�p, xin h�y �� tr�ng %d %dx%d h�nh trang", nFreeItemCellLimit, tbJinWuRefineList[nEquType].nWidth, tbJinWuRefineList[nEquType].nHeight))
		return 0
	end	

  local tbItem = {szName = "Ng� Linh Quy Nguy�n Ph�", tbProp = {6,1,3008,1,0,0}, nCount = tbJinWuRefineList[nEquType].nStone} 
  local nCount = self:CalcItemCount(tbRoomItems, tbItem)
  if nCount < tbJinWuRefineList[nEquType].nStone then
		local szMsg = self.tbFormula.szFailMsg or "<color=red>Ng� Linh Quy Nguy�n Ph� m� ng��i ��t v�o kh�ng ��. <color>"
		Talk(1, "", szMsg)
		return 0;
  end
	
	local nIdx = floor((nEqIndex - 5670)/10) + 1
	local tbProduct = tbEquip_NK[nEquType][nIdx]
	local tbMaterial = {{szName = tbProduct.szName, tbProp = tbGoldEquip, nCount = 1}, tbItem}

	if self:ConsumeMaterial(tbMaterial, nComposeCount, self.szLogTitle) ~= 1 then
		--Say("����ʧ�ܣ�������Ʒ��ʧ��",0)
		Msg2Player("Ch� t�o th�t b�i, m�t �i m�t s� nguy�n li�u.")
		return 0;
	end
	

	tbAwardTemplet:GiveAwardByList(tbProduct, self.szLogTitle, nComposeCount)
	
	if type(self.tbFormula.pProductFun) == "function" then
		self.tbFormula:pProductFun(nComposeCount)
	end
	return 1;
end

function refine_jinwu3()
		
	local strDesc = "<npc>L�y <color=yellow>trang b� Nguy�t Khuy�t <color> mu�n tr�ng luy�n  v� s� l��ng <color=yellow> Ng� Linh Quy Nguy�n Ph�<color> t��ng �ng ��t v�o ph�a d��i"
	strDesc = strDesc..format("\n\t\t\t\t\t%-29s%s", "Trang b� Nguy�t Khuy�t", "Ng� Linh Quy Nguy�n Ph�")
	strDesc = strDesc..format("\n\t\t\t<color=yellow>%-34s<color=red>%d<color>", "Nguy�t Khuy�t Kh�i", 2)
	strDesc = strDesc..format("\n\t\t\t<color=yellow>%-34s<color=red>%d<color>", "Nguy�t Khuy�t Y Ph�c", 3)
	strDesc = strDesc..format("\n\t\t\t<color=yellow>%-34s<color=red>%d<color>", "Nguy�t Khuy�t H�i", 3)
	strDesc = strDesc..format("\n\t\t\t<color=yellow>%-34s<color=red>%d<color>", "Nguy�t Khuy�t Y�u ��i", 2)
	strDesc = strDesc..format("\n\t\t\t<color=yellow>%-34s<color=red>%d<color>", "Nguy�t Khuy�t H� Uy�n", 1)
	strDesc = strDesc..format("\n\t\t\t<color=yellow>%-34s<color=red>%d<color>", "Nguy�t Khuy�t Ng�c B�i", 3)
	strDesc = strDesc..format("\n\t\t\t<color=yellow>%-34s<color=red>%d<color>", "Nguy�t Khuy�t H�ng Li�n", 1)
	strDesc = strDesc..format("\n\t\t\t<color=yellow>%-34s<color=red>%d<color>", "Nguy�t Khuy�t Gi�i Ch�", 2)
	strDesc = strDesc..format("\n\t\t\t<color=yellow>%-34s<color=red>%d<color>", "Nguy�t Khuy�t V� Kh�", 4)
	local tbOpt = {}
	local tbMate =	{
			tbMaterial = 
			{
				{szName = "Trang b� Nguy�t Khuy�t", tbProp = {0, {5670,5919}}, nQuality = 1 },
				{szName = "Ng� Linh Quy Nguy�n Ph�", tbProp = {6,1,3008,1,0,0},},
			},
			tbProduct = {szName="Trang b� Nguy�t Khuy�t", tbProp={0, {5670,5919}}},
		}
	local p = tbNKEquip:new(tbMate, "NKEquip", INVENTORY_ROOM.room_giveitem)
	tinsert(tbOpt, {"Tr�ng luy�n trang b� Nguy�t Khuy�t", p.ComposeGiveUI, {p}})
	tinsert(tbOpt, {"H�y b� "})
	CreateNewSayEx(strDesc, tbOpt);
end
