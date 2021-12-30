-- Author by AloneScript (Linh Em)

Include("\\script\\global\\mocnapthe\\head.lua");
Include("\\script\\global\\systemconfig.lua");
Include("\\script\\dailogsys\\dailogsay.lua");

if (SYSCFG_EXTPOINTID1_TYPEPAY == 0) then
	Include("\\script\\global\\payment\\coin.lua")
elseif (SYSCFG_EXTPOINTID1_TYPEPAY == 1) then
	Include("\\script\\global\\payment\\knb.lua")
end

function NPC_TienTrang()
	local tbOpt = {"Ng��i t�m ta c� vi�c g�?"};
	local pType = "";
		if (SYSCFG_EXTPOINTID1_TYPEPAY == 0) then
			pType = "Ng�n h�ng ti�n t� (ti�n ��ng)/PaymentSystemCoin";
		elseif (SYSCFG_EXTPOINTID1_TYPEPAY == 1) then
			pType = "Ng�n h�ng ti�n t� (KNB)/PaymentSystemKNB";
		end
		tinsert(tbOpt, pType)
		tinsert(tbOpt, "Ki�m tra m�c n�p th� hi�n t�i/PlayerCheckCard")
		tinsert(tbOpt, "Ph�n th��ng ��t m�c n�p th�/MenuPlayerCard")
		tinsert(tbOpt, "K�t th�c ��i tho�i./no")
	CreateTaskSay(tbOpt)
end
