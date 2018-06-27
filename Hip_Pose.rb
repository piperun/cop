#==============================================================================
# ■ Hip_Pose
#------------------------------------------------------------------------------
# 　お尻の画像の表示を行うクラスです。
#==============================================================================

class Hip < Sprite
  #--------------------------------------------------------------------------
  # ● オブジェクト初期化
  #--------------------------------------------------------------------------
  def initialize(pose,face_number,red,type)
    super()
    @actor = $game_party.actors[0]  # アクターを取得
    @pose = pose
    @face_number = face_number
    @red = red
    @type = type
    @pose_x = 320
    @pose_y = 250
  end
  #--------------------------------------------------------------------------
  # ● 立ち絵の表示
  #--------------------------------------------------------------------------
  def pop
    check
  end
  #--------------------------------------------------------------------------
  # ● 立ち絵の消去
  #--------------------------------------------------------------------------
  def clear
    @hair.dispose if @hair != nil
    @body.dispose if @body != nil
    @head.dispose if @head != nil
    @redface.dispose if @redface != nil
    @panty.dispose if @panty != nil
    @skirt.dispose if @skirt != nil
    @skirt_back.dispose if @skirt_back != nil
    @camisole.dispose if @camisole != nil
    @jacket.dispose if @jacket != nil
    @jacket_back.dispose if @jacket_back != nil
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
  def body  #身体
    @body = Sprite.new
    @body.bitmap = RPG::Cache.picture("Menu_body#{@pose}")
    @body.ox = @body.bitmap.width / 2
    @body.oy = @body.bitmap.height / 2
    @body.x = @pose_x
    @body.y = @pose_y
  end
  def hair  #髪
    @hair = Sprite.new
    if @pose == "A" or @pose == "A2" or @pose == "B" or @pose == "C" or @pose == "C" or @pose == "E"
      @hair.bitmap = RPG::Cache.picture("Menu_hair")
    else
      @hair.bitmap = RPG::Cache.picture("")
    end
    @hair.ox = @hair.bitmap.width / 2
    @hair.oy = @hair.bitmap.height / 2
    @hair.x = @pose_x
    @hair.y = @pose_y
  end
  def panty #パンティ
    @panty = Sprite.new
    if @pose == "A" or @pose == "A2" or @pose == "B" or @pose == "C" or @pose == "E"
        if @type == 0
          @panty.bitmap = RPG::Cache.picture("Menu_pantyA")
        elsif @type == 1
          @panty.bitmap = RPG::Cache.picture("")
        end
    elsif @pose == "D"
        if @type == 0
          @panty.bitmap = RPG::Cache.picture("Menu_pantyD")
        elsif @type == 1
          @panty.bitmap = RPG::Cache.picture("")
        end
    elsif @pose == "F"
		if @type == 0
		  @panty.bitmap = RPG::Cache.picture("Menu_pantyF")
        elsif @type == 1
          @panty.bitmap = RPG::Cache.picture("Menu_pantyF02")
        elsif @type == 2
          @panty.bitmap = RPG::Cache.picture("")
		end
    elsif @pose == "G"
		if @type == 0
		  @panty.bitmap = RPG::Cache.picture("Menu_pantyG")
        elsif @type == 1
          @panty.bitmap = RPG::Cache.picture("")
		end
    elsif @pose == "H"
		if @type == 0
		  @panty.bitmap = RPG::Cache.picture("Menu_pantyH")
        elsif @type == 1
          @panty.bitmap = RPG::Cache.picture("Menu_pantyF")
        elsif @type == 2
          @panty.bitmap = RPG::Cache.picture("Menu_pantyF02")
		end
    end
    @panty.ox = @panty.bitmap.width / 2
    @panty.oy = @panty.bitmap.height / 2
    @panty.x = @pose_x
    @panty.y = @pose_y
  end
  def skirt_back #スカート後ろ
    @skirt_back = Sprite.new
    @skirt_back.bitmap = RPG::Cache.picture("Menu_skirt")
    @skirt_back.ox = @skirt_back.bitmap.width / 2
    @skirt_back.oy = @skirt_back.bitmap.height / 2
    @skirt_back.x = @pose_x
    @skirt_back.y = @pose_y
  end
  def skirt #スカート前
    @skirt = Sprite.new
    if @pose == "A" or @pose == "A2" or @pose == "B" or @pose == "C" or @pose == "E"
      @skirt.bitmap = RPG::Cache.picture("Menu_skirtA")
    elsif @pose == "D"
      @skirt.bitmap = RPG::Cache.picture("Menu_skirtB")
    elsif @pose == "F" or @pose == "G"
      @skirt.bitmap = RPG::Cache.picture("Menu_skirtF")
    elsif @pose == "H"
      @skirt.bitmap = RPG::Cache.picture("Menu_skirtH")
    end
    @skirt.ox = @skirt.bitmap.width / 2
    @skirt.oy = @skirt.bitmap.height / 2
    @skirt.x = @pose_x
    @skirt.y = @pose_y
  end
  def camisole  #キャミソール
    @camisole = Sprite.new
    if @pose == "A" or @pose == "A2"
      @camisole.bitmap = RPG::Cache.picture("Menu_camisoleA")
    elsif @pose == "B"
      @camisole.bitmap = RPG::Cache.picture("Menu_camisoleB")
    elsif @pose == "C"
      @camisole.bitmap = RPG::Cache.picture("Menu_camisoleC")
    elsif @pose == "D"
      @camisole.bitmap = RPG::Cache.picture("Menu_camisoleD")
    elsif @pose == "E"
      @camisole.bitmap = RPG::Cache.picture("")
    elsif @pose == "F" or @pose == "G"
      @camisole.bitmap = RPG::Cache.picture("Menu_camisoleF")
    elsif @pose == "H"
      @camisole.bitmap = RPG::Cache.picture("Menu_camisoleH")
    end
    @camisole.ox = @camisole.bitmap.width / 2
    @camisole.oy = @camisole.bitmap.height / 2
    @camisole.x = @pose_x
    @camisole.y = @pose_y
  end
  def jacket  #上衣
    @jacket = Sprite.new
    if @pose == "A"
      @jacket.bitmap = RPG::Cache.picture("Menu_jacketA01")
    elsif @pose == "A2"
      @jacket.bitmap = RPG::Cache.picture("Menu_jacketA03")
    elsif @pose == "B"
      @jacket.bitmap = RPG::Cache.picture("Menu_jacketA05")
    elsif @pose == "C"
      @jacket.bitmap = RPG::Cache.picture("")
    elsif @pose == "D"
      @jacket.bitmap = RPG::Cache.picture("Menu_jacketD01")
    elsif @pose == "E"
      @jacket.bitmap = RPG::Cache.picture("")
    elsif @pose == "F"
      @jacket.bitmap = RPG::Cache.picture("Menu_jacketF")
    elsif @pose == "G"
      @jacket.bitmap = RPG::Cache.picture("Menu_jacketG")
    elsif @pose == "H"
      @jacket.bitmap = RPG::Cache.picture("Menu_jacketH")
    end
    @jacket.ox = @jacket.bitmap.width / 2
    @jacket.oy = @jacket.bitmap.height / 2
    @jacket.x = @pose_x
    @jacket.y = @pose_y
  end
    def jacket_back  #上衣
    @jacket_back = Sprite.new
    if @pose == "A" or
      @jacket_back.bitmap = RPG::Cache.picture("Menu_jacketA02")
    elsif @pose == "A2"
      @jacket_back.bitmap = RPG::Cache.picture("Menu_jacketA04")
    elsif @pose == "B"
      @jacket_back.bitmap = RPG::Cache.picture("")
    elsif @pose == "C"
      @jacket_back.bitmap = RPG::Cache.picture("")
    elsif @pose == "D"
      @jacket_back.bitmap = RPG::Cache.picture("Menu_jacketD02")
    elsif @pose == "E"
      @jacket_back.bitmap = RPG::Cache.picture("")
    elsif @pose == "F"
      @jacket_back.bitmap = RPG::Cache.picture("")
    elsif @pose == "G"
      @jacket_back.bitmap = RPG::Cache.picture("")
    elsif @pose == "H"
      @jacket_back.bitmap = RPG::Cache.picture("")
    end
    @jacket_back.ox = @jacket_back.bitmap.width / 2
    @jacket_back.oy = @jacket_back.bitmap.height / 2
    @jacket_back.x = @pose_x
    @jacket_back.y = @pose_y
  end
  def redface
    @redface = Sprite.new
   if $game_switches[1] == true or @red == 1 or $game_party.actors[0].states == [17] #赤面する
    if @pose == "A" or @pose == "A2" or @pose == "B" or @pose == "C" or @pose == "D" or @pose == "E"
      @redface.bitmap = RPG::Cache.picture("Menu_red")
    elsif @pose == "F" or @pose == "G" or @pose == "H"
      @redface.bitmap = RPG::Cache.picture("Menu_red3")
    end
   else
      @redface.bitmap = RPG::Cache.picture("")
   end
    @redface.ox = @head.bitmap.width / 2
    @redface.oy = @head.bitmap.height / 2
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
    @skirt_front_check = 0
    @skirt_back_check = 0
    @skirt_check = 0
    @camisole_check = 0
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
    if @pose == "C" or @pose == "E"
      @jacket_check = 0
    end
    if @pose == "E"
      @camisole_check = 0
    end
    if @pose == "F" or @pose == "G" or @pose == "H"
      @skirt_back_check = 1
    end

    skirt_back if @skirt_check == 1 and @skirt_back_check == 1 #スカート後ろ
    hair if @pose != "F" or @pose != "G" or @pose != "H"
    jacket_back if @pose == "A" or @pose == "A2" or @pose == "D"
    body  #身体
    head if @pose == "A" or @pose == "A2" or @pose == "B" or @pose == "C" or @pose == "D" or @pose == "E"
    panty if @panty_check == 1  #パンティ
    camisole if @camisole_check == 1 and @pose != "E" #キャミソール
    skirt if @skirt_check == 1  #スカート
    jacket if @jacket_check == 1 and @pose != "C" #上衣
    head if @pose == "F" or @pose == "G" or @pose == "H"
    redface
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
