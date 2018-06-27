# ▼▲▼ XRXS71. 立ち止まり仕草 ▼▲▼
# by 桜雅 在土

#==============================================================================
# --- 立ち止まりによる仕草とキャラクターグラフィックの対応 機構 ---
#==============================================================================
module XRXS_BreakActs
  # 接尾ファイル名
  SUFFIX = "_Act"
  # 待機時間[単位:F]
  #WCOUNT = 100
  WCOUNT = 1
  #
  def character_name
    filename = super
    if @breakacting
      #new_name = filename + SUFFIX
      #filename = new_name if RPG_FileTest.character_exist?(new_name)
      case $game_variables[3]
      when 1
        filename = "Pl_stand01"
      when 2
        filename = "Pl_stand02"
      when 3
        filename = "Pl_stand03"
      when 4
        filename = "Pl_stand04"
      when 5
        filename = "Pl_stand05"
      when 6
        filename = "Pl_stand06"
      when 7
        filename = "Pl_stand07"
      when 8
        filename = "Pl_stand08"
      when 11
        filename = "Pl_stand01"
      when 12
        filename = "Pl_stand02"
      when 13
        filename = "Pl_stand03"
      when 14
        filename = "Pl_stand04"
      end
    end
    return filename
  end
  def breakact=(b)
    @breakacting = b
    @step_anime  = b
  end
  def update
    super
    # 操作可能かどうかで分岐
    if controllable?
      if @breakact_count.to_i > 0
        @breakact_count -= 1
      else
        self.breakact = true
      end
    else
      @breakact_count = WCOUNT
      self.breakact = false
    end
  end
end
class Game_Player < Game_Character
  include XRXS_BreakActs
end
#==============================================================================
# --- プレイヤー#操作可能？ ---
#==============================================================================
class Game_Player < Game_Character
  def controllable?
    # 移動中、イベント実行中、移動ルート強制中、
    # メッセージウィンドウ表示中のいずれでもない場合
    #return !(moving? or $game_system.map_interpreter.running? or
    #         @move_route_forcing or $game_temp.message_window_showing)
    return !(moving? or @move_route_forcing )
  end
end
