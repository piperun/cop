#==============================================================================
# ■ Scene_Battle (分割定義 5)
#------------------------------------------------------------------------------
# 　バトル画面の処理を行うクラスです。
#==============================================================================

class Scene_Battle
  #--------------------------------------------------------------------------
  # ● 数字画像の処理
  #--------------------------------------------------------------------------
  def num_turn  #ターン数
    if @turn > 99
      @turn_keta3 = @turn / 100
      @turn_keta2 = (@turn / 10) % 10
      @turn_keta1 = @turn % 10
    elsif @turn > 9
      @turn_keta2 = @turn / 10
      @turn_keta1 = @turn % 10
    else
      @turn_keta1 = @turn
    end
    if @turn > 999
      @turn_keta1 = 9
      @turn_keta2 = 9
      @turn_keta3 = 9
    end
    @num_turn_keta1 = Sprite.new
    @num_turn_keta1.bitmap = RPG::Cache.picture("Num#{@turn_keta1}_W")
    @num_turn_keta1.x = 88
    @num_turn_keta1.y = 32
    @num_turn_keta1.z = 251
    if @turn > 9
      @num_turn_keta2 = Sprite.new
      @num_turn_keta2.bitmap = RPG::Cache.picture("Num#{@turn_keta2}_W")
      @num_turn_keta2.x = 80
      @num_turn_keta2.y = 32
      @num_turn_keta2.z = 251
    end
    if @turn > 99
      @num_turn_keta3 = Sprite.new
      @num_turn_keta3.bitmap = RPG::Cache.picture("Num#{@turn_keta3}_W")
      @num_turn_keta3.x = 72
      @num_turn_keta3.y = 32
      @num_turn_keta3.z = 251
    end
  end
  def player_name  #プレイヤーの名前
    @player_name = Sprite.new
    @player_name.bitmap = RPG::Cache.picture("Battle_name_player")
    @player_name.x = 492
    @player_name.y = 303
    @player_name.z = 201
  end
  def num_player_lv  #プレイヤーのLV
    if @player.level > 9
      @player_lv_keta2 = @player.level / 10
      @player_lv_keta1 = @player.level % 10
    else
      @player_lv_keta1 = @player.level
    end
    @num_player_lv_keta1 = Sprite.new
    @num_player_lv_keta1.bitmap = RPG::Cache.picture("Num#{@player_lv_keta1}_W")
    @num_player_lv_keta1.x = 538
    @num_player_lv_keta1.y = 322
    @num_player_lv_keta1.z = 201
    if @player.level > 9
      @num_player_lv_keta2 = Sprite.new
      @num_player_lv_keta2.bitmap = RPG::Cache.picture("Num#{@player_lv_keta2}_W")
      @num_player_lv_keta2.x = 530
      @num_player_lv_keta2.y = 322
      @num_player_lv_keta2.z = 201
    end
  end
  def num_player_hp  #プレイヤーのHP
    if @player.hp > 999
      @player_hp_keta4 = @player.hp / 1000
      @player_hp_keta3 = (@player.hp / 100) % 10
      @player_hp_keta2 = (@player.hp / 10) % 10
      @player_hp_keta1 = @player.hp % 10
    elsif @player.hp > 99
      @player_hp_keta3 = @player.hp / 100
      @player_hp_keta2 = (@player.hp / 10) % 10
      @player_hp_keta1 = @player.hp % 10
    elsif @player.hp > 9
      @player_hp_keta2 = @player.hp / 10
      @player_hp_keta1 = @player.hp % 10
    else
      @player_hp_keta1 = @player.hp
    end
    if @player.hp == @player.maxhp
      c = "Y"
    else
      c = "W"
    end
    if @num_color_change == "R"
      c = "R"
    elsif @num_color_change == "G"
      c = "G"
    end
    @num_player_hp_keta1 = Sprite.new
    @num_player_hp_keta1.bitmap = RPG::Cache.picture("Num#{@player_hp_keta1}_#{c}")
    @num_player_hp_keta1.x = 611
    @num_player_hp_keta1.y = 322
    @num_player_hp_keta1.z = 201
    if @player.hp > 9
      @num_player_hp_keta2 = Sprite.new
      @num_player_hp_keta2.bitmap = RPG::Cache.picture("Num#{@player_hp_keta2}_#{c}")
      @num_player_hp_keta2.x = 603
      @num_player_hp_keta2.y = 322
      @num_player_hp_keta2.z = 201
    end
    if @player.hp > 99
      @num_player_hp_keta3 = Sprite.new
      @num_player_hp_keta3.bitmap = RPG::Cache.picture("Num#{@player_hp_keta3}_#{c}")
      @num_player_hp_keta3.x = 595
      @num_player_hp_keta3.y = 322
      @num_player_hp_keta3.z = 201
    end
    if @player.hp > 999
      @num_player_hp_keta4 = Sprite.new
      @num_player_hp_keta4.bitmap = RPG::Cache.picture("Num#{@player_hp_keta4}_#{c}")
      @num_player_hp_keta4.x = 587
      @num_player_hp_keta4.y = 322
      @num_player_hp_keta4.z = 201
    end
  end
  def num_player_ap  #プレイヤーのAP
    if @player_ap > 999
      @player_ap_keta4 = @player_ap / 1000
      @player_ap_keta3 = (@player_ap / 100) % 10
      @player_ap_keta2 = (@player_ap / 10) % 10
      @player_ap_keta1 = @player_ap % 10
    elsif @player_ap > 99
      @player_ap_keta3 = @player_ap / 100
      @player_ap_keta2 = (@player_ap / 10) % 10
      @player_ap_keta1 = @player_ap % 10
    elsif @player_ap > 9
      @player_ap_keta2 = @player_ap / 10
      @player_ap_keta1 = @player_ap % 10
    else
      @player_ap_keta1 = @player_ap
    end
    if @player_ap == @player_maxap
      c = "Y"
    else
      c = "W"
    end
    @num_player_ap_keta1 = Sprite.new
    @num_player_ap_keta1.bitmap = RPG::Cache.picture("Num#{@player_ap_keta1}_#{c}")
    @num_player_ap_keta1.x = 542
    @num_player_ap_keta1.y = 345
    @num_player_ap_keta1.z = 201
    if @player_ap > 9
      @num_player_ap_keta2 = Sprite.new
      @num_player_ap_keta2.bitmap = RPG::Cache.picture("Num#{@player_ap_keta2}_#{c}")
      @num_player_ap_keta2.x = 534
      @num_player_ap_keta2.y = 345
      @num_player_ap_keta2.z = 201
    end
    if @player_ap > 99
      @num_player_ap_keta3 = Sprite.new
      @num_player_ap_keta3.bitmap = RPG::Cache.picture("Num#{@player_ap_keta3}_#{c}")
      @num_player_ap_keta3.x = 526
      @num_player_ap_keta3.y = 345
      @num_player_ap_keta3.z = 201
    end
    if @player_ap > 999
      @num_player_ap_keta4 = Sprite.new
      @num_player_ap_keta4.bitmap = RPG::Cache.picture("Num#{@player_ap_keta4}_#{c}")
      @num_player_ap_keta4.x = 518
      @num_player_ap_keta4.y = 345
      @num_player_ap_keta4.z = 201
    end
  end
  def num_player_vit  #プレイヤーのVIT
    if @player_vit > 999
      @player_vit_keta4 = @player_vit / 1000
      @player_vit_keta3 = (@player_vit / 100) % 10
      @player_vit_keta2 = (@player_vit / 10) % 10
      @player_vit_keta1 = @player_vit % 10
    elsif @player_vit > 99
      @player_vit_keta3 = @player_vit / 100
      @player_vit_keta2 = (@player_vit / 10) % 10
      @player_vit_keta1 = @player_vit % 10
    elsif @player_vit > 9
      @player_vit_keta2 = @player_vit / 10
      @player_vit_keta1 = @player_vit % 10
    else
      @player_vit_keta1 = @player_vit
    end
    @num_player_vit_keta1 = Sprite.new
    @num_player_vit_keta1.bitmap = RPG::Cache.picture("Num#{@player_vit_keta1}_W")
    @num_player_vit_keta1.x = 615
    @num_player_vit_keta1.y = 345
    @num_player_vit_keta1.z = 201
    if @player_vit > 9
      @num_player_vit_keta2 = Sprite.new
      @num_player_vit_keta2.bitmap = RPG::Cache.picture("Num#{@player_vit_keta2}_W")
      @num_player_vit_keta2.x = 607
      @num_player_vit_keta2.y = 345
      @num_player_vit_keta2.z = 201
    end
    if @player_vit > 99
      @num_player_vit_keta3 = Sprite.new
      @num_player_vit_keta3.bitmap = RPG::Cache.picture("Num#{@player_vit_keta3}_W")
      @num_player_vit_keta3.x = 599
      @num_player_vit_keta3.y = 345
      @num_player_vit_keta3.z = 201
    end
    if @player_vit > 999
      @num_player_vit_keta4 = Sprite.new
      @num_player_vit_keta4.bitmap = RPG::Cache.picture("Num#{@player_vit_keta4}_W")
      @num_player_vit_keta4.x = 591
      @num_player_vit_keta4.y = 345
      @num_player_vit_keta4.z = 201
    end
  end
  def num_player_ap_recoveryturn #プレイヤーのAPが回復するターン
    @num_player_ap_recoveryturn_keta1.dispose if @num_player_ap_recoveryturn_keta1 != nil
    @num_player_ap_recoveryturn_keta2.dispose if @num_player_ap_recoveryturn_keta2 != nil
    if @player_ap_recoveryturn > 9
      @player_ap_recoveryturn_keta2 = @player_ap_recoveryturn / 10
      @player_ap_recoveryturn_keta1 = @player_ap_recoveryturn % 10
    else
      @player_ap_recoveryturn_keta1 = @player_ap_recoveryturn
    end
    @num_player_ap_recoveryturn_keta1 = Sprite.new
    @num_player_ap_recoveryturn_keta1.bitmap = RPG::Cache.picture("Num#{@player_ap_recoveryturn_keta1}_G")
    @num_player_ap_recoveryturn_keta1.x = 486
    @num_player_ap_recoveryturn_keta1.y = 369
    @num_player_ap_recoveryturn_keta1.z = 201
    if @player_ap_recoveryturn > 9
      @num_player_ap_recoveryturn_keta2 = Sprite.new
      @num_player_ap_recoveryturn_keta2.bitmap = RPG::Cache.picture("Num#{@player_ap_recoveryturn_keta2}_G")
      @num_player_ap_recoveryturn_keta2.x = 478
      @num_player_ap_recoveryturn_keta2.y = 369
      @num_player_ap_recoveryturn_keta2.z = 201
    end
  end

  def num_enemy_lv  #エネミーのLV
    if @enemy_level > 9
      @enemy_lv_keta2 = @enemy_level / 10
      @enemy_lv_keta1 = @enemy_level % 10
    else
      @enemy_lv_keta1 = @enemy_level
    end
    @num_enemy_lv_keta1 = Sprite.new
    if @enemy_lv_blind == "on"
      @num_enemy_lv_keta1.bitmap = RPG::Cache.picture("Num_Question_W")
    else
      @num_enemy_lv_keta1.bitmap = RPG::Cache.picture("Num#{@enemy_lv_keta1}_W")
    end
    @num_enemy_lv_keta1.x = 538
    @num_enemy_lv_keta1.y = 42
    @num_enemy_lv_keta1.z = 201
    if @enemy_level > 9
      @num_enemy_lv_keta2 = Sprite.new
      if @enemy_lv_blind == "on"
        @num_enemy_lv_keta2.bitmap = RPG::Cache.picture("Num_Question_W")
      else
        @num_enemy_lv_keta2.bitmap = RPG::Cache.picture("Num#{@enemy_lv_keta2}_W")
      end
      @num_enemy_lv_keta2.x = 530
      @num_enemy_lv_keta2.y = 42
      @num_enemy_lv_keta2.z = 201
    end
  end
  def num_enemy_hp  #エネミーのHP
    if @enemy.hp > 999
      @enemy_hp_keta4 = @enemy.hp / 1000
      @enemy_hp_keta3 = (@enemy.hp / 100) % 10
      @enemy_hp_keta2 = (@enemy.hp / 10) % 10
      @enemy_hp_keta1 = @enemy.hp % 10
    elsif @enemy.hp > 99
      @enemy_hp_keta3 = @enemy.hp / 100
      @enemy_hp_keta2 = (@enemy.hp / 10) % 10
      @enemy_hp_keta1 = @enemy.hp % 10
    elsif @enemy.hp > 9
      @enemy_hp_keta2 = @enemy.hp / 10
      @enemy_hp_keta1 = @enemy.hp % 10
    else
      @enemy_hp_keta1 = @enemy.hp
    end
    if @enemy.hp == @enemy.maxhp
      c = "Y"
    else
      c = "W"
    end
    if @num_color_change == "R"
      c = "R"
    end
    @num_enemy_hp_keta1 = Sprite.new
    if @enemy_hp_blind == "on"
      @num_enemy_hp_keta1.bitmap = RPG::Cache.picture("Num_Question_#{c}")
    else
      @num_enemy_hp_keta1.bitmap = RPG::Cache.picture("Num#{@enemy_hp_keta1}_#{c}")
    end
    @num_enemy_hp_keta1.x = 611
    @num_enemy_hp_keta1.y = 42
    @num_enemy_hp_keta1.z = 201
    if @enemy.hp > 9
      @num_enemy_hp_keta2 = Sprite.new
      if @enemy_hp_blind == "on"
        @num_enemy_hp_keta2.bitmap = RPG::Cache.picture("Num_Question_#{c}")
      else
        @num_enemy_hp_keta2.bitmap = RPG::Cache.picture("Num#{@enemy_hp_keta2}_#{c}")
      end
      @num_enemy_hp_keta2.x = 603
      @num_enemy_hp_keta2.y = 42
      @num_enemy_hp_keta2.z = 201
    end
    if @enemy.hp > 99
      @num_enemy_hp_keta3 = Sprite.new
      if @enemy_hp_blind == "on"
        @num_enemy_hp_keta3.bitmap = RPG::Cache.picture("Num_Question_#{c}")
      else
        @num_enemy_hp_keta3.bitmap = RPG::Cache.picture("Num#{@enemy_hp_keta3}_#{c}")
      end
      @num_enemy_hp_keta3.x = 595
      @num_enemy_hp_keta3.y = 42
      @num_enemy_hp_keta3.z = 201
    end
    if @enemy.hp > 999
      @num_enemy_hp_keta4 = Sprite.new
      if @enemy_hp_blind == "on"
        @num_enemy_hp_keta4.bitmap = RPG::Cache.picture("Num_Question_#{c}")
      else
        @num_enemy_hp_keta4.bitmap = RPG::Cache.picture("Num#{@enemy_hp_keta4}_#{c}")
      end
      @num_enemy_hp_keta4.x = 587
      @num_enemy_hp_keta4.y = 42
      @num_enemy_hp_keta4.z = 201
    end
  end
  def num_enemy_ap  #エネミーのAP
    if @enemy_ap > 999
      @enemy_ap_keta4 = @enemy_ap / 1000
      @enemy_ap_keta3 = (@enemy_ap / 100) % 10
      @enemy_ap_keta2 = (@enemy_ap / 10) % 10
      @enemy_ap_keta1 = @enemy_ap % 10
    elsif @enemy_ap > 99
      @enemy_ap_keta3 = @enemy_ap / 100
      @enemy_ap_keta2 = (@enemy_ap / 10) % 10
      @enemy_ap_keta1 = @enemy_ap % 10
    elsif @enemy_ap > 9
      @enemy_ap_keta2 = @enemy_ap / 10
      @enemy_ap_keta1 = @enemy_ap % 10
    else
      @enemy_ap_keta1 = @enemy_ap
    end
    if @enemy_ap == @enemy_maxap
      c = "Y"
    else
      c = "W"
    end
    @num_enemy_ap_keta1 = Sprite.new
    if @enemy_ap_blind == "on"
      @num_enemy_ap_keta1.bitmap = RPG::Cache.picture("Num_Question_#{c}")
    else
      @num_enemy_ap_keta1.bitmap = RPG::Cache.picture("Num#{@enemy_ap_keta1}_#{c}")
    end
    @num_enemy_ap_keta1.x = 542
    @num_enemy_ap_keta1.y = 65
    @num_enemy_ap_keta1.z = 201
    if @enemy_ap > 9
      @num_enemy_ap_keta2 = Sprite.new
      if @enemy_ap_blind == "on"
        @num_enemy_ap_keta2.bitmap = RPG::Cache.picture("Num_Question_#{c}")
      else
        @num_enemy_ap_keta2.bitmap = RPG::Cache.picture("Num#{@enemy_ap_keta2}_#{c}")
      end
      @num_enemy_ap_keta2.x = 534
      @num_enemy_ap_keta2.y = 65
      @num_enemy_ap_keta2.z = 201
    end
    if @enemy_ap > 99
      @num_enemy_ap_keta3 = Sprite.new
      if @enemy_ap_blind == "on"
        @num_enemy_ap_keta3.bitmap = RPG::Cache.picture("Num_Question_#{c}")
      else
        @num_enemy_ap_keta3.bitmap = RPG::Cache.picture("Num#{@enemy_ap_keta3}_#{c}")
      end
      @num_enemy_ap_keta3.x = 526
      @num_enemy_ap_keta3.y = 65
      @num_enemy_ap_keta3.z = 201
    end
    if @enemy_ap > 999
      @num_enemy_ap_keta4 = Sprite.new
      if @enemy_ap_blind == "on"
        @num_enemy_ap_keta4.bitmap = RPG::Cache.picture("Num_Question_#{c}")
      else
        @num_enemy_ap_keta4.bitmap = RPG::Cache.picture("Num#{@enemy_ap_keta4}_#{c}")
      end
      @num_enemy_ap_keta4.x = 518
      @num_enemy_ap_keta4.y = 65
      @num_enemy_ap_keta4.z = 201
    end
  end
  def num_enemy_vit  #エネミーのVIT
    if @enemy_vit > 999
      @enemy_vit_keta4 = @enemy_vit / 1000
      @enemy_vit_keta3 = (@enemy_vit / 100) % 10
      @enemy_vit_keta2 = (@enemy_vit / 10) % 10
      @enemy_vit_keta1 = @enemy_vit % 10
    elsif @enemy_vit > 99
      @enemy_vit_keta3 = @enemy_vit / 100
      @enemy_vit_keta2 = (@enemy_vit / 10) % 10
      @enemy_vit_keta1 = @enemy_vit % 10
    elsif @enemy_vit > 9
      @enemy_vit_keta2 = @enemy_vit / 10
      @enemy_vit_keta1 = @enemy_vit % 10
    else
      @enemy_vit_keta1 = @enemy_vit
    end
    @num_enemy_vit_keta1 = Sprite.new
    if @enemy_vit_blind == "on"
      @num_enemy_vit_keta1.bitmap = RPG::Cache.picture("Num_Question_W")
    else
      @num_enemy_vit_keta1.bitmap = RPG::Cache.picture("Num#{@enemy_vit_keta1}_W")
    end
    @num_enemy_vit_keta1.x = 615
    @num_enemy_vit_keta1.y = 65
    @num_enemy_vit_keta1.z = 201
    if @enemy_vit > 9
      @num_enemy_vit_keta2 = Sprite.new
      if @enemy_vit_blind == "on"
        @num_enemy_vit_keta2.bitmap = RPG::Cache.picture("Num_Question_W")
      else
        @num_enemy_vit_keta2.bitmap = RPG::Cache.picture("Num#{@enemy_vit_keta2}_W")
      end
      @num_enemy_vit_keta2.x = 607
      @num_enemy_vit_keta2.y = 65
      @num_enemy_vit_keta2.z = 201
    end
    if @enemy_vit > 99
      @num_enemy_vit_keta3 = Sprite.new
      if @enemy_vit_blind == "on"
        @num_enemy_vit_keta3.bitmap = RPG::Cache.picture("Num_Question_W")
      else
        @num_enemy_vit_keta3.bitmap = RPG::Cache.picture("Num#{@enemy_vit_keta3}_W")
      end
      @num_enemy_vit_keta3.x = 599
      @num_enemy_vit_keta3.y = 65
      @num_enemy_vit_keta3.z = 201
    end
    if @enemy_vit > 999
      @num_enemy_vit_keta4 = Sprite.new
      if @enemy_vit_blind == "on"
        @num_enemy_vit_keta4.bitmap = RPG::Cache.picture("Num_Question_W")
      else
        @num_enemy_vit_keta4.bitmap = RPG::Cache.picture("Num#{@enemy_vit_keta4}_W")
      end
      @num_enemy_vit_keta4.x = 591
      @num_enemy_vit_keta4.y = 65
      @num_enemy_vit_keta4.z = 201
    end
  end
  def num_enemy_ap_recoveryturn #エネミーのAPが回復するターン
    if @enemy_ap_recoveryturn > 9
      @enemy_ap_recoveryturn_keta2 = @enemy_ap_recoveryturn / 10
      @enemy_ap_recoveryturn_keta1 = @enemy_ap_recoveryturn % 10
    else
      @enemy_ap_recoveryturn_keta1 = @enemy_ap_recoveryturn
    end
    @num_enemy_ap_recoveryturn_keta1 = Sprite.new
    @num_enemy_ap_recoveryturn_keta1.bitmap = RPG::Cache.picture("Num#{@enemy_ap_recoveryturn_keta1}_G")
    @num_enemy_ap_recoveryturn_keta1.x = 486
    @num_enemy_ap_recoveryturn_keta1.y = 89
    @num_enemy_ap_recoveryturn_keta1.z = 201
    if @enemy_ap_recoveryturn > 9
      @num_enemy_ap_recoveryturn_keta2 = Sprite.new
      @num_enemy_ap_recoveryturn_keta2.bitmap = RPG::Cache.picture("Num#{@enemy_ap_recoveryturn_keta2}_G")
      @num_enemy_ap_recoveryturn_keta2.x = 478
      @num_enemy_ap_recoveryturn_keta2.y = 89
      @num_enemy_ap_recoveryturn_keta2.z = 201
    end
  end

  def num_hit #命中率
    if @hit > 9
      @hit_keta2 = @hit / 10
      @hit_keta1 = @hit % 10
    else
      @hit_keta1 = @hit
    end
    if @hit == 100
      @hit_keta1 = 0
      @hit_keta2 = 0
      @hit_keta3 = 1
    end
    if @num_color_change_hit == "P"
      a = "P"
    else
      a = "W"
    end
    @num_hit_keta1 = Sprite.new
    @num_hit_keta1.bitmap = RPG::Cache.picture("Num#{@hit_keta1}_#{a}")
    @num_hit_keta1.x = 546
    @num_hit_keta1.y = 176
    @num_hit_keta1.z = 251
    if @hit > 9
      @num_hit_keta2 = Sprite.new
      @num_hit_keta2.bitmap = RPG::Cache.picture("Num#{@hit_keta2}_#{a}")
      @num_hit_keta2.x = 538
      @num_hit_keta2.y = 176
      @num_hit_keta2.z = 251
    end
    if @hit == 100
      @num_hit_keta3 = Sprite.new
      @num_hit_keta3.bitmap = RPG::Cache.picture("Num#{@hit_keta3}_#{a}")
      @num_hit_keta3.x = 530
      @num_hit_keta3.y = 176
      @num_hit_keta3.z = 251
    end
  end
  def num_enemy_damage  #与ダメージ
    if @enemy_damage > 99
      @enemy_damage_keta3 = @enemy_damage / 100
      @enemy_damage_keta2 = (@enemy_damage / 10) % 10
      @enemy_damage_keta1 = @enemy_damage % 10
    elsif @enemy_damage > 9
      @enemy_damage_keta2 = @enemy_damage / 10
      @enemy_damage_keta1 = @enemy_damage % 10
    else
      @enemy_damage_keta1 = @enemy_damage
    end
    if @enemy_damage > 999
      @enemy_damage_keta1 = 9
      @enemy_damage_keta2 = 9
      @enemy_damage_keta3 = 9
    end
    if @num_color_change_enemy_damage == "P"
      a = "P"
    else
      a = "W"
    end
    @num_enemy_damage_keta1 = Sprite.new
    @num_enemy_damage_keta1.bitmap = RPG::Cache.picture("Num#{@enemy_damage_keta1}_#{a}")
    @num_enemy_damage_keta1.x = 557
    @num_enemy_damage_keta1.y = 208
    @num_enemy_damage_keta1.z = 251
    if @enemy_damage > 9
      @num_enemy_damage_keta2 = Sprite.new
      @num_enemy_damage_keta2.bitmap = RPG::Cache.picture("Num#{@enemy_damage_keta2}_#{a}")
      @num_enemy_damage_keta2.x = 549
      @num_enemy_damage_keta2.y = 208
      @num_enemy_damage_keta2.z = 251
    end
    if @enemy_damage > 99
      @num_enemy_damage_keta3 = Sprite.new
      @num_enemy_damage_keta3.bitmap = RPG::Cache.picture("Num#{@enemy_damage_keta3}_#{a}")
      @num_enemy_damage_keta3.x = 541
      @num_enemy_damage_keta3.y = 208
      @num_enemy_damage_keta3.z = 251
    end
  end
  def num_avoid #回避率
    if @avoid > 9
      @avoid_keta2 = @avoid / 10
      @avoid_keta1 = @avoid % 10
    else
      @avoid_keta1 = @avoid
    end
    if @avoid == 100
      @avoid_keta1 = 0
      @avoid_keta2 = 0
      @avoid_keta3 = 1
    end
    if @num_color_change_avoid == "P"
      a = "P"
    else
      a = "W"
    end
    @num_avoid_keta1 = Sprite.new
    @num_avoid_keta1.bitmap = RPG::Cache.picture("Num#{@avoid_keta1}_#{a}")
    @num_avoid_keta1.x = 546
    @num_avoid_keta1.y = 240
    @num_avoid_keta1.z = 251
    if @avoid > 9
      @num_avoid_keta2 = Sprite.new
      @num_avoid_keta2.bitmap = RPG::Cache.picture("Num#{@avoid_keta2}_#{a}")
      @num_avoid_keta2.x = 538
      @num_avoid_keta2.y = 240
      @num_avoid_keta2.z = 251
    end
    if @avoid == 100
      @num_avoid_keta3 = Sprite.new
      @num_avoid_keta3.bitmap = RPG::Cache.picture("Num#{@avoid_keta3}_#{a}")
      @num_avoid_keta3.x = 530
      @num_avoid_keta3.y = 240
      @num_avoid_keta3.z = 251
    end
  end
  def num_player_damage  #被ダメージ
    if @player_damage > 99
      @player_damage_keta3 = @player_damage / 100
      @player_damage_keta2 = (@player_damage / 10) % 10
      @player_damage_keta1 = @player_damage % 10
    elsif @player_damage > 9
      @player_damage_keta2 = @player_damage / 10
      @player_damage_keta1 = @player_damage % 10
    else
      @player_damage_keta1 = @player_damage
    end
    if @player_damage > 999
      @player_damage_keta1 = 9
      @player_damage_keta2 = 9
      @player_damage_keta3 = 9
    end
    if @num_color_change_player_damage == "P"
      a = "P"
    else
      a = "W"
    end
    @num_player_damage_keta1 = Sprite.new
    @num_player_damage_keta1.bitmap = RPG::Cache.picture("Num#{@player_damage_keta1}_#{a}")
    @num_player_damage_keta1.x = 557
    @num_player_damage_keta1.y = 272
    @num_player_damage_keta1.z = 251
    if @player_damage > 9
      @num_player_damage_keta2 = Sprite.new
      @num_player_damage_keta2.bitmap = RPG::Cache.picture("Num#{@player_damage_keta2}_#{a}")
      @num_player_damage_keta2.x = 549
      @num_player_damage_keta2.y = 272
      @num_player_damage_keta2.z = 251
    end
    if @player_damage > 99
      @num_player_damage_keta3 = Sprite.new
      @num_player_damage_keta3.bitmap = RPG::Cache.picture("Num#{@player_damage_keta3}_#{a}")
      @num_player_damage_keta3.x = 541
      @num_player_damage_keta3.y = 272
      @num_player_damage_keta3.z = 251
    end
  end
  def num_escape  #逃走時の消費VIT
    if @escape_vit > 99
      @escape_vit_keta3 = @escape_vit / 100
      @escape_vit_keta2 = (@escape_vit / 10) % 10
      @escape_vit_keta1 = @escape_vit % 10
    elsif @escape_vit > 9
      @escape_vit_keta2 = @escape_vit / 10
      @escape_vit_keta1 = @escape_vit % 10
    else
      @escape_vit_keta1 = @escape_vit
    end
    @num_escape_vit_keta1 = Sprite.new
    @num_escape_vit_keta1.bitmap = RPG::Cache.picture("Num#{@escape_vit_keta1}_W")
    @num_escape_vit_keta1.x = 408
    @num_escape_vit_keta1.y = 316
    @num_escape_vit_keta1.z = 351
    if @escape_vit > 9
      @num_escape_vit_keta2 = Sprite.new
      @num_escape_vit_keta2.bitmap = RPG::Cache.picture("Num#{@escape_vit_keta2}_W")
      @num_escape_vit_keta2.x = 400
      @num_escape_vit_keta2.y = 316
      @num_escape_vit_keta2.z = 351
    end
    if @escape_vit > 99
      @num_escape_vit_keta3 = Sprite.new
      @num_escape_vit_keta3.bitmap = RPG::Cache.picture("Num#{@escape_vit_keta3}_W")
      @num_escape_vit_keta3.x = 392
      @num_escape_vit_keta3.y = 316
      @num_escape_vit_keta3.z = 351
    end
    @num_escape_vit_keta4 = Sprite.new
    @num_escape_vit_keta4.bitmap = RPG::Cache.picture("Num_Minus_W")
    @num_escape_vit_keta4.x = 384
    @num_escape_vit_keta4.y = 316
    @num_escape_vit_keta4.z = 351
  end
  def num_ap_cost_attack  #攻撃時の消費AP
    @num_ap_cost_attack_keta1.dispose if @num_ap_cost_attack_keta1 != nil  #攻撃時の消費AP
    @num_ap_cost_attack_keta2.dispose if @num_ap_cost_attack_keta2 != nil
    @num_ap_cost_attack_keta3.dispose if @num_ap_cost_attack_keta3 != nil
    @num_ap_cost_attack_keta4.dispose if @num_ap_cost_attack_keta4 != nil

    if @ap_cost_attack > 99
      @ap_cost_attack_keta3 = @ap_cost_attack / 100
      @ap_cost_attack_keta2 = (@ap_cost_attack / 10) % 10
      @ap_cost_attack_keta1 = @ap_cost_attack % 10
    elsif @ap_cost_attack > 9
      @ap_cost_attack_keta2 = @ap_cost_attack / 10
      @ap_cost_attack_keta1 = @ap_cost_attack % 10
    else
      @ap_cost_attack_keta1 = @ap_cost_attack
    end
    if @ap_cost_attack > @player_ap
      a = "R"
    else
      a = "W"
    end
    @num_ap_cost_attack_keta1 = Sprite.new
    @num_ap_cost_attack_keta1.bitmap = RPG::Cache.picture("Num#{@ap_cost_attack_keta1}_#{a}")
    @num_ap_cost_attack_keta1.x = 408
    @num_ap_cost_attack_keta1.y = 316
    @num_ap_cost_attack_keta1.z = 351
    if @ap_cost_attack > 9
      @num_ap_cost_attack_keta2 = Sprite.new
      @num_ap_cost_attack_keta2.bitmap = RPG::Cache.picture("Num#{@ap_cost_attack_keta2}_#{a}")
      @num_ap_cost_attack_keta2.x = 400
      @num_ap_cost_attack_keta2.y = 316
      @num_ap_cost_attack_keta2.z = 351
    end
    if @ap_cost_attack > 99
      @num_ap_cost_attack_keta3 = Sprite.new
      @num_ap_cost_attack_keta3.bitmap = RPG::Cache.picture("Num#{@ap_cost_attack_keta3}_#{a}")
      @num_ap_cost_attack_keta3.x = 392
      @num_ap_cost_attack_keta3.y = 316
      @num_ap_cost_attack_keta3.z = 351
    end
    @num_ap_cost_attack_keta4 = Sprite.new
    @num_ap_cost_attack_keta4.bitmap = RPG::Cache.picture("Num_Minus_#{a}")
    @num_ap_cost_attack_keta4.x = 384
    @num_ap_cost_attack_keta4.y = 316
    @num_ap_cost_attack_keta4.z = 351
  end
  def num_point_attack  #攻撃時の増加ポイント
    @num_point_attack.dispose if @num_point_attack != nil  #攻撃時の増加ポイント
    case @attack_command_index
      when 1  #器用さ
        @point_attack = @ap_cost_dex_attack
      when 2  #腕力
        @point_attack = @ap_cost_str_attack
      when 3  #素早さ
        @point_attack = @ap_cost_agi_attack
      when 4  #守り
        @point_attack = @ap_cost_def_attack
      end
    @num_point_attack = Sprite.new
    @num_point_attack.bitmap = RPG::Cache.picture("Num#{@point_attack}_W")
    @num_point_attack.x = 324
    @num_point_attack.y = 292
    @num_point_attack.z = 351
  end
  def num_ap_cost_flash  #閃光斬り時の消費AP
    @num_ap_cost_flash_keta1.dispose if @num_ap_cost_flash_keta1 != nil  #閃光斬り時の消費AP
    @num_ap_cost_flash_keta2.dispose if @num_ap_cost_flash_keta2 != nil
    @num_ap_cost_flash_keta3.dispose if @num_ap_cost_flash_keta3 != nil
    @num_ap_cost_flash_keta4.dispose if @num_ap_cost_flash_keta4 != nil

    if @ap_cost_flash > 99
      @ap_cost_flash_keta3 = @ap_cost_flash / 100
      @ap_cost_flash_keta2 = (@ap_cost_flash / 10) % 10
      @ap_cost_flash_keta1 = @ap_cost_flash % 10
    elsif @ap_cost_flash > 9
      @ap_cost_flash_keta2 = @ap_cost_flash / 10
      @ap_cost_flash_keta1 = @ap_cost_flash % 10
    else
      @ap_cost_flash_keta1 = @ap_cost_flash
    end
    if @ap_cost_flash > @player_ap
      a = "R"
    else
      a = "W"
    end
    @num_ap_cost_flash_keta1 = Sprite.new
    @num_ap_cost_flash_keta1.bitmap = RPG::Cache.picture("Num#{@ap_cost_flash_keta1}_#{a}")
    @num_ap_cost_flash_keta1.x = 408
    @num_ap_cost_flash_keta1.y = 316
    @num_ap_cost_flash_keta1.z = 351
    if @ap_cost_flash > 9
      @num_ap_cost_flash_keta2 = Sprite.new
      @num_ap_cost_flash_keta2.bitmap = RPG::Cache.picture("Num#{@ap_cost_flash_keta2}_#{a}")
      @num_ap_cost_flash_keta2.x = 400
      @num_ap_cost_flash_keta2.y = 316
      @num_ap_cost_flash_keta2.z = 351
    end
    if @ap_cost_flash > 99
      @num_ap_cost_flash_keta3 = Sprite.new
      @num_ap_cost_flash_keta3.bitmap = RPG::Cache.picture("Num#{@ap_cost_flash_keta3}_#{a}")
      @num_ap_cost_flash_keta3.x = 392
      @num_ap_cost_flash_keta3.y = 316
      @num_ap_cost_flash_keta3.z = 351
    end
    @num_ap_cost_flash_keta4 = Sprite.new
    @num_ap_cost_flash_keta4.bitmap = RPG::Cache.picture("Num_Minus_#{a}")
    @num_ap_cost_flash_keta4.x = 384
    @num_ap_cost_flash_keta4.y = 316
    @num_ap_cost_flash_keta4.z = 351
  end
  def num_point_flash  #閃光斬り時の増加ポイント
    @num_point_flash.dispose if @num_point_flash != nil  #閃光斬り時の増加ポイント
    case @flash_command_index
      when 1  #器用さ
        @point_flash = @ap_cost_dex_flash
        @point_flash = @point_flash / 2
      when 2  #腕力
        @point_flash = @ap_cost_str_flash
        @point_flash = @point_flash / 2
      when 3  #素早さ
        @point_flash = @ap_cost_agi_flash
        @point_flash = @point_flash / 2
      when 4  #守り
        @point_flash = @ap_cost_def_flash
        @point_flash = @point_flash / 2
      end
    @num_point_flash = Sprite.new
    @num_point_flash.bitmap = RPG::Cache.picture("Num#{@point_flash}_W")
    @num_point_flash.x = 324
    @num_point_flash.y = 292
    @num_point_flash.z = 351
  end
  def num_skill_cost  #スキルの消費ポイント
    if @skill_cost > 99
      @skill_cost_keta3 = @skill_cost / 100
      @skill_cost_keta2 = (@skill_cost / 10) % 10
      @skill_cost_keta1 = @skill_cost % 10
    elsif @skill_cost > 9
      @skill_cost_keta2 = @skill_cost / 10
      @skill_cost_keta1 = @skill_cost % 10
    else
      @skill_cost_keta1 = @skill_cost
    end

    if @num_color_change == "R"
      a = "R"
    else
      a = "W"
    end

    @num_skill_cost_keta1 = Sprite.new
    @num_skill_cost_keta1.bitmap = RPG::Cache.picture("Num#{@skill_cost_keta1}_#{a}")
    @num_skill_cost_keta1.x = 408
    @num_skill_cost_keta1.y = 316
    @num_skill_cost_keta1.z = 351
    if @skill_cost > 9
      @num_skill_cost_keta2 = Sprite.new
      @num_skill_cost_keta2.bitmap = RPG::Cache.picture("Num#{@skill_cost_keta2}_#{a}")
      @num_skill_cost_keta2.x = 400
      @num_skill_cost_keta2.y = 316
      @num_skill_cost_keta2.z = 351
    end
    if @skill_cost > 99
      @num_skill_cost_keta3 = Sprite.new
      @num_skill_cost_keta3.bitmap = RPG::Cache.picture("Num#{@skill_cost_keta3}_#{a}")
      @num_skill_cost_keta3.x = 392
      @num_skill_cost_keta3.y = 316
      @num_skill_cost_keta3.z = 351
    end
    @num_skill_cost_keta4 = Sprite.new
    @num_skill_cost_keta4.bitmap = RPG::Cache.picture("Num_Minus_#{a}")
    @num_skill_cost_keta4.x = 384
    @num_skill_cost_keta4.y = 316
    @num_skill_cost_keta4.z = 351
  end
  #--------------------------------------------------------------------------
  # ● 数字画像のシェイク
  #--------------------------------------------------------------------------
  def num_enemy_hp_shake(a,b)  #エネミーのHPのシェイク
    case a
    when "x"
      @num_enemy_hp_keta1.x += b if @num_enemy_hp_keta1 != nil
      if @enemy.hp > 9
        @num_enemy_hp_keta2.x += b if @num_enemy_hp_keta2 != nil
      end
      if @enemy.hp > 99
        @num_enemy_hp_keta3.x += b if @num_enemy_hp_keta3 != nil
      end
      if @enemy.hp > 999
        @num_enemy_hp_keta4.x += b if @num_enemy_hp_keta4 != nil
      end
    when "y"
      @num_enemy_hp_keta1.y += b if @num_enemy_hp_keta1 != nil
      if @enemy.hp > 9
        @num_enemy_hp_keta2.y += b if @num_enemy_hp_keta2 != nil
      end
      if @enemy.hp > 99
        @num_enemy_hp_keta3.y += b if @num_enemy_hp_keta3 != nil
      end
      if @enemy.hp > 999
        @num_enemy_hp_keta4.y += b if @num_enemy_hp_keta4 != nil
      end
    end
  end

  def num_player_hp_shake(a,b)  #プレイヤーのHPのシェイク
    case a
    when "x"
      @num_player_hp_keta1.x += b if @num_player_hp_keta1 != nil
      if @player.hp > 9
        @num_player_hp_keta2.x += b if @num_player_hp_keta2 != nil
      end
      if @player.hp > 99
        @num_player_hp_keta3.x += b if @num_player_hp_keta3 != nil
      end
      if @player.hp > 999
        @num_player_hp_keta4.x += b if @num_player_hp_keta4 != nil
      end
    when "y"
      @num_player_hp_keta1.y += b if @num_player_hp_keta1 != nil
      if @player.hp > 9
        @num_player_hp_keta2.y += b if @num_player_hp_keta2 != nil
      end
      if @player.hp > 99
        @num_player_hp_keta3.y += b if @num_player_hp_keta3 != nil
      end
      if @player.hp > 999
        @num_player_hp_keta4.y += b if @num_player_hp_keta4 != nil
      end
    end
  end

  def num_hit_shake(a,b)  #命中率のシェイク
    case a
    when "x"
      @num_hit_keta1.x += b if @num_hit_keta1 != nil
      if @hit > 9
        @num_hit_keta2.x += b if @num_hit_keta2 != nil
      end
      if @hit == 100
        @num_hit_keta3.x += b if @num_hit_keta3 != nil
      end
    when "y"
      @num_hit_keta1.y += b if @num_hit_keta1 != nil
      if @hit > 9
        @num_hit_keta2.y += b if @num_hit_keta2 != nil
      end
      if @hit == 100
        @num_hit_keta3.y += b if @num_hit_keta3 != nil
      end
    end
  end
  def num_enemy_damage_shake(a,b)  #与ダメージのシェイク
    case a
    when "x"
      @num_enemy_damage_keta1.x += b if @num_enemy_damage_keta1 != nil
      if @enemy_damage > 9
        @num_enemy_damage_keta2.x += b if @num_enemy_damage_keta2 != nil
      end
      if @enemy_damage > 99
        @num_enemy_damage_keta3.x += b if @num_enemy_damage_keta3 != nil
      end
    when "y"
      @num_enemy_damage_keta1.y += b if @num_enemy_damage_keta1 != nil
      if @enemy_damage > 9
        @num_enemy_damage_keta2.y += b if @num_enemy_damage_keta2 != nil
      end
      if @enemy_damage > 99
        @num_enemy_damage_keta3.y += b if @num_enemy_damage_keta3 != nil
      end
    end
  end
  def num_avoid_shake(a,b)  #回避率のシェイク
    case a
    when "x"
      @num_avoid_keta1.x += b if @num_avoid_keta1 != nil
      if @avoid > 9
        @num_avoid_keta2.x += b if @num_avoid_keta2 != nil
      end
      if @avoid == 100
        @num_avoid_keta3.x += b if @num_avoid_keta3 != nil
      end
    when "y"
      @num_avoid_keta1.y += b if @num_avoid_keta1 != nil
      if @avoid > 9
        @num_avoid_keta2.y += b if @num_avoid_keta2 != nil
      end
      if @avoid == 100
        @num_avoid_keta3.y += b if @num_avoid_keta3 != nil
      end
    end
  end
  def num_player_damage_shake(a,b)  #被ダメージのシェイク
    case a
    when "x"
      @num_player_damage_keta1.x += b if @num_player_damage_keta1 != nil
      if @player_damage > 9
        @num_player_damage_keta2.x += b if @num_player_damage_keta2 != nil
      end
      if @player_damage > 99
        @num_player_damage_keta3.x += b if @num_player_damage_keta3 != nil
      end
    when "y"
      @num_player_damage_keta1.y += b if @num_player_damage_keta1 != nil
      if @player_damage > 9
        @num_player_damage_keta2.y += b if @num_player_damage_keta2 != nil
      end
      if @player_damage > 99
        @num_player_damage_keta3.y += b if @num_player_damage_keta3 != nil
      end
    end
  end
  def num_player_ap_recoveryturn_shake(a,b)  #プレイヤーのAP回復ターンのシェイク
    case a
    when "x"
      @num_player_ap_recoveryturn_keta1.x += b if @num_player_ap_recoveryturn_keta1 != nil
      if @player_ap_recoveryturn > 9
        @num_player_ap_recoveryturn_keta2.x += b if @num_player_ap_recoveryturn_keta2 != nil
      end
    when "y"
      @num_player_ap_recoveryturn_keta1.y += b if @num_player_ap_recoveryturn_keta1 != nil
      if @player_ap_recoveryturn > 9
        @num_player_ap_recoveryturn_keta2.y += b if @num_player_ap_recoveryturn_keta2 != nil
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● レベルの更新
  #--------------------------------------------------------------------------
  def player_lv_refresh #LVの更新
    @num_player_lv_keta1.dispose if @num_player_lv_keta1 != nil #プレイヤーのLV
    @num_player_lv_keta2.dispose if @num_player_lv_keta2 != nil

    num_player_lv   #プレイヤーのLV
  end
  #--------------------------------------------------------------------------
  # ● 数字画像の消去
  #--------------------------------------------------------------------------
  def num_allclear
    @num_turn_keta1.dispose if @num_turn_keta1 != nil #ターン数
    @num_turn_keta2.dispose if @num_turn_keta2 != nil
    @num_turn_keta3.dispose if @num_turn_keta3 != nil
    @player_name.dispose if @player_name != nil #プレイヤーの名前
    @num_player_lv_keta1.dispose if @num_player_lv_keta1 != nil #プレイヤーのLV
    @num_player_lv_keta2.dispose if @num_player_lv_keta2 != nil
    @num_player_hp_keta1.dispose if @num_player_hp_keta1 != nil #プレイヤーのHP
    @num_player_hp_keta2.dispose if @num_player_hp_keta2 != nil
    @num_player_hp_keta3.dispose if @num_player_hp_keta3 != nil
    @num_player_hp_keta4.dispose if @num_player_hp_keta4 != nil
    @num_player_ap_keta1.dispose if @num_player_ap_keta1 != nil #プレイヤーのAP
    @num_player_ap_keta2.dispose if @num_player_ap_keta2 != nil
    @num_player_ap_keta3.dispose if @num_player_ap_keta3 != nil
    @num_player_ap_keta4.dispose if @num_player_ap_keta4 != nil
    @num_player_vit_keta1.dispose if @num_player_vit_keta1 != nil #プレイヤーのVIT
    @num_player_vit_keta2.dispose if @num_player_vit_keta2 != nil
    @num_player_vit_keta3.dispose if @num_player_vit_keta3 != nil
    @num_player_vit_keta4.dispose if @num_player_vit_keta4 != nil
    #プレイヤーのAPが回復するターン
    @num_player_ap_recoveryturn_keta1.dispose if @num_player_ap_recoveryturn_keta1 != nil
    @num_player_ap_recoveryturn_keta2.dispose if @num_player_ap_recoveryturn_keta2 != nil
    @enemy_name.dispose if @enemy_name != nil #エネミーの名前
    @num_enemy_lv_keta1.dispose if @num_enemy_lv_keta1 != nil #エネミーのLV
    @num_enemy_lv_keta2.dispose if @num_enemy_lv_keta2 != nil
    @num_enemy_hp_keta1.dispose if @num_enemy_hp_keta1 != nil #エネミーのHP
    @num_enemy_hp_keta2.dispose if @num_enemy_hp_keta2 != nil
    @num_enemy_hp_keta3.dispose if @num_enemy_hp_keta3 != nil
    @num_enemy_hp_keta4.dispose if @num_enemy_hp_keta4 != nil
    @num_enemy_ap_keta1.dispose if @num_enemy_ap_keta1 != nil #エネミーのAP
    @num_enemy_ap_keta2.dispose if @num_enemy_ap_keta2 != nil
    @num_enemy_ap_keta3.dispose if @num_enemy_ap_keta3 != nil
    @num_enemy_ap_keta4.dispose if @num_enemy_ap_keta4 != nil
    @num_enemy_vit_keta1.dispose if @num_enemy_vit_keta1 != nil #エネミーのVIT
    @num_enemy_vit_keta2.dispose if @num_enemy_vit_keta2 != nil
    @num_enemy_vit_keta3.dispose if @num_enemy_vit_keta3 != nil
    @num_enemy_vit_keta4.dispose if @num_enemy_vit_keta4 != nil
    #エネミーのAPが回復するターン
    @num_enemy_ap_recoveryturn_keta1.dispose if @num_enemy_ap_recoveryturn_keta1 != nil
    @num_enemy_ap_recoveryturn_keta2.dispose if @num_enemy_ap_recoveryturn_keta2 != nil
    @num_hit_keta1.dispose if @num_hit_keta1 != nil #命中率
    @num_hit_keta2.dispose if @num_hit_keta2 != nil
    @num_hit_keta3.dispose if @num_hit_keta3 != nil
    @num_enemy_damage_keta1.dispose if @num_enemy_damage_keta1 != nil  #与ダメージ
    @num_enemy_damage_keta2.dispose if @num_enemy_damage_keta2 != nil
    @num_enemy_damage_keta3.dispose if @num_enemy_damage_keta3 != nil
    @num_avoid_keta1.dispose if @num_avoid_keta1 != nil #回避率
    @num_avoid_keta2.dispose if @num_avoid_keta2 != nil
    @num_avoid_keta3.dispose if @num_avoid_keta3 != nil
    @num_player_damage_keta1.dispose if @num_player_damage_keta1 != nil  #被ダメージ
    @num_player_damage_keta2.dispose if @num_player_damage_keta2 != nil
    @num_player_damage_keta3.dispose if @num_player_damage_keta3 != nil
  end

  def num_parameter_clear #パラメータの消去
    @num_hit_keta1.dispose if @num_hit_keta1 != nil #命中率
    @num_hit_keta2.dispose if @num_hit_keta2 != nil
    @num_hit_keta3.dispose if @num_hit_keta3 != nil
    @num_enemy_damage_keta1.dispose if @num_enemy_damage_keta1 != nil  #与ダメージ
    @num_enemy_damage_keta2.dispose if @num_enemy_damage_keta2 != nil
    @num_enemy_damage_keta3.dispose if @num_enemy_damage_keta3 != nil
    @num_avoid_keta1.dispose if @num_avoid_keta1 != nil #回避率
    @num_avoid_keta2.dispose if @num_avoid_keta2 != nil
    @num_avoid_keta3.dispose if @num_avoid_keta3 != nil
    @num_player_damage_keta1.dispose if @num_player_damage_keta1 != nil  #被ダメージ
    @num_player_damage_keta2.dispose if @num_player_damage_keta2 != nil
    @num_player_damage_keta3.dispose if @num_player_damage_keta3 != nil
  end

  def num_enemy_hp_clear #エネミーのHPの消去
    @num_enemy_hp_keta1.dispose if @num_enemy_hp_keta1 != nil #エネミーのHP
    @num_enemy_hp_keta2.dispose if @num_enemy_hp_keta2 != nil
    @num_enemy_hp_keta3.dispose if @num_enemy_hp_keta3 != nil
    @num_enemy_hp_keta4.dispose if @num_enemy_hp_keta4 != nil
  end

  def num_player_hp_clear #プレイヤーのHPの消去
    @num_player_hp_keta1.dispose if @num_player_hp_keta1 != nil #プレイヤーのHP
    @num_player_hp_keta2.dispose if @num_player_hp_keta2 != nil
    @num_player_hp_keta3.dispose if @num_player_hp_keta3 != nil
    @num_player_hp_keta4.dispose if @num_player_hp_keta4 != nil
  end

end
