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
  end
  def kogeki #攻撃
  end
  def senko #閃光斬り
  end
  def kaihi #回避
  end
  def bogyo #防御
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
        return "A03"
      else
        return "A01"
      end
    when "kogeki"
      return "C01"
    when "senko"
      return "D01"
    when "kaihi"
      return "B01"
    when "bogyo"
      if @player.hp < a
        return "B02"
      elsif title == 2
        return "B01"
      else
        return "B01"
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● ウェイトカウント
  #--------------------------------------------------------------------------
  def player_count
  end
end
