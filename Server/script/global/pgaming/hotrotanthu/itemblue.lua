

function nhantrangbi()
dofile("script/global/pgaming/hotrotanthu/itemblue.lua");		
trangbixanh()	
end

function trangbixanh()
	Say("C� t�t c� <color=Wood>5<color> Ng� H�nh, m�i lo�i trang b� mang m�t ng� h�nh v�i m�t s�c m�nh kh�c nhau !",6,
			"Trang b� Kim/hetrangbi",
			"Trang b� M�c/hetrangbi1",
			"Trang b� Th�y/hetrangbi2",
			"Trang b� H�a/hetrangbi3",
			"Trang b� Th�/hetrangbi4",
			"Ta kh�ng c�n/no")
end

function hetrangbi()
Say("Ng��i mu�n nh�n trang b� n�o ?",11,
"V� kh�/trangbikim",
"�o gi�p/trangbikim",
"N�n/trangbikim",
"Gi�y/trangbikim",
"Th�t l�ng/trangbikim",
"Bao Tay/trangbikim",
"�m kh�/trangbikim",
"Ng�c b�i/trangbikim",
"D�y chuy�n/trangbikim",
"Nh�n/trangbikim",
"K�t th�c ��i tho�i./no")
end


function trangbikim(nsel)
i = nsel+1
for m=1,5 do
	if i == 1 then --vu khi
			q = random(0,5)
			AddItem(0,0,q,random(8,10),0,200,10)
		elseif i == 2 then --ao giap
			w = random(0,28)
			AddItem(0,2,w,random(6,10),0,200,10)
		elseif i == 3 then --non
			a = random(0,13)
			AddItem(0,7,a,random(6,10),0,200,10)
		elseif i == 4 then --giay
			e = random(0,3)
			AddItem(0,5,e,random(6,10),0,200,10)
		elseif i == 5 then	--that lung
			r = random(0,1)
			AddItem(0,6,r,random(6,10),0,200,10)
		elseif i == 6 then --bao tay
			t = random(0,1)
			AddItem(0,8,t,random(6,10),0,200,10)
		elseif i == 7 then --am khi
			y = random(0,2)
			AddItem(0,1,y,random(6,10),0,200,10)
		elseif i == 8 then --ngoc boi
			u = random(0,1)
			AddItem(0,9,u,random(6,10),0,200,10)
		elseif i == 9 then --day chuyen
			o = random(0,1)
			AddItem(0,4,o,random(6,10),0,200,10)
		elseif i == 10 then --nhan
			AddItem(0,3,0,random(6,10),0,200,10)		
		end
end
end

function hetrangbi1()
Say("Ng��i mu�n nh�n trang b� n�o ?",11,
"V� kh�/trangbimoc",
"�o gi�p/trangbimoc",
"N�n/trangbimoc",
"Gi�y/trangbimoc",
"Th�t l�ng/trangbimoc",
"Bao Tay/trangbimoc",
"�m kh�/trangbimoc",
"Ng�c b�i/trangbimoc",
"D�y chuy�n/trangbimoc",
"Nh�n/trangbimoc",
"K�t th�c ��i tho�i./no")
end


function trangbimoc(nsel)
i = nsel+1
for m=1,5 do
	if i == 1 then --vu khi
			q = random(0,5)
			AddItem(0,0,q,random(8,10),1,200,10)
		elseif i == 2 then --ao giap
			w = random(0,28)
			AddItem(0,2,w,random(6,10),1,200,10)
		elseif i == 3 then --non
			a = random(0,13)
			AddItem(0,7,a,random(6,10),1,200,10)
		elseif i == 4 then --giay
			e = random(0,3)
			AddItem(0,5,e,random(6,10),1,200,10)
		elseif i == 5 then	--that lung
			r = random(0,1)
			AddItem(0,6,r,random(6,10),1,200,10)
		elseif i == 6 then --bao tay
			t = random(0,1)
			AddItem(0,8,t,random(6,10),1,200,10)
		elseif i == 7 then --am khi
			y = random(0,2)
			AddItem(0,1,y,random(6,10),1,200,10)
		elseif i == 8 then --ngoc boi
			u = random(0,1)
			AddItem(0,9,u,random(6,10),1,200,10)
		elseif i == 9 then --day chuyen
			o = random(0,1)
			AddItem(0,4,o,random(6,10),1,200,10)
		elseif i == 10 then --nhan
			AddItem(0,3,0,random(6,10),1,200,10)		
		end
end
end



function hetrangbi2()
Say("Ng��i mu�n nh�n trang b� n�o ?",11,
"V� kh�/trangbithuy",
"�o gi�p/trangbithuy",
"N�n/trangbithuy",
"Gi�y/trangbithuy",
"Th�t l�ng/trangbithuy",
"Bao Tay/trangbithuy",
"�m kh�/trangbithuy",
"Ng�c b�i/trangbithuy",
"D�y chuy�n/trangbithuy",
"Nh�n/trangbithuy",
"K�t th�c ��i tho�i./no")
end


