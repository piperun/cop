#==============================================================================
# ■ Kiss_Anime
#------------------------------------------------------------------------------
# 　乳揉みの画像の表示を行うクラスです。
#==============================================================================
class Kiss_Anime < Sprite
  #--------------------------------------------------------------------------
  # ● オブジェクト初期化
  #--------------------------------------------------------------------------
  def initialize
    super()
    @pose_x = 320
    @pose_y = 240

    @count_change = 0
    @daeki_dropcount = 0  #唾液が落ちるフレーム
  end
  #--------------------------------------------------------------------------
  # ● 絵の表示
  #--------------------------------------------------------------------------
  def pop(type,sub_type,eye_type,man_type,man_clothes,hand_type,anime,speed)
    Graphics.freeze if @gf == 1

    clear

    @type = type
    @sub_type = sub_type
    @eye_type = "0" + eye_type
    @man_type = man_type
    @man_clothes = man_clothes  #0なし  1着衣
    @hand_type = hand_type  #0なし  1肩手  2肩手・絡み手
    @anime = anime  #0なし  1あり
    @speed = speed

    @count_change = 0
    @daeki_number = 1
    @daeki_dropcount = 0  #唾液が落ちるフレーム
    @tongue_number = 1
    @head_number = 1
    check
    Graphics.transition(30) if @gf == 1
    @gf = 0
  end
  def namida_on
    @namida_check = 1
  end
  def namida_off
    @namida_check = 0
  end
  def yodare_on
    @yodare_check = 1
  end
  def yodare_off
    @yodare_check = 0
  end
  def daeki_on
    @daeki_check = 1
  end
  def daeki_off
    @daeki_check = 0
  end
  def Graphics_freeze
    @gf = 1
  end
  def slide(move_x)
    @move_x = move_x

    @hair.x += @move_x if @hair != nil
    @hair_back.x += @move_x if @hair_back != nil
    @head.x += @move_x if @head != nil
    #@eye.x += @move_x if @eye != nil
    #@tongue.x += @move_x if @tongue != nil
    @namida.x += @move_x if @namida_check == 1 and @sub_type == "B"
    @yodare.x += @move_x if @yodare_check == 1
    #@daeki.x += @move_x if @daeki != nil
    @camisole.x += @move_x if @camisole != nil
    @jacket.x += @move_x if @jacket != nil

    @man_head.x += @move_x if @man_head != nil
    #@man_tongue.x += @move_x if @man_tongue != nil
    @man_chin.x += @move_x if @man_chin != nil
    @man_jacket.x += @move_x if @man_jacket != nil
    @man_shakehand.x += @move_x if @hand_type == 2
    @man_hand.x += @move_x if @hand_type != 0
  end
  #--------------------------------------------------------------------------
  # ● キスする
  #--------------------------------------------------------------------------
  def kiss
    count
    if @type == "A" and @anime == 1
      if @sub_type == "E"
        if @daeki_dropcount == 0
          @daeki_dropcount = dice(100)
        end
        case @count
        when 1
          clear
          @daeki_number = 1
          check
        when @daeki_dropcount
          clear
          @daeki_number = 2
          check
        when @daeki_dropcount + 2
          clear
          @daeki_number = 3
          check
        when @daeki_dropcount + 4
          clear
          @daeki_number = 4
          check
        when @daeki_dropcount + 6
          clear
          @daeki_number = 5
          check
        when @daeki_dropcount + 10
          clear
          @daeki_number = 5
          check
          @count_change = 0
          @daeki_dropcount = 0
        end
      else
        case @count
        when @speed
          clear
          @tongue_number = 1
          @daeki_number = 1
          check
        when @speed * 2
          clear
          @tongue_number = 2
          @daeki_number = 2
          check
        when @speed * 3
          clear
          @tongue_number = 3
          @daeki_number = 3
          check
        when @speed * 4
          clear
          @tongue_number = 2
          @daeki_number = 2
          check
          @count_change = 0
        end
      end
    elsif @type == "B" and @anime == 1
      if @sub_type == "B"
        @tongue_number = 5
        if @daeki_dropcount == 0
          @daeki_dropcount = dice(100)
        end
        case @count
        when 1
          clear
          @daeki_number = 1
          check
        when @daeki_dropcount
          clear
          @daeki_number = 2
          check
        when @daeki_dropcount + 2
          clear
          @daeki_number = 3
          check
        when @daeki_dropcount + 4
          clear
          @daeki_number = 4
          check
        when @daeki_dropcount + 6
          clear
          @daeki_number = 5
          check
        when @daeki_dropcount + 10
          clear
          @daeki_number = 5
          check
          @count_change = 0
          @daeki_dropcount = 0
        end
      else
        case @count
        when @speed
          clear
          @tongue_number = 1
          @daeki_number = 1
          check
        when @speed * 2
          clear
          @tongue_number = 2
          @daeki_number = 2
          check
        when @speed * 3
          clear
          @tongue_number = 3
          @daeki_number = 3
          check
        when @speed * 4
          clear
          @tongue_number = 4
          @daeki_number = 4
          check
        when @speed * 5
          clear
          @tongue_number = 5
          @daeki_number = 5
          check
          @count_change = 0
        end
      end
    elsif @type == "C" and @anime == 1
      case @count
      when @speed
        clear
        @head_number = 1
        check
        slide(1)
      when @speed * 2
        clear
        @head_number = 2
        check
        slide(-1)
      when @speed * 3
        clear
        @head_number = 3
        check
        slide(-1)
      when @speed * 4
        clear
        @head_number = 2
        check
        slide(1)
        @count_change = 0
      end
    elsif @anime == 0

    end

  end
  #--------------------------------------------------------------------------
  # ● 絵の消去
  #--------------------------------------------------------------------------
  def clear
    @hair_back.dispose if @hair_back != nil
    @hair.dispose if @hair != nil
    @head.dispose if @head != nil
    @tongue.dispose if @tongue != nil
    @eye.dispose if @eye != nil
    @namida.dispose if @namida != nil
    @yodare.dispose if @yodare != nil
    @daeki.dispose if @daeki != nil
    @camisole.dispose if @camisole != nil
    @jacket.dispose if @jacket != nil

    @man_head.dispose if @man_head != nil
    @man_tongue.dispose if @man_tongue != nil
    @man_chin.dispose if @man_chin != nil
    @man_jacket.dispose if @man_jacket != nil
    @man_shakehand.dispose if @man_shakehand != nil
    @man_hand.dispose if @man_hand != nil
  end
  #--------------------------------------------------------------------------
  # ● 各画像の準備
  #--------------------------------------------------------------------------
  def head  #頭
    @head = Sprite.new
    if @type == "A"
      if @sub_type == "C"
        @head.bitmap = RPG::Cache.picture("EV002_KissA_headB")
      elsif @sub_type == "D"
        @head.bitmap = RPG::Cache.picture("EV002_KissA_headB")
      elsif @sub_type == "E"
        @head.bitmap = RPG::Cache.picture("EV002_KissA_headB")
      else
        @head.bitmap = RPG::Cache.picture("EV002_KissA_headA")
      end
    elsif @type == "B"
      @head.bitmap = RPG::Cache.picture("EV002_KissB_head")
    elsif @type == "C"
      if @sub_type == "A"
        @head.bitmap = RPG::Cache.picture("EV002_KissC_headA0#{@head_number}")
      elsif @sub_type == "B"
        @head.bitmap = RPG::Cache.picture("EV002_KissC_headB0#{@head_number}")
      end
    end
    @head.ox = @head.bitmap.width / 2
    @head.oy = @head.bitmap.height / 2
    @head.x = @pose_x
    @head.y = @pose_y
  end
  def eye  #目
    @eye = Sprite.new
    @eye.bitmap = RPG::Cache.picture("EV002_Kiss#{@type}_eye#{@eye_type}")
    @eye.ox = @eye.bitmap.width / 2
    @eye.oy = @eye.bitmap.height / 2
    @eye.x = @pose_x
    @eye.y = @pose_y
  end
  def tongue  #舌
    @tongue = Sprite.new
    @tongue.bitmap = RPG::Cache.picture("EV002_Kiss#{@type}_tongue0#{@tongue_number}")
    @tongue.ox = @tongue.bitmap.width / 2
    @tongue.oy = @tongue.bitmap.height / 2
    @tongue.x = @pose_x
    @tongue.y = @pose_y
  end
  def namida  #涙
    @namida = Sprite.new
    @namida.bitmap = RPG::Cache.picture("EV002_Kiss#{@type}_namida")
    @namida.ox = @namida.bitmap.width / 2
    @namida.oy = @namida.bitmap.height / 2
    @namida.x = @pose_x
    @namida.y = @pose_y
  end
  def yodare  #よだれ
    @yodare = Sprite.new
    if @type == "A"
      if @sub_type == "A"
        @yodare.bitmap = RPG::Cache.picture("EV002_Kiss#{@type}_yodareA")
      elsif @sub_type == "B"
        @yodare.bitmap = RPG::Cache.picture("EV002_Kiss#{@type}_yodareA")
      elsif @sub_type == "C"
        @yodare.bitmap = RPG::Cache.picture("EV002_Kiss#{@type}_yodareB")
      elsif @sub_type == "D"
        @yodare.bitmap = RPG::Cache.picture("EV002_Kiss#{@type}_yodareB")
      elsif @sub_type == "E"
        @yodare.bitmap = RPG::Cache.picture("EV002_Kiss#{@type}_yodareB")
      end
    elsif @type == "B"
      @yodare.bitmap = RPG::Cache.picture("EV002_Kiss#{@type}_yodare")
    elsif @type == "C"
      @yodare.bitmap = RPG::Cache.picture("EV002_Kiss#{@type}_yodare0#{@head_number}")
    end
    @yodare.ox = @yodare.bitmap.width / 2
    @yodare.oy = @yodare.bitmap.height / 2
    @yodare.x = @pose_x
    @yodare.y = @pose_y
  end
  def daeki  #唾液
    @daeki = Sprite.new
    if @type == "A"
      if @sub_type == "E"
        @daeki.bitmap = RPG::Cache.picture("EV002_Kiss#{@type}_daekiB0#{@daeki_number}")
      else
        @daeki.bitmap = RPG::Cache.picture("EV002_Kiss#{@type}_daekiA0#{@daeki_number}")
      end
    elsif @type == "B"
      if @sub_type == "B"
        @daeki.bitmap = RPG::Cache.picture("EV002_Kiss#{@type}_daekiB0#{@daeki_number}")
      else
        @daeki.bitmap = RPG::Cache.picture("EV002_Kiss#{@type}_daekiA0#{@daeki_number}")
      end
    end
    @daeki.ox = @daeki.bitmap.width / 2
    @daeki.oy = @daeki.bitmap.height / 2
    @daeki.x = @pose_x
    @daeki.y = @pose_y
  end
  def hair  #髪
    @hair = Sprite.new
    @hair.bitmap = RPG::Cache.picture("EV002_Kiss#{@type}_hair")
    @hair.ox = @hair.bitmap.width / 2
    @hair.oy = @hair.bitmap.height / 2
    @hair.x = @pose_x
    @hair.y = @pose_y
  end
  def hair_back  #後ろ髪
    @hair_back = Sprite.new
    @hair_back.bitmap = RPG::Cache.picture("EV002_KissC_hair_back")
    @hair_back.ox = @hair_back.bitmap.width / 2
    @hair_back.oy = @hair_back.bitmap.height / 2
    @hair_back.x = @pose_x
    @hair_back.y = @pose_y
  end
  def camisole  #キャミソール
    @camisole = Sprite.new
    @camisole.bitmap = RPG::Cache.picture("EV002_Kiss#{@type}_camisole")
    @camisole.ox = @camisole.bitmap.width / 2
    @camisole.oy = @camisole.bitmap.height / 2
    @camisole.x = @pose_x
    @camisole.y = @pose_y
  end
  def jacket  #上衣
    @jacket = Sprite.new
    @jacket.bitmap = RPG::Cache.picture("EV002_Kiss#{@type}_jacket")
    @jacket.ox = @jacket.bitmap.width / 2
    @jacket.oy = @jacket.bitmap.height / 2
    @jacket.x = @pose_x
    @jacket.y = @pose_y
  end
  def man_head  #男頭
    @man_head = Sprite.new
    if @type == "A"
      if @sub_type == "B"
        @man_head.bitmap = RPG::Cache.picture("EV002_Kiss#{@type}_man#{@man_type}_headB")
      elsif @sub_type == "D"
        @man_head.bitmap = RPG::Cache.picture("EV002_Kiss#{@type}_man#{@man_type}_headB")
      elsif @sub_type == "E"
        @man_head.bitmap = RPG::Cache.picture("EV002_Kiss#{@type}_man#{@man_type}_headB")
      else
        @man_head.bitmap = RPG::Cache.picture("EV002_Kiss#{@type}_man#{@man_type}_headA")
      end
    elsif @type == "B"
      @man_head.bitmap = RPG::Cache.picture("EV002_Kiss#{@type}_man#{@man_type}_head")
    elsif @type == "C"
      @man_head.bitmap = RPG::Cache.picture("EV002_Kiss#{@type}_man#{@man_type}_head0#{@head_number}")
    end
    @man_head.ox = @man_head.bitmap.width / 2
    @man_head.oy = @man_head.bitmap.height / 2
    @man_head.x = @pose_x
    @man_head.y = @pose_y
  end
  def man_tongue  #男舌
    @man_tongue = Sprite.new
    @man_tongue.bitmap = RPG::Cache.picture("EV002_Kiss#{@type}_man#{@man_type}_tongue0#{@tongue_number}")
    @man_tongue.ox = @man_tongue.bitmap.width / 2
    @man_tongue.oy = @man_tongue.bitmap.height / 2
    @man_tongue.x = @pose_x
    @man_tongue.y = @pose_y
  end
  def man_chin  #男顎
    @man_chin = Sprite.new
    @man_chin.bitmap = RPG::Cache.picture("EV002_Kiss#{@type}_man#{@man_type}_chin0#{@head_number}")
    @man_chin.ox = @man_chin.bitmap.width / 2
    @man_chin.oy = @man_chin.bitmap.height / 2
    @man_chin.x = @pose_x
    @man_chin.y = @pose_y
  end
  def man_jacket  #男上衣
    @man_jacket = Sprite.new
    @man_jacket.bitmap = RPG::Cache.picture("EV002_Kiss#{@type}_man#{@man_type}_jacket")
    @man_jacket.ox = @man_jacket.bitmap.width / 2
    @man_jacket.oy = @man_jacket.bitmap.height / 2
    @man_jacket.x = @pose_x
    @man_jacket.y = @pose_y
  end
  def man_shakehand  #絡み手
    @man_shakehand = Sprite.new
    if @man_type == "C"
      @man_shakehand.bitmap = RPG::Cache.picture("EV002_Kiss#{@type}_manB_shakehand")
    else
      @man_shakehand.bitmap = RPG::Cache.picture("EV002_Kiss#{@type}_man#{@man_type}_shakehand")
    end
    @man_shakehand.ox = @man_shakehand.bitmap.width / 2
    @man_shakehand.oy = @man_shakehand.bitmap.height / 2
    @man_shakehand.x = @pose_x
    @man_shakehand.y = @pose_y
  end
  def man_hand  #男肩手
    @man_hand = Sprite.new
    if @man_type == "C"
      @man_hand.bitmap = RPG::Cache.picture("EV002_Kiss#{@type}_manB_hand")
    else
      @man_hand.bitmap = RPG::Cache.picture("EV002_Kiss#{@type}_man#{@man_type}_hand")
    end
    @man_hand.ox = @man_hand.bitmap.width / 2
    @man_hand.oy = @man_hand.bitmap.height / 2
    @man_hand.x = @pose_x
    @man_hand.y = @pose_y
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

    man_shakehand if @hand_type == 2  #男絡み手

    if @daeki_check == 1  #唾液
      if @type == "A" and @sub_type == "D"
        daeki
      elsif @type == "A" and @sub_type == "E"
        daeki
      elsif @type == "B"
        daeki
      end
    end

    man_head  #男頭
    #男舌
    if @type == "A" and @sub_type == "B"
      man_tongue
    elsif @type == "A" and @sub_type == "D"
      man_tongue
    elsif @type == "A" and @sub_type == "E"
      man_tongue
    elsif @type == "B"
      man_tongue
    end
    man_jacket if @man_clothes == 1  #男上衣

    hair_back if @type == "C" #後ろ髪
    head  #頭
    yodare if @yodare_check == 1  #よだれ
    #舌
    if @type == "A" and @sub_type == "C"
      tongue
    elsif @type == "A" and @sub_type == "D"
      tongue
    elsif @type == "A" and @sub_type == "E"
      tongue
    elsif @type == "B"
      tongue
    end
    eye if @type != "C" #目
    if @namida_check == 1 #涙
      if @type == "C" and @sub_type == "A"

      else
        namida
      end
    end
    camisole if @camisole_check == 1  #キャミソール
    jacket if @jacket_check == 1  #上衣
    hair  #髪

    man_chin if @type == "C"  #男顎
    man_hand if @hand_type != 0  #男肩手
  end
  #--------------------------------------------------------------------------
  # ● ウェイトカウント
  #--------------------------------------------------------------------------
  def count
    if @count_change == 0
      @count_old = Graphics.frame_count
      @count_change = 1
    end
    @count = Graphics.frame_count - @count_old
  end
  #--------------------------------------------------------------------------
  # ● ダイス
  #--------------------------------------------------------------------------
  def dice(x)
    return rand(x) + 1
  end

end
