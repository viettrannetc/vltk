-- Hi�u thu�c � Vi S�n ��o - Editor by AloneScript (Linh Em)

Include("\\script\\lib\\alonelib.lua");

function main()
	Say("<color=green>Hi�u thu�c<color>: Vi S�n ��o l� n�i d� ra kh� v�o. N�u mu�n s�ng l�u h�n tr�n ��, h�y mua m�t �t thu�c c�a ta �i!"..Note("hieuthuoc_visondao"), 2, "Giao d�ch/yes", NOTTRADE)
end

function yes()
	Sale(100);
end