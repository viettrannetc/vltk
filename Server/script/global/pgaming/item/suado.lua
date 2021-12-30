ItemID = 4835
function main(nItemIndex)
    dofile("script/item/suado.lua")
    local tbEquip = GetAllEquipment()
    for i=1, getn(tbEquip) do
        local nCountRepair = GetItemParam(nItemIndex, 1); 
        local nG, nD, nP = GetItemProp(tbEquip[i])
        if nD == 0 or nD == 1 or nD == 2 or nD == 5 or nD == 6 or nD == 7 or nD == 8 then 
            if nCountRepair > 0 then 
                local CurDur = GetCurDurability(tbEquip[i])
                local MaxDur = GetMaxDurability(tbEquip[i])
                local ItemName = GetItemName(tbEquip[i])
                if CurDur < MaxDur then
                    SetCurDurability(tbEquip[i],MaxDur)
                    SetSpecItemParam(nItemIndex, 1, nCountRepair-1)
                    SyncItem(nItemIndex)
                    Msg2Player("S�a ch�a th�nh c�ng trang b� "..ItemName.." �� b�n hi�n t�i:  "..GetCurDurability(tbEquip[i]).."/"..GetMaxDurability(tbEquip[i]))
                end
            else
                ConsumeItemCount(1,6,1,ItemID,-1)
                Msg2Player("Thi�n th�ch �� h�t s� l�n s�a ch�a t� ��ng bi�n m�t.")
            end
        end
    end
    return 1
end
function GetDesc(nItemIndex) 
    local nCount= GetItemParam(nItemIndex, 1); 
    return format("<color=green>S� l�n s�a ch�a c�n c� th� th�c hi�n<color>: <color=yellow>%d<color> l�n", nCount) 
end