-- Th� r�n � Ba L�ng huy�n - Editor by AloneScript (Linh Em)

Include("\\script\\lib\\alonelib.lua");
Include("\\script\\global\\global_tiejiang.lua")

TIEJIANG_DIALOG = "<dec><npc>Vi�c bu�n b�n � ��y r�t thu�n l�i, ��n ngay c� c�c huynh �� c�a Thi�n V��ng Bang th��ng ��n ��y nh� ta ch� t�o binh kh�."..Note("thoren_balanghuyen");

function main(sel)
	tiejiang_village()
end;


function yes()
Sale(37);  			--�������׿�
end;
