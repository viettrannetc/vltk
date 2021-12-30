Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")



function main()
	dofile("script/event/autumnbox/npc_main.lua")
	local strTitle = "<npc>Trong th�i gian ho�t ��ng, m�i ng��i c� th� ��i qu� �� s� h�u nh�ng v�t ph�m th�t gi� tr�, <color=red>c�n 2 B�nh Trung Thu ��u Xanh<color> �� ��i 1 h�p b�nh trung thu"
	local tbOpt =
	{
		{"Ta mu�n ��i h�p b�nh trung thu",doibanhtrungthu},
		{"Tho�t"},
	}
	CreateNewSayEx(strTitle, tbOpt)
end



function CountHop(nIndex)
	local nHop = CalcEquiproomItemCount(6,1,nIndex,-1)
	return floor(nHop/2)
end

function DelNguyenLieu(nIndex,count)
	ConsumeEquiproomItem(count,6,1,nIndex,-1)
end



function FindHop(nIndex)
	local nHop = CountHop(891)
	return min(nHop)
end



function doibanhtrungthu()
	local nHop = FindHop(891)
	AskClientForNumber("doibanh",0,nHop, "M�i nh�p s� l��ng h�p b�nh: ")
end


function doibanh(n_key)
	local nHop = FindHop(891)
	if (n_key < 0 or n_key > nHop) then
		return
	end
	
	for i=1,n_key do
		local nIndex = AddItem(6,1,4861,0,0,0)
		DelNguyenLieu(891,2)		
	end
end
