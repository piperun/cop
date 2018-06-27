#==============================================================================
# ■ Window_Info
#------------------------------------------------------------------------------
# 　ステータス画面で表示する、フル仕様のステータスウィンドウです。
#==============================================================================

class Window_Info < Window_Base
  #--------------------------------------------------------------------------
  # ● オブジェクト初期化
  #     actor : アクター
  #--------------------------------------------------------------------------
  def initialize
    #super(400, 64, 240, 248)
    super(400, 64, 240, 380)
    self.contents = Bitmap.new(width - 32, height - 32)

    refresh
  end
  #--------------------------------------------------------------------------
  # ● リフレッシュ
  #--------------------------------------------------------------------------
  def refresh
    $game_system.windowskin_name = "skin04"
    self.contents.clear

    self.contents.font.color = system_color
    self.contents.font.italic = true
    self.contents.draw_text(0, 0, 80, 32, "Name")
    self.contents.font.color = normal_color
    self.contents.font.italic = false
    self.contents.draw_text(16, 24, 80, 32, $data_actors[1].name)

    self.contents.font.color = system_color
    self.contents.draw_text(0, 48, 80, 32, "T")
    self.contents.font.color = normal_color
    self.contents.draw_text(16, 48, 80, 32, "172")
    self.contents.font.color = system_color
    self.contents.draw_text(64, 48, 80, 32, "B")
    self.contents.font.color = normal_color
    self.contents.draw_text(80, 48, 80, 32, "93")
    self.contents.font.color = system_color
    self.contents.draw_text(112, 48, 80, 32, "W")
    self.contents.font.color = normal_color
    self.contents.draw_text(128, 48, 80, 32, "54")
    self.contents.font.color = system_color
    self.contents.draw_text(160, 48, 80, 32, "H")
    self.contents.font.color = normal_color
    self.contents.draw_text(176, 48, 80, 32, "84")

    self.contents.font.color = system_color
    self.contents.font.italic = true
    self.contents.draw_text(0, 80, 80, 32, "Profile")
    self.contents.font.color = normal_color
    self.contents.font.italic = false

    case $game_variables[31]
    when 0  # 村娘
      a = "Common village girl,"
      b = "known for her kindness"
      c = "to everybody."
    when 1  # リーフレイクの美少女
      a = "Admired by all men"
      b = "in the village for her"
      c = "beauty and swordsmanship."
    when 2  # おっぱい剣士
      a = "The center of all"
      b = "attention, she's a"
      c = "dream for many ones."
    when 3  # 憧れのお姉さん
      a = "She loves kids"
      b = "and they know that"
      c = "very well."
    when 4  # 露出剣士
      a = "Feeling guilty for"
      b = "lying to her brother"
      c = "but she can't stop."
    when 5  # 金髪ビッチ
      a = "She becomes open-minded,"
      b = "easy to go with"
      c = "anyone she likes."
    when 6  # リーフレイクの性奴隷
      a = "Name says it all,"
      b = "men in the village"
      c = "made her their lover."
    when 7  # 売春婦
      a = "Sexually frustrated,"
      b = "she thinks about sex"
      c = "all the time."
    when 8  # 賞金稼ぎ
      a = "Awakened her trueself,"
      b = "she now loves to show"
      c = "her body in public."
    when 9  # 閃光の剣士
      a = "Her mind remembers their"
      b = "cock's shape and size,"
      c = "thus becoming their sex slave."
    end

    self.contents.draw_text(16, 104, 205, 32, a)
    self.contents.draw_text(16, 128, 205, 32, b)
    self.contents.draw_text(16, 152, 205, 32, c)

    self.contents.font.color = system_color
    self.contents.font.italic = true
    self.contents.draw_text(0, 184, 80, 32, "H Times")
    self.contents.font.color = normal_color
    self.contents.font.italic = false
    if $game_variables[7] == 0
      self.contents.draw_text(16, 208, 200, 32, "???")
    else
      self.contents.draw_text(16, 208, 200, 32, "#{$game_variables[7]} Time")
    end

    self.contents.font.color = system_color
    self.contents.font.italic = true
    self.contents.draw_text(0, 240, 80, 32, "Energy")
    self.contents.font.color = normal_color
    self.contents.font.italic = false
    self.contents.draw_text(16, 264, 200, 32, "#{$game_variables[11]} / #{$game_variables[10]}")

    self.contents.font.color.set(255, 255, 255)

    self.contents.font.color = system_color
    self.contents.font.italic = true
    self.contents.draw_text(0, 296, 80, 32, "Obedient")
    self.contents.font.color = normal_color
    self.contents.font.italic = false
    self.contents.draw_text(16, 320, 200, 32, "#{$game_variables[8]} / #{$game_variables[9]}")

    self.contents.font.color.set(255, 255, 255)
  end
end
