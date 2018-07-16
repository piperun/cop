#==============================================================================
# ■ Pose
#------------------------------------------------------------------------------
# 　立ち絵の表示を行うクラスです。
#==============================================================================
class Pose < Sprite
  #--------------------------------------------------------------------------
  # ● オブジェクト初期化
  #--------------------------------------------------------------------------
  def initialize(pose,type,face,sweat,red)
    super()
    @pose = "pose" + pose
    @type = "body" + type
    @face = "head" + face
    @sweat = sweat
    @red = red
    if @pose == "poseD"
      @pose_x = 470
      @pose_y = 255
    else
      @pose_x = 500
      @pose_y = 250
    end
  end
  #--------------------------------------------------------------------------
  # ● 立ち絵の表示
  #--------------------------------------------------------------------------
  def pop
    @bust_number = 2
    check
  end
  #--------------------------------------------------------------------------
  # ● 立ち絵をスライドさせる
  #--------------------------------------------------------------------------
  def slide
    if @pose == "poseC"
      @pose_y = 220
      check
      for i in 1..5
          @hair.y += 5 if @hair != nil
          @body.y += 5 if @body != nil
          @bust.y += 5 if @bust != nil
          @head.y += 5 if @head != nil
          @panty.y += 5 if @panty != nil
          @skirt.y += 5 if @skirt != nil
          @camisole.y += 5 if @camisole != nil
          @jacket.y += 5 if @jacket != nil
          @jacket_back.y += 5 if @jacket_back != nil
          @sweatface.y += 5 if @sweatface != nil
          @redface.y += 5 if @redface != nil
          wait(1)
      end
      for i in 1..5
          @hair.y -= 5 if @hair != nil
          @body.y -= 5 if @body != nil
          @bust.y -= 5 if @bust != nil
          @head.y -= 5 if @head != nil
          @panty.y -= 5 if @panty != nil
          @skirt.y -= 5 if @skirt != nil
          @camisole.y -= 5 if @camisole != nil
          @jacket.y -= 5 if @jacket != nil
          @jacket_back.y -= 5 if @jacket_back != nil
          @sweatface.y -= 5 if @sweatface != nil
          @redface.y -= 5 if @redface != nil
          wait(1)
      end
    elsif @pose == "poseD"
      @pose_x = 470
      @pose_y = 255
      check
      for i in 1..6
          @hair.x += 5 if @hair != nil
          @body.x += 5 if @body != nil
          @bust.x += 5 if @bust != nil
          @head.x += 5 if @head != nil
          @panty.x += 5 if @panty != nil
          @skirt.x += 5 if @skirt != nil
          @camisole.x += 5 if @camisole != nil
          @jacket.x += 5 if @jacket != nil
          @jacket_back.x += 5 if @jacket_back != nil
          @sweatface.x += 5 if @sweatface != nil
          @redface.x += 5 if @redface != nil
          @foot.x += 5 if @foot != nil
          wait(1)
      end
      for i in 1..6
          @hair.x -= 5 if @hair != nil
          @body.x -= 5 if @body != nil
          @bust.x -= 5 if @bust != nil
          @head.x -= 5 if @head != nil
          @panty.x -= 5 if @panty != nil
          @skirt.x -= 5 if @skirt != nil
          @camisole.x -= 5 if @camisole != nil
          @jacket.x -= 5 if @jacket != nil
          @jacket_back.x -= 5 if @jacket_back != nil
          @sweatface.x -= 5 if @sweatface != nil
          @redface.x -= 5 if @redface != nil
          @foot.x -= 5 if @foot != nil
          wait(1)
      end
    else
      @pose_x = 550
      @bust_number = 2
      check
      for i in 1..5
          @hair.x -= 10 if @hair != nil
          @body.x -= 10 if @body != nil
          @bust.x -= 10 if @bust != nil
          @head.x -= 10 if @head != nil
          @panty.x -= 10 if @panty != nil
          @skirt.x -= 10 if @skirt != nil
          @skirt_back.x -= 10 if @skirt_back != nil
          @camisole.x -= 10 if @camisole != nil
          @jacket.x -= 10 if @jacket != nil
          @jacket_back.x -= 10 if @jacket != nil
          @sweatface.x -= 10 if @sweatface != nil
          @redface.x -= 10 if @redface != nil
          wait(1)
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● 乳が揺れる
  #--------------------------------------------------------------------------
  def shake
    Audio.se_play("Audio/SE/poyoyon",  70, 90)
    a = 1.5

    @bust_number = 1
    clear
    check
    wait(a)

    @bust_number = 2
    clear
    check
    wait(a)

    @bust_number = 3
    clear
    check
    wait(a*2)

    @bust_number = 2
    clear
    check
    wait(a*2)

    @bust_number = 3
    clear
    check
    wait(a*3)

    @bust_number = 2
    clear
    check
  end
  #--------------------------------------------------------------------------
  # ● 立ち絵の消去
  #--------------------------------------------------------------------------
  def clear
    @hair.dispose if @hair != nil
    @body.dispose if @body != nil
    @bust.dispose if @bust != nil
    @head.dispose if @head != nil
    @panty.dispose if @panty != nil
    @skirt.dispose if @skirt != nil
    @camisole.dispose if @camisole != nil
    @jacket.dispose if @jacket != nil
    @redface.dispose if @redface != nil
    @sweatface.dispose if @sweatface != nil
    @jacket_back.dispose if @jacket_back != nil
    @skirt_back.dispose if @skirt_back != nil
    @foot.dispose if @foot != nil
  end
  #--------------------------------------------------------------------------
  # ● 各画像の準備
  #--------------------------------------------------------------------------
  def head  #頭
    @head = Sprite.new
    @head.bitmap = RPG::Cache.picture("#{@pose}_#{@face}")
    @head.ox = @head.bitmap.width / 2
    @head.oy = @head.bitmap.height / 2
    @head.x = @pose_x
    @head.y = @pose_y
  end
  def body  #身体
    @body = Sprite.new
    @body.bitmap = RPG::Cache.picture("#{@pose}_#{@type}")
    @body.ox = @body.bitmap.width / 2
    @body.oy = @body.bitmap.height / 2
    @body.x = @pose_x
    @body.y = @pose_y
  end
  def bust  #胸
    @bust = Sprite.new
    case @pose
    when "poseA"
      if @type == "bodyA" or @type == "bodyB" or @type == "bodyC" or @type == "bodyD" or @type == "bodyE"
          num = "A"
      end
      case @bust_number
      when 1
        @bust.bitmap = RPG::Cache.picture("#{@pose}_bust#{num}01")
      when 2
        @bust.bitmap = RPG::Cache.picture("#{@pose}_bust#{num}02")
      when 3
        @bust.bitmap = RPG::Cache.picture("#{@pose}_bust#{num}03")
      end
    when "poseC"
    @bust.bitmap = RPG::Cache.picture("PoseC_bust")
    when "poseD"
    @bust.bitmap = RPG::Cache.picture("")
    when "poseB"
    @bust.bitmap = RPG::Cache.picture("")
    end
    @bust.ox = @bust.bitmap.width / 2
    @bust.oy = @bust.bitmap.height / 2
    @bust.x = @pose_x
    @bust.y = @pose_y
  end
  def hair
    @hair = Sprite.new
    @hair.bitmap = RPG::Cache.picture("#{@pose}_hair")
    @hair.ox = @hair.bitmap.width / 2
    @hair.oy = @hair.bitmap.height / 2
    @hair.x = @pose_x
    @hair.y = @pose_y
  end
  def panty
    @panty = Sprite.new
    @panty.bitmap = RPG::Cache.picture("#{@pose}_panty")
    @panty.ox = @panty.bitmap.width / 2
    @panty.oy = @panty.bitmap.height / 2
    @panty.x = @pose_x
    @panty.y = @pose_y
  end
  def skirt
    @skirt = Sprite.new
    if @pose == "poseB" and @type == "bodyB"
      @skirt.bitmap = RPG::Cache.picture("#{@pose}_skirtB")
    elsif @pose == "poseA" and @type == "bodyD"
      @skirt.bitmap = RPG::Cache.picture("#{@pose}_skirtD")
    elsif @pose == "poseA" and @type == "bodyE"
      @skirt.bitmap = RPG::Cache.picture("#{@pose}_skirtE")
    else
      @skirt.bitmap = RPG::Cache.picture("#{@pose}_skirtA")
    end
    @skirt.ox = @skirt.bitmap.width / 2
    @skirt.oy = @skirt.bitmap.height / 2
    @skirt.x = @pose_x
    @skirt.y = @pose_y
  end
  def skirt_back
    @skirt_back = Sprite.new
    case @pose
    when "poseA"
      case @type
      when "bodyD"
        @skirt_back.bitmap = RPG::Cache.picture("PoseA_skirtbackD")
      when "bodyE"
        @skirt_back.bitmap = RPG::Cache.picture("PoseA_skirtbackE")
      when "bodyA"
        @skirt_back.bitmap = RPG::Cache.picture("")
      when "bodyB"
        @skirt_back.bitmap = RPG::Cache.picture("")
      when "bodyC"
        @skirt_back.bitmap = RPG::Cache.picture("")
      end
    when "poseB"
      @skirt_back.bitmap = RPG::Cache.picture("")
    when "poseC"
      @skirt_back.bitmap = RPG::Cache.picture("")
    when "poseD"
      @skirt_back.bitmap = RPG::Cache.picture("")
    end
    @skirt_back.ox = @skirt_back.bitmap.width / 2
    @skirt_back.oy = @skirt_back.bitmap.height / 2
    @skirt_back.x = @pose_x
    @skirt_back.y = @pose_y
  end
  def camisole  #キャミソール
    @camisole = Sprite.new
    case @pose
    when "poseA"
      case @type
      when "bodyA"
        case @bust_number
        when 1
          @camisole.bitmap = RPG::Cache.picture("#{@pose}_camisoleA01")
        when 2
          @camisole.bitmap = RPG::Cache.picture("#{@pose}_camisoleA02")
        when 3
          @camisole.bitmap = RPG::Cache.picture("#{@pose}_camisoleA03")
        end
      when "bodyB"
        case @bust_number
        when 1
          @camisole.bitmap = RPG::Cache.picture("#{@pose}_camisoleA01")
        when 2
          @camisole.bitmap = RPG::Cache.picture("#{@pose}_camisoleA02")
        when 3
          @camisole.bitmap = RPG::Cache.picture("#{@pose}_camisoleA03")
        end
      when "bodyC"
        case @bust_number
        when 1
          @camisole.bitmap = RPG::Cache.picture("#{@pose}_camisoleC01")
        when 2
          @camisole.bitmap = RPG::Cache.picture("#{@pose}_camisoleC02")
        when 3
          @camisole.bitmap = RPG::Cache.picture("#{@pose}_camisoleC03")
        end
       when "bodyD"
        @camisole.bitmap = RPG::Cache.picture("#{@pose}_camisoleD")
       when "bodyE"
        @camisole.bitmap = RPG::Cache.picture("#{@pose}_camisoleE")
      end
    when "poseB"
      @camisole.bitmap = RPG::Cache.picture("#{@pose}_camisoleA")
    when "poseC"
      @camisole.bitmap = RPG::Cache.picture("#{@pose}_camisoleA")
    when "poseD"
      @camisole.bitmap = RPG::Cache.picture("#{@pose}_camisoleA")
    end
    @camisole.ox = @camisole.bitmap.width / 2
    @camisole.oy = @camisole.bitmap.height / 2
    @camisole.x = @pose_x
    @camisole.y = @pose_y
  end
  def jacket_back
    @jacket_back = Sprite.new
    case @pose
    when "poseA"
    @jacket_back.bitmap = RPG::Cache.picture("PoseA_jacketA04")
    when "poseB"
    @jacket_back.bitmap = RPG::Cache.picture("PoseB_jacketA02")
    when "poseC"
    @jacket_back.bitmap = RPG::Cache.picture("")
    when "poseD"
    @jacket_back.bitmap = RPG::Cache.picture("PoseD_jacketback")
    end
    @jacket_back.ox = @jacket_back.bitmap.width / 2
    @jacket_back.oy = @jacket_back.bitmap.height / 2
    @jacket_back.x = @pose_x
    @jacket_back.y = @pose_y
  end
  def jacket  #上衣
    @jacket = Sprite.new
    case @pose
    when "poseA"
      case @type
      when "bodyA"
        num = "A"
        case @bust_number
        when 1
          @jacket.bitmap = RPG::Cache.picture("#{@pose}_jacket#{num}01")
        when 2
          @jacket.bitmap = RPG::Cache.picture("#{@pose}_jacket#{num}02")
        when 3
          @jacket.bitmap = RPG::Cache.picture("#{@pose}_jacket#{num}03")
        end
      when "bodyB"
        num = "B"
        case @bust_number
        when 1
          @jacket.bitmap = RPG::Cache.picture("#{@pose}_jacket#{num}01")
        when 2
          @jacket.bitmap = RPG::Cache.picture("#{@pose}_jacket#{num}02")
        when 3
          @jacket.bitmap = RPG::Cache.picture("#{@pose}_jacket#{num}03")
        end
      when "bodyC"
          @jacket.bitmap = RPG::Cache.picture("")
      when "bodyD"
          @jacket.bitmap = RPG::Cache.picture("PoseA_jacketD")
      when "bodyE"
          @jacket.bitmap = RPG::Cache.picture("PoseA_jacketE")
      end
    when "poseB"
      @jacket.bitmap = RPG::Cache.picture("#{@pose}_jacketA") if @type == "bodyA"
      @jacket.bitmap = RPG::Cache.picture("#{@pose}_jacketA") if @type == "bodyB"
    when "poseC"
      @jacket.bitmap = RPG::Cache.picture("#{@pose}_jacketA") if @type == "bodyA"
      @jacket.bitmap = RPG::Cache.picture("#{@pose}_jacketB") if @type == "bodyB"
    when "poseD"
      @jacket.bitmap = RPG::Cache.picture("#{@pose}_jacketA")
    end
    @jacket.ox = @jacket.bitmap.width / 2
    @jacket.oy = @jacket.bitmap.height / 2
    @jacket.x = @pose_x
    @jacket.y = @pose_y
  end
  def foot
    @foot = Sprite.new
    if @pose == "poseD"
      @foot.bitmap = RPG::Cache.picture("PoseD_foot")
    else

    end
    @foot.ox = @foot.bitmap.width / 2
    @foot.oy = @foot.bitmap.height / 2
    @foot.x = @pose_x
    @foot.y = @pose_y
  end
  def sweatface
    @sweatface = Sprite.new
    if @sweat == 1
      if @pose == "poseA"
      @sweatface.bitmap = RPG::Cache.picture("PoseA_sweat")
      elsif @pose == "poseC"
      @sweatface.bitmap = RPG::Cache.picture("PoseC_sweat")
      elsif @pose == "poseD"
      @sweatface.bitmap = RPG::Cache.picture("PoseD_sweat")
      else
      @sweatface.bitmap = RPG::Cache.picture("")
      end
    else
      @sweatface.bitmap = RPG::Cache.picture("")
    end
    @sweatface.ox = @sweatface.bitmap.width / 2
    @sweatface.oy = @sweatface.bitmap.height / 2
    @sweatface.x = @pose_x
    @sweatface.y = @pose_y
  end
  def redface
    @redface = Sprite.new
    if $game_switches[1] == true or @red == 1
      if @pose == "poseA"
      $game_party.actors[0].states == [17] #赤面する
      @redface.bitmap = RPG::Cache.picture("PoseA_red")
      elsif @pose == "poseC"
      $game_party.actors[0].states == [17] #赤面する
      @redface.bitmap = RPG::Cache.picture("PoseC_red")
      elsif @pose == "poseD"
      $game_party.actors[0].states == [17] #赤面する
      @redface.bitmap = RPG::Cache.picture("PoseD_red")
      else
      @redface.bitmap = RPG::Cache.picture("")
      end
    else
      @redface.bitmap = RPG::Cache.picture("")
    end
    @redface.ox = @redface.bitmap.width / 2
    @redface.oy = @redface.bitmap.height / 2
    @redface.x = @pose_x
    @redface.y = @pose_y
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
    @panty_check = 0
    @skirt_check = 0
    @skirt_front_check = 0
    @skirt_back_check = 0
    @camisole_check = 0
    @jacket_check = 0
    @jacket_back_check = 0
    case $game_variables[3]
    when 1
      @panty_check = 1
      @skirt_check = 1
      @skirt_back_check = 1
      @camisole_check = 1
      @jacket_check = 1
      @jacket_back_check = 1
    when 2
      @panty_check = 1
      @skirt_check = 1
      @skirt_back_check = 1
      @camisole_check = 1
    when 3
      @panty_check = 1
      @skirt_check = 1
      @skirt_back_check = 1
      @jacket_check = 1
      @jacket_back_check = 1
    when 4
      @panty_check = 1
      @skirt_check = 1
      @skirt_back_check = 1
    when 5
      @panty_check = 1
      @camisole_check = 1
    when 6
      @panty_check = 1
    when 7
      @camisole_check = 1
    when 11
      @skirt_check = 1
      @camisole_check = 1
      @jacket_check = 1
      @jacket_back_check = 1
    when 12
      @skirt_check = 1
      @skirt_back_check = 1
      @camisole_check = 1
    when 13
      @skirt_check = 1
      @skirt_back_check = 1
      @jacket_check = 1
      @jacket_back_check = 1
    when 14
      @skirt_check = 1
      @skirt_back_check = 1
    end

    hair
    skirt_back if @skirt_back_check == 1 and @pose == "poseA"
    jacket_back if @jacket_back_check == 1 and @pose == "poseA"
    jacket_back if @jacket_back_check == 1 and @pose == "poseD"
    body  #身体
    panty if @panty_check == 1  #パンティ
    skirt if @skirt_check == 1 and @type != "bodyD" and @type != "bodyE"
    case @pose
    when "poseA"
      bust if @type == "bodyA" or @type == "bodyB" or @type == "bodyC" or @type == "bodyD" or @type == "bodyE"
    when "poseB"

    when "poseC"
      bust
    when "poseD"

    end
    #上衣
    if @pose == "poseA"
      if @type == "bodyC"

      else
        camisole if @camisole_check == 1
        jacket if @jacket_check == 1
      end
    else
      camisole if @camisole_check == 1
      jacket if @jacket_check == 1
    end
    jacket_back if @jacket_back_check == 1 and @pose == "poseB"
    skirt if @skirt_check == 1 and @type == "bodyD"
    skirt if @skirt_check == 1 and @type == "bodyE"
    foot if @pose == "poseD"
    head
    redface
    sweatface
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
end
