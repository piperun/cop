#==============================================================================
# ** Scene_Menu
#------------------------------------------------------------------------------
#  This class performs menu screen processing.
#==============================================================================

class Scene_Menu
  include GameData

  #--------------------------------------------------------------------------
  # ● Object Initialization
  #     menu_index : command cursor's initial position
  #--------------------------------------------------------------------------
  def initialize(menu_index = 0)
    @menu_index = menu_index
  end
  #--------------------------------------------------------------------------
  # ● Main Processing
  #--------------------------------------------------------------------------
  def main
    # 画像の表示
    menuback
    $menu_pose = Pose.new("MenuA", "A01")
    # ウィンドウスキンの変更
    $game_system.windowskin_name = "skin04"
    # アクターを取得
    @actor = $game_party.actors[0]
    # ステータスウィンドウを作成
    @status_window = Window_Status.new(@actor, 1)
    # 情報ウィンドウを作成
    @info_window = Window_Info.new
    @info_window.visible = false
    # コマンドウィンドウを作成
    s1 = "Title"
    s2 = "Item"
    s3 = "Equipment"
    s4 = "Outfits"
    s5 = "Clothes"
    s6 = "Save"
    s7 = "Quit"
    @command_window = Window_Command.new(180, [s1, s2, s3, s4, s5, s6, s7])
    @command_window.y = 32
    @command_window.index = @menu_index
    # Outfits window
    s1 = "Cancel"
    @outfits_window = Window_Command.new(160, [s1])
    @outfits_window.x = 480
    @outfits_window.y = 32
    @outfits_window.active = false
    @outfits_window.visible = false
    # 着替えコマンドウィンドウを作成
    s1 = "Remove"
    s2 = "Wear"
    s3 = "Cancel"
    @change_window = Window_Command.new(160, [s1, s2, s3])
    @change_window.x = 480
    @change_window.y = 32
    @change_window.active = false
    @change_window.visible = false
    # 脱ぐコマンドウィンドウを作成
    s1 = "Jacket"
    s2 = "Camisole"
    s3 = "Skirt"
    s4 = "Panties"
    s5 = "Cancel"
    @put_off_window = Window_Command.new(160, [s1, s2, s3, s4, s5])
    @put_off_window.x = 480
    @put_off_window.y = 32
    @put_off_window.active = false
    @put_off_window.visible = false
    # 着るコマンドウィンドウを作成
    s1 = "Jacket"
    s2 = "Camisole"
    s3 = "Skirt"
    s4 = "Panties"
    s5 = "Cancel"
    @put_on_window = Window_Command.new(160, [s1, s2, s3, s4, s5])
    @put_on_window.x = 480
    @put_on_window.y = 32
    @put_on_window.active = false
    @put_on_window.visible = false

    @page_limit = 5
    @total_pages = (CLOTHING_SETS.size - 1) / @page_limit + 1

    @index_put_off_now = 0
    @index_put_on_now = 0

    @index_put_off_disable0 = 0
    @index_put_off_disable1 = 0
    @index_put_off_disable2 = 0
    @index_put_off_disable3 = 0
    @index_put_on_disable0 = 0
    @index_put_on_disable1 = 0
    @index_put_on_disable2 = 0
    @index_put_on_disable3 = 0

    @pose_num = "A"
    @pose_y = 280

    title_window  #称号コマンドウインドウの作成

    # セーブ禁止の場合
    if $game_system.save_disabled
      # Disable save
      @command_window.disable_item(4)
    end
    # トランジション実行
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
    # 画像を開放
    @menuback.dispose
    $menu_pose.dispose
    # Dispose of windows
    @status_window.dispose
    @info_window.dispose
    @command_window.dispose
    @outfits_window.dispose
    @change_window.dispose
    @put_off_window.dispose
    @put_on_window.dispose
    @title_window.dispose
    @help_window.dispose
    # ウィンドウスキンの変更
    $game_system.windowskin_name = "skin01"
    check_shame #露出状態のチェック
    #服装のチェック
    if $game_variables[1] >= 500 #ゲーム進行度が500以上ならチェックする。
      $game_switches[6] = true
    end
  end
  #--------------------------------------------------------------------------
  # ● Frame Update
  #--------------------------------------------------------------------------
  def update
    # 情報ウィンドウの表示
    if @command_window.index == 0
      unless @title_window.active
        @info_window.visible = true
      end
    else
      @info_window.visible = false
    end
    # Update windows
    @command_window.update
    @outfits_window.update
    @change_window.update
    @put_off_window.update
    @put_on_window.update
    @title_window.update
    # If command window is active: call update_command
    if @command_window.active
      update_command
      return
    end
    # 称号ウィンドウがアクティブの場合: update_title を呼ぶ
    if @title_window.active
      update_title
      return
    end
    # 
    if @outfits_window.active
      update_outfits
      return
    end
    # 着替えウィンドウがアクティブの場合: update_change を呼ぶ
    if @change_window.active
      update_change
      return
    end
    # 脱ぐウィンドウがアクティブの場合: update_put_off を呼ぶ
    if @put_off_window.active
      update_put_off
      return
    end
    # 着るウィンドウがアクティブの場合: update_put_on を呼ぶ
    if @put_on_window.active
      update_put_on
      return
    end
  end
  #--------------------------------------------------------------------------
  # ● Frame Update (when command window is active)
  #--------------------------------------------------------------------------
  def update_command
    # If B button was pressed
    if Input.trigger?(Input::B)
      # Play cancel SE
      $game_system.se_play($data_system.cancel_se)
      # Switch to map screen
      $scene = Scene_Map.new
    # else if C button was pressed
    elsif Input.trigger?(Input::C)
      # If command other than save or end game, and party members = 0
      if $game_party.actors.size == 0 and @command_window.index < 4
        # Play buzzer SE
        $game_system.se_play($data_system.buzzer_se)
        return
      end
      # Branch by command window cursor position
      case @command_window.index
      when 0  # item
        # Play decision SE
        $game_system.se_play($data_system.decision_se)
        @command_window.active = false
        @info_window.visible = false
        @title_window.visible = true
        @title_window.active = true
        @help_window.visible = true
      when 1  # アイテム
        # Play decision SE
        $game_system.se_play($data_system.decision_se)
        # アイテム画面に切り替え
        $scene = Scene_Item.new
      when 2  # 装備
        # 決定 SE を演奏
        $game_system.se_play($data_system.decision_se)
        # 装備画面に切り替え
        $scene = Scene_Equip.new
      when 3  # Outfits
        # Play decision SE
        $game_system.se_play($data_system.decision_se)
        mk_outfits_window
        switch_windows(@command_window, @outfits_window)
        @status_window.visible = false
      when 4  # 衣服
        # Play decision SE
        $game_system.se_play($data_system.decision_se)
        # 衣服ウィンドウをアクティブにする
        switch_windows(@command_window, @change_window)
        @status_window.visible = false

        if $game_switches[2] == true  #着替えコマンドが禁止の場合
          @change_window.disable_item(0)
          @change_window.disable_item(1)
        end
      when 5  # セーブ
        # セーブ禁止の場合
        if $game_system.save_disabled
          # Play buzzer SE
          $game_system.se_play($data_system.buzzer_se)
          return
        end
        # Play decision SE
        $game_system.se_play($data_system.decision_se)
        # Switch to save screen
        $scene = Scene_Save.new
      when 6  # end game
        # Play decision SE
        $game_system.se_play($data_system.decision_se)
        # Switch to end game screen
        $scene = Scene_End.new
      end
      return
    end
  end
  #--------------------------------------------------------------------------
  # ● Frame Update (when outfits window is active)
  #--------------------------------------------------------------------------
  def update_outfits
    # If B button was pressed
    if Input.trigger?(Input::B)
      $game_system.se_play($data_system.cancel_se)
      switch_windows(@outfits_window, @command_window)
      @status_window.visible = true
    # else if C button was pressed
    elsif Input.trigger?(Input::C)
      cursor = (@page - 1) * @page_limit + @outfits_window.index
      if @total_pages > 1
        if @page == @total_pages
          items_count = CLOTHING_SETS.size
        else
          items_count = @page * @page_limit
        end

        if cursor == items_count
          # Play decision SE
          $game_system.se_play($data_system.decision_se)
          if @page == @total_pages
            mk_outfits_window # show 1st page
          else
            mk_outfits_window(@page + 1) # show next page
          end
        elsif cursor == items_count + 1
          # Play cancel SE
          $game_system.se_play($data_system.cancel_se)
          # Make command window activeindow
          switch_windows(@outfits_window, @command_window)
          @status_window.visible = true
        elsif $game_switches[CLOTHING_SETS[cursor]['switch']]
          # Play decision SE
          $game_system.se_play($data_system.decision_se)
          # Change current outfitt
          $game_variables[CLOTHING_VARIABLE] = cursor
          # Make command window active
          switch_windows(@outfits_window, @command_window)
          @status_window.visible = true
        end
      else
        if cursor == CLOTHING_SETS.size
          # Play cancel SE
          $game_system.se_play($data_system.cancel_se)
          # Make command window active
          switch_windows(@outfits_window, @command_window)
          @status_window.visible = true
        elsif $game_switches[CLOTHING_SETS[cursor]['switch']]
          # Play decision SE
          $game_system.se_play($data_system.decision_se)
          # Change current outfitt
          $game_variables[CLOTHING_VARIABLE] = cursor
          # Make command window active
          switch_windows(@outfits_window, @command_window)
          @status_window.visible = true
        end
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● Frame Update (when change window is active)
  #--------------------------------------------------------------------------
  def update_change
    # If B button was pressed
    if Input.trigger?(Input::B)
      # Play cancel SE
      $game_system.se_play($data_system.cancel_se)
      # Make command window active
      switch_windows(@change_window, @command_window)
      @status_window.visible = true
    # else if C button was pressed
    elsif Input.trigger?(Input::C)
      # コマンドウィンドウのカーソル位置で分岐
      case @change_window.index
        when 0  # Put off
          if $game_switches[2] == true  # When the change of clothes command is prohibited
            # Play buzzer SE
            $game_system.se_play($data_system.buzzer_se)
            return
          end
          # Play decision SE
          $game_system.se_play($data_system.decision_se)
          switch_windows(@change_window, @put_off_window)
          disable_put_off

        when 1  # Wear
          if $game_switches[2] == true  # When the change of clothes command is prohibited
            # Play buzzer SE
            $game_system.se_play($data_system.buzzer_se)
            return
          end
          # Play decision SE
          $game_system.se_play($data_system.decision_se)
          switch_windows(@change_window, @put_on_window)
          disable_put_on

        when 2  # Cancel
          # Play cancel SE
          $game_system.se_play($data_system.cancel_se)
          switch_windows(@change_window, @command_window)
          @status_window.visible = true
          # 乳が揺れる
          $menu_pose.shake
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● フレーム更新 (脱ぐウィンドウがアクティブの場合)
  #--------------------------------------------------------------------------
  def update_put_off
    check_put_off #脱衣の変更
    # B ボタンが押された場合
    if Input.trigger?(Input::B)
      # Play cancel SE
      $game_system.se_play($data_system.cancel_se)
      switch_windows(@put_off_window, @change_window)
      @index_put_off_now = 0
      @pose_num = "A"
      @pose_y = 280
      $menu_pose.pose("MenuA").face("A01")
    end
    # If C button was pressed
    if Input.trigger?(Input::C)
      # コマンドウィンドウのカーソル位置で分岐
      case @put_off_window.index
      when 0  # Jacket
        # 変更禁止の場合
        if @index_put_off_disable0 == 1
          # Play buzzer SE
          $game_system.se_play($data_system.buzzer_se)
          return
        end
        # Play decision SE
        $game_system.se_play($data_system.decision_se)
        change_put_off
      when 1  # Camisole
        # 変更禁止の場合
        if @index_put_off_disable1 == 1
          # Play buzzer SE
          $game_system.se_play($data_system.buzzer_se)
          return
        end
        # Play decision SE
        $game_system.se_play($data_system.decision_se)
        change_put_off
      when 2  # Skirt
        # 変更禁止の場合
        if @index_put_off_disable2 == 1
          # Play buzzer SE
          $game_system.se_play($data_system.buzzer_se)
          return
        end
        # Play decision SE
        $game_system.se_play($data_system.decision_se)
        change_put_off
      when 3  # Panties
        # 変更禁止の場合
        if @index_put_off_disable3 == 1
          # Play buzzer SE
          $game_system.se_play($data_system.buzzer_se)
          return
        end
        # Play decision SE
        $game_system.se_play($data_system.decision_se)
        change_put_off
      when 4  # Cancel
        # Play cancel SE
        $game_system.se_play($data_system.cancel_se)
        switch_windows(@put_off_window, @change_window)
        @index_put_off_now = 0
        @pose_num = "A"
        @pose_y = 280
        $menu_pose.pose("MenuA").face("A01")
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● フレーム更新 (着るウィンドウがアクティブの場合)
  #--------------------------------------------------------------------------
  def update_put_on
    check_put_on #着衣の変更
    # B ボタンが押された場合
    if Input.trigger?(Input::B)
      # Play cancel SE
      $game_system.se_play($data_system.cancel_se)
      switch_windows(@put_on_window, @change_window)
      @index_put_on_now = 0
      @pose_num = "A"
      @pose_y = 280
      $menu_pose.pose("MenuA").face("A01")
    end
    # C ボタンが押された場合
    if Input.trigger?(Input::C)
      if $game_switches[3] == true  #黒パンティ入手後
        # コマンドウィンドウのカーソル位置で分岐
        case @put_on_window.index
        when 0  # Jacket
          # In case of change prohibition
          if @index_put_on_disable0 == 1
            # Play buzzer SE
            $game_system.se_play($data_system.buzzer_se)
            return
          end
          # Play decision SE
          $game_system.se_play($data_system.decision_se)
          change_put_on
        when 1  # Camisole
          # In case of change prohibition
          if @index_put_on_disable1 == 1
            # Play buzzer SE
            $game_system.se_play($data_system.buzzer_se)
            return
          end
          # Play decision SE
          $game_system.se_play($data_system.decision_se)
          change_put_on
        when 2  # Skirt
          # In case of change prohibition
          if @index_put_on_disable2 == 1
            # Play buzzer SE
            $game_system.se_play($data_system.buzzer_se)
            return
          end
          # Play decision SE
          $game_system.se_play($data_system.decision_se)
          change_put_on
        when 3  # Panties
          # In case of change prohibition
          if @index_put_on_disable3 == 1
            # Play buzzer SE
            $game_system.se_play($data_system.buzzer_se)
            return
          end
          # Play decision SE
          $game_system.se_play($data_system.decision_se)
          change_put_on
          put_off_window_refresh  #脱ぐコマンドウィンドウの更新
        when 4  # Black panties
          # In case of change prohibition
          if @index_put_on_disable4 == 1
            # Play buzzer SE
            $game_system.se_play($data_system.buzzer_se)
            return
          end
          # Play decision SE
          $game_system.se_play($data_system.decision_se)
          $game_switches[4] = true  #黒パンティ着用
          change_put_on
          put_off_window_refresh  #脱ぐコマンドウィンドウの更新
        when 5  # Cancel
          # Play cancel SE
          $game_system.se_play($data_system.cancel_se)
          switch_windows(@put_on_window, @change_window)
          @index_put_on_now = 0
          @pose_num = "A"
          @pose_y = 280
          $menu_pose.pose("MenuA").face("A01")
        end
      else
        # コマンドウィンドウのカーソル位置で分岐
        case @put_on_window.index
        when 0  # Jacket
          # In case of change prohibition
          if @index_put_on_disable0 == 1
            # Play buzzer SE
            $game_system.se_play($data_system.buzzer_se)
            return
          end
          # Play decision SE
          $game_system.se_play($data_system.decision_se)
          change_put_on
        when 1  # Camisole
          # In case of change prohibition
          if @index_put_on_disable1 == 1
            # Play buzzer SE
            $game_system.se_play($data_system.buzzer_se)
            return
          end
          # Play decision SE
          $game_system.se_play($data_system.decision_se)
          change_put_on
        when 2  # Skirt
          # In case of change prohibition
          if @index_put_on_disable2 == 1
            # Play buzzer SE
            $game_system.se_play($data_system.buzzer_se)
            return
          end
          # Play decision SE
          $game_system.se_play($data_system.decision_se)
          change_put_on
        when 3  # Panties
          # In case of change prohibition
          if @index_put_on_disable3 == 1
            # Play buzzer SE
            $game_system.se_play($data_system.buzzer_se)
            return
          end
          # Play decision SE
          $game_system.se_play($data_system.decision_se)
          change_put_on
        when 4  # Cancel
          # Play cancel SE
          $game_system.se_play($data_system.cancel_se)
          switch_windows(@put_on_window, @change_window)
          @index_put_on_now = 0
          @pose_num = "A"
          @pose_y = 280
          $menu_pose.pose("MenuA").face("A01")
        end
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● ポーズ変更の判断
  #--------------------------------------------------------------------------
  def check_put_off #脱衣の変更
    @index_put_off_old = @index_put_off_now
    # コマンドウィンドウのカーソル位置で分岐
    case @put_off_window.index
    when 0  # Jacket
      if $game_variables[5] == 0
        @pose_num = "A"
        @face_number = "14"
      elsif @index_put_off_disable0 == 1
        @pose_num = "A"
        @face_number = "02"
      else
        @pose_num = "B"
        @face_number = "01"
      end
      @index_put_off_now = 1
      if @index_put_off_old != @index_put_off_now
        @move_y = 320
        change_pose
        @pose_y = 320
      end
    when 1  # Camisole
      if $game_variables[5] <= 1
        @pose_num = "A"
        @face_number = "14"
      elsif @index_put_off_disable1 == 1
        @pose_num = "A"
        @face_number = "02"
      else
        @pose_num = "C"
        @face_number = "07"
      end
      @index_put_off_now = 2
      if @index_put_off_old != @index_put_off_now
        @move_y = 280
        change_pose
        @pose_y = 280
      end
    when 2  # Skirt
      if $game_variables[5] <= 4
        @pose_num = "A"
        @face_number = "014"
      elsif @index_put_off_disable2 == 1
        @pose_num = "A"
        @face_number = "02"
      else
        @pose_num = "D"
        @face_number = "04"
      end
      @index_put_off_now = 3
      if @index_put_off_old != @index_put_off_now
        @move_y = 200
        change_pose
        @pose_y = 200
      end
    when 3  # Panties
      if $game_variables[5] <= 2
        @pose_num = "A"
        @face_number = "14"
      elsif @index_put_off_disable3 == 1
        @pose_num = "A"
        @face_number = "02"
      else
        @pose_num = "G"
        @face_number = "02"
      end
      @index_put_off_now = 4
      if @index_put_off_old != @index_put_off_now
        if @index_put_off_disable3 != 1
          @pose_y = 320
          @move_y = 240
        else
          @move_y = 240
        end
        change_pose
        @pose_y = 200
      end
    when 4  # Cancel
      @pose_num = "A"
      @face_number = "01"
      @index_put_off_now = 5
      if @index_put_off_old != @index_put_off_now
        @move_y = 280
        change_pose
        @pose_y = 280
      end
    end
  end
  def check_put_on #着衣の変更
    @index_put_on_old = @index_put_on_now
    case @put_on_window.index
    when 0  # Jacket
      @pose_num = "A"
      @face_number = "01"
      @index_put_on_now = 1
      if @index_put_on_old != @index_put_on_now
        @move_y = 320
        change_pose
        @pose_y = 320
      end
    when 1  # Camisole
      @pose_num = "A"
      @face_number = "01"
      @index_put_on_now = 2
      if @index_put_on_old != @index_put_on_now
        @move_y = 280
        change_pose
        @pose_y = 280
      end
    when 2  # Skirt
      @pose_num = "A"
      @face_number = "01"
      @index_put_on_now = 3
      if @index_put_on_old != @index_put_on_now
        @move_y = 200
        change_pose
        @pose_y = 200
      end
    when 3  # Panties
      @pose_num = "A"
      @face_number = "02"
      @index_put_on_now = 4
      if @index_put_on_old != @index_put_on_now
        @move_y = 200
        change_pose
        @pose_y = 200
      end
    when 4  # Cancel
      @pose_num = "A"
      @face_number = "01"
      @index_put_on_now = 5
      if @index_put_on_old != @index_put_on_now
        @move_y = 280
        change_pose
        @pose_y = 280
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● Change pose
  #--------------------------------------------------------------------------
  def change_pose
    tween = Tween.new()
    if ['F', 'G', 'H', 'D'].include?(@pose_num)
      $menu_pose.pose("Menu#{@pose_num}").face("D#{@face_number}")
    else
      $menu_pose.pose("Menu#{@pose_num}").face("A#{@face_number}")
    end
    tween.position($menu_pose, [nil, @pose_y], [nil, @move_y], 5).start()
  end
  #--------------------------------------------------------------------------
  # ● 変数3
  # 1 #ブーツ、パンティ、スカート、キャミソール、上衣          #通常
  # 2 #ブーツ、パンティ、スカート、キャミソール                #通常
  # 3 #ブーツ、パンティ、スカート、上衣                [羞恥]  #上半身が上衣のみ
  # 4 #ブーツ、パンティ、スカート                      [羞恥]  #裸に近い姿
  # 5 #ブーツ、パンティ、キャミソール                          #裸に近い姿
  # 6 #ブーツ、パンティ                                [羞恥]  #裸に近い姿
  # 7 #ブーツ、キャミソール                            [羞恥]  #裸に近い姿
  # 8 #全裸                                            [羞恥]  #裸
  # 11 #ブーツ、スカート、キャミソール、上衣           [羞恥]  #通常
  # 12 #ブーツ、スカート、キャミソール                 [羞恥]  #通常
  # 13 #ブーツ、スカート、上衣                         [羞恥]  #上半身が上衣のみ
  # 14 #ブーツ、スカート                               [羞恥]  #裸に近い姿
  #--------------------------------------------------------------------------
  #--------------------------------------------------------------------------
  # ● 変数4
  # 1 #通常
  # 2 #上半身が上衣のみ
  # 3 #裸に近い姿
  # 4 #裸
  #--------------------------------------------------------------------------
  #--------------------------------------------------------------------------
  # ● 変数5
  # Lv0 #露出なし
  # Lv1 #上衣を脱いで行動出来る
  # Lv2 #キャミソールを脱いで行動出来る（上衣は着用）
  # Lv3 #ノーパンで行動出来る（スカートは着用）
  # Lv4 #上半身裸で行動出来る
  # Lv5 #パンツ一枚で行動出来る
  # Lv6 #全裸で行動出来る
  #--------------------------------------------------------------------------
  #--------------------------------------------------------------------------
  # ● コマンドが実行可能かの判断
  #--------------------------------------------------------------------------
  def disable_put_off
    case $game_variables[3]
    when 1
      @put_off_window.able_item(0)
      @put_off_window.disable_item(1) #上衣を着ているのでキャミソールを脱げない
      @put_off_window.disable_item(2) #上衣を着ているのでスカートを脱げない
      @put_off_window.able_item(3)
      @index_put_off_disable0 = 0
      @index_put_off_disable1 = 1
      @index_put_off_disable2 = 1
      @index_put_off_disable3 = 0
    when 2
      @put_off_window.disable_item(0)
      @put_off_window.able_item(1)
      @put_off_window.able_item(2)
      @put_off_window.able_item(3)
      @index_put_off_disable0 = 1
      @index_put_off_disable1 = 0
      @index_put_off_disable2 = 0
      @index_put_off_disable3 = 0
    when 3
      @put_off_window.able_item(0)
      @put_off_window.disable_item(1)
      @put_off_window.disable_item(2) #上衣を着ているのでスカートを脱げない
      @put_off_window.able_item(3)
      @index_put_off_disable0 = 0
      @index_put_off_disable1 = 1
      @index_put_off_disable2 = 1
      @index_put_off_disable3 = 0
    when 4
      @put_off_window.disable_item(0)
      @put_off_window.disable_item(1)
      @put_off_window.able_item(2)
      @put_off_window.able_item(3)
      @index_put_off_disable0 = 1
      @index_put_off_disable1 = 1
      @index_put_off_disable2 = 0
      @index_put_off_disable3 = 0
    when 5
      @put_off_window.disable_item(0)
      @put_off_window.able_item(1)
      @put_off_window.disable_item(2)
      @put_off_window.able_item(3)
      @index_put_off_disable0 = 1
      @index_put_off_disable1 = 0
      @index_put_off_disable2 = 1
      @index_put_off_disable3 = 0
    when 6
      @put_off_window.disable_item(0)
      @put_off_window.disable_item(1)
      @put_off_window.disable_item(2)
      @put_off_window.able_item(3)
      @index_put_off_disable0 = 1
      @index_put_off_disable1 = 1
      @index_put_off_disable2 = 1
      @index_put_off_disable3 = 0
    when 7
      @put_off_window.disable_item(0)
      @put_off_window.able_item(1)
      @put_off_window.disable_item(2)
      @put_off_window.disable_item(3)
      @index_put_off_disable0 = 1
      @index_put_off_disable1 = 0
      @index_put_off_disable2 = 1
      @index_put_off_disable3 = 1
    when 8
      @put_off_window.disable_item(0)
      @put_off_window.disable_item(1)
      @put_off_window.disable_item(2)
      @put_off_window.disable_item(3)
      @index_put_off_disable0 = 1
      @index_put_off_disable1 = 1
      @index_put_off_disable2 = 1
      @index_put_off_disable3 = 1
    when 11
      @put_off_window.able_item(0)
      @put_off_window.disable_item(1) #上衣を着ているのでキャミソールを脱げない
      @put_off_window.disable_item(2) #上衣を着ているのでスカートを脱げない
      @put_off_window.disable_item(3)
      @index_put_off_disable0 = 0
      @index_put_off_disable1 = 1
      @index_put_off_disable2 = 1
      @index_put_off_disable3 = 1
    when 12
      @put_off_window.disable_item(0)
      @put_off_window.able_item(1)
      @put_off_window.able_item(2)
      @put_off_window.disable_item(3)
      @index_put_off_disable0 = 1
      @index_put_off_disable1 = 0
      @index_put_off_disable2 = 0
      @index_put_off_disable3 = 1
    when 13
      @put_off_window.able_item(0)
      @put_off_window.disable_item(1)
      @put_off_window.disable_item(2) #上衣を着ているのでスカートを脱げない
      @put_off_window.disable_item(3)
      @index_put_off_disable0 = 0
      @index_put_off_disable1 = 1
      @index_put_off_disable2 = 1
      @index_put_off_disable3 = 1
    when 14
      @put_off_window.disable_item(0)
      @put_off_window.disable_item(1)
      @put_off_window.able_item(2)
      @put_off_window.disable_item(3)
      @index_put_off_disable0 = 1
      @index_put_off_disable1 = 1
      @index_put_off_disable2 = 0
      @index_put_off_disable3 = 1
    end

    case $game_variables[5]
    when 0
      @put_off_window.disable_item(0)
      @put_off_window.disable_item(1)
      @put_off_window.disable_item(2)
      @put_off_window.disable_item(3)
      @index_put_off_disable0 = 1
      @index_put_off_disable1 = 1
      @index_put_off_disable2 = 1
      @index_put_off_disable3 = 1
    when 1
      @put_off_window.disable_item(1)
      @put_off_window.disable_item(2)
      @put_off_window.disable_item(3)
      @index_put_off_disable1 = 1
      @index_put_off_disable2 = 1
      @index_put_off_disable3 = 1
    when 2
      @put_off_window.disable_item(2)
      @put_off_window.disable_item(3)
      @index_put_off_disable2 = 1
      @index_put_off_disable3 = 1
    when 3
      @put_off_window.disable_item(2)
      @index_put_off_disable2 = 1
    when 4
      @put_off_window.disable_item(2)
      @index_put_off_disable2 = 1
    end
  end

  def disable_put_on
    case $game_variables[3]
    when 1
      @put_on_window.disable_item(0)
      @put_on_window.disable_item(1)
      @put_on_window.disable_item(2)
      @put_on_window.disable_item(3)
      @put_on_window.disable_item(4) if $game_switches[3] == true  #黒パンティ入手後
      @index_put_on_disable0 = 1
      @index_put_on_disable1 = 1
      @index_put_on_disable2 = 1
      @index_put_on_disable3 = 1
      @index_put_on_disable4 = 1 if $game_switches[3] == true  #黒パンティ入手後
    when 2
      @put_on_window.able_item(0)
      @put_on_window.disable_item(1)
      @put_on_window.disable_item(2)
      @put_on_window.disable_item(3)
      @put_on_window.disable_item(4) if $game_switches[3] == true  #黒パンティ入手後
      @index_put_on_disable0 = 0
      @index_put_on_disable1 = 1
      @index_put_on_disable2 = 1
      @index_put_on_disable3 = 1
      @index_put_on_disable4 = 1 if $game_switches[3] == true  #黒パンティ入手後
    when 3
      @put_on_window.disable_item(0)
      @put_on_window.disable_item(1)  #上衣を着ているのでキャミソールを着れない
      @put_on_window.disable_item(2)
      @put_on_window.disable_item(3)
      @put_on_window.disable_item(4) if $game_switches[3] == true  #黒パンティ入手後
      @index_put_on_disable0 = 1
      @index_put_on_disable1 = 1
      @index_put_on_disable2 = 1
      @index_put_on_disable3 = 1
      @index_put_on_disable4 = 1 if $game_switches[3] == true  #黒パンティ入手後
    when 4
      @put_on_window.able_item(0)
      @put_on_window.able_item(1)
      @put_on_window.disable_item(2)
      @put_on_window.disable_item(3)
      @put_on_window.disable_item(4) if $game_switches[3] == true  #黒パンティ入手後
      @index_put_on_disable0 = 0
      @index_put_on_disable1 = 0
      @index_put_on_disable2 = 1
      @index_put_on_disable3 = 1
      @index_put_on_disable4 = 1 if $game_switches[3] == true  #黒パンティ入手後
    when 5
      @put_on_window.disable_item(0)  #スカートを着けていないので上衣を着れない
      @put_on_window.disable_item(1)
      @put_on_window.able_item(2)
      @put_on_window.disable_item(3)
      @put_on_window.disable_item(4) if $game_switches[3] == true  #黒パンティ入手後
      @index_put_on_disable0 = 1
      @index_put_on_disable1 = 1
      @index_put_on_disable2 = 0
      @index_put_on_disable3 = 1
      @index_put_on_disable4 = 1 if $game_switches[3] == true  #黒パンティ入手後
    when 6
      @put_on_window.disable_item(0)  #スカートを着けていないので上衣を着れない
      @put_on_window.able_item(1)
      @put_on_window.able_item(2)
      @put_on_window.disable_item(3)
      @put_on_window.disable_item(4) if $game_switches[3] == true  #黒パンティ入手後
      @index_put_on_disable0 = 1
      @index_put_on_disable1 = 0
      @index_put_on_disable2 = 0
      @index_put_on_disable3 = 1
      @index_put_on_disable4 = 1 if $game_switches[3] == true  #黒パンティ入手後
    when 7
      @put_on_window.disable_item(0)  #スカートを着けていないので上衣を着れない
      @put_on_window.disable_item(1)
      @put_on_window.able_item(2)
      @put_on_window.able_item(3)
      @put_on_window.able_item(4) if $game_switches[3] == true  #黒パンティ入手後
      @index_put_on_disable0 = 1
      @index_put_on_disable1 = 1
      @index_put_on_disable2 = 0
      @index_put_on_disable3 = 0
      @index_put_on_disable4 = 0 if $game_switches[3] == true  #黒パンティ入手後
    when 8
      @put_on_window.disable_item(0)  #スカートを着けていないので上衣を着れない
      @put_on_window.able_item(1)
      @put_on_window.able_item(2)
      @put_on_window.able_item(3)
      @put_on_window.able_item(4) if $game_switches[3] == true  #黒パンティ入手後
      @index_put_on_disable0 = 1
      @index_put_on_disable1 = 0
      @index_put_on_disable2 = 0
      @index_put_on_disable3 = 0
      @index_put_on_disable4 = 0 if $game_switches[3] == true  #黒パンティ入手後
    when 11
      @put_on_window.disable_item(0)
      @put_on_window.disable_item(1)
      @put_on_window.disable_item(2)
      @put_on_window.able_item(3)
      @put_on_window.able_item(4) if $game_switches[3] == true  #黒パンティ入手後
      @index_put_on_disable0 = 1
      @index_put_on_disable1 = 1
      @index_put_on_disable2 = 1
      @index_put_on_disable3 = 0
      @index_put_on_disable4 = 0 if $game_switches[3] == true  #黒パンティ入手後
    when 12
      @put_on_window.able_item(0)
      @put_on_window.disable_item(1)
      @put_on_window.disable_item(2)
      @put_on_window.able_item(3)
      @put_on_window.able_item(4) if $game_switches[3] == true  #黒パンティ入手後
      @index_put_on_disable0 = 0
      @index_put_on_disable1 = 1
      @index_put_on_disable2 = 1
      @index_put_on_disable3 = 0
      @index_put_on_disable4 = 0 if $game_switches[3] == true  #黒パンティ入手後
    when 13
      @put_on_window.disable_item(0)
      @put_on_window.disable_item(1)  #上衣を着ているのでキャミソールを着れない
      @put_on_window.disable_item(2)
      @put_on_window.able_item(3)
      @put_on_window.able_item(4) if $game_switches[3] == true  #黒パンティ入手後
      @index_put_on_disable0 = 1
      @index_put_on_disable1 = 1
      @index_put_on_disable2 = 1
      @index_put_on_disable3 = 0
      @index_put_on_disable4 = 0 if $game_switches[3] == true  #黒パンティ入手後
    when 14
      @put_on_window.able_item(0)
      @put_on_window.able_item(1)
      @put_on_window.disable_item(2)
      @put_on_window.able_item(3)
      @put_on_window.able_item(4) if $game_switches[3] == true  #黒パンティ入手後
      @index_put_on_disable0 = 0
      @index_put_on_disable1 = 0
      @index_put_on_disable2 = 1
      @index_put_on_disable3 = 0
      @index_put_on_disable4 = 0 if $game_switches[3] == true  #黒パンティ入手後
    end
  end
  #--------------------------------------------------------------------------
  # ● 衣服の変更
  #--------------------------------------------------------------------------
  def change_put_off
    case @put_off_window.index
    when 0  # 上衣
      if $game_variables[3] == 1
        $game_variables[3] = 2
      elsif $game_variables[3] == 3
        $game_variables[3] = 4
      elsif $game_variables[3] == 11
        $game_variables[3] = 12
      elsif $game_variables[3] == 13
        $game_variables[3] = 14
      end
      @pose_y = 320
      @move_y = nil
    when 1  # キャミソール
      if $game_variables[3] == 2
        $game_variables[3] = 4
      elsif $game_variables[3] == 5
        $game_variables[3] = 6
      elsif $game_variables[3] == 7
        $game_variables[3] = 8
      elsif $game_variables[3] == 12
        $game_variables[3] = 14
      end
      @pose_y = 280
      @move_y = nil
    when 2  # スカート
      if $game_variables[3] == 2
        $game_variables[3] = 5
      elsif $game_variables[3] == 4
        $game_variables[3] = 6
      elsif $game_variables[3] == 12
        $game_variables[3] = 7
      elsif $game_variables[3] == 14
        $game_variables[3] = 8
      end
      @pose_y = 200
      @move_y = nil
    when 3  # パンティ
      if $game_variables[3] == 1
        $game_variables[3] = 11
      elsif $game_variables[3] == 2
        $game_variables[3] = 12
      elsif $game_variables[3] == 3
        $game_variables[3] = 13
      elsif $game_variables[3] == 4
        $game_variables[3] = 14
      elsif $game_variables[3] == 5
        $game_variables[3] = 7
      elsif $game_variables[3] == 6
        $game_variables[3] = 8
      end
      $game_switches[4] = false  #黒パンティ脱ぐ
      @pose_y = 200
      @move_y = nil
    end
    check_shame
    @pose_num = "A"
    @face_number = "01"
    Graphics.freeze
    change_pose
    # ステータスウィンドウを更新
    @status_window.refresh
    Graphics.transition(10)
    disable_put_off
  end
  def change_put_on
    if $game_switches[3] == true  #黒パンティ入手後
      case @put_on_window.index
      when 0  # 上衣
        if $game_variables[3] == 2
          $game_variables[3] = 1
        elsif $game_variables[3] == 4
          $game_variables[3] = 3
        elsif $game_variables[3] == 12
          $game_variables[3] = 11
        elsif $game_variables[3] == 14
          $game_variables[3] = 13
        end
        @pose_y = 320
        @move_y = nil
      when 1  # キャミソール
        if $game_variables[3] == 4
          $game_variables[3] = 2
        elsif $game_variables[3] == 6
          $game_variables[3] = 5
        elsif $game_variables[3] == 8
          $game_variables[3] = 7
        elsif $game_variables[3] == 14
          $game_variables[3] = 12
        end
        @pose_y = 280
        @move_y = nil
      when 2  # スカート
        if $game_variables[3] == 5
          $game_variables[3] = 2
        elsif $game_variables[3] == 6
          $game_variables[3] = 4
        elsif $game_variables[3] == 7
          $game_variables[3] = 12
        elsif $game_variables[3] == 8
          $game_variables[3] = 14
        end
        @pose_y = 200
        @move_y = nil
      when 3  # パンティ
        if $game_variables[3] == 7
          $game_variables[3] = 5
        elsif $game_variables[3] == 8
          $game_variables[3] = 6
        elsif $game_variables[3] == 11
          $game_variables[3] = 1
        elsif $game_variables[3] == 12
          $game_variables[3] = 2
        elsif $game_variables[3] == 13
          $game_variables[3] = 3
        elsif $game_variables[3] == 14
          $game_variables[3] = 4
        end
        @pose_y = 200
        @move_y = nil
      when 4  # 黒パンティ
        if $game_variables[3] == 7
          $game_variables[3] = 5
        elsif $game_variables[3] == 8
          $game_variables[3] = 6
        elsif $game_variables[3] == 11
          $game_variables[3] = 1
        elsif $game_variables[3] == 12
          $game_variables[3] = 2
        elsif $game_variables[3] == 13
          $game_variables[3] = 3
        elsif $game_variables[3] == 14
          $game_variables[3] = 4
        end
        $game_switches[4] = true  #黒パンティ着る
        @pose_y = 200
        @move_y = nil
      end
    else
      case @put_on_window.index
      when 0  # 上衣
        if $game_variables[3] == 2
          $game_variables[3] = 1
        elsif $game_variables[3] == 4
          $game_variables[3] = 3
        elsif $game_variables[3] == 12
          $game_variables[3] = 11
        elsif $game_variables[3] == 14
          $game_variables[3] = 13
        end
        @pose_y = 320
        @move_y = nil
      when 1  # キャミソール
        if $game_variables[3] == 4
          $game_variables[3] = 2
        elsif $game_variables[3] == 6
          $game_variables[3] = 5
        elsif $game_variables[3] == 8
          $game_variables[3] = 7
        elsif $game_variables[3] == 14
          $game_variables[3] = 12
        end
        @pose_y = 280
        @move_y = nil
      when 2  # スカート
        if $game_variables[3] == 5
          $game_variables[3] = 2
        elsif $game_variables[3] == 6
          $game_variables[3] = 4
        elsif $game_variables[3] == 7
          $game_variables[3] = 12
        elsif $game_variables[3] == 8
          $game_variables[3] = 14
        end
        @pose_y = 200
        @move_y = nil
      when 3  # パンティ
        if $game_variables[3] == 7
          $game_variables[3] = 5
        elsif $game_variables[3] == 8
          $game_variables[3] = 6
        elsif $game_variables[3] == 11
          $game_variables[3] = 1
        elsif $game_variables[3] == 12
          $game_variables[3] = 2
        elsif $game_variables[3] == 13
          $game_variables[3] = 3
        elsif $game_variables[3] == 14
          $game_variables[3] = 4
        end
        @pose_y = 200
        @move_y = nil
      end
    end
    check_shame
    @pose_num = "A"
    @face_number = "01"
    Graphics.freeze
    change_pose
    # ステータスウィンドウを更新
    @status_window.refresh
    Graphics.transition(10)
    disable_put_on
  end
  #--------------------------------------------------------------------------
  # ● スイッチ1
  # 1 #ブーツ、パンティ、スカート、キャミソール、上衣          #off
  # 2 #ブーツ、パンティ、スカート、キャミソール                #off
  # 3 #ブーツ、パンティ、スカート、上衣                [羞恥]  #on
  # 4 #ブーツ、パンティ、スカート                      [羞恥]  #on
  # 5 #ブーツ、パンティ、キャミソール                          #off
  # 6 #ブーツ、パンティ                                [羞恥]  #on
  # 7 #ブーツ、キャミソール                            [羞恥]  #on
  # 8 #全裸                                            [羞恥]  #on
  # 11 #ブーツ、スカート、キャミソール、上衣           [羞恥]  #off
  # 12 #ブーツ、スカート、キャミソール                 [羞恥]  #off
  # 13 #ブーツ、スカート、上衣                         [羞恥]  #on
  # 14 #ブーツ、スカート                               [羞恥]  #on
  #--------------------------------------------------------------------------
  #--------------------------------------------------------------------------
  # ● 羞恥状態の判断
  #--------------------------------------------------------------------------
  def check_shame
    case $game_variables[3]
    when 1
      @actor.remove_state(17)  #露出解除
      $game_switches[1] = false
      $game_switches[8] = false #胸露出
      $game_variables[4] = 1  #露出状態
    when 2
      @actor.remove_state(17)  #露出解除
      $game_switches[1] = false
      $game_switches[8] = false #胸露出
      $game_variables[4] = 1  #露出状態
    when 3
      @actor.add_state(17)  #露出
      $game_switches[1] = true
      $game_switches[8] = true #胸露出
      $game_variables[4] = 2  #露出状態
    when 4
      @actor.add_state(17)  #露出
      $game_switches[1] = true
      $game_switches[8] = true #胸露出
      $game_variables[4] = 3  #露出状態
    when 5
      @actor.remove_state(17)  #露出解除
      $game_switches[1] = false
      $game_switches[8] = false #胸露出
      $game_variables[4] = 3  #露出状態
    when 6
      @actor.add_state(17)  #露出
      $game_switches[1] = true
      $game_switches[8] = true #胸露出
      $game_variables[4] = 3  #露出状態
    when 7
      @actor.add_state(17)  #露出
      $game_switches[1] = true
      $game_switches[8] = false #胸露出
      $game_variables[4] = 3  #露出状態
    when 8
      @actor.add_state(17)  #露出
      $game_switches[1] = true
      $game_switches[8] = true #胸露出
      $game_variables[4] = 4  #露出状態
    when 11
      @actor.add_state(17)  #露出
      $game_switches[1] = false
      $game_switches[8] = false #胸露出
      $game_variables[4] = 1  #露出状態
    when 12
      @actor.add_state(17)  #露出
      $game_switches[1] = false
      $game_switches[8] = false #胸露出
      $game_variables[4] = 1  #露出状態
    when 13
      @actor.add_state(17)  #露出
      $game_switches[1] = true
      $game_switches[8] = true #胸露出
      $game_variables[4] = 2  #露出状態
    when 14
      @actor.add_state(17)  #露出
      $game_switches[1] = true
      $game_switches[8] = true #胸露出
      $game_variables[4] = 3  #露出状態
    when 15
      @actor.add_state(17)  #露出
      $game_switches[1] = true
      $game_switches[8] = false #胸露出
      $game_variables[4] = 2  #露出状態
    end
  end

  def put_off_window_refresh  #脱ぐコマンドウィンドウの更新
    @put_off_window.dispose
      s1 = "Jacket"
      s2 = "Camisole"
      s3 = "Skirt"
      s4 = "Panties"
      s5 = "Cancel"
    @put_off_window = Window_Command.new(160, [s1, s2, s3, s4, s5])
    @put_off_window.x = 480
    @put_off_window.y = 64
    @put_off_window.active = false
    @put_off_window.visible = false
  end
  #--------------------------------------------------------------------------
  # ● Switch active windows
  #--------------------------------------------------------------------------
  def switch_windows(old_window, new_window)
    old_window.active = false
    old_window.visible = false
    new_window.active = true
    new_window.visible = true
  end
  #--------------------------------------------------------------------------
  # ● Create outfits window
  #--------------------------------------------------------------------------
  def mk_outfits_window(page = 1)
    items = []
    @page = page

    @outfits_window.dispose unless @outfits_window.nil?
    ((@page - 1) * @page_limit ... (@page) * @page_limit).each do |i|
      unless CLOTHING_SETS[i].nil?
        items << ($game_switches[CLOTHING_SETS[i]['switch']] ? CLOTHING_SETS[i]['name'] : '???')
      end
    end

    if @total_pages > 1
      if @page != @total_pages
        items << 'Next page'
      else
        items << 'Go to 1st page'
      end
    end
    items << 'Cancel'

    @outfits_window = Window_Command.new(160, items)
    @outfits_window.x = 480
    @outfits_window.y = 32
  end
  #--------------------------------------------------------------------------
  # ● Set background image
  #--------------------------------------------------------------------------
  def menuback
    @menuback = Sprite.new
    @menuback.bitmap = RPG::Cache.picture("Menu_back")
  end
end