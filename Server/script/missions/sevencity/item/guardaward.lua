-- �������ʹ�ýű�
Include("\\script\\lib\\awardtemplet.lua")

--Gi�i h�n �i�m kinh nghi�m m�i ng�y l� 50tri�u khi s� d�ng c�c lo�i b�o r��ng -vu tru le bao
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")

tbAward = {
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
	{szName="Thi�n V��ng Ho�ng Kim Trang B� B�o R��ng (Ng�u nhi�n)", tbProp={6,1,4664,1,0,0}, nRate=5, nExpiredTime=10080},
	{szName="Ng� ��c Ho�ng Kim Trang B� B�o R��ng (Ng�u nhi�n)", tbProp={6,1,4664,1,0,0}, nRate=5, nExpiredTime=10080},
	{szName="Th�y Y�n Ho�ng Kim Trang B� B�o R��ng (Ng�u nhi�n)", tbProp={6,1,4664,1,0,0}, nRate=5, nExpiredTime=10080},
	{szName="C�n L�n Ho�ng Kim Trang B� B�o R��ng (Ng�u nhi�n)", tbProp={6,1,4664,1,0,0}, nRate=5, nExpiredTime=10080},
	{szName="Thi�n Nh�n Ho�ng Kim Trang B� B�o R��ng (Ng�u nhi�n)", tbProp={6,1,4664,1,0,0}, nRate=5, nExpiredTime=10080},
	{szName="Thi�u L�m Ho�ng Kim Trang B� B�o R��ng (Ng�u nhi�n)", tbProp={6,1,4664,1,0,0}, nRate=5, nExpiredTime=10080},
	{szName="���ng M�n Ho�ng Kim Trang B� B�o R��ng (Ng�u nhi�n)", tbProp={6,1,4664,1,0,0}, nRate=5, nExpiredTime=10080},
	{szName="Nga Mi Ho�ng Kim Trang B� B�o R��ng (Ng�u nhi�n)", tbProp={6,1,4664,1,0,0}, nRate=5, nExpiredTime=10080},
	{szName="V� �ang Ho�ng Kim Trang B� B�o R��ng (Ng�u nhi�n)", tbProp={6,1,4664,1,0,0}, nRate=5, nExpiredTime=10080},
	{szName="C�i Bang Ho�ng Kim Trang B� B�o R��ng (Ng�u nhi�n)", tbProp={6,1,4664,1,0,0}, nRate=5, nExpiredTime=10080},
	{szName="M� B�i-Si�u Quang", tbProp={6,1,3483,1,0,0}, nRate=0.5, nExpiredTime=43200},
	{szName="M� b�i - B�n Ti�u", tbProp={6,1,4664,1,0,0}, nRate=1, nExpiredTime=43200},
	{szName="M� b�i - Phi�n V�", tbProp={6,1,4664,1,0,0}, nRate=1, nExpiredTime=43200},	
	
}

function main()
	if (CalcFreeItemCellCount() < 1) then
		Say("H�nh trang �t nh�t ph�i c� <color=red>1<color> � tr�ng m�i nh�n ���c ph�n th��ng.")
		return 1
	end
	tbAwardTemplet:Give(tbAward, 1, {"SEVENCITY", "UseGuardAward"})
	return 0
end

function test()
	local rate = 0
	for i = 1, getn(tbAward) do
		rate = rate + tbAward[i].nRate
	end
	if (floor(rate) ~= 100) then
		error(format("invalid rate: %d", rate))
	end
end

