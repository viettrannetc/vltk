--Creator:yfeng
--Date:2004-9-6
--Comm:客户端升级提示信息

STRTAB_LEVELUP={
	[2]=		"Ch骳 m鮪g b筺  l猲 c蕄 2, b筺  c� th� 甶 t譵 V� s�  h鋍 Khinh c玭g",
	[5]=		"Ch骳 m鮪g b筺  l猲 n c蕄 5! B筺  c� th� 甶 xem th� gi韎 b猲 ngo礽 r錳!.",
	[10]=	"Ch骳 m鮪g b筺  l猲 n c蕄 10! B筺  c� th� gia nh藀 m玭 ph竔, PK v韎 ngi kh竎, tham gia b蕋 c� ho箃 ng n祇 c馻 V� l﹎!",
	[20]=	"Ch骳 m鮪g b筺  l猲 n c蕄 20! B﹜ gi� b筺  c� th� t譵 ngi t﹎ u � h頿  k誸 b筺 tr╩ n╩, ho芻 ti誴 t鬰 con 阯g giang h� c馻 m譶h",
	[30]=	"Ch骳 m鮪g b筺  l猲 n c蕄 30!H穣 quay v� m玭 ph竔, c� r蕋 nhi襲 nhi謒 v� tr玭g ch� b筺!",
	[40]=	"Ch骳 m鮪g b筺  l猲 n c蕄 40! B筺  c� th�  tham gia chi課 trng T鑞g  Kim. ng qu猲 quay v� m玭 ph竔, c� r蕋 nhi襲 nhi謒 v� tr玭g ch� b筺!",
	[50]=	"Ch骳 m鮪g b筺  l猲 n c蕄 50! B筺  c� th� 甶 o T葃 T駓, n琲  b筺 c� v� s� l莕 th� nghi謒 hi謚 qu� t葃 甶觤 c馻 m譶h/ ho芻 n Уo hoa o  thng ch�? ch竜 L筽 B竧 t╪g kinh nghi謒! C竎 thuy襫 phu v� Xa phu u c� th� a b筺 甶! Nh� v� m玭 ph竔 l祄 nhi謒 v辵 xu蕋 s�  h鋍 頲 tuy謙 k� tr蕁 ph竔",
	[60]=	"B筺 c� th� nh薾 nhi謒 v� H錳 s�, ho祅 th祅h s� h鋍 頲 tuy謙 h鋍 tr蕁 ph竔! ",
}

