Include("\\script\\global\\systemconfig.lua") -- ϵͳ����
Include("\\script\\global\\npc\\tientrang.lua")

function OnExtPointChange(nExtPointIndex, nChangeValue)
	return ExtPointChange(nExtPointIndex, nChangeValue);
end
