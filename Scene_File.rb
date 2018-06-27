#==============================================================================
# ** Scene_File
#------------------------------------------------------------------------------
#  This is a superclass for the save screen and load screen.
#==============================================================================

class Scene_File
  #--------------------------------------------------------------------------
  # * Object Initialization
  #     help_text : text string shown in the help window
  #--------------------------------------------------------------------------
  def initialize(help_text)
    @help_text = help_text
  end
  #--------------------------------------------------------------------------
  # * Main Processing
  #--------------------------------------------------------------------------
  def main
    # ウィンドウスキンの変更
    $game_system.windowskin_name = "skin04"
    # Make help window
    @help_window = Window_Help.new
    @help_window.set_text(@help_text)
    # Make save file window
    @savefile_windows = []
    #ページとセーブファイル最大数
    @page_max = 5
    @savefile_max = 8
    n = @page_max * @savefile_max - 1

    for i in 0..n
      @savefile_windows.push(Window_SaveFile.new(i, make_filename(i)))
    end
    # Select last file to be operated
    @file_index = $game_temp.last_file_index
    @page = @file_index / @savefile_max
    @savefile_windows[@file_index].selected = true
    # 選択ページを可視



    n = @page * @savefile_max
    for i in n..n+7
      @savefile_windows[i].visible = true
    end

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
    for i in @savefile_windows
      i.dispose
    end
    # ウィンドウスキンの変更
    $game_system.windowskin_name = "skin01"
  end
  #--------------------------------------------------------------------------
  # * Frame Update
  #--------------------------------------------------------------------------
  def update
    # Update windows
    @help_window.update
    for i in @savefile_windows
      i.update
    end
    # If C button was pressed
    if Input.trigger?(Input::C)
      # Call method: on_decision (defined by the subclasses)
      on_decision(make_filename(@file_index))
      $game_temp.last_file_index = @file_index
      return
    end
    # If B button was pressed
    if Input.trigger?(Input::B)
      # Call method: on_cancel (defined by the subclasses)
      on_cancel
      return
    end
    # If the down directional button was pressed
    if Input.repeat?(Input::DOWN)
      # If the down directional button pressed down is not a repeat,
      # or cursor position is more in front than 3
      if Input.trigger?(Input::DOWN) or @file_index < (@savefile_max - 1) + @page * (@savefile_max)
        # Play cursor SE
        $game_system.se_play($data_system.cursor_se)
        # Move cursor down
        @savefile_windows[@file_index].selected = false
        @file_index = @page * @savefile_max + (@file_index + 1) % @savefile_max
        @savefile_windows[@file_index].selected = true
        return
      end
    end
    # If the up directional button was pressed
    if Input.repeat?(Input::UP)
      # If the up directional button pressed down is not a repeat、
      # or cursor position is more in back than 0
      if Input.trigger?(Input::UP) or @file_index > @page * @savefile_max
        # Play cursor SE
        $game_system.se_play($data_system.cursor_se)
        # カーソルを上に移動
        @savefile_windows[@file_index].selected = false
        @file_index = @page * @savefile_max + (@file_index + (@savefile_max - 1)) % @savefile_max
        @savefile_windows[@file_index].selected = true
        return
      end
    end
    # 方向ボタンの右が押された場合
    if Input.repeat?(Input::RIGHT)
      # 方向ボタンの右の押下状態がリピートでない場合か、
      # またはカーソル位置が 0 より後ろの場合
      if Input.trigger?(Input::RIGHT)
        # Play cursor SE
        $game_system.se_play($data_system.cursor_se)
        # カーソルを上に移動
        @savefile_windows[@file_index].selected = false
        @file_index = @page * @savefile_max + (@file_index + (@savefile_max / 2)) % @savefile_max
        @savefile_windows[@file_index].selected = true
        return
      end
    end
    # 方向ボタンの左が押された場合
    if Input.repeat?(Input::LEFT)
      # 方向ボタンの右の押下状態がリピートでない場合か、
      # またはカーソル位置が 0 より後ろの場合
      if Input.trigger?(Input::LEFT)
        # Play cursor SE
        $game_system.se_play($data_system.cursor_se)
        # Move cursor up
        @savefile_windows[@file_index].selected = false
        @file_index = @page * @savefile_max + (@file_index - (@savefile_max / 2)) % @savefile_max
        @savefile_windows[@file_index].selected = true
        return
      end
    end
    # Ｒが押された場合
    if Input.trigger?(Input::R)
      # Play cursor SE
      $game_system.se_play($data_system.cursor_se)
      @savefile_windows[@file_index].selected = false
      for i in @savefile_windows
        i.visible = false
      end
      @page = @page + 1
      @file_index -= @savefile_max * (@page_max - 1) if @page > (@page_max - 1)
      @page = 0 if @page > (@page_max - 1)
      @file_index = ( @page * @savefile_max ) + (@file_index % @savefile_max)
      for i in (@page * @savefile_max)..(@page * @savefile_max + (@savefile_max-1))
        @savefile_windows[i].visible = true
      end
      @savefile_windows[@file_index].selected = true
      return
    end
    # Ｌが押された場合
    if Input.trigger?(Input::L)
      # Play cursor SE
      $game_system.se_play($data_system.cursor_se)
      # ページ切替
      @savefile_windows[@file_index].selected = false
      for i in @savefile_windows
        i.visible = false
      end
      @page = @page - 1

      @file_index += @savefile_max * (@page_max - 1) if @page < 0
      @page = @page_max - 1 if @page < 0
      @file_index = ( @page * @savefile_max ) + (@file_index % @savefile_max)
      for i in (@page * @savefile_max)..(@page * @savefile_max + (@savefile_max-1))
        @savefile_windows[i].visible = true
      end
      @savefile_windows[@file_index].selected = true
      return
    end
  end
  #--------------------------------------------------------------------------
  # * Make File Name
  #     file_index : save file index (0-3)
  #--------------------------------------------------------------------------
  def make_filename(file_index)
    return "Save#{file_index + 1}.rxdata"
  end
  #--------------------------------------------------------------------------
  # ● 背景画像の表示
  #--------------------------------------------------------------------------
  def menuback
    @menuback = Sprite.new
    @menuback.bitmap = RPG::Cache.picture("menuback")
  end
end
