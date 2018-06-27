#==============================================================================
# ** Scene_Battle (part 3)
#------------------------------------------------------------------------------
#  This class performs battle screen processing.
#==============================================================================

class Scene_Battle
  #--------------------------------------------------------------------------
  # ● フェイズ6開始 (戦闘処理に移行)
  #--------------------------------------------------------------------------
  def start_phase6
    # フェーズ 6 に移行
    @phase = 6
  end
  #--------------------------------------------------------------------------
  # ● フェイズ6更新 (戦闘処理に移行)
  #--------------------------------------------------------------------------
  def update_phase6
    attack_command_clear #攻撃コマンドの消去
    flash_command_clear #閃光斬りコマンドの消去
    # バトルコマンドBの消去
      battle_commandB_zoom(2)

    if @zoom_end == 1
      @zoom_end = 0

      @old_hit = @hit
      @old_enemy_damage = @enemy_damage
      @old_avoid = @avoid
      @old_player_damage = @player_damage
      #先攻時にエネミーの思考ルーチンが変化フラグ
      if @battle_order == 1
        if @enemy_pattern_change == "ON"
          enemy_data(3)  #エネミーの思考ルーチン

          parameter_refresh #パラメータの更新
        end
      end

      @enemy_ap -= @ap_cost_enemy #エネミーのAP消費
      ap_refresh #apの更新

      @shake_count_change = 0 #カウント初期化
      start_phase7  # フェーズ 7 に移行

    end
  end
  #--------------------------------------------------------------------------
  # ● フェイズ7開始 (パラメータの更新)
  #--------------------------------------------------------------------------
  def start_phase7
    # フェーズ 7 に移行
    @phase = 7
  end
  #--------------------------------------------------------------------------
  # ● フェイズ7更新 (パラメータの更新)
  #--------------------------------------------------------------------------
  def update_phase7
    shake_count
    case @shake_count
    when 0
      @num_color_change_hit = "P" if @old_hit != @hit
      @num_color_change_enemy_damage = "P" if @old_enemy_damage != @enemy_damage
      @num_color_change_avoid = "P" if @old_avoid != @avoid
      @num_color_change_player_damage = "P" if @old_player_damage != @player_damage

      num_parameter_clear #パラメータの消去
      num_hit #命中率
      num_enemy_damage  #与ダメージ
      num_avoid #回避率
      num_player_damage  #被ダメージ

      @num_color_change_hit = 0             #命中率の色を変えるフラグ
      @num_color_change_enemy_damage = 0    #与ダメージの色を変えるフラグ
      @num_color_change_avoid = 0           #回避率の色を変えるフラグ
      @num_color_change_player_damage = 0   #被ダメージの色を変えるフラグ
    when 1
      num_hit_shake("y",3)            #命中率のシェイク
      num_enemy_damage_shake("y",3)   #与ダメージのシェイク
      num_avoid_shake("y",3)          #回避率のシェイク
      num_player_damage_shake("y",3)  #被ダメージのシェイク
    when 4
      num_hit_shake("x",-3)            #命中率のシェイク
      num_enemy_damage_shake("x",-3)   #与ダメージのシェイク
      num_avoid_shake("x",-3)          #回避率のシェイク
      num_player_damage_shake("x",-3)  #被ダメージのシェイク
    when 7
      num_hit_shake("y",-3)            #命中率のシェイク
      num_enemy_damage_shake("y",-3)   #与ダメージのシェイク
      num_avoid_shake("y",-3)          #回避率のシェイク
      num_player_damage_shake("y",-3)  #被ダメージのシェイク
    when 10
      num_hit_shake("x",3)            #命中率のシェイク
      num_enemy_damage_shake("x",3)   #与ダメージのシェイク
      num_avoid_shake("x",3)          #回避率のシェイク
      num_player_damage_shake("x",3)  #被ダメージのシェイク
    when 40
      num_parameter_clear #パラメータの消去
      num_hit #命中率
      num_enemy_damage  #与ダメージ
      num_avoid #回避率
      num_player_damage  #被ダメージ

      @shake_count_change = 0 #カウント初期化
      start_battle_phase  # バトルフェーズ に移行
    end
  end
  #--------------------------------------------------------------------------
  # ● バトルフェイズ開始 (戦闘)
  #--------------------------------------------------------------------------
  def start_battle_phase
    case @battle_order
    when 1 #先攻
      # プレイヤーの攻撃フェイズ に移行
      @phase = "player_attack"
    when 2 #後攻
      # エネミーの攻撃フェイズ に移行
      @phase = "enemy_attack"
    end

  end
  #--------------------------------------------------------------------------
  # ● プレイヤーの攻撃フェイズ更新 (戦闘)
  #--------------------------------------------------------------------------
  def update_player_attack
    #プレイヤー画像の更新
    if @commandB_index == 2  #閃光斬り
      @player_action = "senko" #プレイヤーの行動
      @pose.pop("D",face)
      @player_count_change = 0
    else
      @player_action = "kogeki" #プレイヤーの行動
      @pose.pop("C",face)
      @player_count_change = 0
    end

    if dice(100) <= @hit  #命中
      @enemy.animation_hit = true
      @enemy.hp -= @enemy_damage  #与ダメージ
      if @enemy_damage > 0 #与ダメージが1以上ならば
        @num_color_change = "R"
      end
      @help_hit = "true"
    else  #ミス
      @enemy.animation_hit = false
      @help_hit = "false"
    end

    if @commandB_index == 2  #閃光斬り
        @enemy.animation_id = 103
    else
      if dice(2) == 1
        @enemy.animation_id = 101
      else
        @enemy.animation_id = 102
      end
    end

    @help_window.battle_data(@help_hit, @hit, @enemy_damage)
    if @commandB_index == 2  #閃光斬り
      @help_window.refresh("player_attack2") # ヘルプメッセージウィンドウを更新
    else
      @help_window.refresh("player_attack1") # ヘルプメッセージウィンドウを更新
    end

    @shake_count_change = 0 #カウント初期化
    # エネミーやられ中の画像処理 に移行
    @phase = "enemy_damage"
  end
  def update_enemy_damage # エネミーやられ中の画像処理
    enemy_damage_shake # エネミーのダメージ数字のシェイク
  end
  def enemy_damage_shake # エネミーのダメージ数字のシェイク
    shake_count
    case @shake_count
    when 0
      num_enemy_hp_clear #エネミーのHPの消去
      num_enemy_hp  #エネミーのHP
    when 1
      num_enemy_hp_shake("y",3)  #エネミーのHPのシェイク
    when 4
      num_enemy_hp_shake("x",-3)  #エネミーのHPのシェイク
    when 7
      num_enemy_hp_shake("y",-3)  #エネミーのHPのシェイク
    when 10
      num_enemy_hp_shake("x",3)  #エネミーのHPのシェイク
    when 40
      num_enemy_hp_clear #エネミーのHPの消去
      @num_color_change = 0
      num_enemy_hp  #エネミーのHP

      @shake_count_change = 0 #カウント初期化

      # 勝敗判定
      if judge
        return
      end

      case @battle_order
      when 1 #先攻
        # エネミーの攻撃フェイズ に移行
        @phase = "enemy_attack"
      when 2 #後攻
        start_phase8  # フェーズ 8 に移行
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● エネミーの攻撃フェイズ更新 (戦闘)
  #--------------------------------------------------------------------------
  def update_enemy_attack
    enemy_attack_se #エネミーの攻撃音

    if dice(100) <= @avoid  #回避
      Audio.se_play("Audio/SE/063-Swing02",  80, 100)
      @help_hit = "false"

      #プレイヤー画像の更新
      @player_action = "kaihi" #プレイヤーの行動
      @pose.pop("B",face)
      @player_count_change = 0
    else  #回避失敗
      @player.hp -= @player_damage  #被ダメージ
      if @player_damage > 0 #被ダメージが1以上ならば
        @num_color_change = "R"
      else
        Audio.se_play("Audio/SE/097-Attack09",  80, 100)
      end
      @help_hit = "true"

      #プレイヤー画像の更新
      @player_action = "bogyo" #プレイヤーの行動
      @pose.pop("A",face)
      @player_count_change = 0
    end

    @help_window.battle_data(@help_hit, @avoid, @player_damage)
    @help_window.refresh("enemy_attack") # ヘルプメッセージウィンドウを更新

    @shake_count_change = 0 #カウント初期化
    # プレイヤーやられ中の画像処理 に移行
    @phase = "player_damage"
  end
  def update_player_damage # プレイヤーやられ中の画像処理
    player_damage_shake # プレイヤーのダメージ数字のシェイク
  end
  def player_damage_shake # プレイヤーのダメージ数字のシェイク
    shake_count
    case @shake_count
    when 0
      num_player_hp_clear #プレイヤーのHPの消去
      num_player_hp  #プレイヤーのHP
    when 1
      num_player_hp_shake("y",3)  #プレイヤーのHPのシェイク
    when 4
      num_player_hp_shake("x",-3)  #プレイヤーのHPのシェイク
    when 7
      num_player_hp_shake("y",-3)  #プレイヤーのHPのシェイク
    when 10
      num_player_hp_shake("x",3)  #プレイヤーのHPのシェイク
    when 40
      num_player_hp_clear #プレイヤーのHPの消去
      @num_color_change = 0
      num_player_hp  #プレイヤーのHP

      @shake_count_change = 0 #カウント初期化

      # 勝敗判定
      if judge
        return
      end

      case @battle_order
      when 1 #先攻
        start_phase8  # フェーズ 8 に移行
      when 2 #後攻
        # プレイヤーの攻撃フェイズ に移行
        @phase = "player_attack"
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● フェイズ8開始 (バトルコマンドB移行)
  #--------------------------------------------------------------------------
  def start_phase8

    @player_action = "kamae" #プレイヤーの行動
    @pose.pop("A",face)
    @player_count_change = 0

    @command_count_change = 0
    @command_type = 1 #コマンドアニメ一枚目

    # フェーズ 8 に移行
    @phase = 8
  end
  #--------------------------------------------------------------------------
  # ● フェイズ8更新 (バトルコマンドB移行)
  #--------------------------------------------------------------------------
  def update_phase8
    # バトルコマンドBの表示
      battle_commandB_zoom(1)

    # バトルコマンドB開始
    if @zoom_end == 1
      @zoom_end = 0

      @turn += 1 #ターン数
      battle_frame_turn_refresh #ターン枠の更新

      ap_recoveryturn #AP回復ターンの処理

      enemy_data(2)  #エネミーの思考ルーチン
      parameter_refresh #パラメータの更新
      ap_refresh #apの更新

      @skill1_used = 0  #応急手当を使用可能にする

      if @commandB_index == 2  #閃光斬り
        @battle_order = @old_battle_order #先攻・後攻を戻す
        battle_frame_turn_refresh #ターン枠の更新
      end

      @help_window.refresh("commandB#{@commandB_index}") # ヘルプメッセージウィンドウを更新
      start_phase4  # フェーズ 4 に移行
    end
  end
  #--------------------------------------------------------------------------
  # ● フェイズ9開始 (戦闘結果)
  #--------------------------------------------------------------------------
  def start_phase9
    @player_action = "kamae" #プレイヤーの行動
    @pose.pop("A",face)
    @player_count_change = 0

    # バトル終了 ME を演奏
    $game_system.me_play($game_system.battle_end_me)
    # バトル開始前の BGM に戻す
    $game_system.bgm_play($game_temp.map_bgm)
    # EXP、ゴールド、トレジャーを初期化
    exp = 0
    gold = 0
    treasures = []
    # ループ
    for enemy in $game_troop.enemies
      # エネミーが隠れ状態でない場合
      unless enemy.hidden
        # 獲得 EXP、ゴールドを追加
        exp += enemy.exp
        gold += enemy.gold
        # トレジャー出現判定
        if rand(100) < enemy.treasure_prob
          if enemy.item_id > 0
            treasures.push($data_items[enemy.item_id])
          end
          if enemy.weapon_id > 0
            treasures.push($data_weapons[enemy.weapon_id])
          end
          if enemy.armor_id > 0
            treasures.push($data_armors[enemy.armor_id])
          end
        end
      end
    end
    # トレジャーの数を 6 個までに限定
    treasures = treasures[0..5]
    # EXP 獲得
    for i in 0...$game_party.actors.size
      actor = $game_party.actors[i]
      if actor.cant_get_exp? == false
        last_level = actor.level

        if @player.level > @enemy_level #プレイヤーLVがエネミーLV以上ならば
          s = @player.level - @enemy_level
          if s == 1  #差が1レベル分
            exp = exp * 0.5
            exp = exp.round #四捨五入
          else
            exp = exp * 0.2
            exp = exp.round #四捨五入
          end
        end

        actor.exp += exp
        if actor.level > last_level #レベルアップ
          d = "LVUP"
        else
          d = ""
        end
      end
    end
    # ゴールド獲得
    $game_party.gain_gold(gold)
    # トレジャー獲得
    for item in treasures
      case item
      when RPG::Item
        $game_party.gain_item(item.id, 1)
      when RPG::Weapon
        $game_party.gain_weapon(item.id, 1)
      when RPG::Armor
        $game_party.gain_armor(item.id, 1)
      end
    end

    #プレイヤーのHPを回復して、VITにAPを戻す
    @player.hp = @player.maxhp
    @player.sp = @player_vit + @player_ap
    num_player_hp_clear #プレイヤーのHPの消去
    num_player_hp       #プレイヤーのHP
    player_lv_refresh #LVの更新

    if $game_switches[24] == true #黄金の輝き使用中
      $game_variables[8] -= 0.2 #清潔感の減少
    else
      $game_variables[8] -= 1 #清潔感の減少
    end

    if item != nil
      c = item.name
    else
      c = ""
    end
    @help_window.battle_result(exp, gold, c, d)
    @help_window.refresh("victory") # ヘルプメッセージウィンドウを更新

    # フェーズ 9 に移行
    @phase = 9
  end
  #--------------------------------------------------------------------------
  # ● フェイズ9更新 (戦闘結果)
  #--------------------------------------------------------------------------
  def update_phase9
    # C ボタンが押された場合
    if Input.trigger?(Input::C)
      # 決定 SE を演奏
      $game_system.se_play($data_system.decision_se)
      # バトル終了
      battle_end(0)
    end
    # A ボタンが押された場合
    if Input.trigger?(Input::A)
      if @talk == 0
        # 決定 SE を演奏
        $game_system.se_play($data_system.decision_se)
        @help_window.refresh("talk") # ヘルプメッセージウィンドウを更新
        @talk = 1
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● AP回復ターンの処理
  #--------------------------------------------------------------------------
  def ap_recoveryturn
    a = @turn % @player_ap_recoveryturn
    if a == 1 #ターンをプレイヤーのAP回復ターンで割った余りが1ならば
      @player_vit += @player_ap #プレイヤーのAPをVITに戻す

      if @player_vit >= @player_maxap #プレイヤーのVITが最大AP以上ならば
        @player_ap = @player_maxap
        @player_vit -= @player_maxap
      else
        @player_ap = @player_vit
        @player_vit = 0
      end
    end
    a = @turn % @enemy_ap_recoveryturn
    if a == 1 #ターンをプレイヤーのAP回復ターンで割った余りが1ならば
      @enemy_vit += @enemy_ap #プレイヤーのAPをVITに戻す

      if @enemy_vit >= @enemy_maxap #プレイヤーのVITが最大AP以上ならば
        @enemy_ap = @enemy_maxap
        @enemy_vit -= @enemy_maxap
      else
        @enemy_ap = @enemy_vit
        @enemy_vit = 0
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● ウェイトカウント
  #--------------------------------------------------------------------------
  def shake_count
    if @shake_count_change == 0
      @shake_count_old = Graphics.frame_count
      @shake_count_change = 1
    end
    @shake_count = Graphics.frame_count - @shake_count_old
  end
  #--------------------------------------------------------------------------
  # ● ダイス
  #--------------------------------------------------------------------------
  def dice(x)
    return rand(x) + 1
  end

end
