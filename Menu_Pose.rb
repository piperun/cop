#==============================================================================
# ■ Menu_Pose
#------------------------------------------------------------------------------
# 　メニュー画面の画像の表示を行うクラスです。
#==============================================================================

class Menu_Pose < Sprite
  #--------------------------------------------------------------------------
  # ● オブジェクト初期化
  #--------------------------------------------------------------------------
  def initialize(pose,face_number,red)
    super()
    @actor = $game_party.actors[0]  # アクターを取得
    @pose = pose
    if @pose == "F" or @pose == "G" or @pose == "H" or @pose == "D"
      @face_number = "D" + face_number
    else
      @face_number = "A" + face_number
    end
    @red = red
    @pose_x = 320
    @pose_y = 280
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
  def slide(pose_y,move_y)
    @pose_y = pose_y
    @bust_number = 2
    check
    a = 5
    b = move_y / a
    b = b.abs
    for i in 1..b
      if move_y < 0
        @hair.y -= a if @hair != nil
        @body.y -= a if @body != nil
        @bust.y -= a if @bust != nil
        @redface.y -= a if @redface != nil
        @head.y -= a if @head != nil
        @panty.y -= a if @panty != nil
        @skirt.y -= a if @skirt != nil
        @skirt_front.y -= a if @skirt_front != nil
        @skirt_back.y -= a if @skirt_back != nil
        @camisole.y -= a if @camisole != nil
        @jacket.y -= a if @jacket != nil
        @jacket_back.y -= a if @jacket_back != nil
        wait(1) if move_y != 0
      else
        @hair.y += a if @hair != nil
        @body.y += a if @body != nil
        @bust.y += a if @bust != nil
        @redface.y += a if @redface != nil
        @head.y += a if @head != nil
        @panty.y += a if @panty != nil
        @skirt.y += a if @skirt != nil
        @skirt_front.y += a if @skirt_front != nil
        @skirt_back.y += a if @skirt_back != nil
        @camisole.y += a if @camisole != nil
        @jacket.y += a if @jacket != nil
        @jacket_back.y += a if @jacket_back != nil
        wait(1) if move_y != 0
      end
    end

    if @pose == "B" or @pose == "C"
      @pose_y = @head.y
      #shake
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

    if @pose == "C"
      wait(a*2)

      @bust_number = 3
      clear
      check
      wait(a*3)

      @bust_number = 2
      clear
      check
    end
  end
  #--------------------------------------------------------------------------
  # ● 立ち絵の消去
  #--------------------------------------------------------------------------
  def clear
    @hair.dispose if @hair != nil
    @body.dispose if @body != nil
    @bust.dispose if @bust != nil
    @redface.dispose if @redface != nil
    @head.dispose if @head != nil
    @panty.dispose if @panty != nil
    @skirt.dispose if @skirt != nil
    @skirt_front.dispose if @skirt_front != nil
    @skirt_back.dispose if @skirt_back != nil
    @camisole.dispose if @camisole != nil
    @jacket.dispose if @jacket != nil
  end
  #--------------------------------------------------------------------------
  # ● 各画像の準備
  #--------------------------------------------------------------------------
  def head  #頭
    @head = Sprite.new
    @head.bitmap = RPG::Cache.picture("Menu_head#{@face_number}")
    @head.ox = @head.bitmap.width / 2
    @head.oy = @head.bitmap.height / 2
    @head.x = @pose_x
    @head.y = @pose_y
  end
  def body
    @body = Sprite.new
    @body.bitmap = RPG::Cache.picture("Menu_body#{@pose}")
    @body.ox = @body.bitmap.width / 2
    @body.oy = @body.bitmap.height / 2
    @body.x = @pose_x
    @body.y = @pose_y
  end
  def hair
    @hair = Sprite.new
    if @pose == "A" or @pose == "A2" or @pose == "B" or @pose == "C"
    @hair.bitmap = RPG::Cache.picture("Menu_hair")
    else
    @hair.bitmap = RPG::Cache.picture("")
    end
    @hair.ox = @hair.bitmap.width / 2
    @hair.oy = @hair.bitmap.height / 2
    @hair.x = @pose_x
    @hair.y = @pose_y
  end
  def redface
    @redface = Sprite.new
    if $game_switches[1] == true or @red == 1
      $game_party.actors[0].states == [17] #赤面する
      if @pose == "A" or @pose == "A2" or @pose == "B" or @pose == "C"
      @redface.bitmap = RPG::Cache.picture("Menu_red")
      else
      @redface.bitmap = RPG::Cache.picture("Menu_red3")
      end
    end
    @redface.ox = @head.bitmap.width / 2
    @redface.oy = @head.bitmap.height / 2
    @redface.x = @pose_x
    @redface.y = @pose_y
  end
  def panty #パンティ
    @panty = Sprite.new
    if @pose == "A" or @pose == "A2" or @pose == "B" or @pose == "C"
        @panty.bitmap = RPG::Cache.picture("Menu_panty")
    elsif @pose == "F"
        @panty.bitmap = RPG::Cache.picture("Menu_pantyF")
    elsif @pose == "G"
        @panty.bitmap = RPG::Cache.picture("Menu_pantyG")
    elsif @pose == "H"
        @panty.bitmap = RPG::Cache.picture("Menu_pantyH")
    elsif @pose == "D"
        @panty.bitmap = RPG::Cache.picture("Menu_pantyH")
    else
        @panty.bitmap = RPG::Cache.picture("")
    end
    @panty.ox = @panty.bitmap.width / 2
    @panty.oy = @panty.bitmap.height / 2
    @panty.x = @pose_x
    @panty.y = @pose_y
  end
  def skirt_front #スカート前
    @skirt_front = Sprite.new
    if @pose == "F" or @pose == "G"
      @skirt_front.bitmap = RPG::Cache.picture("Menu_skirtF")
    elsif @pose == "H" or @pose == "D"
      @skirt_front.bitmap = RPG::Cache.picture("Menu_skirtH")
    end
    @skirt_front.ox = @skirt_front.bitmap.width / 2
    @skirt_front.oy = @skirt_front.bitmap.height / 2
    @skirt_front.x = @pose_x
    @skirt_front.y = @pose_y
  end
  def skirt_back #スカート後ろ
    @skirt_back = Sprite.new
    if @pose == "D" or @pose == "F" or @pose == "G" or @pose == "H"
      @skirt_back.bitmap = RPG::Cache.picture("Menu_skirt")
    end
    @skirt_back.ox = @skirt_back.bitmap.width / 2
    @skirt_back.oy = @skirt_back.bitmap.height / 2
    @skirt_back.x = @pose_x
    @skirt_back.y = @pose_y
  end
  def skirt #スカート
    @skirt = Sprite.new
    if @pose == "A2" or @pose == "B" or @pose == "C"
      @skirt.bitmap = RPG::Cache.picture("Menu_skirtB")
    elsif @pose == "A"
      @skirt.bitmap = RPG::Cache.picture("Menu_skirtA")
    else
      @skirt.bitmap = RPG::Cache.picture("")
    end
    @skirt.ox = @skirt.bitmap.width / 2
    @skirt.oy = @skirt.bitmap.height / 2
    @skirt.x = @pose_x
    @skirt.y = @pose_y
  end
  def camisole  #キャミソール
    @camisole = Sprite.new
    if @pose == "A"
      @camisole.bitmap = RPG::Cache.picture("Menu_camisoleA")
    elsif @pose == "B"
      @camisole.bitmap = RPG::Cache.picture("Menu_camisoleB")
    elsif @pose == "C"
      @camisole.bitmap = RPG::Cache.picture("Menu_camisoleC")
    elsif @pose == "D"
      @camisole.bitmap = RPG::Cache.picture("Menu_camisoleH")
    elsif @pose == "F" or @pose == "G"
      @camisole.bitmap = RPG::Cache.picture("Menu_camisoleF")
    elsif @pose == "H"
      @camisole.bitmap = RPG::Cache.picture("Menu_camisoleH")
    elsif @pose == "A2"
      @camisole.bitmap = RPG::Cache.picture("Menu_camisoleB")
    end
    @camisole.ox = @camisole.bitmap.width / 2
    @camisole.oy = @camisole.bitmap.height / 2
    @camisole.x = @pose_x
    @camisole.y = @pose_y
  end
  def jacket  #上衣
    @jacket = Sprite.new
    if @pose == "A"
      @jacket.bitmap = RPG::Cache.picture("Menu_jacketA")
    elsif @pose == "B"
      @jacket.bitmap = RPG::Cache.picture("Menu_jacketB")
    elsif @pose == "A2"
      @jacket.bitmap = RPG::Cache.picture("")
    elsif @pose == "D"
      @jacket.bitmap = RPG::Cache.picture("Menu_jacketH")
    elsif @pose == "F"
      @jacket.bitmap = RPG::Cache.picture("Menu_jacketF")
    elsif @pose == "G"
      @jacket.bitmap = RPG::Cache.picture("Menu_jacketG")
    elsif @pose == "H"
      @jacket.bitmap = RPG::Cache.picture("Menu_jacketH")
    else
      @jacket.bitmap = RPG::Cache.picture("")
    end
    @jacket.ox = @jacket.bitmap.width / 2
    @jacket.oy = @jacket.bitmap.height / 2
    @jacket.x = @pose_x
    @jacket.y = @pose_y
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
    @redface_check = 0
    @panty_check = 0
    @skirt_front_check = 0
    @skirt_back_check = 0
    @skirt_check = 0
    @camisole_check = 0
    @camisole_back_check = 0
    @jacket_check = 0
    case $game_variables[3]
    when 1
      @panty_check = 1
      @skirt_check = 1
      @camisole_check = 1
      @jacket_check = 1
    when 2
      @panty_check = 1
      @skirt_check = 1
      @camisole_check = 1
    when 3
      @panty_check = 1
      @skirt_check = 1
      @jacket_check = 1
    when 4
      @panty_check = 1
      @skirt_check = 1
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
    when 12
      @skirt_check = 1
      @camisole_check = 1
    when 13
      @skirt_check = 1
      @jacket_check = 1
    when 14
      @skirt_check = 1
    end


    if @pose == "C"
      @jacket_check = 0
    end
    if @pose == "F" or @pose == "G" or @pose == "H" or @pose == "D"
      @skirt_front_check = 1
      @skirt_back_check = 1
    end

    skirt_back if @skirt_check == 1 and @skirt_back_check == 1 #スカート後ろ
    hair  #髪
    body  #身体
    panty if @panty_check == 1  #パンティ
    skirt if @skirt_check == 1  #スカート
    camisole if @camisole_check == 1 and @pose != "C" #キャミソール
    jacket if @jacket_check == 1  #上衣
    camisole if @camisole_check == 1 and @pose == "C" #キャミソール
    head
    redface
    skirt_front if @skirt_check == 1 and @skirt_front_check == 1 #スカート前
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
