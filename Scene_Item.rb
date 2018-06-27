#==============================================================================
# ** Scene_Item
#------------------------------------------------------------------------------
#  This class performs item screen processing.
#==============================================================================

class Scene_Item
  #--------------------------------------------------------------------------
  # * Main Processing
  #--------------------------------------------------------------------------
  def main
    # ウィンドウスキンの変更
    $game_system.windowskin_name = "skin04"
    # アクターを取得
    @actor = $game_party.actors[0]
    # ステータスウィンドウを作成
    @status_window = Window_Status.new(@actor, 1)
    # コマンドウィンドウを作成
    s1 = "Title"
    s2 = "Item"
    s3 = "Equipment"
    s4 = "Clothes"
    s5 = "Save"
    s6 = "Quit"
    @command_window = Window_Command.new(160, [s1, s2, s3, s4, s5, s6,])
    @command_window.y = 64
    @command_window.index = 1
    @command_window.active = false
    # Make help window, item window
    @help_window = Window_Help.new
    @item_window = Window_Item.new
    # Associate help window
    @item_window.help_window = @help_window
    # Make target window (set to invisible / inactive)
    @target_window = Window_Target.new
    @target_window.visible = false
    @target_window.active = false

    # Execute transition
    Graphics.transition
    # Main loop
    loop do
      # Update game screen
      Graphics.update
      # Update input information
      Input.update
      # Frame update
      update
      # Abort loop if screen is changed
      if $scene != self
        break
      end
    end
    # Prepare for transition
    Graphics.freeze
    # Dispose of windows
    @help_window.dispose
    @item_window.dispose
    @target_window.dispose

    @status_window.dispose
    @command_window.dispose
    # ウィンドウスキンの変更
    $game_system.windowskin_name = "skin01"
  end
  #--------------------------------------------------------------------------
  # * Frame Update
  #--------------------------------------------------------------------------
  def update
    # Update windows
    @help_window.update
    @item_window.update
    @target_window.update

    @command_window.update
    # If item window is active: call update_item
    if @item_window.active
      update_item
      return
    end
    # If target window is active: call update_target
    if @target_window.active
      update_target
      return
    end
  end
  #--------------------------------------------------------------------------
  # * Frame Update (when item window is active)
  #--------------------------------------------------------------------------
  def update_item
    # If B button was pressed
    if Input.trigger?(Input::B)
      # Play cancel SE
      $game_system.se_play($data_system.cancel_se)
      # Switch to menu screen
      $scene = Scene_Menu.new(1)
      return
    end
    # If C button was pressed
    if Input.trigger?(Input::C)
      # Get currently selected data on the item window
      @item = @item_window.item
      # If not a use item
      unless @item.is_a?(RPG::Item)
        # Play buzzer SE
        $game_system.se_play($data_system.buzzer_se)
        return
      end
      # If it can't be used
      unless $game_party.item_can_use?(@item.id)
        # Play buzzer SE
        $game_system.se_play($data_system.buzzer_se)
        return
      end
      # Play decision SE
      $game_system.se_play($data_system.decision_se)
      # If effect scope is an ally
      if @item.scope >= 3
        use_item
      # If effect scope is other than an ally
      else
        # If command event ID is valid
        if @item.common_event_id > 0
          # Command event call reservation
          $game_temp.common_event_id = @item.common_event_id
          # Play item use SE
          $game_system.se_play(@item.menu_se)
          # If consumable
          if @item.consumable
            # Decrease used items by 1
            $game_party.lose_item(@item.id, 1)
            # Draw item window item
            @item_window.draw_item(@item_window.index)
          end
          # Switch to map screen
          $scene = Scene_Map.new
          return
        end
      end
      return
    end
  end
  #--------------------------------------------------------------------------
  # * Frame Update (when target window is active)
  #--------------------------------------------------------------------------
  def update_target
    # If B button was pressed
    if Input.trigger?(Input::B)
      # Play cancel SE
      $game_system.se_play($data_system.cancel_se)
      # If unable to use because items ran out
      unless $game_party.item_can_use?(@item.id)
        # Remake item window contents
        @item_window.refresh
      end
      # Erase target window
      @item_window.active = true
      @target_window.visible = false
      @target_window.active = false
      return
    end
    # If C button was pressed
    if Input.trigger?(Input::C)
      # If items are used up
      if $game_party.item_number(@item.id) == 0
        # Play buzzer SE
        $game_system.se_play($data_system.buzzer_se)
        return
      end
      # If target is all
      if @target_window.index == -1
        # Apply item effects to entire party
        used = false
        for i in $game_party.actors
          used |= i.item_effect(@item)
        end
      end
      # If single target
      if @target_window.index >= 0
        # Apply item use effects to target actor
        target = $game_party.actors[@target_window.index]
        used = target.item_effect(@item)
      end
      # If an item was used
      if used
        # Play item use SE
        $game_system.se_play(@item.menu_se)
        # If consumable
        if @item.consumable
          # Decrease used items by 1
          $game_party.lose_item(@item.id, 1)
          # Redraw item window item
          @item_window.draw_item(@item_window.index)
        end
        # Remake target window contents
        @target_window.refresh
        # If all party members are dead
        if $game_party.all_dead?
          # Switch to game over screen
          $scene = Scene_Gameover.new
          return
        end
        # If common event ID is valid
        if @item.common_event_id > 0
          # Common event call reservation
          $game_temp.common_event_id = @item.common_event_id
          # Switch to map screen
          $scene = Scene_Map.new
          return
        end
      end
      # If item wasn't used
      unless used
        # Play buzzer SE
        $game_system.se_play($data_system.buzzer_se)
      end
      return
    end
  end
  #--------------------------------------------------------------------------
  # ● アイテム使用
  #--------------------------------------------------------------------------
  def use_item
    # アイテムを使い切った場合
    if $game_party.item_number(@item.id) == 0
      # ブザー SE を演奏
      $game_system.se_play($data_system.buzzer_se)
      return
    end

    food #食料の処理

    # ターゲットが単体の場合
    #if @target_window.index >= 0
    # ターゲットのアクターにアイテムの使用効果を適用
    if @no_use == 0
      target = $game_party.actors[0]
      used = target.item_effect(@item)
    end
    #end
    # アイテムを使った場合
    if used
      # アイテムの使用時 SE を演奏
      $game_system.se_play(@item.menu_se)
      # 消耗品の場合
      if @item.consumable
        # 使用したアイテムを 1 減らす
        $game_party.lose_item(@item.id, 1)
        # アイテムウィンドウの項目を再描画
        @item_window.draw_item(@item_window.index)
      end

      # ステータスウィンドウの内容を再作成
      @status_window.refresh
    # 全滅の場合
      if $game_party.all_dead?
        # ゲームオーバー画面に切り替え
        $scene = Scene_Gameover.new
        return
      end
      # コモンイベント ID が有効の場合
      if @item.common_event_id > 0
        # コモンイベント呼び出し予約
        $game_temp.common_event_id = @item.common_event_id
        # マップ画面に切り替え
        $scene = Scene_Map.new
        return
      end
    end
    # アイテムを使わなかった場合
    unless used
    end
    return
  end

  #--------------------------------------------------------------------------
  # ● 食料の処理
  #--------------------------------------------------------------------------
  def food
    @no_use = 0 #0ならばアイテムを使用する
    @eat = $game_variables[11] - $game_variables[10] #現在の食べられる量
    case @item.id
    when 3 #腹減り草
      # アイテムの使用時 SE を演奏
      $game_system.se_play(@item.menu_se)
      $game_party.lose_item(@item.id, 1)
      $game_variables[11] = 0 #満腹度がゼロになる
    when 12 #皮袋（水三回分）
      # アイテムの使用時 SE を演奏
      $game_system.se_play(@item.menu_se)
      $game_party.lose_item(@item.id, 1)
      $game_party.gain_item(13, 1) #皮袋（水二回分）を入手
    when 13 #皮袋（水二回分）分
      # アイテムの使用時 SE を演奏
      $game_system.se_play(@item.menu_se)
      $game_party.lose_item(@item.id, 1)
      $game_party.gain_item(14, 1) #皮袋（水一回分）を入手
    when 14 #皮袋（水一回分）
      # アイテムの使用時 SE を演奏
      $game_system.se_play(@item.menu_se)
      $game_party.lose_item(@item.id, 1)
      $game_party.gain_item(11, 1) #皮袋（空）を入手
    when 15 #皮袋（ぶどう酒三回分）
      # アイテムの使用時 SE を演奏
      $game_system.se_play(@item.menu_se)
      $game_party.lose_item(@item.id, 1)
      $game_party.gain_item(16, 1) #皮袋（ぶどう酒二回分）を入手
    when 16 #皮袋（ぶどう酒二回分）
      # アイテムの使用時 SE を演奏
      $game_system.se_play(@item.menu_se)
      $game_party.lose_item(@item.id, 1)
      $game_party.gain_item(17, 1) #皮袋（ぶどう酒一回分）を入手
    when 17 #皮袋（ぶどう酒一回分）
      # アイテムの使用時 SE を演奏
      $game_system.se_play(@item.menu_se)
      $game_party.lose_item(@item.id, 1)
      $game_party.gain_item(11, 1) #皮袋（空）を入手
    when 18 #皮袋（精液一回分）
      # アイテムの使用時 SE を演奏
      $game_system.se_play(@item.menu_se)
      $game_party.lose_item(@item.id, 1)
      $game_party.gain_item(11, 1) #皮袋（空）を入手
    when 21 #青りんご
        $game_system.se_play(@item.menu_se)
        $game_party.lose_item(@item.id, 1)
    when 22 #おにぎり
        $game_system.se_play(@item.menu_se)
        $game_party.lose_item(@item.id, 1)
    when 23 #サンドイッチ
        $game_system.se_play(@item.menu_se)
        $game_party.lose_item(@item.id, 1)
    when 24 #コリンの特製弁当
        $game_system.se_play(@item.menu_se)
        $game_party.lose_item(@item.id, 1)
        $game_variables[11] += 4 #満腹度増加
    when 25 #チーズ
        $game_system.se_play(@item.menu_se)
        $game_party.lose_item(@item.id, 1)
        $game_variables[11] += 1 #満腹度増加
    when 27 #ミートパイ
      if @eat >= 1
        # アイテムの使用時 SE を演奏
        $game_system.se_play(@item.menu_se)
        $game_party.lose_item(@item.id, 1)
        $game_variables[11] += 3 #満腹度増加
        $game_party.actors[0].maxsp += 30
        $game_variables[13] += 30 #増加したVIT量に加算
      else
        # ブザー SE を演奏
        $game_system.se_play($data_system.buzzer_se)
        @no_use = 1 #アイテムを使用出来なかった
        return
      end
    when 28 #チーズケーキ
      if @eat >= 1
        # アイテムの使用時 SE を演奏
        $game_system.se_play(@item.menu_se)
        $game_party.lose_item(@item.id, 1)
        $game_variables[11] += 1 #満腹度増加
        $game_party.actors[0].maxsp += 1
        $game_variables[13] += 1 #増加したVIT量に加算
      else
        # ブザー SE を演奏
        $game_system.se_play($data_system.buzzer_se)
        @no_use = 1 #アイテムを使用出来なかった
        return
      end
    when 29 #アップルパイ
      if @eat >= 1
        # アイテムの使用時 SE を演奏
        $game_system.se_play(@item.menu_se)
        $game_party.lose_item(@item.id, 1)
        $game_variables[11] += 1 #満腹度増加
        $game_party.actors[0].maxsp += 2
        $game_variables[13] += 2 #増加したVIT量に加算
      else
        # ブザー SE を演奏
        $game_system.se_play($data_system.buzzer_se)
        @no_use = 1 #アイテムを使用出来なかった
        return
      end
    when 30 #ミルフィーユ
      if @eat >= 1
        # アイテムの使用時 SE を演奏
        $game_system.se_play(@item.menu_se)
        $game_party.lose_item(@item.id, 1)
        $game_variables[11] += 1 #満腹度増加
        $game_party.actors[0].maxsp += 3
        $game_variables[13] += 3 #増加したVIT量に加算
      else
        # ブザー SE を演奏
        $game_system.se_play($data_system.buzzer_se)
        @no_use = 1 #アイテムを使用出来なかった
        return
      end
    when 31 #ミミズ肉
      if @eat >= 2 and $game_party.item_number(81) > 0
        # アイテムの使用時 SE を演奏
        $game_system.se_play(@item.menu_se)
        $game_party.lose_item(@item.id, 1)
        $game_variables[11] += 2 #満腹度増加
        $game_party.actors[0].maxsp += 1
        $game_variables[13] += 1 #増加したVIT量に加算
      else
        # ブザー SE を演奏
        $game_system.se_play($data_system.buzzer_se)
        @no_use = 1 #アイテムを使用出来なかった
        return
      end
    when 32 #クズ肉
      if @eat >= 2 and $game_party.item_number(81) > 0
        # アイテムの使用時 SE を演奏
        $game_system.se_play(@item.menu_se)
        $game_party.lose_item(@item.id, 1)
        $game_variables[11] += 2 #満腹度増加
        $game_party.actors[0].maxsp += 1
        $game_variables[13] += 1 #増加したVIT量に加算
      else
        # ブザー SE を演奏
        $game_system.se_play($data_system.buzzer_se)
        @no_use = 1 #アイテムを使用出来なかった
        return
      end
    when 33 #シシ肉
      if @eat >= 3 and $game_party.item_number(81) > 0
        # アイテムの使用時 SE を演奏
        $game_system.se_play(@item.menu_se)
        $game_party.lose_item(@item.id, 1)
        $game_variables[11] += 3 #満腹度増加
        $game_party.actors[0].maxsp += 2
        $game_variables[13] += 2 #増加したVIT量に加算
      else
        # ブザー SE を演奏
        $game_system.se_play($data_system.buzzer_se)
        @no_use = 1 #アイテムを使用出来なかった
        return
      end
    when 34 #牛肉
      if @eat >= 3 and $game_party.item_number(81) > 0
        # アイテムの使用時 SE を演奏
        $game_system.se_play(@item.menu_se)
        $game_party.lose_item(@item.id, 1)
        $game_variables[11] += 3 #満腹度増加
        $game_party.actors[0].maxsp += 3
        $game_variables[13] += 3 #増加したVIT量に加算
      else
        # ブザー SE を演奏
        $game_system.se_play($data_system.buzzer_se)
        @no_use = 1 #アイテムを使用出来なかった
        return
      end
    when 35 #蛇肉
      if @eat >= 3 and $game_party.item_number(81) > 0
        # アイテムの使用時 SE を演奏
        $game_system.se_play(@item.menu_se)
        $game_party.lose_item(@item.id, 1)
        $game_variables[11] += 3 #満腹度増加
        $game_party.actors[0].maxsp += 2
        $game_variables[13] += 2 #増加したVIT量に加算
      else
        # ブザー SE を演奏
        $game_system.se_play($data_system.buzzer_se)
        @no_use = 1 #アイテムを使用出来なかった
        return
      end
    when 36 #トカゲ肉
      if @eat >= 3 and $game_party.item_number(81) > 0
        # アイテムの使用時 SE を演奏
        $game_system.se_play(@item.menu_se)
        $game_party.lose_item(@item.id, 1)
        $game_variables[11] += 3 #満腹度増加
        $game_party.actors[0].maxsp += 4
        $game_variables[13] += 4 #増加したVIT量に加算
      else
        # ブザー SE を演奏
        $game_system.se_play($data_system.buzzer_se)
        @no_use = 1 #アイテムを使用出来なかった
        return
      end
    when 37 #イカゲソ
      if @eat >= 2 and $game_party.item_number(81) > 0
        # アイテムの使用時 SE を演奏
        $game_system.se_play(@item.menu_se)
        $game_party.lose_item(@item.id, 1)
        $game_variables[11] += 2 #満腹度増加
        $game_party.actors[0].maxsp += 1
        $game_variables[13] += 1 #増加したVIT量に加算
      else
        # ブザー SE を演奏
        $game_system.se_play($data_system.buzzer_se)
        @no_use = 1 #アイテムを使用出来なかった
        return
      end
    when 38 #カエル肉
      if @eat >= 2 and $game_party.item_number(81) > 0
        # アイテムの使用時 SE を演奏
        $game_system.se_play(@item.menu_se)
        $game_party.lose_item(@item.id, 1)
        $game_variables[11] += 2 #満腹度増加
        $game_party.actors[0].maxsp += 1
        $game_variables[13] += 1 #増加したVIT量に加算
      else
        # ブザー SE を演奏
        $game_system.se_play($data_system.buzzer_se)
        @no_use = 1 #アイテムを使用出来なかった
        return
      end
    when 39 #魚肉
      if @eat >= 3 and $game_party.item_number(81) > 0
        # アイテムの使用時 SE を演奏
        $game_system.se_play(@item.menu_se)
        $game_party.lose_item(@item.id, 1)
        $game_variables[11] += 3 #満腹度増加
        $game_party.actors[0].maxsp += 2
        $game_variables[13] += 2 #増加したVIT量に加算
      else
        # ブザー SE を演奏
        $game_system.se_play($data_system.buzzer_se)
        @no_use = 1 #アイテムを使用出来なかった
        return
      end
    when 40 #ペンギン肉
      if @eat >= 3 and $game_party.item_number(81) > 0
        # アイテムの使用時 SE を演奏
        $game_system.se_play(@item.menu_se)
        $game_party.lose_item(@item.id, 1)
        $game_variables[11] += 3 #満腹度増加
        $game_party.actors[0].maxsp += 2
        $game_variables[13] += 2 #増加したVIT量に加算
      else
        # ブザー SE を演奏
        $game_system.se_play($data_system.buzzer_se)
        @no_use = 1 #アイテムを使用出来なかった
        return
      end
    when 41 #カニ肉
      if @eat >= 3 and $game_party.item_number(81) > 0
        # アイテムの使用時 SE を演奏
        $game_system.se_play(@item.menu_se)
        $game_party.lose_item(@item.id, 1)
        $game_variables[11] += 3 #満腹度増加
        $game_party.actors[0].maxsp += 5
        $game_variables[13] += 5 #増加したVIT量に加算
      else
        # ブザー SE を演奏
        $game_system.se_play($data_system.buzzer_se)
        @no_use = 1 #アイテムを使用出来なかった
        return
      end
    when 42 #大鳥肉
      if @eat >= 3 and $game_party.item_number(81) > 0
        # アイテムの使用時 SE を演奏
        $game_system.se_play(@item.menu_se)
        $game_party.lose_item(@item.id, 1)
        $game_variables[11] += 3 #満腹度増加
        $game_party.actors[0].maxsp += 6
        $game_variables[13] += 6 #増加したVIT量に加算
      else
        # ブザー SE を演奏
        $game_system.se_play($data_system.buzzer_se)
        @no_use = 1 #アイテムを使用出来なかった
        return
      end
    when 43 #原始肉
      if @eat >= 4 and $game_party.item_number(81) > 0
        # アイテムの使用時 SE を演奏
        $game_system.se_play(@item.menu_se)
        $game_party.lose_item(@item.id, 1)
        $game_variables[11] += 4 #満腹度増加
        $game_party.actors[0].maxsp += 12
        $game_variables[13] += 12 #増加したVIT量に加算
      else
        # ブザー SE を演奏
        $game_system.se_play($data_system.buzzer_se)
        @no_use = 1 #アイテムを使用出来なかった
        return
      end
    when 44 #大蛸肉
      if @eat >= 4 and $game_party.item_number(81) > 0
        # アイテムの使用時 SE を演奏
        $game_system.se_play(@item.menu_se)
        $game_party.lose_item(@item.id, 1)
        $game_variables[11] += 4 #満腹度増加
        $game_party.actors[0].maxsp += 16
        $game_variables[13] += 16 #増加したVIT量に加算
      else
        # ブザー SE を演奏
        $game_system.se_play($data_system.buzzer_se)
        @no_use = 1 #アイテムを使用出来なかった
        return
      end

    end

    if $game_variables[11] > $game_variables[10]
      $game_variables[11] = $game_variables[10]
    end

    # アイテムウィンドウの項目を再描画
    @item_window.draw_item(@item_window.index)
    @item_window.refresh
  end
  #--------------------------------------------------------------------------
  # ● 回復アイテム使用時のＨＰとＶＩＴ回復処理
  #--------------------------------------------------------------------------
  def hp_recovery_item
    if $game_party.actors[0].maxhp != $game_party.actors[0].hp
      a = $game_party.actors[0].maxhp - $game_party.actors[0].hp  #ＨＰ回復量
      b = a / 3
        if $game_party.actors[0].sp < b  #ＶＩＴが不足
          @vit_cost = $game_party.actors[0].sp
          @hp_recovery = @vit_cost * 3

          $game_party.actors[0].sp -= @vit_cost
          $game_party.actors[0].hp += @hp_recovery
        else  #ＨＰ全回復
          @vit_cost = b
          @hp_recovery = $game_party.actors[0].maxhp - $game_party.actors[0].hp

          $game_party.actors[0].sp -= @vit_cost
          $game_party.actors[0].hp += @hp_recovery
        end
    end
  end
  #--------------------------------------------------------------------------
  # ● 背景画像の表示
  #--------------------------------------------------------------------------
  def menuback
    @menuback = Sprite.new
    @menuback.bitmap = RPG::Cache.picture("menuback")
  end
end
