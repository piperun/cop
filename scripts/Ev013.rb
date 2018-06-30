# ■ Ev013
#------------------------------------------------------------------------------
# 　Breasts sucking animated scene.
#==============================================================================
class Ev013 < Sprite
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
  def pop(bust,face,man1,breath,sweat,red)
    Graphics.freeze if @gf == 1
    clear
    @bust = bust
    @face = face
    @man1 = man1
    @breath = breath
    @sweat = sweat
    @red = red
    @bust_number = 1

    check
    Graphics.transition(30) if @gf == 1
    @gf = 0
  end
  #--------------------------------------------------------------------------
  # ● 乳をもまれる
  #--------------------------------------------------------------------------
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
    if @massage_type == "B" and @massage_anime != 0
        massage_count
          case @massage_count
          when @massage_speed * 1
            clear
            @bust_number = 3
            check
          when @massage_speed * 3
            clear
            @bust_number = 5
            check
          when @massage_speed * 5
            clear
            @bust_number = 4
            check
          when @massage_speed * 6
            clear
            @bust_number = 6
            check
          when @massage_speed * 8
            Audio.se_play("Audio/SE/Suck",  75, 100)
            clear
            @bust_number = 7
            check
          when @massage_speed * 9
            clear
            @bust_number = 1
            check
          when @massage_speed * 10
            clear
            @bust_number = 2
            check
          when @massage_speed * 11
            clear
            @bust_number = 1
            check
          when @massage_speed * 12
            clear
            @bust_number = 2
            check
            @massage_count_change = 0
          end
     elsif @massage_type == "C" and @massage_anime != 0
        massage_count
          case @massage_count
          when @massage_speed / 2
            clear
            @bust_number = 6
            check
          when @massage_speed * 3
            clear
            @bust_number = 1
            check
          when @massage_speed * 5
            clear
            @bust_number = 2
            check
          when @massage_speed * 6
            clear
            @bust_number = 3
            check
          when @massage_speed * 7
            Audio.se_play("Audio/SE/Suck",  55, 125)
            clear
            @bust_number = 5
            check
          when @massage_speed * 9
            clear
            @bust_number = 2
            check
          when @massage_speed * 11
            clear
            @bust_number = 3
            check
          when @massage_speed * 12
            Audio.se_play("Audio/SE/Suck",  55, 125)
            clear
            @bust_number = 5
            check
          when @massage_speed * 14
            clear
            @bust_number = 2
            check
          when @massage_speed * 16
            clear
            @bust_number = 3
            check
          when @massage_speed * 17
            Audio.se_play("Audio/SE/Suck",  55, 125)
            clear
            @bust_number = 5
            check
          when @massage_speed * 19
            clear
            @bust_number = 2
            check
          when @massage_speed * 21
            clear
            @bust_number = 3
            check
          when @massage_speed * 22
            Audio.se_play("Audio/SE/Suck",  55, 125)
            clear
            @bust_number = 5
            check
          when @massage_speed * 23
            Audio.se_play("Audio/SE/poyoyon",  60, 100)
            clear
            @bust_number = 4
            check
          when @massage_speed * 24
            clear
            @bust_number = 6
            check
          when @massage_speed * 25
            clear
            @bust_number = 5
            check
          when @massage_speed * 26
            clear
            @bust_number = 6
            check
            @massage_count_change = 0
          end
    elsif @massage_type == "D" and @massage_anime != 0
        massage_count
          case @massage_count
          when @massage_speed
            clear
            @bust_number = 1
            check
          when @massage_speed * 3
            clear
            @bust_number = 2
            check
          when @massage_speed * 6
            clear
            @bust_number = 3
            check
          when @massage_speed * 8
            clear
            @bust_number = 4
            check
          when @massage_speed * 11
            Audio.se_play("Audio/SE/Suck",  60, 115)
            clear
            @bust_number = 3
            check
          when @massage_speed * 14
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
    @base.dispose if @base != nil
    @lefthand.dispose if @lefthand != nil
    @boob.dispose if @boob != nil
    @hair.dispose if @hair != nil
    @backhair.dispose if @backhair != nil
    @sidehair.dispose if @sidehair != nil
    @head.dispose if @head != nil
    @breaths.dispose if @breaths != nil
    @hand.dispose if @hand != nil
    @man.dispose if @man != nil
    @redface.dispose if @redface != nil
    @sweatface.dispose if @sweatface != nil
  end
  #--------------------------------------------------------------------------
  # ● 各画像の表示
  #--------------------------------------------------------------------------
  def base
    @base = Sprite.new
    @base.bitmap = RPG::Cache.picture("Ev013_Body")
    @base.x = @posex
    @base.y = @posey
  end
  def hair
    @hair = Sprite.new
    @hair.bitmap = RPG::Cache.picture("Ev013_Hair")
    @hair.x = @posex
    @hair.y = @posey
  end
  def backhair
    @backhair = Sprite.new
    @backhair.bitmap = RPG::Cache.picture("Ev013_BackHair")
    @backhair.x = @posex
    @backhair.y = @posey
  end
  def sidehair
    @sidehair = Sprite.new
    @sidehair.bitmap = RPG::Cache.picture("Ev013_SideHair")
    @sidehair.x = @posex
    @sidehair.y = @posey
  end
  def head
    @head = Sprite.new
    @head.bitmap = RPG::Cache.picture("EV013_Head#{@face}")
    @head.x = @posex
    @head.y = @posey
  end
  def breaths
    @breaths = Sprite.new
    @breaths.bitmap = RPG::Cache.picture("Ev013_Breath#{@breath}")
    @breaths.x = @posex
    @breaths.y = @posey
  end
  def hand
    @hand = Sprite.new
    case @bust
    when "A"
      num = "A"
    when "B"
      num = "B"
    when "C"
      num = "C"
    when "D"
      num = "D"
    end
    @hand.bitmap = RPG::Cache.picture("EV013_Hand#{num}0#{@bust_number}")
    @hand.x = @posex
    @hand.y = @posey
  end
  def boob
    @boob = Sprite.new
    @boob.bitmap = RPG::Cache.picture("EV013_Boob")
    @boob.x = @posex
    @boob.y = @posey
  end
  def lefthand
    @lefthand = Sprite.new
    @lefthand.bitmap = RPG::Cache.picture("EV013_Lefthand")
    @lefthand.x = @posex
    @lefthand.y = @posey
  end
  def man
    @man = Sprite.new
    case @bust
    when "A"
      num = "A"
    when "B"
      num = "B"
    when "C"
      num = "C"
    when "D"
      num = "D"
    end
    @man.bitmap = RPG::Cache.picture("EV013_Man#{num}0#{@bust_number}")
    @man.x = @posex
    @man.y = @posey
  end
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
    end
    @body.bitmap = RPG::Cache.picture("EV013_Bust#{num}0#{@bust_number}")
    @body.x = @posex
    @body.y = @posey
  end
  def redface
    @redface = Sprite.new
    @redface.bitmap = RPG::Cache.picture("Ev013_Red")
    @redface.x = @posex
    @redface.y = @posey
  end
  def sweatface
    @sweatface = Sprite.new
    @sweatface.bitmap = RPG::Cache.picture("Ev013_Sweat")
    @sweatface.x = @posex
    @sweatface.y = @posey
  end
  def Graphics_freeze
    @gf = 1
  end
  #--------------------------------------------------------------------------
  # ● 服装のチェック
  #--------------------------------------------------------------------------
  def check
    backhair
    base
    sidehair
    head
    hair
    body
    boob
    lefthand
    hand
    man if @man1 != 0
    sweatface if @sweat != 0
    redface if @red != 0
    breaths if @breath != 0
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
