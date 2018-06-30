#==============================================================================
# ■ Scene_Battle (分割定義 7)
#------------------------------------------------------------------------------
# 　バトル画面の処理を行うクラスです。
#==============================================================================

class Scene_Battle
  #--------------------------------------------------------------------------
  # ● 逃走コマンドの表示
  #--------------------------------------------------------------------------
  def escape_command_pop #逃走コマンドの表示
    @escape_command = Sprite.new
    @escape_command.bitmap = RPG::Cache.picture("Battle_frame_escape")
    @escape_command.x = 264
    @escape_command.y = 280
    @escape_command.z = 350

    if $game_temp.battle_can_escape == false  #逃走不可
      help_escape(2)
    else  #逃走可能
      help_escape(1)
      #逃走時の消費VITの計算
      @escape_vit = @enemy_level - @player.level
      if @escape_vit > 0  #敵とのレベル差が1以上
        @escape_vit = @escape_vit * 10
        if @escape_vit > @player.sp #消費VITが現在のVITを上回る場合
          @escape_vit = @player.sp
        end
      else
        @escape_vit = 0
      end
      num_escape  #逃走時の消費VIT
    end
  end
  def help_escape(a)
    @help_escape = Sprite.new
    @help_escape.bitmap = RPG::Cache.picture("Battle_help_escape0#{a}")
    @help_escape.x = 272
    @help_escape.y = 292
    @help_escape.z = 351
  end
  #--------------------------------------------------------------------------
  # ● 攻撃コマンドの表示
  #--------------------------------------------------------------------------
  def attack_command_pop #攻撃コマンドの表示
    @attack_command = Sprite.new
    case @attack_command_index
    when 1  #器用さ
      @attack_command.bitmap = RPG::Cache.picture("Battle_frame_dex0#{@command_type}")
    when 2  #腕力
      @attack_command.bitmap = RPG::Cache.picture("Battle_frame_str0#{@command_type}")
    when 3  #素早さ
      @attack_command.bitmap = RPG::Cache.picture("Battle_frame_agi0#{@command_type}")
    when 4  #守り
      @attack_command.bitmap = RPG::Cache.picture("Battle_frame_def0#{@command_type}")
    end
    @attack_command.x = 264
    @attack_command.y = 280
    @attack_command.z = 350

    ap_memori_pop #AP目盛りの表示
    ap_attack_refresh #攻撃コマンドのAPの更新
  end
  #--------------------------------------------------------------------------
  # ● 閃光斬りコマンドの表示
  #--------------------------------------------------------------------------
  def flash_command_pop #閃光斬りコマンドの表示
    @flash_command = Sprite.new
    case @flash_command_index
    when 1  #器用さ
      @flash_command.bitmap = RPG::Cache.picture("Battle_frame_dex0#{@command_type}")
    when 2  #腕力
      @flash_command.bitmap = RPG::Cache.picture("Battle_frame_str0#{@command_type}")
    when 3  #素早さ
      @flash_command.bitmap = RPG::Cache.picture("Battle_frame_agi0#{@command_type}")
    when 4  #守り
      @flash_command.bitmap = RPG::Cache.picture("Battle_frame_def0#{@command_type}")
    end
    @flash_command.x = 264
    @flash_command.y = 280
    @flash_command.z = 350

    ap_memori_pop #AP目盛りの表示
    ap_flash_refresh #閃光斬りコマンドのAPの更新
  end
  #--------------------------------------------------------------------------
  # ● スキルコマンドの表示
  #--------------------------------------------------------------------------
  def skill_command_pop #スキルコマンドの表示
    skill_data  #スキルのデータベース参照
    @skill_command = Sprite.new
    if @skill_cost_type == ""
      @skill_command.bitmap = RPG::Cache.picture("Battle_frame_skill0#{@command_type}")
    else
      @skill_command.bitmap = RPG::Cache.picture("Battle_frame_skill_#{@skill_cost_type}0#{@command_type}")
    end
    @skill_command.x = 264
    @skill_command.y = 280
    @skill_command.z = 350

    case @skill_command_index
    when 1  #応急手当
      if @skill1_used == 0
        help_skill("A", 1)
      else
        help_skill("A", 2)
      end
    when 2  #手ブラ
      if $game_switches[21] == false #手ブラ未修得
        help_skill("hatena", "")
      elsif @skill2_used == 0
        help_skill("B", 1)
      else
        help_skill("B", 2)
      end
    when 3  #黄金の輝き
      if $game_switches[23] == false #黄金の輝き未修得
        help_skill("hatena", "")
      elsif @skill3_used == 0
        help_skill("C", 1)
      else
        help_skill("C", 2)
      end
    when 4  #金の歯車
      if $game_switches[25] == false #金の歯車未修得
        help_skill("hatena", "")
      elsif @skill4_used == 0
        help_skill("D", 1)
      else
        help_skill("D", 2)
      end
    end

    if @skill_cost != 0
      case @skill_command_index
      when 1  #応急手当
        if @skill_cost > @player_ap
          @num_color_change = "R"  #数字の色を変えるフラグ
        end
        num_skill_cost  #スキルの消費ポイント
      when 4  #金の歯車
        if @skill_cost > @player_vit
          @num_color_change = "R"  #数字の色を変えるフラグ
        end
        if $game_switches[25] == true #金の歯車修得済み
          num_skill_cost  #スキルの消費ポイント
        end
      end
      @num_color_change = 0  #数字の色を変えるフラグ
    end
  end
  def help_skill(a, b)
    @help_skill = Sprite.new
    if a == "hatena"
      @help_skill.bitmap = RPG::Cache.picture("Battle_help_skill_hatena")
    else
      @help_skill.bitmap = RPG::Cache.picture("Battle_help_skill#{a}0#{b}")
    end
    @help_skill.x = 272
    @help_skill.y = 292
    @help_skill.z = 351
  end
  #--------------------------------------------------------------------------
  # ● ターン枠の表示
  #--------------------------------------------------------------------------
  def battle_frame_turn_refresh #ターン枠の更新
    battle_frame_turn_clear #ターン枠の消去

    @battle_frame_turn = Sprite.new
    @battle_frame_turn.bitmap = RPG::Cache.picture("Battle_frame_turn0#{@battle_order}")
    @battle_frame_turn.x = 0
    @battle_frame_turn.y = 0
    @battle_frame_turn.z = 250

    num_turn  #ターン数
  end
  #--------------------------------------------------------------------------
  # ● 各コマンド内容のアニメ
  #--------------------------------------------------------------------------
  def attack_command_anime #攻撃コマンドのアニメ処理
    command_count
    case @command_count
    when 10
      attack_command_clear
      @command_type = 1
      attack_command_pop
    when 20
      attack_command_clear
      @command_type = 2
      attack_command_pop
      @command_count_change = 0
    end
  end
  def flash_command_anime #閃光斬りコマンドのアニメ処理
    command_count
    case @command_count
    when 10
      flash_command_clear
      @command_type = 1
      flash_command_pop
    when 20
      flash_command_clear
      @command_type = 2
      flash_command_pop
      @command_count_change = 0
    end
  end
  def skill_command_anime #スキルコマンドのアニメ処理
    command_count
    case @command_count
    when 10
      skill_command_clear
      @command_type = 1
      skill_command_pop
    when 20
      skill_command_clear
      @command_type = 2
      skill_command_pop
      @command_count_change = 0
    end
  end
  #--------------------------------------------------------------------------
  # ● APの処理
  #--------------------------------------------------------------------------
  def ap_memori_pop #AP目盛りの表示
    @ap_memori = Sprite.new
    @ap_memori.bitmap = RPG::Cache.picture("Battle_frame_ap")
    @ap_memori.x = 358
    @ap_memori.y = 296
    @ap_memori.z = 351
  end
  def ap_attack_refresh #攻撃コマンドのAPの更新
    case @attack_command_index
    when 1  #器用さ
      a = @ap_cost_dex_attack * 6
    when 2  #腕力
      a = @ap_cost_str_attack * 6
    when 3  #素早さ
      a = @ap_cost_agi_attack * 6
    when 4  #守り
      a = @ap_cost_def_attack * 6
    end
    @ap_memori.src_rect.set(0, 0, a, 9)
    #攻撃コマンドの消費AP合計
    @ap_cost_attack = @ap_cost_str_attack + @ap_cost_dex_attack + @ap_cost_def_attack + @ap_cost_agi_attack
    num_ap_cost_attack  #攻撃時の消費AP
    num_point_attack  #攻撃時の増加ポイント
  end
  def ap_flash_refresh #閃光斬りコマンドのAPの更新
    case @flash_command_index
    when 1  #器用さ
      a = @ap_cost_dex_flash * 6
      a = a / 2
    when 2  #腕力
      a = @ap_cost_str_flash * 6
      a = a / 2
    when 3  #素早さ
      a = @ap_cost_agi_flash * 6
      a = a / 2
    when 4  #守り
      a = @ap_cost_def_flash * 6
      a = a / 2
    end
    @ap_memori.src_rect.set(0, 0, a, 9)
    #閃光斬りコマンドの消費AP合計
    @ap_cost_flash = @ap_cost_str_flash + @ap_cost_dex_flash + @ap_cost_def_flash + @ap_cost_agi_flash
    num_ap_cost_flash  #閃光斬り時の消費AP
    num_point_flash  #閃光斬り時の増加ポイント
  end
  #--------------------------------------------------------------------------
  # ● スキルのデータベース
  #--------------------------------------------------------------------------
  def skill_data
    case @skill_command_index
    when 1  #応急手当
      @skill_cost_type = "ap"
      @skill_cost = 3
      if $game_variables[21] >= 30
        @hp_recovery = 9  #HPの回復量
      elsif $game_variables[21] >= 25
        @hp_recovery = 8  #HPの回復量
      elsif $game_variables[21] >= 20
        @hp_recovery = 7  #HPの回復量
      elsif $game_variables[21] >= 15
        @hp_recovery = 6  #HPの回復量
      elsif $game_variables[21] >= 10
        @hp_recovery = 5  #HPの回復量
      elsif $game_variables[21] >= 5
        @hp_recovery = 4  #HPの回復量
      elsif $game_variables[21] >= 0  #応急手当熟練度
        @hp_recovery = 3  #HPの回復量
      end
      if @player.armor3_id == 62  #治癒石
        @hp_recovery = 15  #HPの回復量
      end
    when 2  #手ブラ
      @skill_cost_type = ""
      @skill_cost = 0
    when 3  #黄金の輝き
      @skill_cost_type = ""
      @skill_cost = 0
    when 4  #金の歯車
      @skill_cost_type = "vit"
      @skill_cost = 100
    end
  end
  #--------------------------------------------------------------------------
  # ● 画像の消去
  #--------------------------------------------------------------------------
  def escape_command_clear #逃走コマンドの消去
    @escape_command.dispose if @escape_command != nil
    @help_escape.dispose if @help_escape != nil
    @num_escape_vit_keta1.dispose if @num_escape_vit_keta1 != nil  #逃走時の消費VIT
    @num_escape_vit_keta2.dispose if @num_escape_vit_keta2 != nil
    @num_escape_vit_keta3.dispose if @num_escape_vit_keta3 != nil
    @num_escape_vit_keta4.dispose if @num_escape_vit_keta4 != nil
  end
  def attack_command_clear #攻撃コマンドの消去
    @attack_command.dispose if @attack_command != nil
    @ap_memori.dispose if @ap_memori != nil
    @num_ap_cost_attack_keta1.dispose if @num_ap_cost_attack_keta1 != nil  #攻撃時の消費AP
    @num_ap_cost_attack_keta2.dispose if @num_ap_cost_attack_keta2 != nil
    @num_ap_cost_attack_keta3.dispose if @num_ap_cost_attack_keta3 != nil
    @num_ap_cost_attack_keta4.dispose if @num_ap_cost_attack_keta4 != nil
    @num_point_attack.dispose if @num_point_attack != nil  #攻撃時の増加ポイント
  end
  def flash_command_clear #閃光斬りコマンドの消去
    @flash_command.dispose if @flash_command != nil
    @ap_memori.dispose if @ap_memori != nil
    @num_ap_cost_flash_keta1.dispose if @num_ap_cost_flash_keta1 != nil  #閃光斬り時の消費AP
    @num_ap_cost_flash_keta2.dispose if @num_ap_cost_flash_keta2 != nil
    @num_ap_cost_flash_keta3.dispose if @num_ap_cost_flash_keta3 != nil
    @num_ap_cost_flash_keta4.dispose if @num_ap_cost_flash_keta4 != nil
    @num_point_flash.dispose if @num_point_flash != nil  #閃光斬り時の増加ポイント
  end
  def skill_command_clear #スキルコマンドの消去
    @skill_command.dispose if @skill_command != nil
    @help_skill.dispose if @help_skill != nil
    @num_skill_cost_keta1.dispose if @num_skill_cost_keta1 != nil  #スキルの消費ポイント
    @num_skill_cost_keta2.dispose if @num_skill_cost_keta2 != nil
    @num_skill_cost_keta3.dispose if @num_skill_cost_keta3 != nil
    @num_skill_cost_keta4.dispose if @num_skill_cost_keta4 != nil
  end
  def battle_frame_turn_clear #ターン枠の消去
    @battle_frame_turn.dispose if @battle_frame_turn != nil
    @num_turn_keta1.dispose if @num_turn_keta1 != nil #ターン数
    @num_turn_keta2.dispose if @num_turn_keta2 != nil
    @num_turn_keta3.dispose if @num_turn_keta3 != nil
  end
end
