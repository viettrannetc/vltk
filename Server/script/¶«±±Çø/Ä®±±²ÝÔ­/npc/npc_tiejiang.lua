-- Th� r�n � M�c B�c Th�o Nguy�n - Editor by AloneScript (Linh Em)

Include("\\script\\lib\\alonelib.lua");
Include("\\script\\global\\equip_system.lua");

function main(sel)
	-- Say("<color=green>Th� r�n<color>: C� tr�m d�m g�n ��y ai kh�ng bi�t ��n ��i danh c�a ta, t� �ao, ki�m, c�n, th��ng, k�ch, m��i t�m m�n v� kh� ta ��u c� ��, kh�ch quan mu�n mua m�n n�o? C�n mu�n ch� t�o Trang b� Huy�n Tinh hay trang b� Ho�ng Kim ��u ph�i ��n t�m ta, nh�t ��nh gi� c� ph�i ch�ng!"..Note("thoren_macbacthaonguyen"), 3, "Giao d�ch/yes", "Ch� t�o/OnFoundry", "Nh�n ti�n gh� qua th�i/no");
	Say("<color=green>Th� r�n<color>: C� tr�m d�m g�n ��y ai kh�ng bi�t ��n ��i danh c�a ta, t� �ao, ki�m, c�n, th��ng, k�ch, m��i t�m m�n v� kh� ta ��u c� ��, kh�ch quan mu�n mua m�n n�o?"..Note("thoren_macbacthaonguyen"), 2, "Giao d�ch/yes", NOTTRADE);
end;

function yes()
	Sale(13);  				
end;
