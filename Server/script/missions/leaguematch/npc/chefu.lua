Include( "\\script\\missions\\leaguematch\\head.lua" )

function main(sel)
	Say("<color=green>Xa phu:<color> Ch�o m�ng c�c v� ��n tham gia �V� L�m Li�n ��u�, ta l� xa phu c�a cu�c thi n�y, qu� kh�ch mu�n ng�i xe, xin c� d�n d�!", 8,
		"Ph��ng T��ng ph�/#wlls_want2go(1)",
		"Th�nh �� ph�/#wlls_want2go(11)",
		"��i L� ph�/#wlls_want2go(162)",
		"Bi�n Kinh ph�/#wlls_want2go(37)",
		"T��ng D��ng ph�/#wlls_want2go(78)",
		"D��ng Ch�u ph�/#wlls_want2go(80)",
		"L�m An ph�/#wlls_want2go(176)",
	"��u c�ng kh�ng mu�n �i!/OnCancel")
end;

tbCP_STATION = {
	[1] = { {1557, 3112}, {1537, 3237}, {1649, 3287}, {1656, 3167}, "Ph��ng T��ng ph�" },
	[11] = { {3193, 5192}, {3266, 5004}, {3011, 5101}, {3031, 4969}, "Th�nh �� ph�" },
	[37] = { {1598, 3000}, {1866, 2930}, {1701, 3224}, {1636, 3191}, "Bi�n Kinh ph�" },
	[78] = { {1592, 3377}, {1704, 3225}, {1508, 3147}, {1440, 3219}, "T��ng D��ng ph�" },
	[80] = { {1670, 2996}, {1598, 3201}, {1722, 3210}, {1834, 3063}, "D��ng Ch�u ph�" },
	[162] = { {1669, 3129}, {1696, 3280}, {1472, 3273}, "��i L� ph�" },
	[176] = { {1603, 2917}, {1692, 3296}, {1375, 3337}, {1356, 3017}, "L�m An ph�" }
}

function wlls_want2go(stationname)
	local n_oldidx = SubWorld
	local SubWorld = SubWorldID2Idx(wlls_get_mapid(3))
	local n_camp = wlls_findfriend(WLLS_MSID_COMBAT, GetName())
	SubWorld = n_oldidx
	if (n_camp) then
		Say("<color=green>Xa phu:<color> Nh�m c�a ng��i �ang thi ��u? N�u nh� b�y gi� r�i kh�i ��y s� kh�ng nh�n ���c gi�i th��ng. Ng��i x�c nh�n mu�n r�i kh�i?",
			2, "��ng v�y!/#cp_station("..stationname..")", "Kh�ng c�n!/OnCancel")
	else
		cp_station(stationname)
	end
end

function cp_station(stationname)
	if (tbCP_STATION[stationname] == nil) then
		print("chefu cann't find station")
		return
	end
	local count = getn(tbCP_STATION[stationname]) - 1
	local randnum = random(count)
	Msg2Player("Ng�i y�n ch�a? Ch�ng ta �i "..tbCP_STATION[stationname][count+1])
	NewWorld(stationname, tbCP_STATION[stationname][randnum][1], tbCP_STATION[stationname][randnum][2])
end
