-- Th� r�n � Vi S�n ��o - Editor by AloneScript (Linh Em)

Include("\\script\\lib\\alonelib.lua");
Include("\\script\\global\\equip_system.lua");

function main(sel)
	-- Say("X�a nay anh h�ng ph�i m� t�u, danh ki�m ph�i hi�p s�, m�t c�nh li�u c�ng c� th� �� th��ng ���c ng��i, nh�ng ng��i h�c v� ai l�i kh�ng th�ch c� m�t thanh b�o ki�m s�c b�n ch�? N�u mu�n ch� t�o trang b� Huy�n Tinh ho�c trang b� Ho�ng Kim th� c� th� ��n t�m ta gi� c� ph�i ch�ng th�i!", 3, "Giao d�ch/yes", "ch� t�o/onFoundry", "Nh�n ti�n gh� qua th�i/no");
	Say("<color=green>Th� r�n<color>: X�a nay anh h�ng ph�i m� t�u, danh ki�m ph�i hi�p s�, m�t c�nh li�u c�ng c� th� �� th��ng ���c ng��i, nh�ng ng��i h�c v� ai l�i kh�ng th�ch c� m�t thanh b�o ki�m s�c b�n ch�?"..Note("thoren_daohoanguyen"), 2, "Giao d�ch/yes", NOTTRADE);
end;

function yes()
	Sale(40);  			--�������׿�
end;

function no()
end;







