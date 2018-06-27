#==============================================================================
# ■ Bust_Anime
#------------------------------------------------------------------------------
# 　乳揉みの画像の表示を行うクラスです。
#==============================================================================
class Bust_Anime < Sprite
  #--------------------------------------------------------------------------
  # ● オブジェクト初期化
  #--------------------------------------------------------------------------
  def initialize
    super()
    @pose_x = 320
    @pose_y = 180

    @kiss_loop = 0
    @massage_loop = 0
    @massage_anime = 0
    @blink_count_change = 0
    @kiss_count_change = 0
    @massage_count_change = 0
    @shake_count_change = 0
    @shower_count_change = 0
    @hand_back = 0  #乳もみの時に手が隠れるフレーム
    @bust_change = 0  #一時的に乳もみを変更するフラグ
    @bust_shake_end = 0 #乳揺れアニメを一度だけ表示するフラグ
    @bust_shake_loop = 0  #乳揺れアニメを何度も表示するフラグ

    @rip_on = 0
  end
  #--------------------------------------------------------------------------
  # ● 立ち絵の表示
  #--------------------------------------------------------------------------
  def p(pose,face,mouth_type,red,bust_type,hadake,hand1_type)
    Graphics.freeze if @gf == 1

    clear
    @pose = pose
    @face_default = face
    @face = face
    @mouth_type_default = mouth_type
    @mouth_type = mouth_type
    @red = red  #0なし  1赤面
    @bust_type = bust_type  #A通常
    @hadake = hadake  #0なし  1上衣はだけ  2上衣・キャミはだけ
    @hand1_type = hand1_type

    @bust_number = 1
    check
    Graphics.transition(30) if @gf == 1
    @gf = 0
  end
  def shake_on
    @bust_shake = 1
  end
  def shake_off
    @bust_shake = 0
    @shake_count_change = 0
  end
  def shake
    a = 2
    b = 14

    if @bust_shake == 1
      shake_count
      case @shake_count
      when a
        Audio.se_play("Audio/SE/poyoyon",  60, 90)
        clear
        @bust_number = 5
        check
      when a * 2
        clear
        @bust_number = 3
        check
      when a * 3
        clear
        @bust_number = 1
        check
      when a * 4
        Audio.se_play("Audio/SE/poyoyon",  60, 90)
        clear
        @bust_number = 5
        check
      when a * 5
        clear
        @bust_number = 3
        check
      when a * 6
        clear
        @bust_number = 1
        check
      when a * 7
        Audio.se_play("Audio/SE/poyoyon",  60, 90)
        clear
        @bust_number = 4
        check
      when a * 8
        clear
        @bust_number = 2
        check
      when a * 9
        clear
        @bust_number = 4
        check
      when a * 10
        clear
        @bust_number = 3
        check
      when a * 11
        clear
        @bust_number = 4
        check
      when a * 12
        clear
        @bust_number = 3
        check
      when a * 20
        @bust_shake = 0
        @bust_shake_end = 1
        if @bust_shake_loop == 1
          @bust_change = 0  #一時的に乳もみを変更するフラグ
          @massage_count_change = 0
        end
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 変数3
  # 1 #ブーツ、パンティ、スカート、キャミソール、上衣
  # 2 #ブーツ、パンティ、スカート、キャミソール
  # 3 #ブーツ、パンティ、スカート、上衣
  # 4 #ブーツ、パンティ、スカート
  # 5 #ブーツ、パンティ、キャミソール
  # 6 #ブーツ、パンティ
  # 7 #ブーツ、キャミソール
  # 8 #全裸
  # 11 #ブーツ、スカート、キャミソール、上衣
  # 12 #ブーツ、スカート、キャミソール
  # 13 #ブーツ、スカート、上衣
  # 14 #ブーツ、スカート
  #--------------------------------------------------------------------------

  #--------------------------------------------------------------------------
  # ● まばたきする
  #--------------------------------------------------------------------------
  def blink
    if @face_default[/04/]
      @blink_count_change = 0
    else
      blink_count
      case @blink_count
      when 100
        clear
        case @face_default
        when "A01"
          @face = "A03"
          check
        when "A02"
          @face = "A03"
          check
        when "A03"
          @face = "A03"
          check
        when "A05"
          @face = "A05"
          check
        when "B01"
          @face = "B03"
          check
        when "B02"
          @face = "B03"
          check
        when "B03"
          @face = "B03"
          check
        when "B05"
          @face = "B05"
          check
        when "C01"
          @face = "C03"
          check
        when "C02"
          @face = "C03"
          check
        when "C03"
          @face = "C03"
          check
        when "C05"
          @face = "C05"
          check
        when "C06"
          @face = "C06"
          check
        end
      when 102
        clear
        case @face_default
        when "A01"
          @face = "A04"
          check
        when "A02"
          @face = "A04"
          check
        when "A03"
          @face = "A04"
          check
        when "A05"
          @face = "A04"
          check
        when "B01"
          @face = "B04"
          check
        when "B02"
          @face = "B04"
          check
        when "B03"
          @face = "B04"
          check
        when "B05"
          @face = "B04"
          check
        when "C01"
          @face = "C04"
          check
        when "C02"
          @face = "C04"
          check
        when "C03"
          @face = "C04"
          check
        when "C05"
          @face = "C04"
          check
        when "C06"
          @face = "C04"
          check
        end
      when 104
        clear
        case @face_default
        when "A01"
          @face = "A01"
          check
        when "A02"
          @face = "A02"
          check
        when "A03"
          @face = "A03"
          check
        when "A05"
          @face = "A05"
          check
        when "B01"
          @face = "B01"
          check
        when "B02"
          @face = "B02"
          check
        when "B03"
          @face = "B03"
          check
        when "B05"
          @face = "B05"
          check
        when "C01"
          @face = "C01"
          check
        when "C02"
          @face = "C02"
          check
        when "C03"
          @face = "C03"
          check
        when "C05"
          @face = "C05"
          check
        when "C06"
          @face = "C06"
          check
        end
        @blink_count_change = 0
      end
    end

  end
  #--------------------------------------------------------------------------
  # ● キスする
  #--------------------------------------------------------------------------
  def kiss_on(type,speed)
    @kiss_count_change = 0
    @kiss_anime = 1
    @kiss_type = type
    @kiss_speed = speed
  end
  def kiss_off
    @kiss_anime = 0
  end
  def kiss
    if @mouth_type_default == "B01" and @kiss_type == "A" and @kiss_anime != 0
      kiss_count
      case @kiss_count
      when @kiss_speed
        clear
        @mouth_type = "B02"
        check
      when @kiss_speed * 2
        clear
        @mouth_type = "B03"
        check
      when @kiss_speed * 3
        clear
        @mouth_type = "B01"
        check
        @kiss_count_change = 0
      end
    elsif @mouth_type_default == "B01" and @kiss_type == "B" and @kiss_anime != 0
      kiss_count
      if @kiss_loop == 0
        case @kiss_count
        when @kiss_speed
          clear
          @mouth_type = "B02"
          check
        when @kiss_speed * 2
          clear
          @mouth_type = "B03"
          check
          @kiss_count_change = 0

          a = dice(3)
          if a == 1
            @kiss_loop = 1
            @kiss_loop_count = dice(10)
            @i = 0
          end
        end
      elsif @kiss_loop == 1
        case @kiss_count
        when 6
          clear
          @mouth_type = "B04"
          check
        when 12
          clear
          @mouth_type = "B05"
          check

          @kiss_count_change = 0
          @i += 1
        end
        @kiss_loop = 0 if @i == @kiss_loop_count
      end
    elsif @mouth_type_default == "C01" and @kiss_anime != 0
      kiss_count
      case @kiss_count
      when @kiss_speed
        clear
        @mouth_type = "C02"
        check
      when @kiss_speed * 2
        clear
        @mouth_type = "C03"
        check
      when @kiss_speed * 3
        clear
        @mouth_type = "C04"
        check
      when @kiss_speed * 4
        clear
        @mouth_type = "C05"
        check
      when @kiss_speed * 5
        clear
        @mouth_type = "C06"
        check

        @kiss_count_change = 0
      end
    end

  end
  #--------------------------------------------------------------------------
  # ● 乳をもまれる
  #--------------------------------------------------------------------------
  def massage_on(type,man,speed)
    @hand_back = 0  #乳もみの時に手が隠れるフレーム
    @bust_change = 0  #一時的に乳もみを変更するフラグ
    @bust_shake_end = 0 #乳揺れアニメを一度だけ表示するフラグ
    @bust_shake_loop = 0  #乳揺れアニメを何度も表示するフラグ
    @massage_count_change = 0
    @massage_anime = 1
    @massage_type = type
    @man = man
    @massage_speed = speed
  end
  def massage_off
    @massage_anime = 0
  end
  def massage
    if @bust_type == "B" and @massage_anime != 0 #grope
      massage_count
      if @massage_type == "A"
        case @massage_count
        when @massage_speed
          Audio.se_play("Audio/SE/poyoyon",  60, 90)
          clear
          @bust_number = 1
          @hand_back = 1
          check
        when @massage_speed * 2
          clear
          @bust_number = 2
          @hand_back = 1
          check
        when @massage_speed * 3
          clear
          @bust_number = 3
          @hand_back = 1
          check
        when @massage_speed * 4
          clear
          @bust_number = 4
          @hand_back = 1
          check
        when @massage_speed * 5
          clear
          @bust_number = 3
          @hand_back = 1
          check
        when @massage_speed * 6
          clear
          @bust_number = 2
          @hand_back = 1
          check
          @massage_count_change = 0
        end
      elsif @massage_type == "B"
        massage_count
        case @massage_count
        when @massage_speed
          Audio.se_play("Audio/SE/poyoyon",  60, 90)
          clear
          @bust_number = 2
          @hand_back = 1
          check
        when @massage_speed * 2
          clear
          @bust_number = 3
          @hand_back = 1
          check
        when @massage_speed * 3
          clear
          @bust_number = 4
          @hand_back = 1
          check
          @massage_count_change = 0
        end
      end
	elsif @bust_type == "F" and @massage_anime != 0 #circularmassage
      massage_count
      if @massage_type == "A"
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
          clear
          @bust_number = 3
          check
        when @massage_speed * 4
          Audio.se_play("Audio/SE/poyoyon",  50, 90)
          clear
          @bust_number = 4
          check
        when @massage_speed * 5
          clear
          @bust_number = 5
          check
        when @massage_speed * 6
          clear
          @bust_number = 6
          check
          @massage_count_change = 0
        end
      elsif @massage_type == "B"
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
          clear
          @bust_number = 3
          check
        when @massage_speed * 4
          Audio.se_play("Audio/SE/poyoyon",  50, 90)
          clear
          @bust_number = 4
          check
          @massage_count_change = 0
        end
      end
	elsif @bust_type == "G" and @massage_anime != 0 #nipplesflick
      massage_count
      if @massage_type == "A"
        case @massage_count
        when @massage_speed
          clear
          @bust_number = 2
          check
        when @massage_speed * 2
          Audio.se_play("Audio/SE/poyoyon",  30, 90)
          clear
          @bust_number = 3
          check
        when @massage_speed * 3
          clear
          @bust_number = 4
          check
          @massage_count_change = 0
        end
      elsif @massage_type == "B"
        massage_count
        case @massage_count
        when @massage_speed / 2
          clear
          @bust_number = 1
          check
        when @massage_speed * 2 / 2
          Audio.se_play("Audio/SE/poyoyon",  30, 90)
          clear
          @bust_number = 3
          check
        when @massage_speed * 3 / 2
          clear
          @bust_number = 4
          check
          @massage_count_change = 0
        end
      end
	elsif @bust_type == "J" and @massage_anime != 0 #nipplesflickcamisole
      massage_count
      if @massage_type == "A"
        case @massage_count
        when @massage_speed
          clear
          @bust_number = 2
          check
        when @massage_speed * 2
          Audio.se_play("Audio/SE/poyoyon",  40, 90)
          clear
          @bust_number = 3
          check
        when @massage_speed * 3
          clear
          @bust_number = 4
          check
          @massage_count_change = 0
        end
      elsif @massage_type == "B"
        massage_count
        case @massage_count
        when @massage_speed / 2
          clear
          @bust_number = 1
          check
        when @massage_speed * 2 / 2
          Audio.se_play("Audio/SE/poyoyon",  40, 90)
          clear
          @bust_number = 3
          check
        when @massage_speed * 3 / 2
          clear
          @bust_number = 4
          check
          @massage_count_change = 0
        end
      end
	elsif @bust_type == "H" and @massage_anime != 0 #lift+squeeze
      massage_count
      if @massage_type == "A"
        case @massage_count
        when @massage_speed
          clear
		  @hand_back = 1
          @bust_number = 1
          check
        when @massage_speed * 2
          clear
		  @hand_back = 1
          @bust_number = 2
          check
        when @massage_speed * 3
          clear
		  @hand_back = 1
          @bust_number = 3
          check
        when @massage_speed * 4
          clear
		  @hand_back = 1
          @bust_number = 4
          check
        when @massage_speed * 5
          clear
		  @hand_back = 1
          @bust_number = 5
          check
        when @massage_speed * 6
          Audio.se_play("Audio/SE/poyoyon",  50, 90)
          clear
		  @hand_back = 1
          @bust_number = 6
          check
        when @massage_speed * 7
          clear
		  @hand_back = 1
          @bust_number = 5
          check
        when @massage_speed * 8
          clear
		  @hand_back = 1
          @bust_number = 4
          check
        when @massage_speed * 9
          Audio.se_play("Audio/SE/poyoyon",  50, 90)
		  clear
		  @hand_back = 1
          @bust_number = 6
          check
        when @massage_speed * 10
          clear
		  @hand_back = 1
          @bust_number = 5
          check
        when @massage_speed * 11
          clear
		  @hand_back = 1
          @bust_number = 4
          check
        when @massage_speed * 12
          Audio.se_play("Audio/SE/poyoyon",  50, 90)
		  clear
		  @hand_back = 1
          @bust_number = 6
          check
        when @massage_speed * 13
          clear
		  @hand_back = 1
          @bust_number = 5
          check
        when @massage_speed * 14
          clear
		  @hand_back = 1
          @bust_number = 4
          check
        when @massage_speed * 15
          Audio.se_play("Audio/SE/poyoyon",  50, 90)
		  clear
		  @hand_back = 1
          @bust_number = 6
          check
        when @massage_speed * 16
          clear
		  @hand_back = 1
          @bust_number = 5
          check
        when @massage_speed * 17
          clear
		  @hand_back = 1
          @bust_number = 4
          check
        when @massage_speed * 18
          Audio.se_play("Audio/SE/poyoyon",  50, 90)
		  clear
		  @hand_back = 1
          @bust_number = 6
          check
        when @massage_speed * 19
          clear
		  @hand_back = 1
          @bust_number = 5
          check
        when @massage_speed * 20
          clear
		  @hand_back = 1
          @bust_number = 4
          check
        when @massage_speed * 21
          Audio.se_play("Audio/SE/poyoyon",  50, 90)
		  clear
		  @hand_back = 1
          @bust_number = 6
          check
        when @massage_speed * 22
          clear
		  @hand_back = 1
          @bust_number = 5
          check
        when @massage_speed * 23
          clear
		  @hand_back = 1
          @bust_number = 4
          check
        when @massage_speed * 24
          Audio.se_play("Audio/SE/poyoyon",  50, 90)
		  clear
		  @hand_back = 1
          @bust_number = 6
          check
        when @massage_speed * 25
          clear
		  @hand_back = 1
          @bust_number = 5
          check
        when @massage_speed * 26
          clear
		  @hand_back = 1
          @bust_number = 4
          check
        when @massage_speed * 27
          Audio.se_play("Audio/SE/poyoyon",  50, 90)
		  clear
		  @hand_back = 1
          @bust_number = 6
          check
        when @massage_speed * 28
          clear
		  @hand_back = 1
          @bust_number = 4
          check
        when @massage_speed * 29
          clear
		  @hand_back = 1
          @bust_number = 2
          check
          @massage_count_change = 0
        end
      elsif @massage_type == "B"
        if @massage_loop == 0
          case @massage_count
          when @massage_speed
            clear
            @bust_number = 1
            @hand_back = 1
            check
          when @massage_speed * 2
            clear
            @bust_number = 2
            @hand_back = 1
            check
          when @massage_speed * 3
            clear
            @bust_number = 3
            @hand_back = 1
            check
          when @massage_speed * 4
            clear
            @bust_number = 4
            @hand_back = 1
            check
		  when @massage_speed * 5
            clear
            @bust_number = 5
            @hand_back = 1
            check
		  when @massage_speed * 6
		    Audio.se_play("Audio/SE/poyoyon",  50, 90)
            clear
            @bust_number = 6
            @hand_back = 1
            check

            @massage_count_change = 0

            a = dice(3)
            if a == 1
              @massage_loop = 1
              @massage_loop_count = dice(20)
              @i = 0
            end
          end
        elsif @massage_loop == 1
          case @massage_count
          when @massage_speed
            clear
            @bust_number = 1
            @hand_back = 1
            check
          when @massage_speed * 2
            clear
            @bust_number = 3
            @hand_back = 1
            check
          when @massage_speed * 3
            clear
            @bust_number = 5
            @hand_back = 1
            check
          when @massage_speed * 4
		    Audio.se_play("Audio/SE/poyoyon",  50, 90)
            clear
            @bust_number = 6
            @hand_back = 1
            check

            @massage_count_change = 0
            @i += 1
          end
          @massage_loop = 2 if @i == @massage_loop_count
        elsif @massage_loop == 2
          case @massage_count
          when @massage_speed / 1
            clear
            @bust_number = 4
            @hand_back = 1
            check
          when @massage_speed * 2 / 1
            clear
            @bust_number = 5
            @hand_back = 1
            check
          when @massage_speed * 3 / 1
		    Audio.se_play("Audio/SE/poyoyon",  50, 90)
            clear
            @bust_number = 6
            @hand_back = 1
            check
          when @massage_speed * 4 / 1
            clear
            @bust_number = 4
            @hand_back = 1
            check
          when @massage_speed * 5 / 1
            clear
            @bust_number = 5
            @hand_back = 1
            check
          when @massage_speed * 6 / 1
		    Audio.se_play("Audio/SE/poyoyon",  50, 90)
            clear
            @bust_number = 6
            @hand_back = 1
            check
          when @massage_speed * 7 / 1
            clear
            @bust_number = 4
            @hand_back = 1
            check
          when @massage_speed * 8 / 1
            clear
            @bust_number = 5
            @hand_back = 1
            check
          when @massage_speed * 9 / 1
		    Audio.se_play("Audio/SE/poyoyon",  50, 90)
            clear
            @bust_number = 6
            @hand_back = 1
            check
          when @massage_speed * 10 / 1
            clear
            @bust_number = 4
            @hand_back = 1
            check
          when @massage_speed * 11 / 1
            clear
            @bust_number = 5
            @hand_back = 1
            check
          when @massage_speed * 12 / 1
		    Audio.se_play("Audio/SE/poyoyon",  50, 90)
            clear
            @bust_number = 6
            @hand_back = 1
            check
            @massage_count_change = 0

            @massage_loop = 0
          end
        end
		end
	elsif @bust_type == "C" and @massage_anime != 0 #lift+squeeze
      massage_count
      if @massage_type == "A"
        case @massage_count
        when @massage_speed
          Audio.se_play("Audio/SE/poyoyon",  50, 90)
          clear
          @bust_number = 1
          @hand_back = 1
          check
        when @massage_speed * 2
          clear
          @bust_number = 2
          @hand_back = 1
          check
        when @massage_speed * 3
          clear
          @bust_number = 3
          @hand_back = 1
          check
        when @massage_speed * 4
          clear
          @bust_number = 4
          @hand_back = 1
          check
        when @massage_speed * 5
          clear
          @bust_number = 3
          @hand_back = 1
          check
        when @massage_speed * 6
          clear
          @bust_number = 2
          @hand_back = 1
          check
          @massage_count_change = 0
        end
      elsif @massage_type == "B"
        massage_count
        case @massage_count
        when @massage_speed
          Audio.se_play("Audio/SE/poyoyon",  50, 90)
          clear
          @bust_number = 2
          @hand_back = 1
          check
        when @massage_speed * 2
          clear
          @bust_number = 3
          @hand_back = 1
          check
        when @massage_speed * 3
          clear
          @bust_number = 4
          @hand_back = 1
          check
          @massage_count_change = 0
        end
      end
    elsif @bust_type == "D" and @massage_anime != 0 #circular
      massage_count
      if @massage_type == "A"
        case @massage_count
        when @massage_speed
          Audio.se_play("Audio/SE/poyoyon",  60, 90)
          clear
          @bust_number = 6
          @hand_back = 0
          check
        when @massage_speed * 2
          clear
          @bust_number = 2
          @hand_back = 0
          check
        when @massage_speed * 3
          clear
          @bust_number = 3
          @hand_back = 0
          check
        when @massage_speed * 4
          clear
          @bust_number = 4
          @hand_back = 0
          check
        when @massage_speed * 8
          clear
          @bust_number = 5
          @hand_back = 0
          check
        when @massage_speed * 10
          clear
          @bust_number = 6
          @hand_back = 0
          check
          @massage_count_change = 0
        end
      elsif @massage_type == "B"
        massage_count
        case @massage_count
        when @massage_speed
          Audio.se_play("Audio/SE/poyoyon",  60, 90)
          clear
          @bust_number = 1
          @hand_back = 0
          check
        when @massage_speed * 2
          clear
          @bust_number = 2
          @hand_back = 0
          check
        when @massage_speed * 3
          clear
          @bust_number = 3
          @hand_back = 0
          check
        when @massage_speed * 4
          clear
          @bust_number = 4
          @hand_back = 0
          check
          @massage_count_change = 0
        end
      end
    elsif @bust_type == "E" and @massage_anime != 0 #nipplesflick
      massage_count
      if @massage_type == "A"
        case @massage_count
        when @massage_speed
          Audio.se_play("Audio/SE/poyoyon",  60, 90)
          clear
          @bust_number = 1
          check
        when @massage_speed * 2
          clear
          @bust_number = 2
          check
        when @massage_speed * 3
          clear
          @bust_number = 3
          check
         when @massage_speed * 4
          clear
          @bust_number = 4
          check
          @massage_count_change = 0
        end
      elsif @massage_type == "B"
        case @massage_count
        when @massage_speed
          Audio.se_play("Audio/SE/poyoyon",  60, 90)
          clear
          @bust_number = 1
          check
        when @massage_speed * 2
          clear
          @bust_number = 3
          check
        when @massage_speed * 3
          clear
          @bust_number = 4
          check
          @massage_count_change = 0
          end
        end
    elsif @bust_type == "I" and @massage_anime != 0 #Nipples pulling
      massage_count
      if @massage_type == "A"
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
          clear
          @bust_number = 3
          check
        when @massage_speed * 8
          clear
          @bust_number = 2
          check
        when @massage_speed * 9
          clear
          @bust_number = 1
          check
        when @massage_speed * 10
          clear
          @bust_number = 3
          check
        when @massage_speed * 11
          Audio.se_play("Audio/SE/poyoyon",  50, 100)
          clear
          @bust_number = 4
          check
        when @massage_speed * 12
          clear
          @bust_number = 2
          check
          @massage_count_change = 0
        end
      elsif @massage_type == "B"
        case @massage_count
        when @massage_speed
          Audio.se_play("Audio/SE/poyoyon",  60, 100)
          clear
          @bust_number = 1
          check
        when @massage_speed * 2
          clear
          @bust_number = 2
          check
        when @massage_speed * 3
          clear
          @bust_number = 3
          check
        when @massage_speed * 4
          clear
          @bust_number = 4
          check
        when @massage_speed * 11
          @bust_change = 1
          if @bust_shake_end != 1
            @shake_count_change = 0
          end
          shake_on
          end
      elsif @massage_type == "C"
        @bust_shake_loop = 1
        case @massage_count
        when @massage_speed
          clear
          @bust_number = 2
          check
        when @massage_speed * 2
          clear
          @bust_number = 1
          check
        when @massage_speed * 3
          clear
          @bust_number = 2
          check
        when @massage_speed * 4
          clear
          @bust_number = 3
          check
        when @massage_speed * 7
          clear
          @bust_number = 1
          check
        when @massage_speed * 8
          clear
          @bust_number = 3
          check
        when @massage_speed * 9
          Audio.se_play("Audio/SE/poyoyon",  40, 100)
          clear
          @bust_number = 4
          check
        when @massage_speed * 13
          clear
          @bust_number = 2
          check
        when @massage_speed * 14
          clear
          @bust_number = 3
          check
        when @massage_speed * 15
          Audio.se_play("Audio/SE/poyoyon",  40, 100)
          clear
          @bust_number = 4
          check
        when @massage_speed * 20
          a = dice(3)
          if a == 1

            @bust_change = 1
            @shake_count_change = 0
            shake_on
          else
            @massage_count_change = 0
          end
        end
      end
      end
    end
  #--------------------------------------------------------------------------
  # ● シャワー
  #--------------------------------------------------------------------------
  def shower_on
    @shower_count_change = 0
    @shower_anime = 1
  end
  def shower_off
    @shower_anime = 0
    @shower.dispose if @shower != nil
    @shower2.dispose if @shower2 != nil
  end
  def shower_anime
    if @shower_anime == 1 #シャワー
      shower_count
      case @shower_count
      when 3
        @shower.dispose if @shower != nil
        @shower2.dispose if @shower2 != nil
        @shower_number = 1
        shower
        shower2
      when 6
        @shower.dispose if @shower != nil
        @shower2.dispose if @shower2 != nil
        @shower_number = 1
        shower
        shower2
        @shower.y += 5
        @shower2.y += 5
      when 9
        @shower.dispose if @shower != nil
        @shower2.dispose if @shower2 != nil
        @shower_number = 2
        shower
        shower2
      when 12
        @shower.dispose if @shower != nil
        @shower2.dispose if @shower2 != nil
        @shower_number = 2
        shower
        shower2
        @shower.y += 5
        @shower2.y += 5
        @shower_count_change = 0
      end
    end
  end
  def shower_shake_on
    @shower_shake = 1
    @pose_y = 182
  end
  def shower_shake_off
    @shower_shake = 0
  end
  def shower_shake
    a = 10
    b = 1

    if @shower_shake == 1
      shake_count
      case @shake_count
      when a
        clear
        @bust_number = 4
        check
        @hair.y -= b if @hair != nil
        @body.y -= b if @body != nil
        @bust.y -= b if @bust != nil
        @head.y -= b if @head != nil
        @mouth.y -= b if @mouth != nil
      when a * 2
        clear
        @bust_number = 3
        check
        @hair.y -= b * 2 if @hair != nil
        @body.y -= b * 2 if @body != nil
        @bust.y -= b * 2 if @bust != nil
        @head.y -= b * 2 if @head != nil
        @mouth.y -= b * 2 if @mouth != nil
      when a * 3
        clear
        @bust_number = 2
        check
        @hair.y -= b if @hair != nil
        @body.y -= b if @body != nil
        @bust.y -= b if @bust != nil
        @head.y -= b if @head != nil
        @mouth.y -= b if @mouth != nil
      when a * 4
        clear
        @bust_number = 3
        check
      when a * 5
        clear
        @bust_number = 4
        check
        @hair.y += b if @hair != nil
        @body.y += b if @body != nil
        @bust.y += b if @bust != nil
        @head.y += b if @head != nil
        @mouth.y += b if @mouth != nil
      when a * 6
        clear
        @bust_number = 3
        check
      when a * 8
        @shake_count_change = 0
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 立ち絵の消去
  #--------------------------------------------------------------------------
  def clear
    @hair.dispose if @hair != nil
    @body.dispose if @body != nil
    @bust.dispose if @bust != nil
    @head.dispose if @head != nil
    @shade.dispose if @shade != nil
    @mouth.dispose if @mouth != nil
    @camisole.dispose if @camisole != nil
    @jacket.dispose if @jacket != nil
    @jacket_back.dispose if @jacket_back != nil
    @jacket_front.dispose if @jacket_front != nil
    @redface.dispose if @redface != nil
    @hand1.dispose if @hand1 != nil
    @massage_hand.dispose if @massage_hand != nil

    #@shower.dispose if @shower != nil
  end
  #--------------------------------------------------------------------------
  # ● 各画像の準備
  #--------------------------------------------------------------------------
  def head  #頭
    @head = Sprite.new
    @head.bitmap = RPG::Cache.picture("EV001_head#{@face}")
    @head.ox = @head.bitmap.width / 2
    @head.oy = @head.bitmap.height / 2
    @head.x = @pose_x
    @head.y = @pose_y
  end
  def redface
    @redface = Sprite.new
    if $game_switches[1] == true or @red == 1
      $game_party.actors[0].states == [17] #赤面する
      @redface.bitmap = RPG::Cache.picture("EV001_red.png")
      else

    end
    @redface.ox = @head.bitmap.width / 2
    @redface.oy = @head.bitmap.height / 2
    @redface.x = @pose_x
    @redface.y = @pose_y
  end
  def shade
    @shade = Sprite.new
    @shade.bitmap = RPG::Cache.picture("EV001_bustA_massageE_shade")
    @shade.ox = @shade.bitmap.width / 2
    @shade.oy = @shade.bitmap.height / 2
    @shade.x = @pose_x
    @shade.y = @pose_y
  end
  def mouth  #口
    @mouth = Sprite.new
    @mouth.bitmap = RPG::Cache.picture("EV001_mouth#{@mouth_type}")
    @mouth.ox = @mouth.bitmap.width / 2
    @mouth.oy = @mouth.bitmap.height / 2
    @mouth.x = @pose_x
    @mouth.y = @pose_y
  end
  def body  #身体
    @body = Sprite.new
    @body.bitmap = RPG::Cache.picture("EV001_body#{@pose}")
    @body.ox = @body.bitmap.width / 2
    @body.oy = @body.bitmap.height / 2
    @body.x = @pose_x
    @body.y = @pose_y
  end
  def bust  #胸
    @bust = Sprite.new
    case @bust_type
    when "A"
      if $game_variables[3] == 1 or $game_variables[3] == 11  #キャミソール
        num = "A" if @hadake == 2
      elsif $game_variables[3] == 2 or $game_variables[3] == 12  #キャミソール
        num = "A" if @hadake == 2
      elsif $game_variables[3] == 5 or $game_variables[3] == 7  #キャミソール
        num = "A" if @hadake == 2
      else
        num = "A"
      end
      if @pose == "C"
        num = "C"
      else
        num = "A"
      end
      @bust.bitmap = RPG::Cache.picture("EV001_bust#{num}0#{@bust_number}")
    when "B"
      if @pose == "C"
      num = "C"
      else
      num = "A"
      end
      @bust.bitmap = RPG::Cache.picture("EV001_bust#{num}_massageA0#{@bust_number}")
    when "C"
      if @pose == "C"
      num = "C"
      else
      num = "A"
      end
      if @bust_change == 1
        @bust.bitmap = RPG::Cache.picture("EV001_bust#{num}_massageB0#{@bust_number}")
      end
      if @bust_number < 10
        @bust.bitmap = RPG::Cache.picture("EV001_bust#{num}_massageA0#{@bust_number}")
      else
        @bust.bitmap = RPG::Cache.picture("EV001_bust#{num}_massageA#{@bust_number}")
      end
    when "D"
      if @pose == "C"
      num = "C"
      else
      num = "A"
      end
      if @bust_number < 10
        @bust.bitmap = RPG::Cache.picture("EV001_bust#{num}_massageC0#{@bust_number}")
      else
        @bust.bitmap = RPG::Cache.picture("EV001_bust#{num}_massageC#{@bust_number}")
      end
    when "E"
      if @pose == "C"
      num = "C"
      else
      num = "A"
      end
      if @bust_number < 10
        @bust.bitmap = RPG::Cache.picture("EV001_bust#{num}_massageD0#{@bust_number}")
      else
        @bust.bitmap = RPG::Cache.picture("EV001_bust#{num}_massageD#{@bust_number}")
      end
	when "F"
      if @pose == "C"
      num = "C"
      else
      num = "A"
      end
      if @bust_number < 10
        @bust.bitmap = RPG::Cache.picture("EV001_bust#{num}_massageC0#{@bust_number}")
      else
        @bust.bitmap = RPG::Cache.picture("EV001_bust#{num}_massageC#{@bust_number}")
      end
    when "G"
      if @pose == "C"
      num = "C"
      else
      num = "A"
      end
      if @bust_number < 10
        @bust.bitmap = RPG::Cache.picture("EV001_bust#{num}_massageD0#{@bust_number}")
      else
        @bust.bitmap = RPG::Cache.picture("EV001_bust#{num}_massageD#{@bust_number}")
      end
	when "H"
      if @pose == "C"
      num = "C"
      else
      num = "A"
      end
      if @bust_number < 10
        @bust.bitmap = RPG::Cache.picture("EV001_bust#{num}_massageB0#{@bust_number}")
      else
        @bust.bitmap = RPG::Cache.picture("EV001_bust#{num}_massageB#{@bust_number}")
      end
    when "J"
      if @pose == "C"
      num = "C"
      else
      num = "A"
      end
      if @bust_number < 10
        @bust.bitmap = RPG::Cache.picture("EV001_bust#{num}_massageD0#{@bust_number}")
      else
        @bust.bitmap = RPG::Cache.picture("EV001_bust#{num}_massageD#{@bust_number}")
      end
    when "I"
      if @bust_change == 1
        if @pose == "C"
          num = "C"
        else
          num = "A"
        end
        @bust.bitmap = RPG::Cache.picture("EV001_bust#{num}0#{@bust_number}")
      else
        if @pose == "C"
          num = "E"
        else
          num = "E"
        end
        @bust.bitmap = RPG::Cache.picture("EV001_bust_massage#{num}0#{@bust_number}")
      end
    end
    @bust.ox = @bust.bitmap.width / 2
    @bust.oy = @bust.bitmap.height / 2
    @bust.x = @pose_x
    @bust.y = @pose_y
  end
  def hair  #髪
    @hair = Sprite.new
    @hair.bitmap = RPG::Cache.picture("EV001_hair")
    @hair.ox = @hair.bitmap.width / 2
    @hair.oy = @hair.bitmap.height / 2
    @hair.x = @pose_x
    @hair.y = @pose_y
  end
  def camisole  #キャミソール
    @camisole = Sprite.new
    if @pose == "A" and @hadake != 2
      @camisole.bitmap = RPG::Cache.picture("EV001_camisoleA")
    elsif @pose == "A" and @hadake == 2
      @camisole.bitmap = RPG::Cache.picture("EV001_camisoleC")
    elsif @pose == "B" and @hadake != 2
      @camisole.bitmap = RPG::Cache.picture("EV001_camisoleA")
    elsif @pose == "B" and @hadake == 2
      @camisole.bitmap = RPG::Cache.picture("EV001_camisoleD")
    end
    if @hand1_type != 0
      @camisole.bitmap = RPG::Cache.picture("EV001_camisoleB")
    end
    if @bust_type == "B"
      @camisole.bitmap = RPG::Cache.picture("EV001_camisole_massageA0#{@bust_number}")
    elsif @bust_type == "J"
      @camisole.bitmap = RPG::Cache.picture("EV001_camisole_massageD0#{@bust_number}")
    elsif @bust_type == "E" and @bust_change == 1
      if @pose == "A"
        @camisole.bitmap = RPG::Cache.picture("EV001_camisoleC")
      elsif @pose == "B"
        @camisole.bitmap = RPG::Cache.picture("EV001_camisoleD")
      end
    end
    @camisole.ox = @camisole.bitmap.width / 2
    @camisole.oy = @camisole.bitmap.height / 2
    @camisole.x = @pose_x
    @camisole.y = @pose_y
  end
  def jacket  #上衣
    @jacket = Sprite.new
    if @pose == "A"
      if $game_variables[3] == 1 or $game_variables[3] == 11  #キャミソール
        num = "A" if @hadake == 0
        num = "C" if @hadake != 0
      elsif $game_variables[3] == 2 or $game_variables[3] == 12  #キャミソール
        num = "A" if @hadake == 0
        num = "C" if @hadake != 0
      elsif $game_variables[3] == 5 or $game_variables[3] == 7  #キャミソール
        num = "A" if @hadake == 0
        num = "C" if @hadake != 0
      else
        num = "B" if @hadake == 0
        num = "C" if @hadake != 0
      end
    elsif @pose == "B"
      num = "D"
    end
    @jacket.bitmap = RPG::Cache.picture("EV001_jacket#{num}")
    @jacket.ox = @jacket.bitmap.width / 2
    @jacket.oy = @jacket.bitmap.height / 2
    @jacket.x = @pose_x
    @jacket.y = @pose_y
  end
  def jacket_back  #上衣の裏
    @jacket_back = Sprite.new
    @jacket_back.bitmap = RPG::Cache.picture("EV001_jacket")
    @jacket_back.ox = @jacket_back.bitmap.width / 2
    @jacket_back.oy = @jacket_back.bitmap.height / 2
    @jacket_back.x = @pose_x
    @jacket_back.y = @pose_y
  end
  def jacket_front  #上衣の裏
    @jacket_front = Sprite.new
    if @pose == "A"
      @jacket_front.bitmap = RPG::Cache.picture("EV001_jacketC01")
    elsif @pose == "B"
      @jacket_front.bitmap = RPG::Cache.picture("EV001_jacketD01")
    else

    end
    @jacket_front.ox = @jacket_front.bitmap.width / 2
    @jacket_front.oy = @jacket_front.bitmap.height / 2
    @jacket_front.x = @pose_x
    @jacket_front.y = @pose_y
  end
  def hand1  #男の手
    @hand1 = Sprite.new
    @hand1.bitmap = RPG::Cache.picture("EV001_hand#{@hand1_type}")
    @hand1.ox = @hand1.bitmap.width / 2
    @hand1.oy = @hand1.bitmap.height / 2
    @hand1.x = @pose_x
    @hand1.y = @pose_y
  end
  def massage_hand  #乳をもむ手
    @massage_hand = Sprite.new
    case @bust_type
    when "B"
      @massage_hand.bitmap = RPG::Cache.picture("EV001_hand#{@man}_massageA0#{@bust_number}")
    when "C"
      if @bust_change == 1
        @massage_hand.bitmap = RPG::Cache.picture("EV001_hand#{@man}_massageB0#{@bust_number}")
      end
      if @bust_number < 10
        @massage_hand.bitmap = RPG::Cache.picture("EV001_hand#{@man}_massageA0#{@bust_number}")
      else
        @massage_hand.bitmap = RPG::Cache.picture("EV001_hand#{@man}_massageA#{@bust_number}")
      end
    when "D"
      @massage_hand.bitmap = RPG::Cache.picture("EV001_hand#{@man}_massageC0#{@bust_number}")
    when "E"
      if @bust_change == 1
        @massage_hand.bitmap = RPG::Cache.picture("EV001_hand#{@man}_massageD0#{@bust_number}")
      else
        @massage_hand.bitmap = RPG::Cache.picture("EV001_hand#{@man}_massageD0#{@bust_number}")
      end
    when "F"
      @massage_hand.bitmap = RPG::Cache.picture("EV001_hand#{@man}_massageC0#{@bust_number}")
    when "G"
      @massage_hand.bitmap = RPG::Cache.picture("EV001_hand#{@man}_massageD0#{@bust_number}")
    when "H"
      @massage_hand.bitmap = RPG::Cache.picture("EV001_hand#{@man}_massageB0#{@bust_number}")
    when "J"
      @massage_hand.bitmap = RPG::Cache.picture("EV001_hand#{@man}_massageD0#{@bust_number}")
    when "I"
      if @bust_change == 1
        @massage_hand.bitmap = RPG::Cache.picture("EV001_hand#{@man}_massageE")
      else
        @massage_hand.bitmap = RPG::Cache.picture("EV001_hand#{@man}_massageE0#{@bust_number}")
      end
    end
    @massage_hand.ox = @massage_hand.bitmap.width / 2
    @massage_hand.oy = @massage_hand.bitmap.height / 2
    @massage_hand.x = @pose_x
    @massage_hand.y = @pose_y
  end
  def shower  #シャワー
    @shower = Sprite.new
    @shower.bitmap = RPG::Cache.picture("EV001_shower0#{@shower_number}")
    @shower.ox = @shower.bitmap.width / 2
    @shower.oy = @shower.bitmap.height / 2
    @shower.x = @pose_x
    @shower.y = @pose_y
    @shower.z = 100

    @shower.opacity = 100
    #@shower.blend_type = 1
  end
  def shower2  #シャワー
    @shower2 = Sprite.new
    @shower2.bitmap = RPG::Cache.picture("EV001_shower0#{@shower_number}")
    @shower2.ox = @shower.bitmap.width / 2
    @shower2.oy = @shower.bitmap.height / 2
    @shower2.x = @pose_x + 3
    @shower2.y = @pose_y + 3
    @shower2.z = 99

    @shower2.opacity = 10
    @shower2.blend_type = 2
  end
    def Graphics_freeze
    @gf = 1
  end
  #--------------------------------------------------------------------------
  # ● 変数3
  # 1 #ブーツ、パンティ、スカート、キャミソール、上衣
  # 2 #ブーツ、パンティ、スカート、キャミソール
  # 3 #ブーツ、パンティ、スカート、上衣
  # 4 #ブーツ、パンティ、スカート
  # 5 #ブーツ、パンティ、キャミソール
  # 6 #ブーツ、パンティ
  # 7 #ブーツ、キャミソール
  # 8 #全裸
  # 11 #ブーツ、スカート、キャミソール、上衣
  # 12 #ブーツ、スカート、キャミソール
  # 13 #ブーツ、スカート、上衣
  # 14 #ブーツ、スカート
  #--------------------------------------------------------------------------
  #--------------------------------------------------------------------------
  # ● 服装のチェック
  #--------------------------------------------------------------------------
  def check
    #初期化
    @camisole_check = 0
    @jacket_check = 0
    case $game_variables[3]
    when 1
      @camisole_check = 1
      @jacket_check = 1
    when 2
      @camisole_check = 1
    when 3
      @jacket_check = 1
    when 5
      @camisole_check = 1
    when 7
      @camisole_check = 1
    when 11
      @camisole_check = 1
      @jacket_check = 1
    when 12
      @camisole_check = 1
    when 13
      @jacket_check = 1
    end
    if @pose == "C"
      @camisole_check = 0
      @jacket_check = 0
    end

    hair  #髪
    if @jacket_check == 1 and @hadake != 0  #上衣裏
      jacket_back
    elsif @jacket_check == 1 and @pose == "B"  #上衣裏
      jacket_back
    end
    body  #身体
    if @bust_type == "I"
      shade
    else

    end
    if @hadake == 2
      camisole if @camisole_check == 1
      jacket if @jacket_check == 1
    end
    if @jacket_check == 1 and @hadake == 2
	  jacket_front if @pose == "A" or @pose == "B"
	end
    if @bust_type == "A"
      bust
    elsif @bust_type == "B"
      bust
    elsif @bust_type == "J"
      bust
    elsif @bust_type == "I" and @bust_change == 1
      bust
    end
    if @hadake != 2
      camisole if @camisole_check == 1
      jacket if @jacket_check == 1
    end
    massage_hand if @bust_type != "A" and @hand_back == 1 #乳をもむ手
    if @bust_type == "C" #胸
      bust
    elsif @bust_type == "D"
      bust
    elsif @bust_type == "F"
      bust
    elsif @bust_type == "G"
      bust
    elsif @bust_type == "H"
      bust
    elsif @bust_type == "I" and @bust_change == 0
      bust
    end
    head
    mouth
    redface
    hand1 if @hand1_type != 0
    massage_hand if @bust_type != "A" and @hand_back == 0 #乳をもむ手
  end
  #--------------------------------------------------------------------------
  # ● ウェイトカウント
  #--------------------------------------------------------------------------
  def blink_count
    if @blink_count_change == 0
      @blink_count_old = Graphics.frame_count
      @blink_count_change = 1
    end
    @blink_count = Graphics.frame_count - @blink_count_old
  end
  def kiss_count
    if @kiss_count_change == 0
      @kiss_count_old = Graphics.frame_count
      @kiss_count_change = 1
    end
    @kiss_count = Graphics.frame_count - @kiss_count_old
  end
  def massage_count
    if @massage_count_change == 0
      @massage_count_old = Graphics.frame_count
      @massage_count_change = 1
    end
    @massage_count = Graphics.frame_count - @massage_count_old
  end
  def shake_count
    if @shake_count_change == 0
      @shake_count_old = Graphics.frame_count
      @shake_count_change = 1
    end
    @shake_count = Graphics.frame_count - @shake_count_old
  end
  def shower_count
    if @shower_count_change == 0
      @shower_count_old = Graphics.frame_count
      @shower_count_change = 1
    end
    @shower_count = Graphics.frame_count - @shower_count_old
  end
  #--------------------------------------------------------------------------
  # ● ウェイト
  #--------------------------------------------------------------------------
  def wait(time)
    while time > 0
      time -= 1
      Graphics.update
    end
  end
  #--------------------------------------------------------------------------
  # ● ダイス
  #--------------------------------------------------------------------------
  def dice(x)
    return rand(x) + 1
  end
end
