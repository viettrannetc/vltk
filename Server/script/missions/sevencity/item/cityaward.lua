-- �������ʹ�ýű�
Include("\\script\\lib\\awardtemplet.lua")

--Gi�i h�n �i�m kinh nghi�m m�i ng�y l� 50tri�u khi s� d�ng c�c lo�i b�o r��ng - Modified by DinhHQ - 20110428
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")

tbAward = {
--	{szName="�i�m kinh nghi�m 1", 
--				pFun = function (tbItem, nItemCount, szLogTitle)
--					%tbvng_ChestExpAward:ExpAward(1500000, "C�ng Th�nh L� Bao (m�i)")
--				end,
--				nRate = 60,
--	},
	{szName="�i�m kinh nghi�m 1", 
				pFun = function (tbItem, nItemCount, szLogTitle)
					%tbvng_ChestExpAward:ExpAward(2000000, "C�ng Th�nh L� Bao (m�i)")
				end,
				nRate = 1,
	},
	{szName="C�m Nang Thay ��i Tr�i ��t", tbProp={6,1,1781,1,0,0}, tbParam={60}, nRate=31.5},
	{szName="Th� Ho�ng Kim", tbProp={6,1,4654,1,0,0}, nRate=2},
	{szName="L�nh B�i Th�y T�c", tbProp={6,1,4659,1,0,0}, nRate=5},
	{szName="B�o R��ng V� Danh", tbProp={6,1,4663,1,0,0}, nRate=0.5},
	{szName="B�o R��ng Vinh Di�u", tbProp={6,1,4662,1,0,0}, nRate=0.5},
	{szName="L�nh B�i Chi�n M�", tbProp={6,1,4664,1,0,0}, nRate=5},
	{szName="Ch�a Kh�a Ho�ng Kim", tbProp={6,1,4650,1,0,0}, nRate=2, nExpiredTime=20160},
	{szName="Thi�n V��ng Ho�ng Kim Trang B� B�o R��ng (Ng�u nhi�n)", tbProp={6,1,4640,1,0,0}, nRate=5, nExpiredTime=10080},
	{szName="Ng� ��c Ho�ng Kim Trang B� B�o R��ng (Ng�u nhi�n)", tbProp={6,1,4641,1,0,0}, nRate=5, nExpiredTime=10080},
	{szName="Th�y Y�n Ho�ng Kim Trang B� B�o R��ng (Ng�u nhi�n)", tbProp={6,1,4642,1,0,0}, nRate=5, nExpiredTime=10080},
	{szName="C�n L�n Ho�ng Kim Trang B� B�o R��ng (Ng�u nhi�n)", tbProp={6,1,4643,1,0,0}, nRate=5, nExpiredTime=10080},
	{szName="Thi�n Nh�n Ho�ng Kim Trang B� B�o R��ng (Ng�u nhi�n)", tbProp={6,1,4644,1,0,0}, nRate=5, nExpiredTime=10080},
	{szName="Thi�u L�m Ho�ng Kim Trang B� B�o R��ng (Ng�u nhi�n)", tbProp={6,1,4645,1,0,0}, nRate=5, nExpiredTime=10080},
	{szName="���ng M�n Ho�ng Kim Trang B� B�o R��ng (Ng�u nhi�n)", tbProp={6,1,4646,1,0,0}, nRate=5, nExpiredTime=10080},
	{szName="Nga Mi Ho�ng Kim Trang B� B�o R��ng (Ng�u nhi�n)", tbProp={6,1,4647,1,0,0}, nRate=5, nExpiredTime=10080},
	{szName="V� �ang Ho�ng Kim Trang B� B�o R��ng (Ng�u nhi�n)", tbProp={6,1,4648,1,0,0}, nRate=5, nExpiredTime=10080},
	{szName="C�i Bang Ho�ng Kim Trang B� B�o R��ng (Ng�u nhi�n)", tbProp={6,1,4649,1,0,0}, nRate=5, nExpiredTime=10080},
	{szName="M� B�i-Si�u Quang", tbProp={6,1,3483,1,0,0}, nRate=0.5, nExpiredTime=43200},
	{szName="M� b�i - B�n Ti�u", tbProp={6,1,2333,1,0,0}, nRate=1, nExpiredTime=43200},
	{szName="M� b�i - Phi�n V�", tbProp={6,1,2334,1,0,0}, nRate=1, nExpiredTime=43200},
	
--Gi�i h�n �i�m kinh nghi�m m�i ng�y l� 50tri�u khi s� d�ng c�c lo�i b�o r��ng - Modified by DinhHQ - 20110428
--	{nExp = 1500000,  nRate = 48.02},
--	{nExp = 2000000,  nRate = 30},
--	{nExp = 5000000,  nRate = 5},
--	{nExp = 10000000, nRate	= 3},
--	{nExp = 20000000, nRate	= 2},
--	{nExp = 50000000, nRate	= 1},	
}

function main(nItemIndex)
	if (CalcFreeItemCellCount() < 1) then
		Say("H�nh trang �t nh�t ph�i c� <color=red>1<color> � tr�ng m�i nh�n ���c ph�n th��ng.")
		return 1
	end
	tbAwardTemplet:Give(tbAward, 1, {"SEVENCITY", "UseCityAward"})
	return 0
end

function test()
	local rate = 0
	for i = 1, getn(tbAward) do
		rate = rate + tbAward[i].nRate
	end
	if (floor(rate) ~= 100) then
		error(format("total rate is wrong", rate))
	end
end

test()
