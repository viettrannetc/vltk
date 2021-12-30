Include("\\script\\dailogsys\\dailogsay.lua")
TitleLQ = "<color=Orange>PGaming: <color>"

function DailyMuster() -- Main
	local TbOp = {}
	tinsert(TbOp, "T�i h� ��n �� �i�m danh!/GoMuster")
	tinsert(TbOp, "T�i h� mu�n xem s� l��t �i�m danh c�a m�nh./MyTimesMuster")
	tinsert(TbOp, "Ta mu�n t�m hi�u v� ho�t ��ng n�y./AboutMuster")
	tinsert(TbOp, "K�t th�c ��i tho�i./OnCancel")
	Say(TitleLQ.."Nh�m kh�ch l� tinh th�n th��ng v� c�a c�c v�s� trung nguy�n, t�ng th��ng cho c�c ��i hi�p c� �   ch� ki�n c��ng, luy�n t�p chuy�n c�n, ��c c� minh ch�"
			.."�� �em ��n nh�ng ph�n th��ng h�p d�n v� phong ph� <enter>d�nh t�ng cho nh�ng ng��i x�ng ��ng nh�t!", getn(TbOp), TbOp)
end

TbAwardDailyMuster = 
{
	[1] = 
		{
			-- [1] = {Item = {6, 1, 23, 0, 0,0, 0}, ItemName = "Thi�t la h�n",},
			[1] = {Item = {6, 1, 440, 0, 0,0, 0}, ItemName = "M�nh s�n h� x� t�c x100",},
			[2] = {Item = {6, 1, 910, 0, 0, 0, 0}, ItemName = "Bao D��c ho�n",},
			[3] = {Item = {6, 0, 6, 1, 0,0, 0}, ItemName = "Phi t�c ho�n",},
			[4] = {Item = {6, 0, 2, 1, 0,0, 0}, ItemName = "Gia B�o ho�n",},
			[5] = {Item = {6, 0, 3, 1, 0,0, 0}, ItemName = "��i L�c ho�n",},
			-- [7] = {Item = {6, 1, 150, 1, random(0,4),0, 0}, ItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [8] = {Item = {6, 1, 152, 1, random(0,4),0, 0}, ItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [9] = {Item = {6, 1, 154, 1, random(0,4),0, 0}, ItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[2] =
		{
			[1] = {Item = {6, 0, 1, 1, 0,0, 0}, ItemName = "Tr��ng m�nh ho�n",},
			[2] = {Item = {6, 0, 2, 1, 0,0, 0}, ItemName = "Gia b�o ho�n",},
			[3] = {Item = {6, 1, 440, 0, 0,0, 0}, ItemName = "M�nh s�n h� x� t�c x100",},
			[4] = {Item = {6, 1, 23, 0, 0,0, 0}, ItemName = "Thi�t la h�n",},
			[5] = {Item = {6, 1, 72, 0, 0, 0, 0}, ItemName = "Thi�n s�n B�o L�",},
			[6] = {Item = {6, 1, 155, 0, 0,0, 0}, ItemName = "Phong V�n Chi�u th�",},
			[7] = {Item = {6, 1, 910, 0, 0, 0, 0}, ItemName = "Bao D��c ho�n",},
			[8] = {Item = {6, 0, 6, 1, 0,0, 0}, ItemName = "Phi t�c ho�n",},
			-- [5] = {Item = {4, 489, 0, 0, 0, 0, 0}, ItemName = "L�nh b�i Phong L�ng ��",},
			-- [10] = {Item = {6, 1, 150, 1, random(0,4),0, 0}, ItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [11] = {Item = {6, 1, 152, 1, random(0,4),0, 0}, ItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [12] = {Item = {6, 1, 154, 1, random(0,4),0, 0}, ItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[3] =
		{
			-- [1] = {Item = {6, 1, 23, 0, 0, 0, 0}, ItemName = "Thi�t la h�n",},
			[1] = {Item = {6, 1, 440, 0, 0, 0, 0}, ItemName = "M�nh s�n h� x� t�c x100",},
			[2] = {Item = {6, 0, 6, 1, 0, 0, 0}, ItemName = "Phi t�c ho�n",},
			[3] = {Item = {6, 0, 2, 1, 0, 0, 0}, ItemName = "Gia b�o ho�n",},
			[4] = {Item = {6, 1, 72, 0, 0, 0, 0}, ItemName = "Thi�n s�n B�o L�",},
			[5] = {Item = {6, 1, 910, 0, 0, 0, 0}, ItemName = "Bao D��c ho�n",},
			-- [7] = {Item = {6, 1, 155, 0, 0,0, 0}, ItemName = "Phong V�n Chi�u th�",},
			-- [8] = {Item = {6, 1, 1617, 0, 0,0, 0}, ItemName = "Vi�m �� l�nh",},
			
			-- [6] = {Item = {6, 1, 904, 1, 0, 0, 0}, ItemName = "Qu� Huy Ho�ng (th�p)",},
			-- [10] = {Item = {6, 1, 150, 1, random(0,4),0, 0}, ItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [11] = {Item = {6, 1, 152, 1, random(0,4),0, 0}, ItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [12] = {Item = {6, 1, 154, 1, random(0,4),0, 0}, ItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[4] =
		{
			[1] = {Item = {6, 0, 3, 1, 0, 0, 0}, ItemName = "��i l�c ho�n",},
			[2] = {Item = {6, 0, 4, 1, 0, 0, 0}, ItemName = "Cao thi�m ho�n",},
			[3] = {Item = {6, 1, 910, 0, 0, 0, 0}, ItemName = "Bao D��c ho�n",},
			[4] = {Item = {6, 0, 6, 1, 0, 0, 0}, ItemName = "Phi t�c ho�n",},
			[5] = {Item = {6, 1, 440, 0, 0, 0, 0}, ItemName = "M�nh s�n h� x� t�c x100",},
			[6] = {Item = {6, 1, 23, 0, 0, 0, 0}, ItemName = "Thi�t la h�n",},
			-- [3] = {Item = {6, 1, 15, 0, 0, 0, 0}, ItemName = "Phi Phong",},
			-- [6] = {Item = {6, 1, 400, 90, random(0,4), 0, 0}, ItemName = "S�t th� gi�n",},
			-- [7] = {Item = {6, 1, 155, 0, 0,0, 0}, ItemName = "Phong V�n Chi�u th�",},
			-- [10] = {Item = {6, 1, 150, 1, random(0,4),0, 0}, ItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [11] = {Item = {6, 1, 152, 1, random(0,4),0, 0}, ItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [12] = {Item = {6, 1, 154, 1, random(0,4),0, 0}, ItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[5] =
		{
			-- [1] = {Item = {6, 1, 23, 0, 0, 0, 0}, ItemName = "Thi�t la h�n",},
			-- [3] = {Item = {6, 1, 904, 1, 0, 0, 0}, ItemName = "Qu� Huy Ho�ng (th�p)",},
			[1] = {Item = {6, 1, 440, 0, 0, 0, 0}, ItemName = "M�nh s�n h� x� t�c x100",},
			[2] = {Item = {4, 489, 0, 0, 0, 0, 0}, ItemName = "L�nh b�i Phong L�ng ��",},
			[3] = {Item = {6, 0, 3, 1, 0, 0, 0}, ItemName = "��i l�c ho�n",},
			[4] = {Item = {6, 0, 4, 1, 0, 0, 0}, ItemName = "Cao thi�m ho�n",},
			[5] = {Item = {6, 1, 910, 0, 0, 0, 0}, ItemName = "Bao D��c ho�n",},
			[6] = {Item = {6, 0, 6, 1, 0, 0, 0}, ItemName = "Phi t�c ho�n",},
			-- [7] = {Item = {6, 1, 155, 0, 0,0, 0}, ItemName = "Phong V�n Chi�u th�",},
			-- [10] = {Item = {6, 1, 150, 1, random(0,4),0, 0}, ItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [11] = {Item = {6, 1, 152, 1, random(0,4),0, 0}, ItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [12] = {Item = {6, 1, 154, 1, random(0,4),0, 0}, ItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[6] =
		{
			-- [1] = {Item = {6, 1, 400, 90, random(0,4), 0, 0}, ItemName = "S�t th� gi�n",},
			-- [5] = {Item = {6, 1, 155, 0, 0,0, 0}, ItemName = "Phong V�n Chi�u th�",},
			-- [6] = {Item = {6, 1, 1617, 0, 0,0, 0}, ItemName = "Vi�m �� l�nh",},
			[1] = {Item = {6, 1, 72, 0, 0, 0, 0}, ItemName = "Thi�n s�n B�o L�",},
			[2] = {Item = {6, 1, 23, 0, 0, 0, 0}, ItemName = "Thi�t la h�n",},
			[3] = {Item = {6, 1, 910, 0, 0, 0, 0}, ItemName = "Bao D��c ho�n",},
			[4] = {Item = {6, 0, 6, 1, 0,0, 0}, ItemName = "Phi t�c ho�n",},
			[5] = {Item = {6, 0, 2, 1, 0,0, 0}, ItemName = "Gia B�o ho�n",},
			[6] = {Item = {6, 0, 3, 1, 0,0, 0}, ItemName = "��i L�c ho�n",},
			-- [10] = {Item = {6, 1, 150, 1, random(0,4),0, 0}, ItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [11] = {Item = {6, 1, 152, 1, random(0,4),0, 0}, ItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [12] = {Item = {6, 1, 154, 1, random(0,4),0, 0}, ItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[7] =
		{
			-- [1] = {Item = {6, 1, 905, 1, 0, 0, 0}, ItemName = "Qu� Huy Ho�ng (trung)",},
			-- [2] = {Item = {6, 1, 910, 0, 0, 0, 0}, ItemName = "Bao D��c ho�n",},
			-- [3] = {Item = {6, 1, 400, 90, random(0,4), 0, 0}, ItemName = "S�t th� gi�n",},
			-- [4] = {Item = {6, 1, 23, 0, 0, 0, 0}, ItemName = "Thi�t la h�n",},
			[1] = {Item = {6, 1, 72, 0, 0, 0, 0}, ItemName = "Thi�n s�n B�o L�",},
			[2] = {Item = {6, 1, 155, 0, 0,0, 0}, ItemName = "Phong V�n Chi�u th�",},
			[3] = {Item = {6, 0, 6, 1, 0,0, 0}, ItemName = "Phi t�c ho�n",},
			[4] = {Item = {6, 0, 2, 1, 0,0, 0}, ItemName = "Gia B�o ho�n",},
			[5] = {Item = {6, 0, 3, 1, 0,0, 0}, ItemName = "��i L�c ho�n",},
			-- [10] = {Item = {6, 1, 150, 1, random(0,4),0, 0}, ItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [11] = {Item = {6, 1, 152, 1, random(0,4),0, 0}, ItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [12] = {Item = {6, 1, 154, 1, random(0,4),0, 0}, ItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[8] =
		{
			[1] = {Item = {6, 1, 72, 0, 0, 0, 0}, ItemName = "Thi�n s�n B�o L�",},
			[2] = {Item = {6, 1, 73, 0, 0, 0, 0}, ItemName = "B�ch Qu� L�",},
			[3] = {Item = {6, 1, 23, 0, 0, 0, 0}, ItemName = "Thi�t la h�n",},
			[4] = {Item = {6, 1, 910, 0, 0, 0, 0}, ItemName = "Bao D��c ho�n",},
			[5] = {Item = {6, 0, 6, 1, 0,0, 0}, ItemName = "Phi t�c ho�n",},
			[6] = {Item = {6, 0, 2, 1, 0,0, 0}, ItemName = "Gia B�o ho�n",},
			[7] = {Item = {6, 0, 3, 1, 0,0, 0}, ItemName = "��i L�c ho�n",},
			-- [4] = {Item = {6, 1, 400, 90, random(0,4), 0, 0}, ItemName = "S�t th� gi�n",},
			-- [5] = {Item = {6, 1, 155, 0, 0,0, 0}, ItemName = "Phong V�n Chi�u th�",},
			-- [10] = {Item = {6, 1, 150, 1, random(0,4),0, 0}, ItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [11] = {Item = {6, 1, 152, 1, random(0,4),0, 0}, ItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [12] = {Item = {6, 1, 154, 1, random(0,4),0, 0}, ItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[9] =
		{
			
			-- [2] = {Item = {6, 1, 440, 0, 0, 0, 0}, ItemName = "M�nh s�n h� x� t�c x100",},
			-- [3] = {Item = {6, 1, 125, 0, 0, 0, 0}, ItemName = "Qu� Hoa T�u",},
			-- [4] = {Item = {6, 1, 400, 90, random(0,4), 0, 0}, ItemName = "S�t th� gi�n",},
			-- [6] = {Item = {6, 1, 73, 0, 0, 0, 0}, ItemName = "B�ch Qu� L�",},
			-- [2] = {Item = {6, 1, 23, 0, 0,0, 0}, ItemName = "Thi�t la h�n",},
			[1] = {Item = {6, 1, 72, 0, 0, 0, 0}, ItemName = "Thi�n s�n B�o L�",},
			[2] = {Item = {6, 1, 155, 0, 0,0, 0}, ItemName = "Phong V�n Chi�u th�",},
			[3] = {Item = {6, 1, 910, 0, 0, 0, 0}, ItemName = "Bao D��c ho�n",},
			[4] = {Item = {6, 0, 6, 1, 0,0, 0}, ItemName = "Phi t�c ho�n",},
			[5] = {Item = {6, 0, 2, 1, 0,0, 0}, ItemName = "Gia B�o ho�n",},
			[6] = {Item = {6, 0, 3, 1, 0,0, 0}, ItemName = "��i L�c ho�n",},
			-- [12] = {Item = {6, 1, 150, 1, random(0,4),0, 0}, ItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [13] = {Item = {6, 1, 152, 1, random(0,4),0, 0}, ItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [14] = {Item = {6, 1, 154, 1, random(0,4),0, 0}, ItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[10] =
		{
			[1] = {Item = {6, 1, 23, 0, 0,0, 0}, ItemName = "Thi�t la h�n",},
			[2] = {Item = {6, 1, 440, 0, 0, 0, 0}, ItemName = "M�nh s�n h� x� t�c x100",},
			[3] = {Item = {6, 0, 6, 1, 0,0, 0}, ItemName = "Phi t�c ho�n",},
			[4] = {Item = {6, 0, 2, 1, 0,0, 0}, ItemName = "Gia B�o ho�n",},
			[5] = {Item = {6, 0, 3, 1, 0,0, 0}, ItemName = "��i L�c ho�n",},
			[6] = {Item = {6, 1, 910, 0, 0, 0, 0}, ItemName = "Bao D��c ho�n",},
			[7] = {Item = {6, 1, 71, 0, 0, 0, 0}, ItemName = "Ti�n Th�o L�",},
			[8] = {Item = {6, 1, 400, 90, random(0,4), 0, 0}, ItemName = "S�t th� gi�n",},
			[9] = {Item = {6, 1, 155, 0, 0,0, 0}, ItemName = "Phong V�n Chi�u th�",},
			-- [3] = {Item = {6, 1, 124, 0, 0, 0, 0}, ItemName = "Ph�c Duy�n L� (��i)",},
			-- [6] = {Item = {4, 489, 0, 0, 0, 0, 0}, ItemName = "L�nh b�i Phong L�ng ��",},
			-- [9] = {Item = {6, 1, 1257, 0, 0, 0, 0}, ItemName = "L�nh b�i vinh d� H�n thi�t",},
			-- [10] = {Item = {6, 1, 1448, 0, 0, 0, 0}, ItemName = "M�c B�c Truy�n T�ng L�nh",},
			-- [14] = {Item = {6, 1, 150, 1, random(0,4),0, 0}, ItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [15] = {Item = {6, 1, 152, 1, random(0,4),0, 0}, ItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [16] = {Item = {6, 1, 154, 1, random(0,4),0, 0}, ItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[11] =
		{
			-- [1] = {Item = {6, 1, 23, 0, 0,0, 0}, ItemName = "Thi�t la h�n",},
			-- [3] = {Item = {6, 1, 400, 90, random(0,4), 0, 0}, ItemName = "S�t th� gi�n",},
			-- [4] = {Item = {6, 1, 155, 0, 0,0, 0}, ItemName = "Phong V�n Chi�u th�",},
			-- [5] = {Item = {6, 1, 1617, 0, 0,0, 0}, ItemName = "Vi�m �� l�nh",},
			[1] = {Item = {6, 1, 440, 0, 0, 0, 0}, ItemName = "M�nh s�n h� x� t�c x100",},
			[2] = {Item = {6, 1, 910, 0, 0, 0, 0}, ItemName = "Bao D��c ho�n",},
			[3] = {Item = {6, 0, 6, 1, 0,0, 0}, ItemName = "Phi t�c ho�n",},
			[4] = {Item = {6, 0, 2, 1, 0,0, 0}, ItemName = "Gia B�o ho�n",},
			[5] = {Item = {6, 0, 3, 1, 0,0, 0}, ItemName = "��i L�c ho�n",},
			-- [10] = {Item = {6, 1, 150, 1, random(0,4),0, 0}, ItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [11] = {Item = {6, 1, 152, 1, random(0,4),0, 0}, ItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [12] = {Item = {6, 1, 154, 1, random(0,4),0, 0}, ItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[12] =
		{
			[1] = {Item = {6, 1, 23, 0, 0,0, 0}, ItemName = "Thi�t la h�n",},
			[2] = {Item = {6, 1, 440, 0, 0, 0, 0}, ItemName = "M�nh s�n h� x� t�c x100",},
			[3] = {Item = {6, 1, 910, 0, 0, 0, 0}, ItemName = "Bao D��c ho�n",},
			[4] = {Item = {6, 0, 6, 1, 0,0, 0}, ItemName = "Phi t�c ho�n",},
			[5] = {Item = {6, 0, 2, 1, 0,0, 0}, ItemName = "Gia B�o ho�n",},
			[6] = {Item = {6, 0, 3, 1, 0,0, 0}, ItemName = "��i L�c ho�n",},
			-- [3] = {Item = {6, 1, 400, 90, random(0,4), 0, 0}, ItemName = "S�t th� gi�n",},
			-- [5] = {Item = {6, 1, 155, 0, 0,0, 0}, ItemName = "Phong V�n Chi�u th�",},
			-- [9] = {Item = {6, 1, 150, 1, random(0,4),0, 0}, ItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [10] = {Item = {6, 1, 152, 1, random(0,4),0, 0}, ItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [11] = {Item = {6, 1, 154, 1, random(0,4),0, 0}, ItemName = "Chung Nh� Nguy�n Th�ch",},
			
		},
	[13] =
		{
			-- [1] = {Item = {6, 1, 23, 0, 0,0, 0}, ItemName = "Thi�t la h�n",},
			-- [3] = {Item = {6, 1, 123, 0, 0, 0, 0}, ItemName = "Ph�c Duy�n L� (Trung)",},
			-- [4] = {Item = {6, 1, 906, 1, 0, 0, 0}, ItemName = "Qu� Huy Ho�ng (cao)",},
			-- [6] = {Item = {6, 1, 155, 0, 0,0, 0}, ItemName = "Phong V�n Chi�u th�",},
			[1] = {Item = {6, 1, 400, 90, random(0,4), 0, 0}, ItemName = "S�t th� gi�n",},
			[2] = {Item = {6, 1, 440, 0, 0, 0, 0}, ItemName = "M�nh s�n h� x� t�c x100",},
			[3] = {Item = {6, 1, 910, 0, 0, 0, 0}, ItemName = "Bao D��c ho�n",},
			[4] = {Item = {6, 0, 6, 1, 0,0, 0}, ItemName = "Phi t�c ho�n",},
			[5] = {Item = {6, 0, 2, 1, 0,0, 0}, ItemName = "Gia B�o ho�n",},
			-- [10] = {Item = {6, 1, 150, 1, random(0,4),0, 0}, ItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [11] = {Item = {6, 1, 152, 1, random(0,4),0, 0}, ItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [12] = {Item = {6, 1, 154, 1, random(0,4),0, 0}, ItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[14] =
		{
			[1] = {Item = {6, 1, 23, 0, 0,0, 0}, ItemName = "Thi�t la h�n",},
			[2] = {Item = {6, 1, 155, 0, 0,0, 0}, ItemName = "Phong V�n Chi�u th�",},
			[3] = {Item = {6, 1, 910, 0, 0, 0, 0}, ItemName = "Bao D��c ho�n",},
			[4] = {Item = {6, 0, 6, 1, 0,0, 0}, ItemName = "Phi t�c ho�n",},
			[5] = {Item = {6, 0, 2, 1, 0,0, 0}, ItemName = "Gia B�o ho�n",},
			-- [2] = {Item = {6, 1, 1392, 0, 0, 0, 0}, ItemName = "H�p l� v�t v��t �i",},
			-- [3] = {Item = {4, 489, 0, 0, 0, 0, 0}, ItemName = "L�nh b�i Phong L�ng ��",},
			-- [4] = {Item = {6, 1, 400, 90, random(0,4), 0, 0}, ItemName = "S�t th� gi�n",},
			-- [5] = {Item = {6, 1, 71, 0, 0, 0, 0}, ItemName = "Ti�n Th�o L�",},
			-- [10] = {Item = {6, 1, 150, 1, random(0,4),0, 0}, ItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [11] = {Item = {6, 1, 152, 1, random(0,4),0, 0}, ItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [12] = {Item = {6, 1, 154, 1, random(0,4),0, 0}, ItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[15] =
		{
			-- [1] = {Item = {6, 1, 23, 0, 0,0, 0}, ItemName = "Thi�t la h�n",},
			[1] = {Item = {6, 1, 440, 0, 0, 0, 0}, ItemName = "M�nh s�n h� x� t�c x100",},
			[2] = {Item = {6, 0, 6, 1, 0,0, 0}, ItemName = "Phi t�c ho�n",},
			[3] = {Item = {6, 0, 2, 1, 0,0, 0}, ItemName = "Gia B�o ho�n",},
			[4] = {Item = {6, 0, 3, 1, 0,0, 0}, ItemName = "��i L�c ho�n",},
			[5] = {Item = {6, 1, 910, 0, 0, 0, 0}, ItemName = "Bao D��c ho�n",},
			[6] = {Item = {6, 1, 155, 0, 0,0, 0}, ItemName = "Phong V�n Chi�u th�",},
			-- [3] = {Item = {6, 1, 400, 90, random(0,4), 0, 0}, ItemName = "S�t th� gi�n",},
			-- [6] = {Item = {6, 1, 1617, 0, 0,0, 0}, ItemName = "Vi�m �� l�nh",},
			-- [10] = {Item = {6, 1, 150, 1, random(0,4),0, 0}, ItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [11] = {Item = {6, 1, 152, 1, random(0,4),0, 0}, ItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [12] = {Item = {6, 1, 154, 1, random(0,4),0, 0}, ItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[16] =
		{
			[1] = {Item = {6, 1, 23, 0, 0,0, 0}, ItemName = "Thi�t la h�n",},
			[2] = {Item = {6, 1, 440, 0, 0, 0, 0}, ItemName = "M�nh s�n h� x� t�c x100",},
			[3] = {Item = {6, 1, 910, 0, 0, 0, 0}, ItemName = "Bao D��c ho�n",},
			[4] = {Item = {6, 0, 6, 1, 0,0, 0}, ItemName = "Phi t�c ho�n",},
			[5] = {Item = {6, 0, 2, 1, 0,0, 0}, ItemName = "Gia B�o ho�n",},
			[6] = {Item = {6, 0, 3, 1, 0,0, 0}, ItemName = "��i L�c ho�n",},
			-- [3] = {Item = {6, 1, 400, 90, random(0,4), 0, 0}, ItemName = "S�t th� gi�n",},
			-- [4] = {Item = {6, 1, 155, 0, 0,0, 0}, ItemName = "Phong V�n Chi�u th�",},
			-- [9] = {Item = {6, 1, 150, 1, random(0,4),0, 0}, ItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [10] = {Item = {6, 1, 152, 1, random(0,4),0, 0}, ItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [11] = {Item = {6, 1, 154, 1, random(0,4),0, 0}, ItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[17] =
		{
			-- [1] = {Item = {6, 1, 23, 0, 0,0, 0}, ItemName = "Thi�t la h�n",},
			[1] = {Item = {6, 1, 440, 0, 0, 0, 0}, ItemName = "M�nh s�n h� x� t�c x100",},
			[2] = {Item = {6, 0, 6, 1, 0,0, 0}, ItemName = "Phi t�c ho�n",},
			[3] = {Item = {6, 0, 2, 1, 0,0, 0}, ItemName = "Gia B�o ho�n",},
			[4] = {Item = {6, 0, 3, 1, 0,0, 0}, ItemName = "��i L�c ho�n",},
			[5] = {Item = {6, 1, 910, 0, 0, 0, 0}, ItemName = "Bao D��c ho�n",},
			[6] = {Item = {6, 1, 155, 0, 0,0, 0}, ItemName = "Phong V�n Chi�u th�",},
			-- [3] = {Item = {6, 1, 400, 90, random(0,4), 0, 0}, ItemName = "S�t th� gi�n",},
			-- [6] = {Item = {6, 1, 1617, 0, 0,0, 0}, ItemName = "Vi�m �� l�nh",},
			-- [10] = {Item = {6, 1, 150, 1, random(0,4),0, 0}, ItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [11] = {Item = {6, 1, 152, 1, random(0,4),0, 0}, ItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [12] = {Item = {6, 1, 154, 1, random(0,4),0, 0}, ItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[18] =
		{
			[1] = {Item = {6, 1, 23, 0, 0,0, 0}, ItemName = "Thi�t la h�n",},
			[2] = {Item = {6, 1, 440, 0, 0, 0, 0}, ItemName = "M�nh s�n h� x� t�c x100",},
			[3] = {Item = {6, 0, 6, 1, 0,0, 0}, ItemName = "Phi t�c ho�n",},
			[4] = {Item = {6, 0, 2, 1, 0,0, 0}, ItemName = "Gia B�o ho�n",},
			[5] = {Item = {6, 0, 3, 1, 0,0, 0}, ItemName = "��i L�c ho�n",},
			[6] = {Item = {6, 1, 910, 0, 0, 0, 0}, ItemName = "Bao D��c ho�n",},
			-- [3] = {Item = {4, 489, 0, 0, 0, 0, 0}, ItemName = "L�nh b�i Phong L�ng ��",},
			-- [4] = {Item = {6, 1, 400, 90, random(0,4), 0, 0}, ItemName = "S�t th� gi�n",},
			-- [6] = {Item = {6, 1, 155, 0, 0,0, 0}, ItemName = "Phong V�n Chi�u th�",},
			-- [10] = {Item = {6, 1, 150, 1, random(0,4),0, 0}, ItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [11] = {Item = {6, 1, 152, 1, random(0,4),0, 0}, ItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [12] = {Item = {6, 1, 154, 1, random(0,4),0, 0}, ItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[19] =
		{
			-- [1] = {Item = {6, 1, 23, 0, 0,0, 0}, ItemName = "Thi�t la h�n",},
			[1] = {Item = {6, 1, 440, 0, 0, 0, 0}, ItemName = "M�nh s�n h� x� t�c x100",},
			[2] = {Item = {6, 1, 440, 0, 0, 0, 0}, ItemName = "M�nh s�n h� x� t�c x100",},
			[3] = {Item = {6, 1, 910, 0, 0, 0, 0}, ItemName = "Bao D��c ho�n",},
			[4] = {Item = {6, 1, 155, 0, 0,0, 0}, ItemName = "Phong V�n Chi�u th�",},
			[5] = {Item = {6, 0, 6, 1, 0,0, 0}, ItemName = "Phi t�c ho�n",},
			[6] = {Item = {6, 0, 2, 1, 0,0, 0}, ItemName = "Gia B�o ho�n",},
			-- [3] = {Item = {6, 1, 400, 90, random(0,4), 0, 0}, ItemName = "S�t th� gi�n",},
			-- [4] = {Item = {6, 1, 906, 1, 0, 0, 0}, ItemName = "Qu� Huy Ho�ng (cao)",},
			-- [10] = {Item = {6, 1, 150, 1, random(0,4),0, 0}, ItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [11] = {Item = {6, 1, 152, 1, random(0,4),0, 0}, ItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [12] = {Item = {6, 1, 154, 1, random(0,4),0, 0}, ItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[20] =
		{
			[1] = {Item = {6, 1, 23, 0, 0,0, 0}, ItemName = "Thi�t la h�n",},
			[2] = {Item = {6, 1, 400, 90, random(0,4), 0, 0}, ItemName = "S�t th� gi�n",},
			[3] = {Item = {6, 0, 6, 1, 0,0, 0}, ItemName = "Phi t�c ho�n",},
			[4] = {Item = {6, 0, 2, 1, 0,0, 0}, ItemName = "Gia B�o ho�n",},
			[5] = {Item = {6, 0, 3, 1, 0,0, 0}, ItemName = "��i L�c ho�n",},
			[6] = {Item = {6, 1, 910, 0, 0, 0, 0}, ItemName = "Bao D��c ho�n",},
			[7] = {Item = {6, 1, 71, 0, 0, 0, 0}, ItemName = "Ti�n Th�o L�",},
			[8] = {Item = {4, 489, 0, 0, 0, 0, 0}, ItemName = "L�nh b�i Phong L�ng ��",},
			[9] = {Item = {6, 1, 440, 0, 0, 0, 0}, ItemName = "M�nh s�n h� x� t�c x100",},
			[10] = {Item = {6, 1, 155, 0, 0,0, 0}, ItemName = "Phong V�n Chi�u th�",},
			-- [3] = {Item = {6, 1, 906, 0, 0, 0, 0}, ItemName = "Qu� Huy Ho�ng (cao)",},
			-- [4] = {Item = {6, 1, 124, 0, 0, 0, 0}, ItemName = "Ph�c Duy�n L� (��i)",},
			-- [10] = {Item = {6, 1, 1617, 0, 0,0, 0}, ItemName = "Vi�m �� l�nh",},
			-- [11] = {Item = {6, 1, 1257, 0, 0, 0, 0}, ItemName = "L�nh b�i vinh d� H�n thi�t",},
			-- [12] = {Item = {6, 1, 1448, 0, 0, 0, 0}, ItemName = "M�c B�c Truy�n T�ng L�nh",},
			-- [16] = {Item = {6, 1, 150, 1, random(0,4),0, 0}, ItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [17] = {Item = {6, 1, 152, 1, random(0,4),0, 0}, ItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [18] = {Item = {6, 1, 154, 1, random(0,4),0, 0}, ItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[21] =
		{
			-- [1] = {Item = {6, 1, 23, 0, 0,0, 0}, ItemName = "Thi�t la h�n",},
			[1] = {Item = {6, 1, 72, 0, 0, 0, 0}, ItemName = "Thi�n s�n B�o L�",},
			[2] = {Item = {6, 1, 440, 0, 0, 0, 0}, ItemName = "M�nh s�n h� x� t�c x100",},
			[3] = {Item = {6, 1, 910, 0, 0, 0, 0}, ItemName = "Bao D��c ho�n",},
			[4] = {Item = {6, 0, 6, 1, 0,0, 0}, ItemName = "Phi t�c ho�n",},
			[5] = {Item = {6, 0, 2, 1, 0,0, 0}, ItemName = "Gia B�o ho�n",},
			[6] = {Item = {6, 0, 3, 1, 0,0, 0}, ItemName = "��i L�c ho�n",},
			-- [4] = {Item = {6, 1, 400, 90, random(0,4), 0, 0}, ItemName = "S�t th� gi�n",},
			-- [5] = {Item = {6, 1, 155, 0, 0,0, 0}, ItemName = "Phong V�n Chi�u th�",},
			-- [10] = {Item = {6, 1, 150, 1, random(0,4),0, 0}, ItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [11] = {Item = {6, 1, 152, 1, random(0,4),0, 0}, ItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [12] = {Item = {6, 1, 154, 1, random(0,4),0, 0}, ItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[22] =
		{
			[1] = {Item = {6, 1, 23, 0, 0,0, 0}, ItemName = "Thi�t la h�n",},
			[2] = {Item = {6, 1, 155, 0, 0,0, 0}, ItemName = "Phong V�n Chi�u th�",},
			[3] = {Item = {6, 1, 440, 0, 0, 0, 0}, ItemName = "M�nh S�n H� X� T�c (100)",},
			[4] = {Item = {6, 1, 910, 0, 0, 0, 0}, ItemName = "Bao D��c ho�n",},
			[5] = {Item = {6, 1, 72, 0, 0, 0, 0}, ItemName = "Thi�n s�n B�o L�",},
			[6] = {Item = {6, 0, 6, 1, 0,0, 0}, ItemName = "Phi t�c ho�n",},
			[7] = {Item = {6, 0, 2, 1, 0,0, 0}, ItemName = "Gia B�o ho�n",},
			[8] = {Item = {6, 0, 3, 1, 0,0, 0}, ItemName = "��i L�c ho�n",},
			-- [5] = {Item = {6, 1, 400, 90, random(0,4), 0, 0}, ItemName = "S�t th� gi�n",},
			-- [10] = {Item = {6, 1, 150, 1, random(0,4),0, 0}, ItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [11] = {Item = {6, 1, 152, 1, random(0,4),0, 0}, ItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [12] = {Item = {6, 1, 154, 1, random(0,4),0, 0}, ItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[23] =
		{
			-- [1] = {Item = {6, 1, 23, 0, 0,0, 0}, ItemName = "Thi�t la h�n",},
			-- [2] = {Item = {4, 489, 0, 0, 0, 0, 0}, ItemName = "L�nh b�i Phong L�ng ��",},
			-- [3] = {Item = {6, 1, 400, 90, random(0,4), 0, 0}, ItemName = "S�t th� gi�n",},
			-- [5] = {Item = {6, 1, 155, 0, 0,0, 0}, ItemName = "Phong V�n Chi�u th�",},
			[1] = {Item = {6, 1, 440, 0, 0, 0, 0}, ItemName = "M�nh S�n H� X� T�c (100)",},
			[2] = {Item = {6, 1, 910, 0, 0, 0, 0}, ItemName = "Bao D��c ho�n",},
			[3] = {Item = {6, 1, 73, 0, 0, 0, 0}, ItemName = "B�ch Qu� L�",},
			[4] = {Item = {6, 0, 6, 1, 0,0, 0}, ItemName = "Phi t�c ho�n",},
			[5] = {Item = {6, 0, 2, 1, 0,0, 0}, ItemName = "Gia B�o ho�n",},
			-- [10] = {Item = {6, 1, 150, 1, random(0,4),0, 0}, ItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [11] = {Item = {6, 1, 152, 1, random(0,4),0, 0}, ItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [12] = {Item = {6, 1, 154, 1, random(0,4),0, 0}, ItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[24] =
		{
			[1] = {Item = {6, 1, 23, 0, 0,0, 0}, ItemName = "Thi�t la h�n",},
			[2] = {Item = {6, 0, 6, 1, 0,0, 0}, ItemName = "Phi t�c ho�n",},
			[3] = {Item = {6, 0, 2, 1, 0,0, 0}, ItemName = "Gia B�o ho�n",},
			[4] = {Item = {6, 0, 3, 1, 0,0, 0}, ItemName = "��i L�c ho�n",},
			[5] = {Item = {6, 1, 440, 0, 0, 0, 0}, ItemName = "M�nh S�n H� X� T�c (100)",},
			[6] = {Item = {6, 1, 72, 0, 0, 0, 0}, ItemName = "Thi�n s�n B�o L�",},
			[7] = {Item = {6, 1, 73, 0, 0, 0, 0}, ItemName = "B�ch Qu� L�",},
			[8] = {Item = {6, 1, 155, 0, 0,0, 0}, ItemName = "Phong V�n Chi�u th�",},
			[9] = {Item = {6, 1, 910, 0, 0, 0, 0}, ItemName = "Bao D��c ho�n",},
			-- [2] = {Item = {6, 1, 400, 90, random(0,4), 0, 0}, ItemName = "S�t th� gi�n",},
			-- [8] = {Item = {6, 1, 1617, 0, 0,0, 0}, ItemName = "Vi�m �� l�nh",},
			-- [12] = {Item = {6, 1, 150, 1, random(0,4),0, 0}, ItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [13] = {Item = {6, 1, 152, 1, random(0,4),0, 0}, ItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [14] = {Item = {6, 1, 154, 1, random(0,4),0, 0}, ItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[25] =
		{
			-- [1] = {Item = {6, 1, 23, 0, 0,0, 0}, ItemName = "Thi�t la h�n",},
			-- [2] = {Item = {6, 1, 400, 90, random(0,4), 0, 0}, ItemName = "S�t th� gi�n",},
			[1] = {Item = {6, 1, 440, 0, 0, 0, 0}, ItemName = "M�nh S�n H� X� T�c (100)",},
			[2] = {Item = {6, 1, 72, 0, 0, 0, 0}, ItemName = "Thi�n s�n B�o L�",},
			[3] = {Item = {6, 1, 155, 0, 0,0, 0}, ItemName = "Phong V�n Chi�u th�",},
			[4] = {Item = {6, 1, 73, 0, 0, 0, 0}, ItemName = "B�ch Qu� L�",},
			[5] = {Item = {6, 1, 910, 0, 0, 0, 0}, ItemName = "Bao D��c ho�n",},
			[6] = {Item = {6, 0, 6, 1, 0,0, 0}, ItemName = "Phi t�c ho�n",},
			[7] = {Item = {6, 0, 2, 1, 0,0, 0}, ItemName = "Gia B�o ho�n",},
			-- [10] = {Item = {6, 1, 150, 1, random(0,4),0, 0}, ItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [11] = {Item = {6, 1, 152, 1, random(0,4),0, 0}, ItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [12] = {Item = {6, 1, 154, 1, random(0,4),0, 0}, ItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[26] =
		{
			-- [2] = {Item = {4, 489, 0, 0, 0, 0, 0}, ItemName = "L�nh b�i Phong L�ng ��",},
			-- [3] = {Item = {6, 1, 400, 90, random(0,4), 0, 0}, ItemName = "S�t th� gi�n",},
			[1] = {Item = {6, 1, 23, 0, 0,0, 0}, ItemName = "Thi�t la h�n",},
			[2] = {Item = {6, 1, 440, 0, 0, 0, 0}, ItemName = "M�nh S�n H� X� T�c (100)",},
			[3] = {Item = {6, 1, 72, 0, 0, 0, 0}, ItemName = "Thi�n s�n B�o L�",},
			[4] = {Item = {6, 1, 73, 0, 0, 0, 0}, ItemName = "B�ch Qu� L�",},
			[5] = {Item = {6, 1, 155, 0, 0,0, 0}, ItemName = "Phong V�n Chi�u th�",},
			[6] = {Item = {6, 1, 910, 0, 0, 0, 0}, ItemName = "Bao D��c ho�n",},
			[7] = {Item = {6, 0, 6, 1, 0,0, 0}, ItemName = "Phi t�c ho�n",},
			[8] = {Item = {6, 0, 2, 1, 0,0, 0}, ItemName = "Gia B�o ho�n",},
			[9] = {Item = {6, 0, 3, 1, 0,0, 0}, ItemName = "��i L�c ho�n",},
			-- [12] = {Item = {6, 1, 150, 1, random(0,4),0, 0}, ItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [13] = {Item = {6, 1, 152, 1, random(0,4),0, 0}, ItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [14] = {Item = {6, 1, 154, 1, random(0,4),0, 0}, ItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[27] =
		{
			-- [1] = {Item = {6, 1, 23, 0, 0,0, 0}, ItemName = "Thi�t la h�n",},
			-- [2] = {Item = {6, 1, 400, 90, random(0,4), 0, 0}, ItemName = "S�t th� gi�n",},
			[1] = {Item = {6, 1, 440, 0, 0, 0, 0}, ItemName = "M�nh S�n H� X� T�c (100)",},
			[2] = {Item = {6, 1, 72, 0, 0, 0, 0}, ItemName = "Thi�n s�n B�o L�",},
			[3] = {Item = {6, 1, 73, 0, 0, 0, 0}, ItemName = "B�ch Qu� L�",},
			[4] = {Item = {6, 1, 155, 0, 0,0, 0}, ItemName = "Phong V�n Chi�u th�",},
			[5] = {Item = {6, 1, 910, 0, 0, 0, 0}, ItemName = "Bao D��c ho�n",},
			[6] = {Item = {6, 0, 6, 1, 0,0, 0}, ItemName = "Phi t�c ho�n",},
			[7] = {Item = {6, 0, 2, 1, 0,0, 0}, ItemName = "Gia B�o ho�n",},
			-- [10] = {Item = {6, 1, 150, 1, random(0,4),0, 0}, ItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [11] = {Item = {6, 1, 152, 1, random(0,4),0, 0}, ItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [12] = {Item = {6, 1, 154, 1, random(0,4),0, 0}, ItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[28] =
		{
			-- [2] = {Item = {6, 1, 400, 90, random(0,4), 0, 0}, ItemName = "S�t th� gi�n",},
			[1] = {Item = {6, 1, 23, 0, 0,0, 0}, ItemName = "Thi�t la h�n",},
			[2] = {Item = {6, 1, 440, 0, 0, 0, 0}, ItemName = "M�nh S�n H� X� T�c (100)",},
			[3] = {Item = {6, 1, 72, 0, 0, 0, 0}, ItemName = "Thi�n s�n B�o L�",},
			[4] = {Item = {6, 1, 73, 0, 0, 0, 0}, ItemName = "B�ch Qu� L�",},
			[5] = {Item = {6, 1, 155, 0, 0,0, 0}, ItemName = "Phong V�n Chi�u th�",},
			[6] = {Item = {6, 1, 910, 0, 0, 0, 0}, ItemName = "Bao D��c ho�n",},
			[7] = {Item = {6, 0, 6, 1, 0,0, 0}, ItemName = "Phi t�c ho�n",},
			[8] = {Item = {6, 0, 2, 1, 0,0, 0}, ItemName = "Gia B�o ho�n",},
			-- [10] = {Item = {6, 1, 150, 1, random(0,4),0, 0}, ItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [11] = {Item = {6, 1, 152, 1, random(0,4),0, 0}, ItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [12] = {Item = {6, 1, 154, 1, random(0,4),0, 0}, ItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[29] =
		{
			-- [1] = {Item = {6, 1, 23, 0, 0,0, 0}, ItemName = "Thi�t la h�n",},
			-- [2] = {Item = {6, 1, 400, 90, random(0,4), 0, 0}, ItemName = "S�t th� gi�n",},
			[1] = {Item = {6, 1, 440, 0, 0, 0, 0}, ItemName = "M�nh S�n H� X� T�c (100)",},
			[2] = {Item = {6, 1, 72, 0, 0, 0, 0}, ItemName = "Thi�n s�n B�o L�",},
			[3] = {Item = {6, 1, 73, 0, 0, 0, 0}, ItemName = "B�ch Qu� L�",},
			[4] = {Item = {6, 1, 155, 0, 0,0, 0}, ItemName = "Phong V�n Chi�u th�",},
			[5] = {Item = {6, 1, 910, 0, 0, 0, 0}, ItemName = "Bao D��c ho�n",},
			[6] = {Item = {6, 0, 6, 1, 0,0, 0}, ItemName = "Phi t�c ho�n",},
			[7] = {Item = {6, 0, 2, 1, 0,0, 0}, ItemName = "Gia B�o ho�n",},
			-- [10] = {Item = {6, 1, 150, 1, random(0,4),0, 0}, ItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [11] = {Item = {6, 1, 152, 1, random(0,4),0, 0}, ItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [12] = {Item = {6, 1, 154, 1, random(0,4),0, 0}, ItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[30] =
		{
			[1] = {Item = {4, 489, 0, 0, 0, 0, 0}, ItemName = "L�nh b�i Phong L�ng ��",},
			[2] = {Item = {6, 1, 71, 0, 0, 0, 0}, ItemName = "Ti�n Th�o L�",},
			[3] = {Item = {6, 0, 6, 1, 0,0, 0}, ItemName = "Phi t�c ho�n",},
			[4] = {Item = {6, 0, 2, 1, 0,0, 0}, ItemName = "Gia B�o ho�n",},
			[5] = {Item = {6, 0, 3, 1, 0,0, 0}, ItemName = "��i L�c ho�n",},
			[6] = {Item = {6, 1, 910, 0, 0, 0, 0}, ItemName = "Bao D��c ho�n",},
			[7] = {Item = {6, 1, 12, 0, 0, 0, 0}, ItemName = "B�n Nh��c T�m Kinh",},
			-- [6] = {Item = {6, 1, 124, 0, 0, 0, 0}, ItemName = "Ph�c Duy�n L� (��i)",},
			-- [2] = {Item = {6, 1, 2424, 4, 0, 0, 0}, ItemName = "��i Th�nh B� K�p 90",},
			-- [4] = {Item = {6, 1, 26, 0, 0, 0, 0}, ItemName = "V� L�m M�t T�ch",},
			-- [5] = {Item = {6, 1, 22, 0, 0, 0, 0}, ItemName = "T�y T�y Kinh",},
			-- [7] = {Item = {6, 1, 1427, 0, 0, 0, 0}, ItemName = "T� M�u L�nh",},
			-- [8] = {Item = {6, 1, 1448, 0, 0, 0, 0}, ItemName = "M�c B�c Truy�n T�ng L�nh",},
			-- [9] = {Item = {6, 1, 1617, 0, 0,0, 0}, ItemName = "Vi�m �� l�nh",},
			-- [11] = {Item = {6, 1, 1257, 0, 0, 0, 0}, ItemName = "L�nh b�i vinh d� H�n thi�t",},
			-- [16] = {Item = {6, 1, 150, 1, random(0,4),0, 0}, ItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [17] = {Item = {6, 1, 152, 1, random(0,4),0, 0}, ItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [18] = {Item = {6, 1, 154, 1, random(0,4),0, 0}, ItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[40] =
		{
			[1] = {Item = {4, 489, 0, 0, 0, 0, 0}, ItemName = "L�nh b�i Phong L�ng ��",},
			[2] = {Item = {6, 1, 910, 0, 0, 0, 0}, ItemName = "Bao D��c ho�n",},
			[3] = {Item = {6, 1, 71, 0, 0, 0, 0}, ItemName = "Ti�n Th�o L�",},
			[4] = {Item = {6, 0, 6, 1, 0,0, 0}, ItemName = "Phi t�c ho�n",},
			[5] = {Item = {6, 0, 2, 1, 0,0, 0}, ItemName = "Gia B�o ho�n",},
			[6] = {Item = {6, 0, 3, 1, 0,0, 0}, ItemName = "��i L�c ho�n",},
			[7] = {Item = {6, 1, 1427, 0, 0, 0, 0}, ItemName = "T� M�u L�nh",},
			[8] = {Item = {6, 1, 12, 0, 0, 0, 0}, ItemName = "B�n Nh��c T�m Kinh",},
			-- [3] = {Item = {6, 1, 26, 0, 0, 0, 0}, ItemName = "V� L�m M�t T�ch",},
			-- [4] = {Item = {6, 1, 22, 0, 0, 0, 0}, ItemName = "T�y T�y Kinh",},
			-- [5] = {Item = {6, 1, 124, 0, 0, 0, 0}, ItemName = "Ph�c Duy�n L� (��i)",},
			-- [7] = {Item = {6, 1, 1448, 0, 0, 0, 0}, ItemName = "M�c B�c Truy�n T�ng L�nh",},
			-- [8] = {Item = {6, 1, 1617, 0, 0,0, 0}, ItemName = "Vi�m �� l�nh",},
			-- [10] = {Item = {6, 1, 1257, 0, 0, 0, 0}, ItemName = "L�nh b�i vinh d� H�n thi�t",},
			-- [15] = {Item = {6, 1, 150, 1, random(0,4),0, 0}, ItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [16] = {Item = {6, 1, 152, 1, random(0,4),0, 0}, ItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [17] = {Item = {6, 1, 154, 1, random(0,4),0, 0}, ItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[50] =
		{
			[1] = {Item = {4, 489, 0, 0, 0, 0, 0}, ItemName = "L�nh b�i Phong L�ng ��",},
			[2] = {Item = {6, 1, 910, 0, 0, 0, 0}, ItemName = "Bao D��c ho�n",},
			[3] = {Item = {6, 1, 12, 0, 0, 0, 0}, ItemName = "B�n Nh��c T�m Kinh",},
			[4] = {Item = {6, 1, 71, 0, 0, 0, 0}, ItemName = "Ti�n Th�o L�",},
			[5] = {Item = {6, 0, 6, 1, 0,0, 0}, ItemName = "Phi t�c ho�n",},
			[6] = {Item = {6, 0, 2, 1, 0,0, 0}, ItemName = "Gia B�o ho�n",},
			[7] = {Item = {6, 0, 3, 1, 0,0, 0}, ItemName = "��i L�c ho�n",},
			-- [3] = {Item = {6, 1, 26, 0, 0, 0, 0}, ItemName = "V� L�m M�t T�ch",},
			-- [4] = {Item = {6, 1, 22, 0, 0, 0, 0}, ItemName = "T�y T�y Kinh",},
			-- [5] = {Item = {6, 1, 124, 0, 0, 0, 0}, ItemName = "Ph�c Duy�n L� (��i)",},
			-- [6] = {Item = {6, 1, 1427, 0, 0, 0, 0}, ItemName = "T� M�u L�nh",},
			-- [7] = {Item = {6, 1, 1448, 0, 0, 0, 0}, ItemName = "M�c B�c Truy�n T�ng L�nh",},
			-- [8] = {Item = {6, 1, 1617, 0, 0,0, 0}, ItemName = "Vi�m �� l�nh",},
			-- [10] = {Item = {6, 1, 1257, 0, 0, 0, 0}, ItemName = "L�nh b�i vinh d� H�n thi�t",},
			-- [15] = {Item = {6, 1, 150, 1, random(0,4),0, 0}, ItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [16] = {Item = {6, 1, 152, 1, random(0,4),0, 0}, ItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [17] = {Item = {6, 1, 154, 1, random(0,4),0, 0}, ItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[60] =
		{
			[1] = {Item = {4, 489, 0, 0, 0, 0, 0}, ItemName = "L�nh b�i Phong L�ng ��",},
			[2] = {Item = {6, 1, 910, 0, 0, 0, 0}, ItemName = "Bao D��c ho�n",},
			[3] = {Item = {6, 1, 71, 0, 0, 0, 0}, ItemName = "Ti�n Th�o L�",},
			[4] = {Item = {6, 0, 6, 1, 0,0, 0}, ItemName = "Phi t�c ho�n",},
			[5] = {Item = {6, 0, 2, 1, 0,0, 0}, ItemName = "Gia B�o ho�n",},
			[6] = {Item = {6, 0, 3, 1, 0,0, 0}, ItemName = "��i L�c ho�n",},
			[7] = {Item = {6, 1, 1427, 0, 0, 0, 0}, ItemName = "T� M�u L�nh",},
			[8] = {Item = {6, 1, 12, 0, 0, 0, 0}, ItemName = "B�n Nh��c T�m Kinh",},
			-- [3] = {Item = {6, 1, 124, 0, 0, 0, 0}, ItemName = "Ph�c Duy�n L� (��i)",},
			-- [5] = {Item = {6, 1, 1448, 0, 0, 0, 0}, ItemName = "M�c B�c Truy�n T�ng L�nh",},
			-- [6] = {Item = {6, 1, 2425, 4, 0, 0, 0}, ItemName = "��i Th�nh B� K�p 120",},
			-- [7] = {Item = {6, 1, 1617, 0, 0,0, 0}, ItemName = "Vi�m �� l�nh",},
			-- [9] = {Item = {6, 1, 1257, 0, 0, 0, 0}, ItemName = "L�nh b�i vinh d� H�n thi�t",},
			-- [14] = {Item = {6, 1, 150, 1, random(0,4),0, 0}, ItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [15] = {Item = {6, 1, 152, 1, random(0,4),0, 0}, ItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [16] = {Item = {6, 1, 154, 1, random(0,4),0, 0}, ItemName = "Chung Nh� Nguy�n Th�ch",},
		},
}

-- TbAwardDailyMusterEXP = {
	-- [10] = {10000000, "10 Tri�u"},
	-- [20] = {20000000, "20 Tri�u"},
	-- [30] = {30000000, "30 Tri�u"},
	-- [40] = {40000000, "40 Tri�u"},
	-- [50] = {50000000, "50 Tri�u"},
	-- [60] = {60000000, "60 Tri�u"},
-- }
TbAwardDailyMusterEXP = {
	[10] = {5000000, "5 Tri�u"},
	[20] = {10000000, "10 Tri�u"},
	[30] = {15000000, "15 Tri�u"},
	[40] = {20000000, "20 Tri�u"},
	[50] = {25000000, "25 Tri�u"},
	[60] = {30000000, "30 Tri�u"},
}

function Award2Player(Sel)
	Msg2Player("Ph�n th��ng �i�m danh l�n th�: <color=yellow>"..GetTask(4165))
	local SelExp = Sel
	if SelExp > 60 then SelExp = 60 end
	if(mod(SelExp, 10) == 0) then
		AddOwnExp(TbAwardDailyMusterEXP[SelExp][1])
		Msg2Player("<color=yellow>Nh�n th��ng th�m "..TbAwardDailyMusterEXP[SelExp][2].." �i�m kinh nghi�m!")
		Msg2SubWorld("<color=yellow>Ng��i ch�i "..GetName().." �i�m danh l�n th� "..GetTask(4165).." �� nh�n th��ng th�m "..TbAwardDailyMusterEXP[SelExp][2].." �i�m kinh nghi�m!")
		AddLocalNews("<color=yellow>Ng��i ch�i "..GetName().." �i�m danh l�n th� "..GetTask(4165).." �� nh�n th��ng th�m "..TbAwardDailyMusterEXP[SelExp][2].." �i�m kinh nghi�m!")
	end
	if Sel > 30 and Sel < 40 then
		Sel = Sel - 30
	elseif Sel > 40 and Sel < 50 then
		Sel = Sel - 30
	elseif Sel > 50 and Sel < 60 then
		Sel = Sel - 30
	elseif Sel > 60 and Sel < 120 then
		Sel = Sel - 60
	end
	for Loop = 1, getn(TbAwardDailyMuster[Sel]) do
		-- local nItemIndex = AddItem(unpack(TbAwardDailyMuster[Sel][Loop].Item))
		local nItemIndex = AddItemNoStack(unpack(TbAwardDailyMuster[Sel][Loop].Item))
		if (TbAwardDailyMuster[Sel][Loop].Item[3] ~= 150 and TbAwardDailyMuster[Sel][Loop].Item[3] ~= 152 and TbAwardDailyMuster[Sel][Loop].Item[3] ~= 154) then
			SetItemBindState(nItemIndex, -2)
		end
		Msg2Player("<color=yellow>"..TbAwardDailyMuster[Sel][Loop].ItemName)
	end
	return Talk(1, "MyTimesMuster", TitleLQ.."�� ti�n h�nh �i�m danh l�n th� <color=green>"..GetTask(4165).."<color> th�nh c�ng!")
end

function ProcMusterDayTimes(DateMuster, NowDateMuster)
	local TD, ND = DateMuster, NowDateMuster
	local DTs, MonthTD, MonthND = 0, tonumber(strsub(TD, 3, 4)), tonumber(strsub(ND, 3, 4))
	if MonthND > MonthTD then
		if tonumber(strsub(TD, 5, 6)) == 30 or tonumber(strsub(TD, 5, 6)) == 31 then
			return tonumber(strsub(ND, 5, 6)) + (((MonthND - MonthTD) * 30) - 30)
		else
			return ((30 - tonumber(strsub(TD, 5, 6))) + tonumber(strsub(ND, 5, 6))) + (((MonthND - MonthTD) * 30) - 30)
		end
	else
		return ND - TD
	end
end

function GoMuster()
	local NowTimes, DateMuster, NowDateMuster = GetTask(4165), GetTask(4166), tonumber(date("%y%m%d"))
	if DateMuster >= NowDateMuster then
		return Say(TitleLQ.."H�m nay ��i hi�p �� ti�n h�nh �i�m danh r�i,h�y ��i ��n h�m sau �i�m danh ti�p, c�c ph�n th��ng  c�a ng�y h�m sau c� th� xem � m�c xem s� l��t �i�m   danh c�a m�nh!", 1, "Ta bi�t r�i!/OnCancel")
	end
	
	local checkNot = nil
	local checkNot_nowDay = tonumber(date("%d"))
	local checkNot_nowMonth = tonumber(date("%m"))
	
	if ((checkNot_nowMonth - 1) == 2) and (tonumber(date("%y")..(checkNot_nowMonth - 1).."28") > DateMuster) then
		checkNot = 1
		SetTask(4167, (NowDateMuster - ((tonumber(date("%y")..(checkNot_nowMonth - 1).."28") - DateMuster)) + 1))
	elseif (tonumber(date("%y")..(checkNot_nowMonth - 1).."30") > DateMuster) then
		checkNot = 1
		SetTask(4167, (NowDateMuster - ((tonumber(date("%y")..(checkNot_nowMonth - 1).."30") - DateMuster)) + 1))
	end
	
	------------------------------------------------------------------------------ FIX BUG IN MONTH 10.2017 ---------------------------------------------------------------------------------
		
		if (checkNot_nowMonth == 1 or checkNot_nowMonth == 2 or checkNot_nowMonth == 3 or checkNot_nowMonth == 4 or checkNot_nowMonth == 5 or checkNot_nowMonth == 6 or checkNot_nowMonth == 7 or checkNot_nowMonth == 8 or checkNot_nowMonth == 9 or checkNot_nowMonth == 10 or checkNot_nowMonth == 11 or checkNot_nowMonth == 12) and (GetTask(4167) <= 181230 or GetTask(4167) <= 190130 or GetTask(4167) <= 190228 or GetTask(4167) <= 190330 or GetTask(4167) <= 190430 or GetTask(4167) <= 190530 or GetTask(4167) <= 190630 or GetTask(4167) <= 190730 or GetTask(4167) <= 190830 or GetTask(4167) <= 190930 or GetTask(4167) <= 191030 or GetTask(4167) <= 191130 or GetTask(4167) <= 191230) then
			SetTask(4167, (NowDateMuster - 1))
		end
	------------------------------------------------------------------------------ FIX BUG IN MONTH 10.2017 ---------------------------------------------------------------------------------
	
	DateMuster = GetTask(4167)
	
	if (DateMuster < NowDateMuster - 1) and DateMuster ~= 0 then
		local MissDayTimes = ProcMusterDayTimes(DateMuster, NowDateMuster)
		return Say(TitleLQ.."V� ��i hi�p �� l� m�t nh�p �i�m danh li�n <enter>t�c c�a m�nh, th�i gian �i�m danh l�n tr��c c�ch ��y �� <color=yellow>"..MissDayTimes.."<color> ng�y, n�u kh�ng �i�m danh b� th� s� l�n �i�m <enter>danh m�i s� b�t ��u l�i t� ��u!", 3, 
							"Ng�i gi�p ta �i�m danh b� l�i c�c ng�y �� v�ng!./RecompenseMuster",
							"Th�i, ta mu�n �i�m danh l�i t� ��u./NewMuster",
							"Ng�i cho ta suy ngh� l�i ��!/OnCancel"
							)
	end
	
	local a = (GetTask(4165) + 1)
	
	if a > 30 then
		if mod(a, 10) == 0 then
			a = (a > getn(TbAwardDailyMuster)) and getn(TbAwardDailyMuster) or a
		else
			a = (a - (floor(a/30) * 30))
		end
	end
	
	if CalcFreeItemCellCount() < getn(TbAwardDailyMuster[a]) then
		return Say(TitleLQ.."�� nh�n th��ng y�u c�u ��i hi�p h�y s�p x�p l�i h�nh trang c�a m�nh, c�n �t nh�t <color=green>"..(getn(TbAwardDailyMuster[a])).." <color>� tr�ng!",0)
	end
	SetTask(4165, GetTask(4165) + 1)
	SetTask(4166, NowDateMuster)
	return Award2Player(a)
end

function RecompenseMuster()
	local MissDayTimes = ProcMusterDayTimes(GetTask(4166), tonumber(date("%y%m%d")))
	Talk(2, "RecompenseMusterInput", TitleLQ.."��i hi�p �� b� l� m�t <color=yellow>"..MissDayTimes.."<color> l�n �i�m danh, v� <enter>v�y ��c c� minh ch� c�n thu h�i <color=yellow>"..MissDayTimes.."<color> <color=fire>T� th�y tinh<color> �� b� cho s� ng�y �� b�.", "Ph�n th��ng c�a c�c ng�y h�m tr��c �� b� s� kh�ng th�nh�n l�i, ch� c� th� nh�n ph�n th��ng c�a ng�y h�m <enter>nay th�i!")
end

function RecompenseMusterInput()
	local TimesLost =  ProcMusterDayTimes(GetTask(4166), tonumber(date("%y%m%d")))
	return GiveItemUI("�i�m danh b� "..TimesLost.." l�n","Xin ��t "..TimesLost.." T� th�y tinh cho "..TimesLost.." l�n �i�m danh b�", "RecompenseMusterSure", "OnCancel" );
end

function RecompenseMusterSure(Count)
	local TimesLost =  ProcMusterDayTimes(GetTask(4166), tonumber(date("%y%m%d")))
	local IdxItem
	if Count ~= TimesLost then
		return Say(TitleLQ.."��c c� minh ch� ch� c�n <color=yellow>"..TimesLost.."<color><color=fire> T� th�y tinh!<color>", 2, "Ta nh�m, �� ta ��t l�i/RecompenseMusterInput", "Ah, ta qu�n m�t, �� ta �i l�y l� v�t./OnCancel")
	end
	for i = 1, Count do
		IdxItem = GetGiveItemUnit(i)
		G, D, P = GetItemProp(IdxItem)
		if G ~= 4 and D ~= 239 then
			return Say(TitleLQ.."��c c� minh ch� ch� c�n <color=yellow>"..TimesLost.."<color><color=fire> T� th�y tinh!<color>", 2, "Ta nh�m, �� ta ��t l�i/RecompenseMusterInput", "Ah, ta qu�n m�t, �� ta �i l�y l� v�t./OnCancel")
		end
	end
	for i = 1, Count do
		IdxItem = GetGiveItemUnit(i);
		RemoveItemByIndex(IdxItem);
	end
	SetTask(4165, GetTask(4165) + Count)
	SetTask(4166, tonumber(date("%y%m%d")))
	return Award2Player(GetTask(4165))
end

function NewMuster()
	return Say(TitleLQ.."�� ti�n h�nh �i�m danh l�i, to�n b� s� l�n �i�m danh tr��c ��y s� b� x�a b� v� tr� v� v� tr� xu�t ph�t, c�n r�t nhi�u ph�n th��ng kh�ng th� ng� ��n � ��ng sau ng��i kh�ng h�i ti�c �?", 2, "Ta �� suy ngh� k�, mu�n �i�m danh l�i!/NewMusterSure", "Ng�i cho ta suy ngh� l�i c�i ��!/OnCancel")
end

function NewMusterSure()
	SetTask(4165, 1)
	SetTask(4166, tonumber(date("%y%m%d")))
	return Award2Player(GetTask(4165))
end

function MyTimesMuster()
	local a = (GetTask(4165) + 1)
	
	if a > 30 then
		if mod(a, 10) == 0 then
			a = (a > getn(TbAwardDailyMuster)) and getn(TbAwardDailyMuster) or a
		else
			a = (a - (floor(a/30) * 30))
		end
	end
	
	local StrItem = ""
	for i = 1, getn(TbAwardDailyMuster[a]) do 
		StrItem = StrItem..TbAwardDailyMuster[a][i].ItemName.."\n"
	end
	-- CreateNewSayEx(TitleLQ.."T�ng s� l��t �i�m danh li�n t�c c�a ��i hi�p l�: <color=green>"..Times.."<color>, Ph�n th��ng cho l�n �i�m danh k� ti�p l�:<enter><color=yellow>"..StrItem.."<color>", {{"Ta bi�t r�i!", OnCancel},})
	CreateNewSayEx("<npc>T�ng s� l��t �i�m danh li�n t�c c�a ��i hi�p l�: <color=green>"..(GetTask(4165)).."<color>, Ph�n th��ng cho l�n �i�m danh k� ti�p l�:<enter><color=yellow>"..StrItem.."<color>", {{"Ta bi�t r�i!", OnCancel},})
end

function AboutMuster()
	-- CreateNewSayEx(TitleLQ.."�i�m danh h�ng ng�y s� nh�n ���c nh�ng <color=green>ph�n  th��ng phong ph�<color>, c� gi� tr� t� ��c c� minh ch�, y�u  c�u ng��i �i�m danh ph�i <color=yellow>li�n t�c<color> n�u mu�n nh�n ph�n  th��ng c�a ng�y ti�p theo, n�u trong ng�y ti�p theo   kh�ng �i�m danh th� <color=yellow>t�ng s� l��t �i�m danh ���c s� b�t��u l�i t� ��u<color>, ��c c� minh ch� c�n nh�ng ng��i c� <enter>t�nh ki�n tr� v� kh� luy�n!, danh s�ch c�c ph�n th��ng��i hi�p c� th� tham kh�o � <color=green>C�m Nang ��ng H�nh<color>.", {{"Ta bi�t r�i!", OnCancel},})
	CreateNewSayEx("<npc>�i�m danh h�ng ng�y s� nh�n ���c nh�ng <color=green>ph�n  th��ng phong ph�<color>, c� gi� tr� t� ��c c� minh ch�, y�u  c�u ng��i �i�m danh ph�i <color=yellow>li�n t�c<color> n�u mu�n nh�n ph�n  th��ng c�a ng�y ti�p theo, n�u trong ng�y ti�p theo   kh�ng �i�m danh th� <color=yellow>t�ng s� l��t �i�m danh ���c s� b�t��u l�i t� ��u<color>, ��c c� minh ch� c�n nh�ng ng��i c� <enter>t�nh ki�n tr� v� kh� luy�n!, danh s�ch c�c ph�n th��ng��i hi�p c� th� tham kh�o � <color=green>C�m Nang ��ng H�nh<color>.", {{"Ta bi�t r�i!", OnCancel},})
end

function OnCancel() end