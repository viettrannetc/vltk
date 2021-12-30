Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\vng_lib\\bittask_lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\droptemplet.lua")
tbMazeExtAward = {};
tbMazeExtAward.	tbTSK_GetBaoRuong = 3076;
tbMazeExtAward.tbExpAward = {szName = "�i�m Kinh Nghi�m", nExp = 2e6}
tbMazeExtAward.tbServerAward = {-- Phan thuong server cu
	[1] = {
		{szName = "�i�m Kinh Nghi�m", nExp = 10e6},
	},
	[2] = {
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
		

	},		
}
function tbMazeExtAward:MazeBossAward(mate)
	local nOldPlayer = PlayerIndex
	PlayerIndex = mate.m_PlayerIndex
	tbAwardTemplet:Give(self.tbServerAward[2], 1, {"KiemGiaMeCung", "KillBossLongCuuThienAward"})
	PlayerIndex = nOldPlayer
end

function tbMazeExtAward:_Message(CaptainName)
	local strMessage = format("T� ��i c�a <color=green> %s <color>�� ti�u di�t th�nh c�ng Boss Long C�u Thi�n t�i Th� Ki�m C�c",CaptainName)
	AddGlobalNews(strMessage)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, strMessage)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

function tbMazeExtAward:MazeStepFinishAward(mate)
		local tbMazeAward = {
			{szName="B�o R��ng Ki�m Gia",tbProp={6,1,30203,1,0,0},nCount=1},
		}
		local nOldPlayer = PlayerIndex
		PlayerIndex = mate.m_PlayerIndex
		if PlayerFunLib:CheckTaskDaily(self.tbTSK_GetBaoRuong, 5, format("H�m nay ng��i �� nh�n<color=yellow> 5 <color>l�n ph�n th��ng n�y, kh�ng th� nh�n th�m."), "<") then
			PlayerFunLib:AddTaskDaily(self.tbTSK_GetBaoRuong, 1)
			tbAwardTemplet:Give(tbMazeAward, 1, {"KiemGiaMeCung", "KillBossAward"})
		end	
		PlayerIndex = nOldPlayer
end
