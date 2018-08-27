class BattleSprites
	SPRITES =  {
		:player => ["name", "lvl", "hp", "vit", "ap", "recovery", "damage"],
		:enemy => ["lvl", "hp", "ap", "vit", "recovery", "damage"],
		:cost => ["attack", "flash"],
		:point => ["attack", "flash"]
		:misc => ["hit", "avoid", "escape"]
	}


end

module CONFIG
	SCENES = {Scene_Menu => "bg1", Scene_Item => "bg2"} 
#and so on
end

SCENE.each_key do | scene | next unless scene.ancestors.include? Scene_MenuBase scene.class_eval 
	do def create_background 
		@background_sprite = Sprite.new 
		@background_sprite.bitmap = Cache.menu(CONFIG::SCENES[class.self])
	end 
	end
end