function trangbithuy(nsel)
i = nsel+1
for m=1,5 do
	if i == 1 then --vu khi
			q = random(0,5)
			AddItem(0,0,q,random(8,10),2,200,10)
		elseif i == 2 then --ao giap
			w = random(0,28)
			AddItem(0,2,w,random(6,10),2,200,10)
		elseif i == 3 then --non
			a = random(0,13)
			AddItem(0,7,a,random(6,10),2,200,10)
		elseif i == 4 then --giay
			e = random(0,3)
			AddItem(0,5,e,random(6,10),2,200,10)
		elseif i == 5 then	--that lung
			r = random(0,1)
			AddItem(0,6,r,random(6,10),2,200,10)
		elseif i == 6 then --bao tay
			t = random(0,1)
			AddItem(0,8,t,random(6,10),2,200,10)
		elseif i == 7 then --am khi
			y = random(0,2)
			AddItem(0,1,y,random(8,8),2,200,10)
		elseif i == 8 then --ngoc boi
			u = random(0,1)
			AddItem(0,9,u,random(6,10),2,200,10)
		elseif i == 9 then --day chuyen
			o = random(0,1)
			AddItem(0,4,o,random(6,10),2,200,10)
		elseif i == 10 then --nhan
			AddItem(0,3,0,random(6,10),2,200,10)		
		end
end
end



function hetrangbi3()
Say("Ng��i mu�n nh�n trang b� n�o ?",11,
"V� kh�/trangbihoa",
"�o gi�p/trangbihoa",
"N�n/trangbihoa",
"Gi�y/trangbihoa",
"Th�t l�ng/trangbihoa",
"Bao Tay/trangbihoa",
"�m kh�/trangbihoa",
"Ng�c b�i/trangbihoa",
"D�y chuy�n/trangbihoa",
"Nh�n/trangbihoa",
"K�t th�c ��i tho�i./no")
end


function trangbihoa(nsel)
i = nsel+1
for m=1,5 do
	if i == 1 then --vu khi
			q = random(0,5)
			AddItem(0,0,q,random(8,10),3,200,10)
		elseif i == 2 then --ao giap
			w = random(0,28)
			AddItem(0,2,w,random(6,10),3,200,10)
		elseif i == 3 then --non
			a = random(0,13)
			AddItem(0,7,a,random(6,10),3,200,10)
		elseif i == 4 then --giay
			e = random(0,3)
			AddItem(0,5,e,random(6,10),3,200,10)
		elseif i == 5 then	--that lung
			r = random(0,1)
			AddItem(0,6,r,random(6,10),3,200,10)
		elseif i == 6 then --bao tay
			t = random(0,1)
			AddItem(0,8,t,random(6,10),3,200,10)
		elseif i == 7 then --am khi
			y = random(0,2)
			AddItem(0,1,y,random(6,10),3,200,10)
		elseif i == 8 then --ngoc boi
			u = random(0,1)
			AddItem(0,9,u,random(6,10),3,200,10)
		elseif i == 9 then --day chuyen
			o = random(0,1)
			AddItem(0,4,o,random(6,10),3,200,10)
		elseif i == 10 then --nhan
			AddItem(0,3,0,random(6,10),3,200,10)		
		end
end
end


function hetrangbi4()
Say("Ng��i mu�n nh�n trang b� n�o ?",11,
"V� kh�/trangbitho",
"�o gi�p/trangbitho",
"N�n/trangbitho",
"Gi�y/trangbitho",
"Th�t l�ng/trangbitho",
"Bao Tay/trangbitho",
"�m kh�/trangbitho",
"Ng�c b�i/trangbitho",
"D�y chuy�n/trangbitho",
"Nh�n/trangbitho",
"K�t th�c ��i tho�i./no")
end


function trangbitho(nsel)
i = nsel+1
for m=1,5 do
	if i == 1 then --vu khi
			q = random(0,5)
			AddItem(0,0,q,random(8,10),4,200,10)
		elseif i == 2 then --ao giap
			w = random(0,28)
			AddItem(0,2,w,random(6,10),4,200,10)
		elseif i == 3 then --non
			a = random(0,13)
			AddItem(0,7,a,random(6,10),4,200,10)
		elseif i == 4 then --giay
			e = random(0,3)
			AddItem(0,5,e,random(6,10),4,200,10)
		elseif i == 5 then	--that lung
			r = random(0,1)
			AddItem(0,6,r,random(6,10),4,200,10)
		elseif i == 6 then --bao tay
			t = random(0,1)
			AddItem(0,8,t,random(6,10),4,200,10)
		elseif i == 7 then --am khi
			y = random(0,2)
			AddItem(0,1,y,random(6,10),4,200,10)
		elseif i == 8 then --ngoc boi
			u = random(0,1)
			AddItem(0,9,u,random(6,10),4,200,10)
		elseif i == 9 then --day chuyen
			o = random(0,1)
			AddItem(0,4,o,random(6,10),4,200,10)
		elseif i == 10 then --nhan
			AddItem(0,3,0,random(6,10),4,200,10)		
		end
end
end



