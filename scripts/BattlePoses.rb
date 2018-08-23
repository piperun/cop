module CG
	POSES = {
    'BattleAA' => [
      control({ :x => 500, :y => 250 , :z => 250}),
      layer(:hairback, 'Battle_PoseA_hair'),
      layer(:jacketback, 'Battle_PoseA_jacket', { :if => 'switch(jacket)' }),
      layer(:body, 'Battle_PoseA_bodyA'),
      layer(:panty, 'Battle_PoseA_panty', { :if => 'switch(panty)' }),
      layer(:camisole, 'Battle_PoseA_camisole', { :if => 'switch(camisole)' }),
      layer(:skirt, 'Battle_PoseA_skirt', { :if => 'switch(skirt)' }),
      layer(:jacket, 'Battle_PoseA_jacket', { :if => 'switch(jacket)' }),
      layer(:head, 'Battle_PoseA_headA01'),
      layer(:sweat, 'Battle_PoseA_sweat', { :if => 'attr(sweat)' }),
      layer(:red, 'Battle_PoseA_red', { :if => 'attr(red)' }),
      layer(:sword, 'Battle_PoseA_sword'),
    ]
		}
end