function main(lvl)
	Uworld1001 = nt_getTask(1001)
	Uworld1002 = nt_getTask(1002)
	Uworld1003 = nt_getTask(1003)
	if ( GetLevel() == 30 ) then
		if ( Uworld1001 == 60 ) and ( Uworld1002 == 60 ) and ( Uworld1003 == 108) then
			nt_setTask(1001,80)
			nt_setTask(1002,80)
			nt_setTask(1003,109)
			SendTaskOrder("B筺 ng th阨 nh薾 頲 nhi謒 v� ch輓h, trung, t� c蕄 30.")
		elseif ( Uworld1001 == 60 ) and ( Uworld1002 == 60 )  then
			nt_setTask(1001,80)
			nt_setTask(1002,80)
			SendTaskOrder("B筺 ng th阨 nh薾 頲 nhi謒 v� ch輓h ph竔, trung l藀 c蕄 30.")
		elseif ( Uworld1001 == 60 ) and ( Uworld1003 == 108)  then
			nt_setTask(1001,80)
			nt_setTask(1003,109)
			SendTaskOrder("B筺 ng th阨 nh薾 頲 nhi謒 v� ch輓h ph竔, t� ph竔 c蕄 30 ")
		elseif ( Uworld1002 == 60 ) and ( Uworld1003 == 108)  then
			nt_setTask(1002,80)
			nt_setTask(1003,109)
			SendTaskOrder("B筺 ng th阨 nh薾 頲 nhi謒 v� trung l藀, t� ph竔 c蕄 30.")
		elseif ( Uworld1001 == 60 ) then
			nt_setTask(1001,80)
			SendTaskOrder("B筺 nh薾 頲 nhi謒 v� ch輓h ph竔 c蕄 30.")
		elseif ( Uworld1002 == 60 ) then
			nt_setTask(1002,80)
			SendTaskOrder("B筺 nh薾 頲 nhi謒 v� trung l藀 c蕄 30.")
		elseif ( Uworld1003 == 108) then
			nt_setTask(1003,109)
			SendTaskOrder("B筺 nh薾 頲 nhi謒 v� t� ph竔 c蕄 30.")
		end
	elseif ( GetLevel() == 40 ) then
		if ( Uworld1001 == 130 ) and ( Uworld1002 == 110 ) and ( Uworld1003 == 208 ) then
			nt_setTask(1001,150)
			nt_setTask(1002,130)
			nt_setTask(1003,209)
			SendTaskOrder("B筺 ng th阨 nh薾 頲 nhi謒 v� ch輓h, trung, t� c蕄 40")
		elseif ( Uworld1001 == 130 ) and ( Uworld1002 == 110 )  then
			nt_setTask(1001,150)
			nt_setTask(1002,130)
			SendTaskOrder("B筺 ng th阨 nh薾 頲 nhi謒 v� ch輓h, trung c蕄 40.")
		elseif ( Uworld1001 == 130 ) and ( Uworld1003 == 208 )  then
			nt_setTask(1001,150)
			nt_setTask(1003,209)
			SendTaskOrder("B筺 ng th阨 nh薾 頲 nhi謒 v� ch輓h, t�  c蕄 40")
		elseif ( Uworld1002 == 110 ) and ( Uworld1003 == 208 )  then
			nt_setTask(1002,130)
			nt_setTask(1003,209)
			SendTaskOrder("B筺 ng th阨 nh薾 頲 nhi謒 v� trung, t� c蕄 40.")
		elseif ( Uworld1001 == 130 ) then
			nt_setTask(1001,150)
			SendTaskOrder("B筺 nh薾 dc nhi謒 v� ch輓h ph竔 c蕄 40.")
		elseif ( Uworld1002 == 110 ) then
			nt_setTask(1002,130)
			SendTaskOrder("B筺 nh薾 頲 nhi謒 v� trung l藀 c蕄 40.")
		elseif ( Uworld1003 == 208 ) then
			nt_setTask(1003,209)
			SendTaskOrder("B筺 nh薾 頲 nhi謒 v� t� ph竔 c蕄 40.")
		end
	elseif ( GetLevel() == 50 ) then
		if ( Uworld1001 == 200 ) and ( Uworld1002 == 180 ) and ( Uworld1003 == 328) then
			nt_setTask(1001,220)
			nt_setTask(1002,200)
			nt_setTask(1003,329)
			SendTaskOrder("B筺 ng th阨 nh薾 頲 nhi謒 v� ch輓h, trung, t� c蕄 50")
		elseif ( Uworld1001 == 200 ) and ( Uworld1002 == 180 )  then
			nt_setTask(1001,220)
			nt_setTask(1002,200)
			SendTaskOrder("B筺 ng th阨 nh薾 頲 nhi謒 v� ch輓h ph竔, trung l藀  c蕄 50")
		elseif ( Uworld1001 == 200 ) and ( Uworld1003 == 328 )  then
			nt_setTask(1001,220)
			nt_setTask(1003,329)
			SendTaskOrder("B筺 ng th阨 nh薾 頲 nhi謒 v� ch輓h ph竔, t� ph竔 c蕄 50")
		elseif ( Uworld1002 == 180 ) and ( Uworld1003 == 328 )  then
			nt_setTask(1002,200)
			nt_setTask(1003,329)
			SendTaskOrder("B筺 ng th阨 nh薾 頲 nhi謒 v� trung l藀, t� ph竔 c蕄 50")
		elseif ( Uworld1001 == 200 ) then
			nt_setTask(1001,220)
			SendTaskOrder("B筺 nh薾 頲 nhi謒 v� ch輓h ph竔 c蕄 50")
		elseif ( Uworld1002 == 180 ) then
			nt_setTask(1002,200)
			SendTaskOrder("B筺 nh薾 頲 nhi謒 v� trung l藀 c蕄 50")
		elseif ( Uworld1003 == 328 ) then
			nt_setTask(1003,329)
			SendTaskOrder("B筺 nh薾 頲 nhi謒 v� t� ph竔 c蕄 50")
		end
	elseif ( GetLevel() == 60 ) then
		if ( Uworld1001 == 270 ) and ( Uworld1002 == 240 ) and ( Uworld1003 == 408 ) then
			nt_setTask(1001,290)
			nt_setTask(1002,260)
			nt_setTask(1003,409)
			SendTaskOrder("B筺 ng th阨 nh薾 頲 nhi謒 v� ch輓h, trung, t� c蕄 50")
		elseif ( Uworld1001 == 270 ) and ( Uworld1002 == 240 )  then
			nt_setTask(1001,290)
			nt_setTask(1002,260)
			SendTaskOrder("B筺 ng th阨 nh薾 頲 nhi謒 v� ch輓h ph竔, trung l藀  c蕄 50")
		elseif ( Uworld1001 == 270 ) and ( Uworld1003 == 408 )  then
			nt_setTask(1001,290)
			nt_setTask(1003,409)
			SendTaskOrder("B筺 ng th阨 nh薾 頲 nhi謒 v� ch輓h ph竔, t� ph竔 c蕄 50")
		elseif ( Uworld1002 == 240 ) and ( Uworld1003 == 408 )  then
			nt_setTask(1002,260)
			nt_setTask(1003,409)
			SendTaskOrder("B筺 ng th阨 nh薾 頲 nhi謒 v� trung l藀, t� ph竔 c蕄 50")
		elseif ( Uworld1001 == 270 ) then
			nt_setTask(1001,290)
			SendTaskOrder("B筺 nh薾 頲 nhi謒 v� ch輓h ph竔 c蕄 50")
		elseif ( Uworld1002 == 240 ) then
			nt_setTask(1002,260)
			SendTaskOrder("B筺 nh薾 頲 nhi謒 v� trung l藀 c蕄 50")
		elseif ( Uworld1003 == 408 ) then
			nt_setTask(1003,409)
			SendTaskOrder("B筺 nh薾 頲 nhi謒 v� t� ph竔 c蕄 50")
		end
	else
		return Msg2Player(STRTAB_LEVELUP[lvl])
	end
end
