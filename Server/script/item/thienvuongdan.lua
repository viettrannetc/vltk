-- by yfeng



function main(itemIdx)
	local mapid,_,_ = GetWorldPos()	
	local _,_,detail = GetItemProp(itemIdx)
	if(detail == 4864) then --������
		AddSkillState(511,15,1,18*180)
		AddSkillState(522,10,1,18*180)
		AddSkillState(523,10,1,18*180)
		AddSkillState(524,10,1,18*180)
		AddSkillState(525,10,1,18*180)
		AddSkillState(526,10,1,18*180)
		return 0
	end	

end

function GetDesc(itemIdx)
	local _,_,detail = GetItemProp(itemIdx)
	if(detail == 4864) then --������
		return "<color=blue>Trong 3 ph�t:\n T�c �� xu�t chi�u ngo�i c�ng: t�ng 30%\n T�c �� xu�t chi�un�i c�ng: T�ng 30%<color>"
	end
	
	if(detail == 4864) then --�չ���
		return "<color=blue>Trong 3 ph�t:\n S�t th��ng v�t l� h� ngo�i c�ng: T�ng 200%\n S�t th��ng v�t l� h� n�i c�ng: T�ng 100 �i�m<color>"
	end
	if(detail == 4864) then --������
		return "<color=blue>Trong 3 ph�t:\n ��c s�t h� ngo�i c�ng: T�ng 10 �i�m/l�n\n ��c s�t h� n�i c�ng: T�ng 10 �i�m/l�n<color>"
	end
	if(detail == 4864) then --������
		return "<color=blue>Trong 3 ph�t:\n B�ng s�t h� ngo�i c�ng: T�ng 100 �i�m\n B�ng s�t h� n�i c�ng: T�ng 100 �i�m<color>"
	end
	if(detail == 4864) then --����
		return "<color=blue>Trong 3 ph�t:\n H�a s�t h� ngo�i c�ng: T�ng 100 �i�m\n H�a s�t h� n�i c�ng: T�ng 100 �i�m<color>"
	end
	if(detail == 4864) then --�׹���
		return "<color=blue>Trong 3 ph�t:\n L�i s�t ngo�i c�ng: T�ng 100 �i�m\n L�i s�t n�i c�ng: T�ng 100 �i�m<color>"
	end

end
