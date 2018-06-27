# ▼▲▼ XRXS 9C. メッセージ表示フルグレードアップ「シネマ・ビスタ」 ▼▲▼
# by 桜雅 在土
#
# update 2007/ 1/16
#
#==============================================================================
# カスタマイズポイント
#==============================================================================
module XRXS9C
  #
  # 「シネマ・ビスタ」を有効にするスイッチID
  #
  SWITCH_ID = 30
  #
  # シネマ・ビスタ時のメッセージウィンドウ矩形
  #
  RECT = Rect.new(0,400,640,96)
end
#==============================================================================
# --- 「シネマ・ビスタ」時のウィンドウの位置と不透明度の設定 ---
#==============================================================================
class Window_Message < Window_Selectable
  alias xrxs9c_reset_window reset_window
  def reset_window
    # シネマビスタスイッチがONの場合
    if $game_switches[XRXS9C::SWITCH_ID]
      # 設定強制
      save_rect = @default_rect
      @default_rect = XRXS9C::RECT
      save = $game_system.message_frame
      $game_system.message_frame = 1
      # 呼び戻す
      xrxs9c_reset_window
      # 復旧
      @default_rect = save_rect
      $game_system.message_frame = save
    else
      # 呼び戻す
      xrxs9c_reset_window
    end
  end
  alias xrxs9c_line_reset line_reset
  def line_reset
    # 位置揃えの取得
    @auto_align = ($game_switches[XRXS9C::SWITCH_ID] ? CENTER : LEFT)
    # 呼び戻す
    xrxs9c_line_reset
  end
end
#==============================================================================
# --- 「シネマ・ビスタ」時のキースキップ禁止 ---
#==============================================================================
class Window_Message < Window_Selectable
  alias xrxs9c_skippable_now? skippable_now?
  def skippable_now?
    return false if $game_switches[XRXS9C::SWITCH_ID]
    return xrxs9c_skippable_now?
  end
end
#==============================================================================
# ■ Scene_Map
#==============================================================================
class Scene_Map
  #--------------------------------------------------------------------------
  # ● メイン処理
  #--------------------------------------------------------------------------
  alias xrxs9c_main main
  def main
    # 黒の作成
    black = Color.new(0,0,0,255)
    # 上下の縁マスクと画面全体薄マスクの作成
    @cinemasks = []
    mask = Sprite.new
    mask.bitmap = Bitmap.new(640,48)
    mask.bitmap.fill_rect(0,0,640,48, black)
    mask.x =    0
    mask.y =  -48
    mask.z = 5001
    @cinemasks[0] = mask
    mask = Sprite.new
    mask.bitmap = Bitmap.new(640,72)
    mask.bitmap.fill_rect(0,0,640,72, black)
    mask.x =    0
    mask.y =  480
    mask.z = 5001
    @cinemasks[1] = mask
    mask = Sprite.new
    mask.bitmap = Bitmap.new(640,480)
    mask.bitmap.fill_rect(0,0,640,480, black)
    mask.x =    0
    mask.y =    0
    mask.z =  199
    mask.opacity = 0
    @cinemasks[2] = mask
    # 初期化
    @cinema_fadecount     = 24
    # 呼び戻す
    xrxs9c_main
    # マスクらの解放
    @cinemasks.each{|sprite| sprite.dispose }
  end
  #--------------------------------------------------------------------------
  # ● フレーム更新
  #--------------------------------------------------------------------------
  alias xrxs9c_update update
  def update
    # シネマ部分のフレーム更新
    update_cinema
    # 呼び戻す
    xrxs9c_update
  end
  #--------------------------------------------------------------------------
  # ○ フレーム更新 (シネマ部分)
  #--------------------------------------------------------------------------
  def update_cinema
    #
    # フェードイン/フェードアウト
    #   @cinema_fadecount は 24完全隠れ ～ 0完全表示 を表す。
    #
    if (    $game_switches[XRXS9C::SWITCH_ID] and @cinema_fadecount >  0) or
       (not $game_switches[XRXS9C::SWITCH_ID] and @cinema_fadecount < 24)
      @cinema_fadecount += ($game_switches[XRXS9C::SWITCH_ID] ? -1 : 1)
      @cinemasks[0].y =   0 -  6 *       @cinema_fadecount  / 3
      @cinemasks[1].y = 480 -  9 * (24 - @cinema_fadecount) / 3
      @cinemasks[2].opacity =  4 * (24 - @cinema_fadecount)
    end
  end
end
