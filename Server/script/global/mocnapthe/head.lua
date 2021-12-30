-- M�c n�p th� by AloneScript

Include("\\script\\lib\\alonelib.lua");
Include("\\script\\dailogsys\\dailogsay.lua");
Include("\\script\\global\\systemconfig.lua");

if (SYSCFG_EXTPOINTID1_TYPEPAY == 0) then --��i v�i server s� d�ng ti�n ��ng
	CARDPAYMENT_RATIO = 10; -- T� l� m�c n�p th� ��i ra. du: VD: t� l� v�i 1.000 VN� = 10 xu (gi� tr� t�nh theo ��n v� xu cho 1k VN�)
elseif (SYSCFG_EXTPOINTID1_TYPEPAY == 1) then --��i v�i server s� d�ng KNB
	CARDPAYMENT_RATIO = 10; -- T� l� m�c n�p th�: VD: t� l� v�i 10.000 VN� = 1 KNB (gi� tr� t�nh theo ��n v� VN� cho 1 vi�n KNB)
end

function PlayerCheckCard()
	local nCard, nCount = GetCardPayment();
	local szVND = StringPayment(nCard)
	local szPay = "";
	if (SYSCFG_EXTPOINTID1_TYPEPAY == 0) then
		szPay = "ti�n ��ng";
	elseif (SYSCFG_EXTPOINTID1_TYPEPAY == 1) then
		szPay = "KNB"
	end
	local szMsg = "";
	Say(format("Hi�n t�i b�n �� n�p ���c t�ng c�ng <color=yellow>%d %s<color> t��ng ���ng v�i <color=yellow>"..szVND.." VN�<color>", nCount, szPay), 0)
end

function AddCardPayment(nCard)
	local Data1 = PLAYER_CHARGECARD;
	local Data2 = GetName();
	local Data3 = TASKMODULE_DATACARD;
	local nPay = GetTaskModule(Data1, Data2, Data3);
	SetTaskModule(Data1, Data2, Data3, nPay+nCard);
end

function GetCardPayment()
	local nCard = 0;
	local Data1 = PLAYER_CHARGECARD;
	local Data2 = GetName();
	local Data3 = TASKMODULE_DATACARD;
	local nRatio = CARDPAYMENT_RATIO;
	local nPay = GetTaskModule(Data1, Data2, Data3);
	local nGlobal = 0;
	if (nPay == 0) then 
		return 0, 0 ;
	end;
	local nCount = 0;
	if (SYSCFG_EXTPOINTID1_TYPEPAY == 0) then
		for i = 1, nPay do
			nCount = nCount + 1;
			if (nCount == nRatio) then
				nCard = nCard + 1;
				nCount = 0;
			end
		end
		nGlobal = (nCard+(nCount/10));
	elseif (SYSCFG_EXTPOINTID1_TYPEPAY == 1) then
		nGlobal = (nPay*nRatio);
	end
return nGlobal, nPay end

function StringPayment(n_pay)
	if (n_pay < 1) then
		local n_du = mod(n_pay, 1);
		local n_tram = floor(n_du*10);
		return n_tram.."00 ��ng";
	elseif (n_pay >= 1) and (n_pay < 1000) then
		local n_du = mod(n_pay, 1);
		local n_nghin = floor(n_pay);
		local n_tram = floor(n_du*10);
		return n_nghin.." ngh�n "..n_tram.."00 ��ng";
	elseif (n_pay >= 1000) and (n_pay < 1000000) then
		local n_du = mod(n_pay, 1);
		local n_tram = floor(n_du*10);
		local n_nghin = floor(mod(n_pay, 1000));
		local n_trieu = floor(floor(n_pay)/1000);
		return n_trieu.." tri�u "..n_nghin.." ngh�n "..n_tram.."00 ��ng";
	elseif (n_pay >= 1000000) then
		local n_du = mod(n_pay, 1);
		local n_tram = floor(n_du*10);
		local n_nghin = floor(mod(n_pay, 1000));
		local n_trieu = mod(floor(n_pay/1000),1000);
		local n_ty = floor((floor(n_pay)/1000)/1000);
		return n_ty.." t� "..n_trieu.." tri�u "..n_nghin.." ngh�n "..n_tram.."00 ��ng";
	end
end