-- Th� r�n � Vi S�n ��o - Editor by AloneScript (Linh Em)

Include("\\script\\lib\\alonelib.lua");
Include("\\script\\global\\equip_system.lua");

function main(sel)
	--Say("Mu�n s�ng ���c tr�n T�y S�n T� �h, kh�ng c� binh kh� l�i h�i c�a ta e r�ng ng��i ch�u nhi�u thi�t th�i ��. Ng��i c� mu�n mua g� kh�ng? C�n mu�n ch� t�o Trang b� Huy�n Tinh ho�c trang b� Ho�ng Kim th� c� ��n t�m ta gi� c� ph�i ch�ng th�i!", 3, "Giao d�ch/yes", "ch� t�o/onFoundry", "Nh�n ti�n gh� qua th�i/no")
	Say("<color=green>Th� r�n<color>: Mu�n s�ng ���c tr�n Vi S�n ��o �h, kh�ng c� binh kh� l�i h�i c�a ta e r�ng ng��i ch�u nhi�u thi�t th�i ��. Ng��i c� mu�n mua g� kh�ng?"..Note("thoren_visondao"), 2, "Giao d�ch/yes", NOTTRADE);
end;

function yes()
	Sale(13);  				
end;
