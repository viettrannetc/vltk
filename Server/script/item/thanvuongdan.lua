



function main(itemIdx)
	local mapid,_,_ = GetWorldPos()
	local _,_,detail = GetItemProp(itemIdx)
	
	if(detail == 4865) then --������
		AddSkillState(512,15,1,18*180)
		AddSkillState(513,20,1,18*180)
		AddSkillState(514,20,1,18*180)
		AddSkillState(515,20,1,18*180)
		AddSkillState(516,20,1,18*180)
		AddSkillState(517,20,1,18*180)
		AddSkillState(518,20,1,18*180)
		AddSkillState(519,20,1,18*180)
		AddSkillState(520,20,1,18*180)
		AddSkillState(521,20,1,18*180)
		AddSkillState(527,10,1,18*180)
		AddSkillState(528,10,1,18*180)
		return 0
	end
	
end

function GetDesc(itemIdx)

	if(detail == 4865) then --������
		return "<color=blue>Trong 3 ph�t:\n T�c �� di chuy�n: T�ng 30%<color>"
	end
	if(detail == 4865) then --�շ���
		return "<color=blue>Trong 3 ph�t:\n Ph�ng v�t l�: T�ng 40%<color>"
	end
	if(detail == 4865) then --������
		return "<color=blue>Trong 3 ph�t:\n Kh�ng ��c: T�ng 40%<color>"
	end
	if(detail == 4865) then --������
		return "<color=blue>Trong 3 ph�t:\n Kh�ng b�ng: T�ng 40%<color>"
	end
	if(detail == 4865) then --�����
		return "<color=blue>Trong 3 ph�t:\n Kh�ng h�a: T�ng 40%<color>"
	end
	if(detail == 4865) then --�׷���
		return "<color=blue>Trong 3 ph�t:\n Kh�ng l�i: T�ng 40%<color>"
	end
	if(detail == 4865) then --������
		return "<color=blue>Trong 3 ph�t:\n Th�i gian b� th��ng: Gi�m 40%<color>"
	end
	if(detail == 4865) then --������
		return "<color=blue>Trong 3 ph�t:\n Th�i gian cho�ng: Gi�m 40%<color>"
	end
	if(detail == 4865) then --������
		return "<color=blue>Trong 3 ph�t:\n Th�i gian tr�ng ��c: Gi�m 40%<color>"
	end
	if(detail == 4865) then --������
		return "<color=blue>Trong 3 ph�t:\n Th�i gian l�m ch�m: Gi�m 40%<color>"
	end
	if(detail == 4865) then --������
		return "<color=blue>Trong 3 ph�t:\n Sinh l�c l�n nh�t: T�ng 1000 �i�m<color>"
	end
	if(detail == 4865) then --������
		return "<color=blue>Trong 3 ph�t:\n N�i l�c l�n nh�t: T�ng 1000 �i�m<color>"
	end

end
