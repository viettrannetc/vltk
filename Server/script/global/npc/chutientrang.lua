-- �ng ch� ti�n trang � th�nh th� - Editor by AloneScript (Linh Em)

Include("\\script\\lib\\alonelib.lua");
Include("\\script\\global\\head_qianzhuang.lua") -- Ǯׯͷ�ļ�
IncludeForRegionVer("\\script\\global\\", "gamebank_proc.lua")

function main_proc()
	dofile("script/global/Ǯׯ����.lua");
	if (GetSex() == 0) then
		-- Say("<color=green>�ng ch� ti�n trang:<color> V� thi�u hi�p kia c�n l�o phu gi�p g�?"..Note("tientrang_thanhthi"),2,"��y c� b�n bao l� x� kh�ng?/buy_sele","Ta ch� gh� qua th�i./no")
		Say("<color=green>�ng ch� ti�n trang:<color> V� thi�u hi�p kia c�n l�o phu gi�p g�?"..Note("tientrang_thanhthi"),1,"Ta ch� gh� qua th�i./no")
	else
		-- Say("<color=green>�ng ch� ti�n trang:<color> V� c� n��ng kia c�n l�o phu gi�p g�?"..Note("tientrang_thanhthi"),2,"��y c� b�n bao l� x� kh�ng?/buy_sele","Ta ch� gh� qua th�i./no")
		Say("<color=green>�ng ch� ti�n trang:<color> V� c� n��ng kia c�n l�o phu gi�p g�?"..Note("tientrang_thanhthi"),1,"Ta ch� gh� qua th�i./no")
	end
end
------------ ���� ---------------------
function buy_sele()
	Say("���c ���c, ch� n�y ��ng l� c� b�n bao l� x�, ti�u h�ng bao 10v, ��i h�ng bao 100v.\n��c bi�t c� <color=green>H�ng bao nh� � v� H�ng bao m�ng th�<color>. \nNg��i mu�n mua lo�i n�o ? ",5,"Ti�u h�ng bao/buy1","��i h�ng bao /buy2","H�ng bao nh� � /buy3","H�ng bao m�ng th� /hesui_hongbao","Kh�ng mua n�a./no")
	--Say("���c ���c, ch� n�y ��ng l� c� b�n bao l� x�, ti�u h�ng bao 1v, ��i h�ng bao 10v, ng��i mu�n mua lo�i n�o ? ",3,"Mua ti�u h�ng bao/buy1","Mua ��i h�ng bao/buy2","Kh�ng mua n�a./no")
end

function buy1()
	if (GetCash() >= 100000) then
		Pay(100000)
		AddItem(6,1,14,1,0,0,0)
		Talk(1,"","�ng ch� ti�n trang: ��y l� Ti�u h�ng bao c�a ng��i, xin h�y c�m l�y!")
	else
		Talk(1,"","�ng ch� ti�n trang: H�y d�! Ng��i kh�ng c� �� ti�n r�i!")
	end
end

function buy2()
	if (GetCash() >= 1000000) then
		Pay(1000000)
		AddItem(6,1,13,1,0,0,0)
		Talk(1,"","�ng ch� ti�n trang: ��y l� ��i h�ng bao c�a ng��i, xin h�y c�m l�y!")
	else
		Talk(1,"","�ng ch� ti�n trang: H�y d�! Ng��i kh�ng c� �� ti�n r�i!")
	end
end

function buy3()
	if (GetCash() >= 10000000) then
		Pay(10000000)
		AddItem(6,1,13,1,0,0,0)
		Talk(1,"","�ng ch� ti�n trang: ��y l� ��i h�ng bao c�a ng��i, xin h�y c�m l�y!")
	else
		Talk(1,"","�ng ch� ti�n trang: H�y d�! Ng��i kh�ng c� �� ti�n r�i!")
	end
end

function no()
end
