#==============================================================================
# ** Scene_Battle (part 1)
#------------------------------------------------------------------------------
#  This class performs battle screen processing.
#==============================================================================

class Scene_Battle
  #--------------------------------------------------------------------------
  # * Main Processing
  #--------------------------------------------------------------------------
  def main
    # Initialize each kind of temporary battle data
    $game_temp.in_battle = true
    $game_temp.battle_turn = 0
    $game_temp.battle_event_flags.clear
    $game_temp.battle_abort = false
    $game_temp.battle_main_phase = false
    $game_temp.battleback_name = $game_map.battleback_name
    $game_temp.forcing_battler = nil
    # Initialize battle event interpreter
    $game_system.battle_interpreter.setup(nil, 0)
    # Prepare troop
    @troop_id = $game_temp.battle_troop_id
    $game_troop.setup(@troop_id)
    # Make actor command window
    @spriteset = Spriteset_Battle.new

    #変数の初期化
    @player = $game_party.actors[0]
    @enemy = $game_troop.enemies[0]
    @turn = 1 #ターン数
    maxap #プレイヤーの最大APを決める
    if @player.sp < @player_maxap #VITが初期AP以下の場合
      @player_ap = @player.sp #プレイヤーのAP
      @player_vit = 0  #プレイヤーのVIT
    else
      @player_ap = @player_maxap #プレイヤーのAP
      @player_vit = @player.sp - @player_maxap  #プレイヤーのVIT
    end
    if @player_vit > 9999
      @player_vit = 9999
    end
    @player_ap_recoveryturn = 5 #プレイヤーのAPが回復するターン

    @ap_cost_dex_attack = 0 #攻撃コマンドの器用さ消費AP
    @ap_cost_str_attack = 0 #攻撃コマンドの腕力消費AP
    @ap_cost_agi_attack = 0 #攻撃コマンドの素早さ消費AP
    @ap_cost_def_attack = 0 #攻撃コマンドの守り消費AP
    @ap_cost_attack = 0     #攻撃コマンドの消費AP合計

    @ap_cost_dex_flash = 0 #閃光斬りコマンドの器用さ消費AP
    @ap_cost_str_flash = 0 #閃光斬りコマンドの腕力消費AP
    @ap_cost_agi_flash = 0 #閃光斬りコマンドの素早さ消費AP
    @ap_cost_def_flash = 0 #閃光斬りコマンドの守り消費AP
    @ap_cost_flash = 0     #閃光斬りコマンドの消費AP合計

    @ap_cost_dex_enemy = 0 #エネミーの器用さ消費AP
    @ap_cost_str_enemy = 0 #エネミーの腕力消費AP
    @ap_cost_agi_enemy = 0 #エネミーの素早さ消費AP
    @ap_cost_def_enemy = 0 #エネミーの守り消費AP
    @ap_cost_enemy = 0     #エネミーの消費AP合計

    @enemy_lv_blind = "off"     #エネミーのレベルを隠すフラグ
    @enemy_hp_blind = "off"     #エネミーのHPを隠すフラグ
    @enemy_ap_blind = "off"     #エネミーのAPを隠すフラグ
    @enemy_vit_blind = "off"    #エネミーのVITを隠すフラグ

    enemy_data(1)  #エネミーのデータ参照とエネミーの名前
    enemy_data(2)  #エネミーの思考ルーチン

    @p_str = @player.str  #プレイヤーの腕力
    @p_dex = @player.dex  #プレイヤーの器用さ
    @p_def = @player.int  #プレイヤーの守り
    @p_agi = @player.agi  #プレイヤーの素早さ
    @p_atk = @player.atk  #プレイヤーの武器攻撃力
    @p_grd = @player.pdef #プレイヤーの防具守備力

    @e_str = @enemy.str   #エネミーの腕力
    @e_dex = @enemy.dex   #エネミーの器用さ
    @e_def = @enemy.int   #エネミーの守り
    @e_agi = @enemy.agi   #エネミーの素早さ
    @e_atk = @enemy.atk   #エネミーの武器攻撃力
    @e_grd = @enemy.pdef  #エネミーの防具守備力

    @commandA_index = 1       #コマンドAのインデックス
    @commandB_index = 1       #コマンドBのインデックス
    @attack_command_index = 2 #攻撃コマンドのインデックス
    @flash_command_index = 2  #閃光斬りコマンドのインデックス
    @skill_command_index = 1  #スキルコマンドのインデックス

    @skill1_used = 0  #応急手当スキルの使用フラグ
    if $game_switches[22] == true #手ブラ
      @skill2_used = 1  #手ブラスキルの使用フラグ
    else
      @skill2_used = 0  #手ブラスキルの使用フラグ
    end
    if $game_switches[24] == true #黄金の輝き
      @skill3_used = 1  #黄金の輝きスキルの使用フラグ
    else
      @skill3_used = 0  #黄金の輝きスキルの使用フラグ
    end
    if $game_switches[26] == true #金の歯車
      @skill4_used = 1  #金の歯車スキルの使用フラグ
    else
      @skill4_used = 0  #金の歯車スキルの使用フラグ
    end
    @skill4_use_now = 0 #金の歯車使用中のフラグ。構えの画像で使用

    @command_type = 1 #コマンドアニメ一枚目
    @zoom_end = 0     #コマンドのズーム完了フラグ
    #カウンタの初期化
    @command_count_change = 0
    @shake_count_change = 0
    @player_count_change = 0
    # 黒枠
    @battle_frame_black = Sprite.new
    @battle_frame_black.bitmap = RPG::Cache.picture("Battle_frame_black")
    @battle_frame_black.x = 0
    @battle_frame_black.y = 0
    @battle_frame_black.z = 20
    # 枠
    @battle_frame = Sprite.new
    @battle_frame.bitmap = RPG::Cache.picture("Battle_frame")
    @battle_frame.x = 0
    @battle_frame.y = 0
    @battle_frame.z = 200
    player_name  #プレイヤーの名前
    num_player_lv   #プレイヤーのLV
    num_player_hp   #プレイヤーのHP
    num_player_ap   #プレイヤーのAP
    num_player_vit  #プレイヤーのVIT
    num_player_ap_recoveryturn #プレイヤーのAPが回復するターン
    num_enemy_lv    #エネミーのLV
    num_enemy_hp    #エネミーのHP
    num_enemy_ap    #エネミーのAP
    num_enemy_vit   #エネミーのVIT
    num_enemy_ap_recoveryturn #エネミーのAPが回復するターン

    @num_color_change = 0                 #数字の色を変えるフラグ
    @num_color_change_hit = 0             #命中率の色を変えるフラグ
    @num_color_change_enemy_damage = 0    #与ダメージの色を変えるフラグ
    @num_color_change_avoid = 0           #回避率の色を変えるフラグ
    @num_color_change_player_damage = 0   #被ダメージの色を変えるフラグ
    @old_hit = 0             #命中率が変化したか調べるフラグ
    @old_enemy_damage = 0    #与ダメージが変化したか調べるフラグ
    @old_avoid = 0           #回避率が変化したか調べるフラグ
    @old_player_damage = 0   #被ダメージが変化したか調べるフラグ

    @battle_order = 1 #先攻
    @old_battle_order = 1 #閃光斬りの時はこれに格納して後攻に固定
    battle_frame_turn_refresh #ターン枠の更新

    parameter_refresh #パラメータの更新

    # ヘルプメッセージウィンドウを作成
    @help_window = Battle_Help.new
    @talk = 0 #戦闘終了して一度だけ独り言を言うフラグ
    #プレイヤー画像
    @player_action = "kamae"  #プレイヤーの行動
    @pose = Battle_Pose.new
    @pose.pop("BattleAA",face)

    # Execute transition
    if $data_system.battle_transition == ""
      Graphics.transition(20)
    else
      Graphics.transition(40, "Graphics/Transitions/" +
        $data_system.battle_transition)
    end
    # Start pre-battle phase
    start_phase1
    # Main loop
    loop do
      # Update game screen
      Graphics.update
      # Update input information
      Input.update
      # Frame update
      update

      update_player_anime #プレイヤーのアニメ

      # Abort loop if screen is changed
      if $scene != self
        break
      end
    end
    # Refresh map
    $game_map.refresh
    # Prepare for transition
    Graphics.freeze
    # Dispose of windows
    @battle_frame_black.dispose # 黒枠
    @battle_frame.dispose       # 枠
    @battle_frame_turn.dispose  # ターン枠
    @help_window.dispose        # ヘルプウィンドウ
    num_allclear                # 数字画像の消去
    @pose.clear                 # プレイヤー画像


    if @skill_window != nil
      @skill_window.dispose
    end
    if @item_window != nil
      @item_window.dispose
    end
    if @result_window != nil
      @result_window.dispose
    end
    # Dispose of sprite set
    @spriteset.dispose
    # If switching to title screen
    if $scene.is_a?(Scene_Title)
      # Fade out screen
      Graphics.transition
      Graphics.freeze
    end
    # If switching from battle test to any screen other than game over screen
    if $BTEST and not $scene.is_a?(Scene_Gameover)
      $scene = nil
    end
  end
  #--------------------------------------------------------------------------
  # * Determine Battle Win/Loss Results
  #--------------------------------------------------------------------------
  def judge
    # If all dead determinant is true, or number of members in party is 0
    if $game_party.all_dead? or $game_party.actors.size == 0
      # If possible to lose
      if $game_temp.battle_can_lose
        # Return to BGM before battle starts
        $game_system.bgm_play($game_temp.map_bgm)

        @player.hp = 1

        # Battle ends
        battle_end(2)
        # Return true
        return true
      end
      # Set game over flag
      $game_temp.gameover = true
      # Return true
      return true
    end
    # Return false if even 1 enemy exists
    for enemy in $game_troop.enemies
      if enemy.exist?
        return false
      end
    end
    # Start after battle phase (win)
    start_phase9
    # Return true
    return true
  end
  #--------------------------------------------------------------------------
  # * Battle Ends
  #     result : results (0:win 1:lose 2:escape)
  #--------------------------------------------------------------------------
  def battle_end(result)
    # Clear in battle flag
    $game_temp.in_battle = false
    # Clear entire party actions flag
    $game_party.clear_actions
    # Remove battle states
    for actor in $game_party.actors
      actor.remove_states_battle
    end
    # Clear enemies
    $game_troop.enemies.clear
    # Call battle callback
    if $game_temp.battle_proc != nil
      $game_temp.battle_proc.call(result)
      $game_temp.battle_proc = nil
    end
    # Switch to map screen
    $scene = Scene_Map.new
  end
  #--------------------------------------------------------------------------
  # * Battle Event Setup
  #--------------------------------------------------------------------------
  def update
    # Update system (timer) and screen
    $game_system.update
    $game_screen.update
    # If timer has reached 0
    if $game_system.timer_working and $game_system.timer == 0
      # Abort battle
      $game_temp.battle_abort = true
    end
    # Update sprite set
    @spriteset.update
    # If transition is processing
    if $game_temp.transition_processing
      # Clear transition processing flag
      $game_temp.transition_processing = false
      # Execute transition
      if $game_temp.transition_name == ""
        Graphics.transition(20)
      else
        Graphics.transition(40, "Graphics/Transitions/" +
          $game_temp.transition_name)
      end
    end
    # If message window is showing
    if $game_temp.message_window_showing
      return
    end
    # If effect is showing
    if @spriteset.effect?
      return
    end
    # If game over
    if $game_temp.gameover
      # Switch to game over screen
      $scene = Scene_Gameover.new
      return
    end
    # If returning to title screen
    if $game_temp.to_title
      # Switch to title screen
      $scene = Scene_Title.new
      return
    end
    # If battle is aborted
    if $game_temp.battle_abort
      # Return to BGM used before battle started
      $game_system.bgm_play($game_temp.map_bgm)
      # Battle ends
      battle_end(1)
      return
    end
    # If battler forcing an action doesn't exist,
    # and battle event is running
    if $game_temp.forcing_battler == nil and
       $game_system.battle_interpreter.running?
      return
    end

    # Branch according to phase
    case @phase
    when 1  # バトルコマンドA移行
      update_phase1
    when 2  # バトルコマンドA
      update_phase2
    when 3  # バトルコマンドB移行
      update_phase3
    when 4  # バトルコマンドB
      update_phase4
    when 5  # 攻撃・閃光斬り・スキル
      update_phase5
    when 6  # 戦闘処理に移行
      update_phase6
    when 7  # パラメータの更新
      update_phase7
    when 8  # バトルコマンドB移行
      update_phase8
    when 9  # 戦闘結果
      update_phase9
    when "recover" # プレイヤーのHP回復シェイク
      update_recover_shake
    when "ap_recoveryturn" # プレイヤーのAP回復ターンのシェイク
      update_player_ap_recoveryturn_shake
    when "player_attack" #プレイヤーの攻撃
      update_player_attack
    when "enemy_damage" # エネミーやられ中の画像処理
      update_enemy_damage
    when "enemy_attack" #エネミーの攻撃
      update_enemy_attack
    when "player_damage" # プレイヤーやられ中の画像処理
      update_player_damage
    end
  end
  #--------------------------------------------------------------------------
  # ● プレイヤーの最大APを決める
  #--------------------------------------------------------------------------
  def maxap #プレイヤーの最大APを決める
    if @player.armor3_id == 51  #娼婦のアンクレット
      if $game_variables[18] >= 10  #売春回数
        @maxap_bonus = 10
      else
        @maxap_bonus = $game_variables[18]
      end
    elsif @player.armor3_id == 52  #ウサギの足
      @maxap_bonus = 1
    elsif @player.armor3_id == 53  #アサシンニードル
      @maxap_bonus = 4
    elsif @player.armor3_id == 54  #ワイルドファング
      @maxap_bonus = 4
    elsif @player.armor3_id == 55  #デビルウイング
      @maxap_bonus = 4
    elsif @player.armor3_id == 56  #ロックガード
      @maxap_bonus = 4
    elsif @player.armor3_id == 57  #ラッキーコイン
      @maxap_bonus = 4
    elsif @player.armor3_id == 58  #ブラックオニキス
      @maxap_bonus = 8
    elsif @player.armor3_id == 59  #ファイアクリスタル
      @maxap_bonus = 12
    elsif @player.armor3_id == 60  #ムーンストーン
      @maxap_bonus = 16
    else
      @maxap_bonus = 0
    end

    @player_maxap = 72 + @maxap_bonus #プレイヤーの最大AP
  end

end
