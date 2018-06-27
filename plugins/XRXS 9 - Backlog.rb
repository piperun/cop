# ▼▲▼ XRXS 9. メッセージ表示フルグレードアップ「バックログ」 ▼▲▼
# by 桜雅 在土

#==============================================================================
# カスタマイズポイント
#==============================================================================
module XRXS9
  #--------------------------------------------------------------------------
  # バックログ
  #--------------------------------------------------------------------------
  BACKLOG_KEY             = Input::Y# バックログ展開ボタン。
  BACKLOG_MAX_HEIGHT      = 1600    # 最大ログ高さ[単位:ピクセル]
  BACKLOG_MAX_INDEX       =   12    # 最大ログ数[単位:メッセージ]
end

#==============================================================================
# ■ Window_Message
#==============================================================================
class Window_Message < Window_Selectable
  #--------------------------------------------------------------------------
  # ● オブジェクト初期化
  #--------------------------------------------------------------------------
  alias xrxs9ax_initialize initialize
  def initialize
    # 呼び戻す
    xrxs9ax_initialize
    # ログウィンドウを作成
    @log_window = Window_MessageLog.new
    @log_window.z = self.z + 100
  end
  #--------------------------------------------------------------------------
  # ● メッセージ終了処理
  #--------------------------------------------------------------------------
  alias xrxs9ax_terminate_message terminate_message
  def terminate_message
    # バックログへ保存
    @log_window.add_log(@current_name, self.contents)
    # 呼び戻す
    xrxs9ax_terminate_message
  end
  #--------------------------------------------------------------------------
  # ○ フレーム更新
  #--------------------------------------------------------------------------
  alias xrxs9ax_update_main update_main
  def update_main
    # バックログボタンが押された場合
    if Input.trigger?(XRXS9::BACKLOG_KEY) and $game_temp.message_window_showing
      self.visible = false
      @log_window.show
      self.visible = true
      return
    end
    # 呼び戻す
    xrxs9ax_update_main
  end
end
#==============================================================================
# □ Window_MessageLog
#------------------------------------------------------------------------------
#   メッセージウィンドウで表示された履歴を保持・表示するウィンドウです。
#==============================================================================
class Window_MessageLog < Window_Base
  #--------------------------------------------------------------------------
  # ○ オブジェクト初期化
  #--------------------------------------------------------------------------
  def initialize
    super(0,0,640,480)
    self.visible = false
    self.back_opacity = 160
    self.contents = Bitmap.new(width - 32, XRXS9::BACKLOG_MAX_HEIGHT)
    self.contents.font.color = XRXS9::NAME_WINDOW_TEXT_COLOR
    self.contents.font.size  = XRXS9::NAME_WINDOW_TEXT_SIZE
    @names = []
    @contetns = []
  end
  #--------------------------------------------------------------------------
  # ○ 表示
  #--------------------------------------------------------------------------
  def show
    self.refresh
    self.visible = true
    loop do
      # ゲーム画面を更新
      Graphics.update
      # 入力情報を更新
      Input.update
      # フレーム更新
      self.update
      # B ボタンが押されたらループを中断
      if Input.trigger?(Input::B)
        # キャンセル SE を演奏
        $game_system.se_play($data_system.cancel_se)
        #
        self.visible = false
        break
      end
    end
  end
  #--------------------------------------------------------------------------
  # ○ フレーム更新
  #--------------------------------------------------------------------------
  def update
    super
    # 上キーが押されているとき
    if Input.repeat?(Input::UP) and self.oy >= 32
      # カーソル SE を演奏
      $game_system.se_play($data_system.cursor_se)
      #
      self.oy -= 32
      return
    end
    # 下キーが押されているとき
    if Input.repeat?(Input::DOWN) and self.oy <= XRXS9::BACKLOG_MAX_HEIGHT - 448
      # カーソル SE を演奏
      $game_system.se_play($data_system.cursor_se)
      #
      self.oy += 32
      return
    end
  end
  #--------------------------------------------------------------------------
  # ○ 超過分のカット
  #--------------------------------------------------------------------------
  def cut_excess(limit_index)
    for i in limit_index...@contetns.size
      next if @contetns[i].nil?
      @contetns[i].dispose
      @contetns[i] = nil
      @names[i] = nil
    end
    @contetns.compact!
    @names.compact!
  end
  #--------------------------------------------------------------------------
  # ○ 履歴の追加 (メッセージコンテンツのコピー)
  #--------------------------------------------------------------------------
  def add_log(name, contents)
    @names.insert(0, name.to_s)
    @contetns.insert(0, contents.dup)
    # 超過分を解放
    cut_excess(XRXS9::BACKLOG_MAX_INDEX)
  end
  #--------------------------------------------------------------------------
  # ○ リフレッシュ
  #--------------------------------------------------------------------------
  def refresh
    # 初期化
    y = XRXS9::BACKLOG_MAX_HEIGHT
    index = 0
    self.contents.clear
    # 各履歴の描画
    loop do
      contents = @contetns[index]
      if contents.nil? or y <= 0
        break
      end
      self.contents.blt(4, y - contents.height, contents, contents.rect)
      y -= contents.height
      self.contents.draw_text(4, y-24, 600, 24, @names[index].to_s)
      y -= 32
      index += 1
    end
    # 超過分を解放
    cut_excess(index)
    self.oy = XRXS9::BACKLOG_MAX_HEIGHT - 416
  end
  #--------------------------------------------------------------------------
  # ○ 解放
  #--------------------------------------------------------------------------
  def dispose
    for contents in @contetns
      next if contents.nil?
      contents.dispose
    end
    super
  end
end
