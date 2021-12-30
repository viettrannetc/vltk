--190技能脚本
Include("\\script\\skill\\head.lua")
SKILLS={

	--金
	skill_190_jin=
	{ --金系190被动技能
		skill_desc=
			function(level)
				return "<color=water>Kim Cng Chi N�<color> l祄 gi秏 hi謚 su蕋 ph鬰 h錳 sinh l鵦, n閕 l鵦 c馻 ngi b� c玭g k輈h<color=orange>"..floor(-Link(level,SKILLS.skill_190_jin_zuzhou.lifereplenish_p[1]))..
				"%<color> t鑓  di chuy觧 trong <color=orange>"..floor(Link(level,SKILLS.skill_190_jin_zuzhou.lifereplenish_p[2]) / 18).."<color> gi﹜ \n"
			end,	
		autoreplyskill=
		{--自动反击诅咒XX之怒
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
	{--金系190诅咒子技能金刚之怒
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
	{ --金系190BUFF技能
		skill_desc=
			 function(level)
				return "<color=water>Kim Cng Chi H� <color>,".."gi秏 s竧 thng nh薾 頲 t� h� M閏 <color=orange>"..floor(Link(level,SKILLS.metal.wood2medamage_p[1]))..
				"%<color> t鑓  di chuy觧 trong <color=orange>"..floor(Link(level,SKILLS.metal.wood2medamage_p[2]) / 18).."<color> gi﹜ \n"
			 end,	
		autoreplyskill=
		{--自动触发XX之护BUFF
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
	
	
	--木
	skill_190_mu=
	{ --木系190被动技能
		skill_desc=
			 function(level)
				return "<color=water>B輈h M閏 Chi N�<color>, l祄 t╪g th阨 gian tr髇g c c馻 ngi b� c玭g k輈h <color=orange>"..floor(-Link(level,SKILLS.skill_190_mu_zuzhou.poisontimereduce_p[1]))..
				"%<color> t鑓  di chuy觧 trong <color=orange>"..floor(Link(level,SKILLS.skill_190_mu_zuzhou.poisontimereduce_p[2]) / 18).."<color> gi﹜ \n"
			 end,				 
		autoreplyskill=
		{--自动反击诅咒XX之怒
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
	{--木系190诅咒子技能碧木之怒
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
	{ --木系190BUFF技能
		skill_desc=
			 function(level)
				return "<color=water>B輈h M閏 Chi H�<color>,".."gi秏 s竧 thng nh薾 頲 t� h� Th� <color=orange>"..floor(Link(level,SKILLS.wood.earth2medamage_p[1]))..
				"%<color> t鑓  di chuy觧 trong <color=orange>"..floor(Link(level,SKILLS.wood.earth2medamage_p[2]) / 18).."<color> gi﹜ \n"
			 end,	
		autoreplyskill=
		{--自动触发XX之护BUFF
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
	
	
	--水
	skill_190_shui=
	{ --水系190被动技能
		skill_desc=
			 function(level)
				return "<color=water>H祅 B╪g Chi N�<color> l祄 t╪g th阨 gian tr� ho穘 c馻 ngi b� c玭g k輈h <color=orange>"..floor(-Link(level,SKILLS.skill_190_shui_zuzhou.freezetimereduce_p[1]))..
				"%<color> t鑓  di chuy觧 trong <color=orange>"..floor(Link(level,SKILLS.skill_190_shui_zuzhou.freezetimereduce_p[2]) / 18).."<color> gi﹜ \n"
			 end,	
		autoreplyskill=
		{--自动反击诅咒XX之怒
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
	{--水系190诅咒子技能寒冰之怒
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
	{ --水系190BUFF技能
		skill_desc=
			 function(level)
				return "<color=water>H祅 B╪g Chi H�<color>,".."gi秏 s竧 thng nh薾 頲 t� h� H醓 <color=orange>"..floor(Link(level,SKILLS.water.fire2medamage_p[1]))..
				"%<color> t鑓  di chuy觧 trong <color=orange>"..floor(Link(level,SKILLS.water.fire2medamage_p[2]) / 18).."<color> gi﹜ \n"
			 end,	
		autoreplyskill=
		{--自动触发XX之护BUFF
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
	
	
	--火
	skill_190_huo=
	{ --火系190被动技能
		skill_desc=
			function(level)
				return "<color=water>Vi猰 Dng Chi N�<color> l祄 gi秏 x竎 su蕋 h鉧 gi秈 s竧 thng c馻 ngi b� c玭g k輈h <color=orange>"..floor(-Link(level,SKILLS.skill_190_huo_zuzhou.block_rate[1]))..
				"%<color> t鑓  di chuy觧 trong <color=orange>"..floor(Link(level,SKILLS.skill_190_huo_zuzhou.block_rate[2]) / 18).."<color> gi﹜ \n"
			end,
		autoreplyskill=
		{--自动反击诅咒XX之怒
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
	{--火系190诅咒子技能炎阳之怒
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
	{ --火系190BUFF技能
		skill_desc=
			function(level)
				return "<color=water>Vi猰 Dng Chi H�<color>,".."gi秏 s竧 thng nh薾 頲 t� h� Kim <color=orange>"..floor(Link(level,SKILLS.fire.metal2medamage_p[1]))..
				"%<color> t鑓  di chuy觧 trong <color=orange>"..floor(Link(level,SKILLS.fire.metal2medamage_p[2]) / 18).."<color> gi﹜ \n"
			end,	
		autoreplyskill=
		{--自动触发XX之护BUFF
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
	
	--土
	skill_190_tu=
	{ --土系190被动技能
		skill_desc=
			function(level)
				return "<color=water>L玦 ёnh Chi N�<color> l祄 t╪g th阨 gian cho竛g c馻 ngi b� c玭g k輈h <color=orange>"..floor(-Link(level,SKILLS.skill_190_tu_zuzhou.stuntimereduce_p[1]))..
				"%<color> t鑓  di chuy觧 trong <color=orange>"..floor(Link(level,SKILLS.skill_190_tu_zuzhou.stuntimereduce_p[2]) / 18).."<color> gi﹜ \n"
			end,
		autoreplyskill=
		{--自动反击诅咒XX之怒
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
	{--土系190诅咒子技能雷霆之怒
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
	{ --土系190BUFF技能
		skill_desc=
			function(level)
				return "<color=water>L玦 ёnh Chi H�<color>,".."gi秏 s竧 thng nh薾 頲 t� h� Th駓<color=orange>"..floor(Link(level,SKILLS.earth.water2medamage_p[1]))..
				"%<color> t鑓  di chuy觧 trong <color=orange>"..floor(Link(level,SKILLS.earth.water2medamage_p[2]) / 18).."<color> gi﹜ \n"
			end,
		autoreplyskill=
		{--自动触发XX之护BUFF
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
	
	
--190技能-金-减木系伤害
		metal={
		wood2medamage_p={{{1,1},{10,4},{11,6},{20,11},{21,13},{30,20},{60,20}},{{1,3*18},{10,6*18},{11,7*18},{20,12*18},{21,12*18}}},--减少来自木系的伤害
		},
		--190技能-木-减土系伤害
		wood={
		earth2medamage_p={{{1,1},{10,4},{11,6},{20,11},{21,13},{30,20},{60,20}},{{1,3*18},{10,6*18},{11,7*18},{20,12*18},{21,12*18}}},--减少来自土系的伤害
		},
		--190技能-水-减火系伤害
		water={
		fire2medamage_p={{{1,1},{10,4},{11,6},{20,11},{21,13},{30,20},{60,20}},{{1,3*18},{10,6*18},{11,7*18},{20,12*18},{21,12*18}}},--减少来自火系的伤害
		},
		--190技能-火-减金系伤害
		fire={
		metal2medamage_p={{{1,1},{10,4},{11,6},{20,11},{21,13},{30,20},{60,20}},{{1,3*18},{10,6*18},{11,7*18},{20,12*18},{21,12*18}}},--减少来自金系的伤害
		},
		--190技能-土-减水系伤害
		earth={
		water2medamage_p={{{1,1},{10,4},{11,6},{20,11},{21,13},{30,20},{60,20}},{{1,3*18},{10,6*18},{11,7*18},{20,12*18},{21,12*18}}},--减少来自水系的伤害
		},
	 
		
		--天怒狂澜
		--效果：攻击技能、生命值增加
		tiannukuanglan={
			lifemax_yan_p={{{1,1},{25,25},{26,27},{27,30},{30,30},{31,30}},{{1,-1},{30,-1}}},
			skill_enhance={{{1,5},{2,10},{12,30},{13,33},{14,35},{15,38},{16,40},{17,43},{18,45},{19,48},{20,50},{25,65},{26,70},{27,75},{28,80},{30,80},{31,80}},{{1,-1},{2,-1}}},
			},
	 
	 
}

