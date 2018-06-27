#==============================================================================
# ■ Scene_Battle (分割定義 8)
#------------------------------------------------------------------------------
# 　バトル画面の処理を行うクラスです。
#==============================================================================

class Scene_Battle
  #--------------------------------------------------------------------------
  # ● プレイヤーのアニメ
  #--------------------------------------------------------------------------
  def update_player_anime
    case @player_action #プレイヤーの行動
    when "kamae"
        kamae
    when "kogeki"
        kogeki
    when "senko"
        senko
    when "kaihi"
        kaihi
    when "bogyo"
        bogyo
    end
  end
  def kamae #構え
    player_count
    case @player_count
    when 0
      @pose.kamae("y", 0)
    when 5
      @pose.kamae("y", -1)
    when 6
      @pose.kamae("y", -1)
    when 10
      @pose.kamae("y", -2)
    when 14
      @pose.kamae("y", -2)
    when 16
      @pose.kamae("y", -2)
    when 18
      @pose.kamae("y", -2)
    when 20
      @pose.kamae("y", -2)
    when 25
      @pose.kamae("y", -1)
    when 26
      @pose.kamae("y", 0)
    when 30
      @pose.kamae("y", 0)
    when 34
      @pose.kamae("y", 0)
    when 36
      @pose.kamae("y", 0)
    when 38
      @pose.kamae("y", 0)
    when 40
      @pose.kamae("y", 0)
    when 41
      @pose.kamae("y", 0)
    when 42
      @pose.kamae("y", 0)
    when 60

      @player_count_change = 0
    end
  end
  def kogeki #攻撃
    player_count
    case @player_count
    when 0
      @pose.kogeki("y", 2)
    when 5
      @pose.kogeki("x", 2)
    when 8
      @pose.kogeki("x", 2)
    when 11
      @pose.kogeki("x", 2)
    when 14
      @pose.kogeki("x", 2)
    when 19
      @pose.kogeki("x", 2)
    end
  end
  def senko #閃光斬り
    player_count
    case @player_count
    when 0
      @pose.senko("y", 0)
    when 5
      @pose.senko("y", -3)
    when 10
      @pose.senko("y", -5)
    when 13
      @pose.senko("y", -5)
    when 16
      @pose.senko("y", -5)
    when 19
      @pose.senko("y", -5)
    when 22
      @pose.senko("y", -5)
    end
  end
  def kaihi #回避
    player_count
    case @player_count
    when 0
      @pose.kaihi("x", 0)
    when 5
      @pose.kaihi("x", 2)
    when 10
      @pose.kaihi("x", 4)
    when 13
      @pose.kaihi("x", 4)
    when 16
      @pose.kaihi("x", 4)
    when 19
      @pose.kaihi("x", 4)
    end
  end
  def bogyo #防御
    player_count
    case @player_count
    when 0
      @pose.bogyo("y", -3)
    when 5
      @pose.bogyo("x", -3)
    when 10
      @pose.bogyo("x", -3)
    when 13
      @pose.bogyo("x", -3)
    when 16
      @pose.bogyo("x", -3)
    end
  end
  #--------------------------------------------------------------------------
  # ● 表情の決定
  #--------------------------------------------------------------------------
  def face
    a = (@player.maxhp / 10) * 3
    if $game_variables[31] == 5  # おっぱい剣士
      title = 2
    elsif $game_variables[31] == 6  # 綺麗なお姉さん
      title = 2
    elsif $game_variables[31] == 7  # 露出少女
      title = 2
    elsif $game_variables[31] == 8  # 金髪ビッチ
      title = 2
    else
      title = 0
    end

    case @player_action #プレイヤーの行動
    when "kamae"
        if @player.hp < a
          return "A04"
        elsif title == 2
          return "A05"
        else
          return "A01"
        end
    when "kogeki"
        if title == 2
          return "A02"
        else
          return "B02"
        end
    when "senko"
        if title == 2
          return "C01"
        else
          return "A01"
        end
    when "kaihi"
        if title == 2
          return "D01"
        else
          return "A01"
        end
    when "bogyo"
        if @player.hp < a
          return "A03"
        elsif title == 2
          return "A06"
        else
          return "A04"
        end
    end
  end
  #--------------------------------------------------------------------------
  # ● ウェイトカウント
  #--------------------------------------------------------------------------
  def player_count
    if @player_count_change == 0
      @player_count_old = Graphics.frame_count
      @player_count_change = 1
    end
    @player_count = Graphics.frame_count - @player_count_old
  end
end
