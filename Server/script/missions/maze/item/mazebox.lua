Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")

tbKG_Key_Require = {
	["chiakhoanhuy"] = {6, 1, 2744},
	["chiakhoavang"] = {6, 1, 30191},
}
tbKG_Box_Award = 
{
	["chiakhoanhuy"] = 
	{
		{szName="�i�m kinh nghi�m 1", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(1000000, "B�o R��ng Ki�m Gia")
					end,
					nRate = 52,
		},
		{szName="�i�m kinh nghi�m 2", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(2000000, "B�o R��ng Ki�m Gia")
					end,
					nRate = 30,
		},
		{szName="�i�m kinh nghi�m 3", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(3000000, "B�o R��ng Ki�m Gia")
					end,
					nRate = 10,
		},
		{szName="�i�m kinh nghi�m 4", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(4000000, "B�o R��ng Ki�m Gia")
					end,
					nRate = 5,
		},
		{szName="�i�m kinh nghi�m 5", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(5000000, "B�o R��ng Ki�m Gia")
					end,
					nRate = 3,
		},		
	},	
	["chiakhoavang"] = 
	{
			{{szName="�� Ph� Tinh S��ng Kh�i",tbProp={6,1,4836,1,0,0},nCount=1,nRate=3},},
			{{szName="�� Ph� Tinh S��ng Y",tbProp={6,1,4837,1,0,0},nCount=1,nRate=3},},
			{{szName="�� Ph� Tinh S��ng H�i",tbProp={6,1,4838,1,0,0},nCount=1,nRate=3},},
			{{szName="�� Ph� Tinh S��ng Y�u ��i",tbProp={6,1,4839,1,0,0},nCount=1,nRate=3},},
			{{szName="�� Ph� Tinh S��ng H� Uy�n",tbProp={6,1,4840,1,0,0},nCount=1,nRate=3},},
			{{szName="�� Ph� Tinh S��ng H�ng Li�n",tbProp={6,1,4841,1,0,0},nCount=1,nRate=3},},
			{{szName="�� Ph� Tinh S��ng Ng�c B�i",tbProp={6,1,4842,1,0,0},nCount=1,nRate=3},},
			{{szName="�� Ph� Tinh S��ng Th��ng Gi�i",tbProp={6,1,4843,1,0,0},nCount=1,nRate=3},},
			{{szName="�� Ph� Tinh S��ng H� Gi�i",tbProp={6,1,4844,1,0,0},nCount=1,nRate=3},},
			{{szName="�� Ph� Tinh S��ng KhU Gi�i",tbProp={6,1,4845,1,0,0},nCount=1,nRate=1},},
			{{szName="Huy�n ThiOt",tbProp={6,1,4846,1,0,0},nCount=1,nRate=0.25},},
			{{szName="�� Ph� Nguy�t KhuyOt H�ng Li�n",tbProp={6,1,4848,1,0,0},nCount=1,tbParam={2,0,0,0,0,0}, nRate=0.25},},
			{{szName="�� Ph� Nguy�t KhuyOt Kh�i",tbProp={6,1,4849,1,0,0},nCount=1,tbParam={6,0,0,0,0,0},nRate=0.25},},
			{{szName="�� Ph� Nguy�t KhuyOt Th��ng Gi�i",tbProp={6,1,4850,1,0,0},nCount=1,tbParam={8,0,0,0,0,0},nRate=0.25},},
			{{szName="�� Ph� Nguy�t KhuyOt H� Uy�n",tbProp={6,1,4851,1,0,0},nCount=1,tbParam={5,0,0,0,0,0},nRate=0.25},},
			{{szName="�� Ph� Nguy�t KhuyOt Y�u ��i",tbProp={6,1,4852,1,0,0},nCount=1,tbParam={4,0,0,0,0,0},nRate=0.25},},
			{{szName="�� Ph� Nguy�t KhuyOt H�i",tbProp={6,1,4855,1,0,0},nCount=1,tbParam={1,0,0,0,0,0},nRate=0.25},},
			{{szName="�� Ph� Nguy�t KhuyOt H� Gi�i",tbProp={6,1,4856,1,0,0},nCount=1,tbParam={9,0,0,0,0,0}, nRate=0.25},},
			{{szName="�� Ph� Nguy�t KhuyOt B�i",tbProp={6,1,4857,1,0,0},nCount=1,tbParam={3,0,0,0,0,0},nRate=0.125},},
			{{szName="Tinh S��ng Th�ch",tbProp={6,1,4847,1,0,0},nCount=1,tbParam={10,0,0,0,0,0},nRate=0.125},},
			{{szName="�� Ph� Nguy�t KhuyOt V� KhU",tbProp={6,1,4854,1,0,0},nCount=1,tbParam={7,0,0,0,0,0},nRate=0.0625},},
			{{szName="H�nh Hi�p L�nh",tbProp={6,1,2566,1,0,0},nCount=5,nRate=52},},
			{{szName="Nguy�t KhuyOt Tinh Th�ch",tbProp={6,1,4858,1,0,0},nCount=1,nRate=1},},
			{{szName="Nguy�t KhuyOt Th�ch",tbProp={6,1,4859,1,0,0},nCount=1,nRate=2},},
			{{szName="Thanh C�u Th�ch",tbProp={6,1,2710,1,0,0},nCount=1,nRate=2},},
			{{szName="��ng Long H�n",tbProp={6,1,4809,1,0,0},nCount=1,nRate=0.013},},
			{{szName="��ng Long Th�ch",tbProp={6,1,4810,1,0,0},nCount=1,nRate=0.0125},},
			{{szName="��ng Long Huy�t",tbProp={6,1,4811,1,0,0},nCount=1,nRate=0.0125},},
		{szName="�i�m kinh nghi�m 1", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(6000000, "B�o R��ng Ki�m Gia")
					end,
					nRate = 81.118,
		},
		{szName="�i�m kinh nghi�m 2", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(12000000, "B�o R��ng Ki�m Gia")
					end,
					nRate = 5,
		},
		{szName="�i�m kinh nghi�m 3", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(20000000, "B�o R��ng Ki�m Gia")
					end,
					nRate = 3,
		},
		{szName="�i�m kinh nghi�m 4", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(50000000, "B�o R��ng Ki�m Gia")
					end,
					nRate = 0.5,
		},	
	},
}

