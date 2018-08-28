#==============================================================================
# ** Scene_Battle (part 2)
#------------------------------------------------------------------------------
#  This class performs battle screen processing.
#==============================================================================

class Scene_Battle
  #--------------------------------------------------------------------------
  # * Start Pre-Battle Phase
  #--------------------------------------------------------------------------
  def start_phase1
    # Shift to phase 1
    @phase = 1
  end
  #--------------------------------------------------------------------------
  # * Frame Update (pre-battle phase)
  #--------------------------------------------------------------------------
  def update_phase1
    # バトルコマンドAのズーム表示
    battle_commandA_zoom(1)

    # バトルコマンドA開始
    if @zoom_end == 1
      @zoom_end = 0

      @help_window.refresh("commandA#{@commandA_index}") # ヘルプメッセージウィンドウを更新
      start_phase2  # フェーズ 2 に移行
    end
  end
  #--------------------------------------------------------------------------
  # ● フェイズ2開始 (バトルコマンドA)
  #--------------------------------------------------------------------------
  def start_phase2
    # Shift to phase 2
    @phase = 2
  end
  #--------------------------------------------------------------------------
  # ● フェイズ2更新 (バトルコマンドA)
  #--------------------------------------------------------------------------
  def update_phase2 #バトルコマンドA
    battle_commandA_anime #バトルコマンドAのアニメ
    # 方向ボタンの右が押された場合
    if Input.repeat?(Input::RIGHT)
      case @commandA_index
      when 1  #戦闘開始
        @commandA_index += 1
        escape_command_pop #逃走コマンドの表示
      when 2  #逃走
        @commandA_index = 1
        escape_command_clear #逃走コマンドの消去
      end
      # カーソル SE を演奏
      $game_system.se_play($data_system.cursor_se)
      @help_window.refresh("commandA#{@commandA_index}") # ヘルプメッセージウィンドウを更新
      battle_commandA_clear
      @command_type = 1 #コマンドアニメ一枚目
      battle_commandA_pop
      @command_count_change = 0
    end
    # 方向ボタンの左が押された場合
    if Input.repeat?(Input::LEFT)
      case @commandA_index
      when 1  #戦闘開始
        @commandA_index = 2
        escape_command_pop #逃走コマンドの表示
      when 2  #逃走
        @commandA_index -= 1
        escape_command_clear #逃走コマンドの消去
      end
      # カーソル SE を演奏
      $game_system.se_play($data_system.cursor_se)
      @help_window.refresh("commandA#{@commandA_index}") # ヘルプメッセージウィンドウを更新
      battle_commandA_clear
      @command_type = 1 #コマンドアニメ一枚目
      battle_commandA_pop
      @command_count_change = 0
    end
    # If C button was pressed
    if Input.trigger?(Input::C)
      case @commandA_index
      when 1  #戦闘開始
        @command_count_change = 0
        @command_type = 1 #コマンドアニメ一枚目
        # 決定 SE を演奏
        $game_system.se_play($data_system.decision_se)
        start_phase3  # フェーズ 3 に移行
      when 2  #逃走
        # 逃走不可の場合
        if $game_temp.battle_can_escape == false
          # Play buzzer SE
          $game_system.se_play($data_system.buzzer_se)
          return
        end
        # Play decision SE
        $game_system.se_play($data_system.decision_se)
        # Escape processing
        update_phase_escape
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● フレーム更新 (逃走)
  #--------------------------------------------------------------------------
  def update_phase_escape
    escape_command_clear #逃走コマンドの消去
    battle_commandA_clear #バトルコマンドAの消去

    #プレイヤーのHPを回復して、VITにAPを戻す
    @player.hp = @player.maxhp
    @player.sp = @player_vit + @player_ap
    # VITの消費処理
    @player.sp -= @escape_vit

    # 逃走 SE を演奏
    $game_system.se_play($data_system.escape_se)
    # バトル開始前の BGM に戻す
    $game_system.bgm_play($game_temp.map_bgm)
    # バトル終了
    battle_end(1)
  end
  #--------------------------------------------------------------------------
  # ● フェイズ3開始 (バトルコマンドB移行)
  #--------------------------------------------------------------------------
  def start_phase3
    # フェーズ 3 に移行
    @phase = 3
  end
  #--------------------------------------------------------------------------
  # ● フェイズ3更新 (バトルコマンドB移行)
  #--------------------------------------------------------------------------
  def update_phase3 #バトルコマンドB
    # バトルコマンドAの消去
        battle_commandA_zoom(2)

    # バトルコマンドB開始
    if @zoom_end == 1
      @zoom_end = 0

      @help_window.refresh("commandB#{@commandB_index}") # ヘルプメッセージウィンドウを更新
      start_phase4  # フェーズ 4 に移行
    end
  end
  #--------------------------------------------------------------------------
  # ● フェイズ4開始 (バトルコマンドB)
  #--------------------------------------------------------------------------
  def start_phase4
    # フェーズ 4 に移行
    @phase = 4
  end
  #--------------------------------------------------------------------------
  # ● フェイズ4更新 (バトルコマンドB)
  #--------------------------------------------------------------------------
  def update_phase4 #バトルコマンドB
    battle_commandB_anime #バトルコマンドBのアニメ
    # 方向ボタンの右が押された場合
    if Input.repeat?(Input::RIGHT)
      case @commandB_index
      when 1  #攻撃
        @commandB_index += 1
      when 2  #閃光斬り
        @commandB_index += 1
      when 3  #スキル
        @commandB_index += 1
      when 4  #先攻・後攻
        @commandB_index = 1
      end
      # カーソル SE を演奏
      $game_system.se_play($data_system.cursor_se)
      @help_window.refresh("commandB#{@commandB_index}") # ヘルプメッセージウィンドウを更新
      battle_commandB_clear
      @command_type = 1
      battle_commandB_pop
      @command_count_change = 0
    end
    # 方向ボタンの左が押された場合
    if Input.repeat?(Input::LEFT)
      case @commandB_index
      when 1  #攻撃
        @commandB_index = 4
      when 2  #閃光斬り
        @commandB_index -= 1
      when 3  #スキル
        @commandB_index -= 1
      when 4  #先攻・後攻
        @commandB_index -= 1
      end
      # カーソル SE を演奏
      $game_system.se_play($data_system.cursor_se)
      @help_window.refresh("commandB#{@commandB_index}") # ヘルプメッセージウィンドウを更新
      battle_commandB_clear
      @command_type = 1 #コマンドアニメ一枚目
      battle_commandB_pop
      @command_count_change = 0
    end
    # B ボタンが押された場合
    if Input.trigger?(Input::B)
      @command_count_change = 0
      battle_commandB_clear
      @command_type = 1 #コマンドアニメ一枚目
      # キャンセル SE を演奏
      $game_system.se_play($data_system.cancel_se)
      start_phase1
    end
    # C ボタンが押された場合
    if Input.trigger?(Input::C)

      battle_commandB_clear
      @command_type = 1 #コマンドアニメ一枚目
      battle_commandB_pop

      case @commandB_index
      when 1  #攻撃
        # 決定 SE を演奏
        $game_system.se_play($data_system.decision_se)

        @command_type = 2 #コマンドアニメ一枚目
        attack_command_pop #攻撃コマンドの表示
        @help_window.refresh("attack#{@attack_command_index}") # ヘルプメッセージウィンドウを更新
        ap_attack_refresh #攻撃コマンドのAPの更新
        parameter_refresh #パラメータの更新

        @command_count_change = 0
        start_phase5  # フェーズ 5 に移行

      when 2  #閃光斬り
        if $game_switches[27] == false  #閃光斬りが未修得
          # ブザー SE を演奏
          $game_system.se_play($data_system.buzzer_se)
        else
          # システム SE を演奏
          Audio.se_play("Audio/SE/005-System05",  80, 100)

          @command_type = 2 #コマンドアニメ一枚目
          flash_command_pop #攻撃コマンドの表示
          @help_window.refresh("flash#{@flash_command_index}") # ヘルプメッセージウィンドウを更新
          ap_flash_refresh #閃光斬りコマンドのAPの更新
          parameter_refresh #パラメータの更新

          @old_battle_order = @battle_order #一時的に格納
          @battle_order = 2 #後攻に固定
          battle_frame_turn_refresh #ターン枠の更新

          @command_count_change = 0
          start_phase5  # フェーズ 5 に移行
        end

      when 3  #スキル
        # 決定 SE を演奏
        $game_system.se_play($data_system.decision_se)

        @command_type = 2 #コマンドアニメ一枚目
        skill_command_pop #スキルコマンドの表示
        @help_window.skill_used?(@skill1_used,@skill2_used,@skill3_used,@skill4_used)
        @help_window.refresh("skill#{@skill_command_index}") # ヘルプメッセージウィンドウを更新

        @command_count_change = 0
        start_phase5  # フェーズ 5 に移行

      when 4  #先攻・後攻
        # システム SE を演奏
        Audio.se_play("Audio/SE/005-System05",  80, 100)

        if @battle_order == 1 #先攻の場合
          @battle_order = 2
        else                  #後攻の場合
          @battle_order = 1
        end
        battle_frame_turn_refresh #ターン枠の更新
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● フェイズ5開始 (攻撃・閃光斬り・スキル)
  #--------------------------------------------------------------------------
  def start_phase5
    # Shift to phase 5
    @phase = 5
  end
  #--------------------------------------------------------------------------
  # ● フェイズ5更新 (攻撃・閃光斬り・スキル)
  #--------------------------------------------------------------------------
  def update_phase5
    case @commandB_index
    when 1  #攻撃
      update_attack
    when 2  #閃光斬り
      update_flash
    when 3  #スキル
      update_skill
    end
    # B ボタンが押された場合
    if Input.trigger?(Input::B)
      @command_count_change = 0
      @command_type = 1 #コマンドアニメ一枚目
      attack_command_clear  #攻撃コマンドの消去
      flash_command_clear   #閃光斬りコマンドの消去
      skill_command_clear   #スキルコマンドの消去
      @help_window.refresh("commandB#{@commandB_index}") # ヘルプメッセージウィンドウを更新

      if @commandB_index == 2  #閃光斬り
        @battle_order = @old_battle_order #先攻・後攻を戻す
        battle_frame_turn_refresh #ターン枠の更新
      end

      # キャンセル SE を演奏
      $game_system.se_play($data_system.cancel_se)
      start_phase4  # フェーズ 4 に移行
    end
  end
  def update_attack  #攻撃
    attack_command_anime
    # 方向ボタンの下が押された場合
    if Input.repeat?(Input::DOWN)
      case @attack_command_index
      when 1  #器用さ
        @attack_command_index += 1
      when 2  #腕力
        @attack_command_index += 1
      when 3  #素早さ
        @attack_command_index += 1
      when 4  #守り
        @attack_command_index = 1
      end
      # カーソル SE を演奏
      $game_system.se_play($data_system.cursor_se)
      @help_window.refresh("attack#{@attack_command_index}") # ヘルプメッセージウィンドウを更新
      attack_command_clear #攻撃コマンドの消去
      attack_command_pop #攻撃コマンドの表示
    end
    # 方向ボタンの上が押された場合
    if Input.repeat?(Input::UP)
      case @attack_command_index
      when 1  #器用さ
        @attack_command_index = 4
      when 2  #腕力
        @attack_command_index -= 1
      when 3  #素早さ
        @attack_command_index -= 1
      when 4  #守り
        @attack_command_index -= 1
      end
      # カーソル SE を演奏
      $game_system.se_play($data_system.cursor_se)
      @help_window.refresh("attack#{@attack_command_index}") # ヘルプメッセージウィンドウを更新
      attack_command_clear #攻撃コマンドの消去
      attack_command_pop #攻撃コマンドの表示
    end
    # 方向ボタンの右が押された場合
    if Input.repeat?(Input::RIGHT)
      case @attack_command_index
      when 1  #器用さ
        if @ap_cost_dex_attack == 9
          @ap_cost_dex_attack = 0
        else
          @ap_cost_dex_attack += 1
        end
      when 2  #腕力
        if @ap_cost_str_attack == 9
          @ap_cost_str_attack = 0
        else
          @ap_cost_str_attack += 1
        end
      when 3  #素早さ
        if @ap_cost_agi_attack == 9
          @ap_cost_agi_attack = 0
        else
          @ap_cost_agi_attack += 1
        end
      when 4  #守り
        if @ap_cost_def_attack == 9
          @ap_cost_def_attack = 0
        else
          @ap_cost_def_attack += 1
        end
      end
      # カーソル SE を演奏
      $game_system.se_play($data_system.cursor_se)
      ap_attack_refresh #攻撃コマンドのAPの更新
      parameter_refresh #パラメータの更新
    end
    # 方向ボタンの左が押された場合
    if Input.repeat?(Input::LEFT)
      case @attack_command_index
      when 1  #器用さ
        if @ap_cost_dex_attack == 0
          @ap_cost_dex_attack = 9
        else
          @ap_cost_dex_attack -= 1
        end
      when 2  #腕力
        if @ap_cost_str_attack == 0
          @ap_cost_str_attack = 9
        else
          @ap_cost_str_attack -= 1
        end
      when 3  #素早さ
        if @ap_cost_agi_attack == 0
          @ap_cost_agi_attack = 9
        else
          @ap_cost_agi_attack -= 1
        end
      when 4  #守り
        if @ap_cost_def_attack == 0
          @ap_cost_def_attack = 9
        else
          @ap_cost_def_attack -= 1
        end
      end
      # カーソル SE を演奏
      $game_system.se_play($data_system.cursor_se)
      ap_attack_refresh #攻撃コマンドのAPの更新
      parameter_refresh #パラメータの更新
    end
    # A ボタンが押された場合
    if Input.trigger?(Input::A) #ポイントのリセット
      # キャンセル SE を演奏
      $game_system.se_play($data_system.cancel_se)
      @ap_cost_dex_attack = 0  #器用さ
      @ap_cost_str_attack = 0  #腕力
      @ap_cost_agi_attack = 0  #素早さ
      @ap_cost_def_attack = 0  #守り
      ap_attack_refresh #攻撃コマンドのAPの更新
      parameter_refresh #パラメータの更新
    end
    # C ボタンが押された場合
    if Input.trigger?(Input::C)
      if @player_ap >= @ap_cost_attack  #APが消費AP以上ならば
        @player_ap -= @ap_cost_attack  #APを消費する
        ap_refresh #apの更新

        @command_count_change = 0
        @command_type = 1 #コマンドアニメ一枚目
        # 決定 SE を演奏
        $game_system.se_play($data_system.decision_se)
        start_phase6  # フェーズ 6 に移行
      else
        # ブザー SE を演奏
        $game_system.se_play($data_system.buzzer_se)
        return
      end
    end
  end

  def update_flash  #閃光斬り
    flash_command_anime
    # 方向ボタンの下が押された場合
    if Input.repeat?(Input::DOWN)
      case @flash_command_index
      when 1  #器用さ
        @flash_command_index += 1
      when 2  #腕力
        @flash_command_index += 1
      when 3  #素早さ
        @flash_command_index += 1
      when 4  #守り
        @flash_command_index = 1
      end
      # カーソル SE を演奏
      $game_system.se_play($data_system.cursor_se)
      @help_window.refresh("flash#{@flash_command_index}") # ヘルプメッセージウィンドウを更新
      flash_command_clear #閃光斬りコマンドの消去
      flash_command_pop #閃光斬りコマンドの表示
    end
    # 方向ボタンの上が押された場合
    if Input.repeat?(Input::UP)
      case @flash_command_index
      when 1  #器用さ
        @flash_command_index = 4
      when 2  #腕力
        @flash_command_index -= 1
      when 3  #素早さ
        @flash_command_index -= 1
      when 4  #守り
        @flash_command_index -= 1
      end
      # カーソル SE を演奏
      $game_system.se_play($data_system.cursor_se)
      @help_window.refresh("flash#{@flash_command_index}") # ヘルプメッセージウィンドウを更新
      flash_command_clear #閃光斬りコマンドの消去
      flash_command_pop #閃光斬りコマンドの表示
    end
    # 方向ボタンの右が押された場合
    if Input.repeat?(Input::RIGHT)
      case @flash_command_index
      when 1  #器用さ
        if @ap_cost_dex_flash == 18
          @ap_cost_dex_flash = 0
        else
          @ap_cost_dex_flash += 2
        end
      when 2  #腕力
        if @ap_cost_str_flash == 18
          @ap_cost_str_flash = 0
        else
          @ap_cost_str_flash += 2
        end
      when 3  #素早さ
        if @ap_cost_agi_flash == 18
          @ap_cost_agi_flash = 0
        else
          @ap_cost_agi_flash += 2
        end
      when 4  #守り
        if @ap_cost_def_flash == 18
          @ap_cost_def_flash = 0
        else
          @ap_cost_def_flash += 2
        end
      end
      # カーソル SE を演奏
      $game_system.se_play($data_system.cursor_se)
      ap_flash_refresh #閃光斬りコマンドのAPの更新
      parameter_refresh #パラメータの更新
    end
    # 方向ボタンの左が押された場合
    if Input.repeat?(Input::LEFT)
      case @flash_command_index
      when 1  #器用さ
        if @ap_cost_dex_flash == 0
          @ap_cost_dex_flash = 18
        else
          @ap_cost_dex_flash -= 2
        end
      when 2  #腕力
        if @ap_cost_str_flash == 0
          @ap_cost_str_flash = 18
        else
          @ap_cost_str_flash -= 2
        end
      when 3  #素早さ
        if @ap_cost_agi_flash == 0
          @ap_cost_agi_flash = 18
        else
          @ap_cost_agi_flash -= 2
        end
      when 4  #守り
        if @ap_cost_def_flash == 0
          @ap_cost_def_flash = 18
        else
          @ap_cost_def_flash -= 2
        end
      end
      # カーソル SE を演奏
      $game_system.se_play($data_system.cursor_se)
      ap_flash_refresh #閃光斬りコマンドのAPの更新
      parameter_refresh #パラメータの更新
    end
    # A ボタンが押された場合
    if Input.trigger?(Input::A) #ポイントのリセット
      # キャンセル SE を演奏
      $game_system.se_play($data_system.cancel_se)
      @ap_cost_dex_flash = 0  #器用さ
      @ap_cost_str_flash = 0  #腕力
      @ap_cost_agi_flash = 0  #素早さ
      @ap_cost_def_flash = 0  #守り
      ap_flash_refresh #攻撃コマンドのAPの更新
      parameter_refresh #パラメータの更新
    end
    # C ボタンが押された場合
    if Input.trigger?(Input::C)
      if @player_ap >= @ap_cost_flash  #APが消費AP以上ならば
        @player_ap -= @ap_cost_flash  #APを消費する
        ap_refresh #apの更新

        @command_count_change = 0
        @command_type = 1 #コマンドアニメ一枚目
        # 決定 SE を演奏
        $game_system.se_play($data_system.decision_se)
        start_phase6  # フェーズ 6 に移行
      else
        # ブザー SE を演奏
        $game_system.se_play($data_system.buzzer_se)
        return
      end
    end
  end

  def update_skill  #スキル
    skill_command_anime
    # 方向ボタンの下が押された場合
    if Input.repeat?(Input::DOWN)
      case @skill_command_index
      when 1  #応急手当
        @skill_command_index += 1
      when 2  #手ブラ
        @skill_command_index += 1
      when 3  #黄金の輝き
        @skill_command_index += 1
      when 4  #金の歯車
        @skill_command_index = 1
      end
      # カーソル SE を演奏
      $game_system.se_play($data_system.cursor_se)
      @help_window.skill_used?(@skill1_used,@skill2_used,@skill3_used,@skill4_used)
      @help_window.refresh("skill#{@skill_command_index}") # ヘルプメッセージウィンドウを更新
      skill_command_clear #スキルコマンドの消去
      skill_command_pop   #スキルコマンドの表示
    end
    # 方向ボタンの上が押された場合
    if Input.repeat?(Input::UP)
      case @skill_command_index
      when 1  #応急手当
        @skill_command_index = 4
      when 2  #手ブラ
        @skill_command_index -= 1
      when 3  #黄金の輝き
        @skill_command_index -= 1
      when 4  #金の歯車
        @skill_command_index -= 1
      end
      # カーソル SE を演奏
      $game_system.se_play($data_system.cursor_se)
      @help_window.skill_used?(@skill1_used,@skill2_used,@skill3_used,@skill4_used)
      @help_window.refresh("skill#{@skill_command_index}") # ヘルプメッセージウィンドウを更新
      skill_command_clear #スキルコマンドの消去
      skill_command_pop   #スキルコマンドの表示
    end
    # If C button was pressed
    if Input.trigger?(Input::C)
      case @skill_command_index
      when 1  #応急手当
        if @skill1_used == 0  #使用出来る
          if @player_ap >= @skill_cost #APがある
            # ヒール SE を演奏
            Audio.se_play("Audio/SE/105-Heal01",  80, 100)
            @skill1_used = 1

            @player_ap -= @skill_cost   #APを消費する
            @player.hp += @hp_recovery  #HPを回復する
            ap_refresh #apの更新

            $game_variables[21] += 1  #応急手当熟練度アップ

            @shake_count_change = 0 #カウント初期化
            # プレイヤーのHP回復シェイク に移行
            @phase = "recover"
            a = 0
          else
            # ブザー SE を演奏
            $game_system.se_play($data_system.buzzer_se)
            a = 0
          end
        else                  #使用出来ない
          # ブザー SE を演奏
          $game_system.se_play($data_system.buzzer_se)
          a = 0
        end
      when 2  #手ブラ
          # ブザー SE を演奏
          $game_system.se_play($data_system.buzzer_se)
          a = 0
      when 3  #黄金の輝き
        if $game_switches[23] == true #黄金の輝き習得済み
          if @skill3_used == 0  #輝く
            # ライト SE を演奏
            Audio.se_play("Audio/SE/136-Light02",  80, 100)
            @skill3_used = 1
            a = 1

            $game_switches[24] = true #黄金の輝き
            @pose.pop("BattleAA", face)
          else                  #解除
            # 決定 SE を演奏
            $game_system.se_play($data_system.decision_se)
            @skill3_used = 0
            a = 1

            $game_switches[24] = false #黄金の輝き
            @pose.pop("BattleAA", face)
          end
        else                  #使用出来ない
          # ブザー SE を演奏
          $game_system.se_play($data_system.buzzer_se)
          a = 0
        end
      when 4  #金の歯車
        if $game_switches[25] == true #金の歯車習得済み
          if @skill4_used == 0  #使用出来る
            if @player_vit >= @skill_cost #VITがある
              # ライト SE を演奏
              Audio.se_play("Audio/SE/136-Light02",  80, 100)
              @skill4_used = 1
              @skill4_use_now = 1

              @player_vit -= @skill_cost   #VITを消費する
              ap_refresh #apの更新
              @player_ap_recoveryturn = 3 #プレイヤーのAPが回復するターン
              num_player_ap_recoveryturn #プレイヤーのAPが回復するターン

              @shake_count_change = 0 #カウント初期化
              # プレイヤーのAP回復ターンのシェイク に移行
              @phase = "ap_recoveryturn"
              a = 0

              $game_switches[26] = true #金の歯車
            else  #使用出来ない
              # ブザー SE を演奏
              $game_system.se_play($data_system.buzzer_se)
              a = 0
            end
          else                  #使用出来ない
            # ブザー SE を演奏
            $game_system.se_play($data_system.buzzer_se)
            a = 0
          end
        else                  #使用出来ない
          # ブザー SE を演奏
          $game_system.se_play($data_system.buzzer_se)
          a = 0
        end
      end

      if a == 1
        @command_count_change = 0
        @command_type = 1 #コマンドアニメ一枚目
        attack_command_clear  #攻撃コマンドの消去
        flash_command_clear   #閃光斬りコマンドの消去
        skill_command_clear   #スキルコマンドの消去
        @help_window.refresh("commandB#{@commandB_index}") # ヘルプメッセージウィンドウを更新

        start_phase4  # フェーズ 4 に移行
      end
    end
  end
  def update_recover_shake # プレイヤーのHP回復シェイク
    shake_count
    case @shake_count
    when 0
      num_player_hp_clear #プレイヤーのHPの消去
      @num_color_change = "G"

      num_player_hp  #プレイヤーのHP
    when 1
      num_player_hp_shake("y",3)  #プレイヤーのHPのシェイク
    when 4
      num_player_hp_shake("x",-3)  #プレイヤーのHPのシェイク
    when 7
      num_player_hp_shake("y",-3)  #プレイヤーのHPのシェイク
    when 10
      num_player_hp_shake("x",3)  #プレイヤーのHPのシェイク
    when 11
      num_player_hp_clear #プレイヤーのHPの消去
      @num_color_change = 0
      num_player_hp  #プレイヤーのHP

      @shake_count_change = 0 #カウント初期化
      @command_count_change = 0
      @command_type = 1 #コマンドアニメ一枚目
      attack_command_clear  #攻撃コマンドの消去
      flash_command_clear   #閃光斬りコマンドの消去
      skill_command_clear   #スキルコマンドの消去
      @help_window.refresh("commandB#{@commandB_index}") # ヘルプメッセージウィンドウを更新

      start_phase4  # フェーズ 4 に移行
    end
  end
  def update_player_ap_recoveryturn_shake # プレイヤーのAP回復ターンのシェイク
    shake_count
    case @shake_count
    when 0

    when 1
      num_player_ap_recoveryturn_shake("y",3)  #プレイヤーのAP回復ターンのシェイク
    when 4
      num_player_ap_recoveryturn_shake("x",-3)  #プレイヤーのAP回復ターンのシェイク
    when 7
      num_player_ap_recoveryturn_shake("y",-3)  #プレイヤーのAP回復ターンのシェイク
    when 10
      num_player_ap_recoveryturn_shake("x",3)  #プレイヤーのAP回復ターンのシェイク
    when 11

      @shake_count_change = 0 #カウント初期化
      @command_count_change = 0
      @command_type = 1 #コマンドアニメ一枚目
      attack_command_clear  #攻撃コマンドの消去
      flash_command_clear   #閃光斬りコマンドの消去
      skill_command_clear   #スキルコマンドの消去
      @help_window.refresh("commandB#{@commandB_index}") # ヘルプメッセージウィンドウを更新

      start_phase4  # フェーズ 4 に移行
    end
  end
end
