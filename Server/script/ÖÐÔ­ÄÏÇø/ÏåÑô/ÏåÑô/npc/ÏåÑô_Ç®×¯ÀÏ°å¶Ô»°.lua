-- �ng ch� ti�n trang � th�nh th� - Editor by AloneScript (Linh Em)

Include("\\script\\\global\\npc\\chutientrang.lua")

function main(sel)
	i = random(0,1)
	if (i == 0) then
		Talk(1,"main_proc","Ng��i l�m �n ���ng nhi�n mu�n l�i c�ng nhi�u c�ng T�t! Thi�n h� c� m�y ai ch� ti�n?")
	else
		Talk(1,"main_proc","M�i th� ��u l� gi�, ch� c� v�ng th�t, b�c tr�ng m�i l� th�t!")
	end
end;
