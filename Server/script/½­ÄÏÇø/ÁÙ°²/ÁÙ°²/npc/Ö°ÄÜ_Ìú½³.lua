-- Th� r�n � L�m An - Editor by AloneScript (Linh Em)

Include("\\script\\lib\\alonelib.lua");
Include("\\script\\global\\global_tiejiang.lua")

TIEJIANG_DIALOG = "<dec><npc>Gian h�ng th� r�n n�y l� do �ng t� ta truy�n l�i, t�i L�m An n�y kh�ng ng��i n�o kh�ng bi�t, xin h�i ��i hi�p mu�n mua m�n �� n�o?";
function main()
	tiejiang_city(TIEJIANG_DIALOG..Note("thoren_laman"));
end;


function yes()
	Sale(1);
end;

