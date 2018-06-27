#==============================================================================
# ■ Scene_File
#------------------------------------------------------------------------------
# 　セーブ画面およびロード画面のスーパークラスです。
#==============================================================================

class Scene_File
  #--------------------------------------------------------------------------
  # ● オブジェクト初期化
  #     help_text : ヘルプウィンドウに表示する文字列
  #--------------------------------------------------------------------------
  def initialize(help_text)
    @help_text = help_text
  end
  #--------------------------------------------------------------------------
  # ● メイン処理
  #--------------------------------------------------------------------------
  def main
    # ウィンドウスキンの変更
    $game_system.windowskin_name = "skin04"
    # 画像の表示
    #menuback
    #@menu_poze = Menu_Pose.new(1, 1)
    #@menu_poze.pop_body
    #@menu_poze.check_clothes

    # ヘルプウィンドウを作成
    @help_window = Window_Help.new
    @help_window.set_text(@help_text)
    # セーブファイルウィンドウを作成
    @savefile_windows = []
    #ページとセーブファイル最大数
    @page_max = 5
    @savefile_max = 8
    n = @page_max * @savefile_max - 1

    #for i in 0..@page_max * @savefile_max - 1
    for i in 0..n
      @savefile_windows.push(Window_SaveFile.new(i, make_filename(i)))
    end
    # 最後に操作したファイルを選択
    @file_index = $game_temp.last_file_index
    #@page = @file_index / 4
    @page = @file_index / @savefile_max
    @savefile_windows[@file_index].selected = true
    # 選択ページを可視



    n = @page * @savefile_max
    #for i in n..n+3
    for i in n..n+7
      @savefile_windows[i].visible = true
    end

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
    for i in @savefile_windows
      i.dispose
    end
    # ウィンドウスキンの変更
    $game_system.windowskin_name = "skin01"
    # 画像を開放
    #@menuback.dispose
    #@menu_poze.all_clear
  end
  #--------------------------------------------------------------------------
  # ● フレーム更新
  #--------------------------------------------------------------------------
  def update
    # ウィンドウを更新
    @help_window.update
    for i in @savefile_windows
      i.update
    end
    # C ボタンが押された場合
    if Input.trigger?(Input::C)
      # メソッド on_decision (継承先で定義) を呼ぶ
      on_decision(make_filename(@file_index))
      $game_temp.last_file_index = @file_index
      return
    end
    # B ボタンが押された場合
    if Input.trigger?(Input::B)
      # メソッド on_cancel (継承先で定義) を呼ぶ
      on_cancel
      return
    end
    # 方向ボタンの下が押された場合
    if Input.repeat?(Input::DOWN)
      # 方向ボタンの下の押下状態がリピートでない場合か、
      # またはカーソル位置が 3 より前の場合
      if Input.trigger?(Input::DOWN) or @file_index < (@savefile_max - 1) + @page * (@savefile_max)
        # カーソル SE を演奏
        $game_system.se_play($data_system.cursor_se)
        # カーソルを下に移動
        @savefile_windows[@file_index].selected = false
        #@file_index = (@file_index + 1) % 4
        #@file_index = @page * 4 + (@file_index + 1) % 4
        @file_index = @page * @savefile_max + (@file_index + 1) % @savefile_max
        @savefile_windows[@file_index].selected = true
        return
      end
    end
    # 方向ボタンの上が押された場合
    if Input.repeat?(Input::UP)
      # 方向ボタンの上の押下状態がリピートでない場合か、
      # またはカーソル位置が 0 より後ろの場合
      #if Input.trigger?(Input::UP) or @file_index > 0
      if Input.trigger?(Input::UP) or @file_index > @page * @savefile_max
        # カーソル SE を演奏
        # カーソル SE を演奏
        $game_system.se_play($data_system.cursor_se)
        # カーソルを上に移動
        @savefile_windows[@file_index].selected = false
        #@file_index = (@file_index + 3) % 4
        #@file_index = @page * 4 + (@file_index + 3) % 4
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
        # カーソル SE を演奏
        $game_system.se_play($data_system.cursor_se)
        # カーソルを上に移動
        @savefile_windows[@file_index].selected = false
        #@file_index = (@file_index + 3) % 4
        #@file_index = @page * 4 + (@file_index + 3) % 4
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
        # カーソル SE を演奏
        $game_system.se_play($data_system.cursor_se)
        # カーソルを上に移動
        @savefile_windows[@file_index].selected = false
        #@file_index = (@file_index + 3) % 4
        #@file_index = @page * 4 + (@file_index + 3) % 4
        @file_index = @page * @savefile_max + (@file_index - (@savefile_max / 2)) % @savefile_max
        @savefile_windows[@file_index].selected = true
        return
      end
    end
    # Ｒが押された場合
    if Input.trigger?(Input::R)
      # カーソル SE を演奏
      $game_system.se_play($data_system.cursor_se)
      @savefile_windows[@file_index].selected = false
      for i in @savefile_windows
        i.visible = false
      end
      #@page = ( @page + 1 ) % 4
      @page = @page + 1
      @file_index -= @savefile_max * (@page_max - 1) if @page > (@page_max - 1)
      @page = 0 if @page > (@page_max - 1)
      #@file_index = ( @page * 8 ) + ( @file_index % 8 )
      @file_index = ( @page * @savefile_max ) + (@file_index % @savefile_max)
      for i in (@page * @savefile_max)..(@page * @savefile_max + (@savefile_max-1))
        @savefile_windows[i].visible = true
      end
      @savefile_windows[@file_index].selected = true
      return
    end
    # Ｌが押された場合
    if Input.trigger?(Input::L)
      # カーソル SE を演奏
      $game_system.se_play($data_system.cursor_se)
      # ページ切替
      @savefile_windows[@file_index].selected = false
      for i in @savefile_windows
        i.visible = false
      end
      #@page = ( @page + 3 ) % 4
      @page = @page - 1

      @file_index += @savefile_max * (@page_max - 1) if @page < 0
      @page = @page_max - 1 if @page < 0
      #@file_index = ( @page * 4 ) + ( @file_index % 4 )
      @file_index = ( @page * @savefile_max ) + (@file_index % @savefile_max)
      for i in (@page * @savefile_max)..(@page * @savefile_max + (@savefile_max-1))
        @savefile_windows[i].visible = true
      end
      @savefile_windows[@file_index].selected = true
      return
    end
  end
  #--------------------------------------------------------------------------
  # ● ファイル名の作成
  #     file_index : セーブファイルのインデックス (0～3)
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
