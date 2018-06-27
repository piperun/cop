#==============================================================================
# ■ Scene_Item
#------------------------------------------------------------------------------
# 　アイテム画面の処理を行うクラスです。
#==============================================================================

class Scene_Item
  #--------------------------------------------------------------------------
  # ● メイン処理
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
    # ヘルプウィンドウ、アイテムウィンドウを作成
    @help_window = Window_Help.new
    @item_window = Window_Item.new
    # ヘルプウィンドウを関連付け
    @item_window.help_window = @help_window
    # ターゲットウィンドウを作成 (不可視・非アクティブに設定)
    @target_window = Window_Target.new
    @target_window.visible = false
    @target_window.active = false

    # トランジション実行
    Graphics.transition
    # メインループ
    loop do
      # ゲーム画面を更新
      Graphics.update
      # 入力情報を更新
      Input.update
      # フレーム更新
      update
      # 画面が切り替わったらループを中断
      if $scene != self
        break
      end
    end
    # トランジション準備
    Graphics.freeze
    # ウィンドウを解放
    @help_window.dispose
    @item_window.dispose
    @target_window.dispose

    @status_window.dispose
    @command_window.dispose
    # ウィンドウスキンの変更
    $game_system.windowskin_name = "skin01"
  end
  #--------------------------------------------------------------------------
  # ● フレーム更新
  #--------------------------------------------------------------------------
  def update
    # ウィンドウを更新
    @help_window.update
    @item_window.update
    @target_window.update

    @command_window.update
    # アイテムウィンドウがアクティブの場合: update_item を呼ぶ
    if @item_window.active
      update_item
      return
    end
    # ターゲットウィンドウがアクティブの場合: update_target を呼ぶ
    if @target_window.active
      update_target
      return
    end
  end
  #--------------------------------------------------------------------------
  # ● フレーム更新 (アイテムウィンドウがアクティブの場合)
  #--------------------------------------------------------------------------
  def update_item
    # B ボタンが押された場合
    if Input.trigger?(Input::B)
      # キャンセル SE を演奏
      $game_system.se_play($data_system.cancel_se)
      # メニュー画面に切り替え
      $scene = Scene_Menu.new(1)
      return
    end
    # C ボタンが押された場合
    if Input.trigger?(Input::C)
      # アイテムウィンドウで現在選択されているデータを取得
      @item = @item_window.item
      # 使用アイテムではない場合
      unless @item.is_a?(RPG::Item)
        # ブザー SE を演奏
        $game_system.se_play($data_system.buzzer_se)
        return
      end
      # 使用できない場合
      unless $game_party.item_can_use?(@item.id)
        # ブザー SE を演奏
        $game_system.se_play($data_system.buzzer_se)
        return
      end
      # 決定 SE を演奏
      $game_system.se_play($data_system.decision_se)
      # 効果範囲が味方の場合
      if @item.scope >= 3
        # ターゲットウィンドウをアクティブ化
        #@item_window.active = false
        #@target_window.x = (@item_window.index + 1) % 2 * 304
        #@target_window.visible = true
        #@target_window.active = true
        # 効果範囲 (単体/全体) に応じてカーソル位置を設定
        #if @item.scope == 4 || @item.scope == 6
        #  @target_window.index = -1
        #else
        #  @target_window.index = 0
        #end
        use_item

      # 効果範囲が味方以外の場合
      else
        # コモンイベント ID が有効の場合
        if @item.common_event_id > 0
          # コモンイベント呼び出し予約
          $game_temp.common_event_id = @item.common_event_id
          # アイテムの使用時 SE を演奏
          $game_system.se_play(@item.menu_se)
          # 消耗品の場合
          if @item.consumable
            # 使用したアイテムを 1 減らす
            $game_party.lose_item(@item.id, 1)
            # アイテムウィンドウの項目を再描画
            @item_window.draw_item(@item_window.index)
          end
          # マップ画面に切り替え
          $scene = Scene_Map.new
          return
        end
      end
      return
    end
  end
  #--------------------------------------------------------------------------
  # ● フレーム更新 (ターゲットウィンドウがアクティブの場合)
  #--------------------------------------------------------------------------
  def update_target
    # B ボタンが押された場合
    if Input.trigger?(Input::B)
      # キャンセル SE を演奏
      $game_system.se_play($data_system.cancel_se)
      # アイテム切れなどで使用できなくなった場合
      unless $game_party.item_can_use?(@item.id)
        # アイテムウィンドウの内容を再作成
        @item_window.refresh
      end
      # ターゲットウィンドウを消去
      @item_window.active = true
      @target_window.visible = false
      @target_window.active = false
      return
    end
    # C ボタンが押された場合
    if Input.trigger?(Input::C)
      # アイテムを使い切った場合
      if $game_party.item_number(@item.id) == 0
        # ブザー SE を演奏
        $game_system.se_play($data_system.buzzer_se)
        return
      end
      # ターゲットが全体の場合
      if @target_window.index == -1
        # パーティ全体にアイテムの使用効果を適用
        used = false
        for i in $game_party.actors
          used |= i.item_effect(@item)
        end
      end
      # ターゲットが単体の場合
      if @target_window.index >= 0
        # ターゲットのアクターにアイテムの使用効果を適用
        target = $game_party.actors[@target_window.index]
        used = target.item_effect(@item)
      end
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
        # ターゲットウィンドウの内容を再作成
        @target_window.refresh
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
        # ブザー SE を演奏
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

      #hp_recovery_item #回復アイテム使用時のＨＰとＶＩＴ回復処理

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
      # ブザー SE を演奏
      #$game_system.se_play($data_system.buzzer_se)
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
