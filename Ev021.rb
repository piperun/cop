# ■ Ev021
#------------------------------------------------------------------------------
# 　Casually pussy rubbing mini-scene.
#==============================================================================
class Ev021 < Sprite
  #--------------------------------------------------------------------------
  # ● オブジェクト初期化
  #--------------------------------------------------------------------------
  def initialize
    super()

    @posex = 0
    @posey = 0

    @massage_anime = 0
    @massage_count_change = 0
  end
  #--------------------------------------------------------------------------
  # ● 立ち絵の表示
  #--------------------------------------------------------------------------
  def pop(bust)
    clear
    @bust = bust
    @bust_number = 1
    check
  end

  def massage_on(type,speed)
    @massage_count_change = 0
    @massage_anime = 1
    @massage_speed = speed
    @massage_type = type
  end

  def massage_off
    @massage_anime = 0
  end

  def massage
    if @massage_type == "A" and @massage_anime != 0 #rubbing
        massage_count
        case @massage_count
        when @massage_speed
          clear
          @bust_number = 1
          check
        when @massage_speed * 2
          clear
          @bust_number = 2
          check
        when @massage_speed * 3
          Audio.se_play("Audio/SE/Rubbing",  40, 100)
          clear
          @bust_number = 3
          check
        when @massage_speed * 4
          clear
          @bust_number = 2
          check
          @massage_count_change = 0
        end
    elsif @massage_type == "B" and @massage_anime != 0 #fingering
        massage_count
        case @massage_count
        when @massage_speed
          clear
          @bust_number = 1
          check
        when @massage_speed * 2
          clear
          @bust_number = 2
          check
        when @massage_speed * 4
          Audio.se_play("Audio/SE/Suck",  40, 100)
          clear
          @bust_number = 3
          check
        when @massage_speed * 5
          clear
          @bust_number = 2
          check
          @massage_count_change = 0
        end
      end
    end
  #--------------------------------------------------------------------------
  # ● Clear
  #--------------------------------------------------------------------------
  def clear
    @body.dispose if @body != nil
  end
  #--------------------------------------------------------------------------
  # ● 各画像の表示
  #--------------------------------------------------------------------------
  def body
    @body = Sprite.new
    case @bust
    when "A"
      num = "A"
    when "B"
      num = "B"
    when "C"
      num = "C"
    when "D"
      num = "D"
    when "E"
      num = "E"
    when "F"
      num = "F"
    when "G"
      num = "G"
    when "H"
      num = "H"
    when "I"
      num = "I"
    when "J"
      num = "J"
    when "K"
      num = "K"
    when "L"
      num = "L"
    when "M"
      num = "M"
    end
    @body.bitmap = RPG::Cache.picture("EV021_body#{num}0#{@bust_number}")
    @body.x = @posex
    @body.y = @posey
  end
  #--------------------------------------------------------------------------
  # ● 服装のチェック
  #--------------------------------------------------------------------------
  def check
    body
  end
  #--------------------------------------------------------------------------
  # ● ウェイトカウント
  #--------------------------------------------------------------------------
  def massage_count
    if @massage_count_change == 0
      @massage_count_old = Graphics.frame_count
      @massage_count_change = 1
    end
    @massage_count = Graphics.frame_count - @massage_count_old
  end

end