nWidth = 1
nHeight = 1
nFreeItemCellLimit = 1

function main(nIndexItem)	
	local tbKey1 = tbKG_Key_Require["chiakhoanhuy"]
	local tbKey2 = tbKG_Key_Require["chiakhoavang"]
	local nCount1 = CalcItemCount(3, tbKey1[1], tbKey1[2], tbKey1[3], -1) 
	local nCount2 = CalcItemCount(3, tbKey2[1], tbKey2[2], tbKey2[3], -1) 
	if nCount1 == 0 and nCount2 == 0 then
		Say("C�n ph�i c� Ch�a Kh�a V�ng ho�c Ch�a Kh�a Nh� � m�i c� th� m� ���c B�o R��ng Ki�m Gia", 1, "��ng/no")
		return 1
	end

	if CountFreeRoomByWH(nWidth, nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("�� b�o ��m t�i s�n c�a ��i hi�p, xin h�y �� tr�ng %d %dx%d h�nh trang", nFreeItemCellLimit, nWidth, nHeight))
		return 1
	end	
	local tbOpt = {}
	if nCount1 ~= 0 then
		tinsert(tbOpt,format("S� d�ng Ch�a kh�a nh� �/#VnKGBoxNewAward(%d, '%s')", nIndexItem, "chiakhoanhuy"))
	end
	if nCount2 ~= 0 then
		tinsert(tbOpt,format("S� d�ng Ch�a kh�a v�ng/#VnKGBoxNewAward(%d, '%s')", nIndexItem, "chiakhoavang"))
	end
	if getn(tbOpt) > 0 then
		tinsert(tbOpt, "��ng/Oncancel")
		Say("S� d�ng ch�a kh�a �� m� r��ng:", getn(tbOpt), tbOpt)
	end
	return 1
end

function Oncancel()end

function VnKGBoxNewAward(nItemIdx, strKeyType)
	print("strKeyType: ",strKeyType)
	local tbKey = tbKG_Key_Require[strKeyType]
	local tbAward = tbKG_Box_Award[strKeyType]
	if not tbKey or not tbAward then
		return
	end
	if ConsumeItem(3, 1, tbKey[1], tbKey[2], tbKey[3], -1) ~= 1 then
		Say("C�n ph�i c� Ch�a Kh�a V�ng ho�c Ch�a Kh�a Nh� � m�i c� th� m� ���c B�o R��ng Ki�m Gia", 1, "��ng/no")
		return
	end
	
	if ConsumeItem(3, 1, 6, 1, 30203, -1) ~= 1 then
		Say("Kh�ng t�m th�y B�o R��ng Ki�m Gia", 1, "��ng/no")
		return
	end	
	tbAwardTemplet:Give(tbAward, 1, {"KiemGiaMeCung", "SuDungBaoRuongKiemGia"})	
end 
