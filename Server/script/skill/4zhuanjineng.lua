--190���ܽű�
Include("\\script\\skill\\head.lua")
SKILLS={

	--��
	skill_190_jin=
	{ --��ϵ190��������
		skill_desc=
			function(level)
				return "<color=water>Kim C��ng Chi N�<color> l�m gi�m hi�u su�t ph�c h�i sinh l�c, n�i l�c c�a ng��i b� c�ng k�ch<color=orange>"..floor(-Link(level,SKILLS.skill_190_jin_zuzhou.lifereplenish_p[1]))..
				"%<color> t�c �� di chuy�n trong <color=orange>"..floor(Link(level,SKILLS.skill_190_jin_zuzhou.lifereplenish_p[2]) / 18).."<color> gi�y \n"
			end,	
		autoreplyskill=
		{--�Զ���������XX֮ŭ
			{
				{1,(65536+1561)*256 + 1},{20,(65536+1561) *256 + 20},{21,(65536+1561) *256 + 21}
			},
			{
				{1,-1},{20,-1}
			},
			{
				{1,15*18*256 + 1},{10,15*18*256 + 5},{11,15*18*256 + 6},{20,15*18*256 + 12},{21,15*18*256 + 13},{30,15*18*256 + 20},{31,15*18*256 + 20}
			}
		},
	},
	
	skill_190_jin_zuzhou=
	{--��ϵ190�����Ӽ��ܽ��֮ŭ
		lifereplenish_p=
		{
			{
				{1,-1},{10,-4},{11,-6},{20,-11},{21,-13},{30,-20},{60,-20}
			},
			{
				{1,3*18},{10,6*18},{11,7*18},{20,12*18},{21,12*18}
			}
		},
		manareplenish_p=
		{
			{
				{1,-1},{10,-4},{11,-6},{20,-11},{21,-13},{30,-20},{60,-20}
			},
			{
				{1,3*18},{10,6*18},{11,7*18},{20,12*18},{21,12*18}
			}
		},
	},
	
	skill_190_jin_buff=
	{ --��ϵ190BUFF����
		skill_desc=
			 function(level)
				return "<color=water>Kim C��ng Chi H� <color>,".."gi�m s�t th��ng nh�n ���c t� h� M�c <color=orange>"..floor(Link(level,SKILLS.metal.wood2medamage_p[1]))..
				"%<color> t�c �� di chuy�n trong <color=orange>"..floor(Link(level,SKILLS.metal.wood2medamage_p[2]) / 18).."<color> gi�y \n"
			 end,	
		autoreplyskill=
		{--�Զ�����XX֮��BUFF
			{
				{1,1566*256 + 1},{20,1566*256 + 20},{21,1566*256 + 21}
			},
			{
				{1,-1},{20,-1}
			},
			{
				{1,15*18*256 + 1},{10,15*18*256 + 5},{11,15*18*256 + 6},{20,15*18*256 + 12},{21,15*18*256 + 13},{30,15*18*256 + 20},{31,15*18*256 + 20}
			}
		},
		
	},
	
	
	--ľ
	skill_190_mu=
	{ --ľϵ190��������
		skill_desc=
			 function(level)
				return "<color=water>B�ch M�c Chi N�<color>, l�m t�ng th�i gian tr�ng ��c c�a ng��i b� c�ng k�ch <color=orange>"..floor(-Link(level,SKILLS.skill_190_mu_zuzhou.poisontimereduce_p[1]))..
				"%<color> t�c �� di chuy�n trong <color=orange>"..floor(Link(level,SKILLS.skill_190_mu_zuzhou.poisontimereduce_p[2]) / 18).."<color> gi�y \n"
			 end,				 
		autoreplyskill=
		{--�Զ���������XX֮ŭ
			{
				{1,(65536+1562)*256 + 1},{20,(65536+1562)*256 + 20},{21,(65536+1562)*256 + 21}
			},
			{
				{1,-1},{20,-1}
			},
			{
				{1,15*18*256 + 1},{10,15*18*256 + 5},{11,15*18*256 + 6},{20,15*18*256 + 12},{21,15*18*256 + 13},{30,15*18*256 + 20},{31,15*18*256 + 20}
			}
		},
	},
	
	skill_190_mu_zuzhou=
	{--ľϵ190�����Ӽ��ܱ�ľ֮ŭ
		poisontimereduce_p=
		{
			{
				{1,-1},{10,-7},{11,-9},{20,-17},{21,-19},{30,-30},{60,-30}
			},
			{
				{1,3*18},{10,6*18},{11,7*18},{20,12*18},{21,12*18}
			}
		},
	},
	
	skill_190_mu_buff=
	{ --ľϵ190BUFF����
		skill_desc=
			 function(level)
				return "<color=water>B�ch M�c Chi H�<color>,".."gi�m s�t th��ng nh�n ���c t� h� Th� <color=orange>"..floor(Link(level,SKILLS.wood.earth2medamage_p[1]))..
				"%<color> t�c �� di chuy�n trong <color=orange>"..floor(Link(level,SKILLS.wood.earth2medamage_p[2]) / 18).."<color> gi�y \n"
			 end,	
		autoreplyskill=
		{--�Զ�����XX֮��BUFF
			{
				{1,1567*256 + 1},{20,1567*256 + 20},{21,1567*256 + 21}
			},
			{
				{1,-1},{20,-1}
			},
			{
				{1,15*18*256 + 1},{10,15*18*256 + 5},{11,15*18*256 + 6},{20,15*18*256 + 12},{21,15*18*256 + 13},{30,15*18*256 + 20},{31,15*18*256 + 20}
			}
		},
	
	},
	
	
	--ˮ
	skill_190_shui=
	{ --ˮϵ190��������
		skill_desc=
			 function(level)
				return "<color=water>H�n B�ng Chi N�<color> l�m t�ng th�i gian tr� ho�n c�a ng��i b� c�ng k�ch <color=orange>"..floor(-Link(level,SKILLS.skill_190_shui_zuzhou.freezetimereduce_p[1]))..
				"%<color> t�c �� di chuy�n trong <color=orange>"..floor(Link(level,SKILLS.skill_190_shui_zuzhou.freezetimereduce_p[2]) / 18).."<color> gi�y \n"
			 end,	
		autoreplyskill=
		{--�Զ���������XX֮ŭ
			{
				{1,(65536+1563)*256 + 1},{20,(65536+1563)*256 + 20},{21,(65536+1563)*256 + 21}
			},
			{
				{1,-1},{20,-1}
			},
			{
				{1,15*18*256 + 1},{10,15*18*256 + 5},{11,15*18*256 + 6},{20,15*18*256 + 12},{21,15*18*256 + 13},{30,15*18*256 + 20},{31,15*18*256 + 20}
			}
		},
	},
	
	skill_190_shui_zuzhou=
	{--ˮϵ190�����Ӽ��ܺ���֮ŭ
		freezetimereduce_p=
		{
			{
				{1,-1},{10,-7},{11,-9},{20,-17},{21,-19},{21,-30},{60,-30}
			},
			{
				{1,3*18},{10,6*18},{11,7*18},{20,12*18},{21,12*18}
			}
		},
	},
	
	skill_190_shui_buff=
	{ --ˮϵ190BUFF����
		skill_desc=
			 function(level)
				return "<color=water>H�n B�ng Chi H�<color>,".."gi�m s�t th��ng nh�n ���c t� h� H�a <color=orange>"..floor(Link(level,SKILLS.water.fire2medamage_p[1]))..
				"%<color> t�c �� di chuy�n trong <color=orange>"..floor(Link(level,SKILLS.water.fire2medamage_p[2]) / 18).."<color> gi�y \n"
			 end,	
		autoreplyskill=
		{--�Զ�����XX֮��BUFF
			{
				{1,1568*256 + 1},{20,1568*256 + 20},{21,1568*256 + 21}
			},
			{
				{1,-1},{20,-1}
			},
			{
				{1,15*18*256 + 1},{10,15*18*256 + 5},{11,15*18*256 + 6},{20,15*18*256 + 12},{21,15*18*256 + 13},{30,15*18*256 + 20},{31,15*18*256 + 20}
			}
		},
	
	},
	
	
	--��
	skill_190_huo=
	{ --��ϵ190��������
		skill_desc=
			function(level)
				return "<color=water>Vi�m D��ng Chi N�<color> l�m gi�m x�c su�t h�a gi�i s�t th��ng c�a ng��i b� c�ng k�ch <color=orange>"..floor(-Link(level,SKILLS.skill_190_huo_zuzhou.block_rate[1]))..
				"%<color> t�c �� di chuy�n trong <color=orange>"..floor(Link(level,SKILLS.skill_190_huo_zuzhou.block_rate[2]) / 18).."<color> gi�y \n"
			end,
		autoreplyskill=
		{--�Զ���������XX֮ŭ
			{
				{1,(65536+1564)*256 + 1},{20,(65536+1564)*256 + 20},{21,(65536+1564)*256 + 21}
			},
			{
				{1,-1},{20,-1}
			},
			{
				{1,15*18*256 + 1},{10,15*18*256 + 5},{11,15*18*256 + 6},{20,15*18*256 + 12},{21,15*18*256 + 13},{30,15*18*256 + 20},{31,15*18*256 + 20}
			}
		},
	},
	
	skill_190_huo_zuzhou=
	{--��ϵ190�����Ӽ�������֮ŭ
		block_rate=
		{
			{
				{1,-1},{10,-4},{11,-6},{20,-11},{21,-13},{30,-20},{60,-20}
			},
			{
				{1,3*18},{10,6*18},{11,7*18},{20,12*18},{21,12*18}
			}
		},
	},
	
	skill_190_huo_buff=
	{ --��ϵ190BUFF����
		skill_desc=
			function(level)
				return "<color=water>Vi�m D��ng Chi H�<color>,".."gi�m s�t th��ng nh�n ���c t� h� Kim <color=orange>"..floor(Link(level,SKILLS.fire.metal2medamage_p[1]))..
				"%<color> t�c �� di chuy�n trong <color=orange>"..floor(Link(level,SKILLS.fire.metal2medamage_p[2]) / 18).."<color> gi�y \n"
			end,	
		autoreplyskill=
		{--�Զ�����XX֮��BUFF
			{
				{1,1569*256 + 1},{20,1569*256 + 20},{21,1569*256 + 21}
			},
			{
				{1,-1},{20,-1}
			},
			{
				{1,15*18*256 + 1},{10,15*18*256 + 5},{11,15*18*256 + 6},{20,15*18*256 + 12},{21,15*18*256 + 13},{30,15*18*256 + 20},{31,15*18*256 + 20}
			}
		},
		
	},
	
	--��
	skill_190_tu=
	{ --��ϵ190��������
		skill_desc=
			function(level)
				return "<color=water>L�i ��nh Chi N�<color> l�m t�ng th�i gian cho�ng c�a ng��i b� c�ng k�ch <color=orange>"..floor(-Link(level,SKILLS.skill_190_tu_zuzhou.stuntimereduce_p[1]))..
				"%<color> t�c �� di chuy�n trong <color=orange>"..floor(Link(level,SKILLS.skill_190_tu_zuzhou.stuntimereduce_p[2]) / 18).."<color> gi�y \n"
			end,
		autoreplyskill=
		{--�Զ���������XX֮ŭ
			{
				{1,(65536+1565)*256 + 1},{20,(65536+1565)*256 + 20},{21,(65536+1565)*256 + 21}
			},
			{
				{1,-1},{20,-1}
			},
			{
				{1,15*18*256 + 1},{10,15*18*256 + 5},{11,15*18*256 + 6},{20,15*18*256 + 12},{21,15*18*256 + 13},{30,15*18*256 + 20},{31,15*18*256 + 20}
			}
		},
	},
	
	skill_190_tu_zuzhou=
	{--��ϵ190�����Ӽ�������֮ŭ
		stuntimereduce_p=
		{
			{
				{1,-1},{10,-4},{11,-6},{20,-11},{21,-13},{30,-20},{60,-20}
			},
			{
				{1,3*18},{10,6*18},{11,7*18},{20,12*18},{21,12*18}
			}
		},
	},
	
	skill_190_tu_buff=
	{ --��ϵ190BUFF����
		skill_desc=
			function(level)
				return "<color=water>L�i ��nh Chi H�<color>,".."gi�m s�t th��ng nh�n ���c t� h� Th�y<color=orange>"..floor(Link(level,SKILLS.earth.water2medamage_p[1]))..
				"%<color> t�c �� di chuy�n trong <color=orange>"..floor(Link(level,SKILLS.earth.water2medamage_p[2]) / 18).."<color> gi�y \n"
			end,
		autoreplyskill=
		{--�Զ�����XX֮��BUFF
			{
				{1,1570*256 + 1},{20,1570*256 + 20},{21,1570*256 + 21}
			},
			{
				{1,-1},{20,-1}
			},
			{
				{1,15*18*256 + 1},{10,15*18*256 + 5},{11,15*18*256 + 6},{20,15*18*256 + 12},{21,15*18*256 + 13},{30,15*18*256 + 20},{31,15*18*256 + 20}
			}
		},
	
	},
	
	
--190����-��-��ľϵ�˺�
		metal={
		wood2medamage_p={{{1,1},{10,4},{11,6},{20,11},{21,13},{30,20},{60,20}},{{1,3*18},{10,6*18},{11,7*18},{20,12*18},{21,12*18}}},--��������ľϵ���˺�
		},
		--190����-ľ-����ϵ�˺�
		wood={
		earth2medamage_p={{{1,1},{10,4},{11,6},{20,11},{21,13},{30,20},{60,20}},{{1,3*18},{10,6*18},{11,7*18},{20,12*18},{21,12*18}}},--����������ϵ���˺�
		},
		--190����-ˮ-����ϵ�˺�
		water={
		fire2medamage_p={{{1,1},{10,4},{11,6},{20,11},{21,13},{30,20},{60,20}},{{1,3*18},{10,6*18},{11,7*18},{20,12*18},{21,12*18}}},--�������Ի�ϵ���˺�
		},
		--190����-��-����ϵ�˺�
		fire={
		metal2medamage_p={{{1,1},{10,4},{11,6},{20,11},{21,13},{30,20},{60,20}},{{1,3*18},{10,6*18},{11,7*18},{20,12*18},{21,12*18}}},--�������Խ�ϵ���˺�
		},
		--190����-��-��ˮϵ�˺�
		earth={
		water2medamage_p={{{1,1},{10,4},{11,6},{20,11},{21,13},{30,20},{60,20}},{{1,3*18},{10,6*18},{11,7*18},{20,12*18},{21,12*18}}},--��������ˮϵ���˺�
		},
	 
		
		--��ŭ����
		--Ч�����������ܡ�����ֵ����
		tiannukuanglan={
			lifemax_yan_p={{{1,1},{25,25},{26,27},{27,30},{30,30},{31,30}},{{1,-1},{30,-1}}},
			skill_enhance={{{1,5},{2,10},{12,30},{13,33},{14,35},{15,38},{16,40},{17,43},{18,45},{19,48},{20,50},{25,65},{26,70},{27,75},{28,80},{30,80},{31,80}},{{1,-1},{2,-1}}},
			},
	 
	 
}

