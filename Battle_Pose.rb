#==============================================================================
# ■ Battle_Pose
#------------------------------------------------------------------------------
# 　メニュー画面の画像の表示を行うクラスです。
#==============================================================================

class Battle_Pose < Sprite
  #--------------------------------------------------------------------------
  # ● オブジェクト初期化
  #--------------------------------------------------------------------------
  def initialize
    super()
    # アクターを取得
    @actor = $game_party.actors[0]

    @pose_z = 100
  end
  #--------------------------------------------------------------------------
  # ● 立ち絵の表示
  #--------------------------------------------------------------------------
  def pop(pose, face)
    @pose = pose
    @face =  face

    case @pose
    when "A"
      @pose_x = 175
      @pose_y = 282
    when "B"
      @pose_x = 175 #160
      @pose_y = 283
    when "C"
      @pose_x = 173
      @pose_y = 282
    when "D"
      @pose_x = 140
      @pose_y = 260
    end

    check
  end
  #--------------------------------------------------------------------------
  # ● 立ち絵のアニメ
  #--------------------------------------------------------------------------
  def kamae(a,b) #stance
    check
    case a
    when "x"
      @body.x += b if @body != nil
      @head.x += b if @head != nil
      @redface.x += b if @redface != nil
      @hair.x += b if @hair != nil
      @panty.x += b if @panty != nil
      @skirt.x += b if @skirt != nil
      @camisole.x += b if @camisole != nil
      @jacket.x += b if @jacket != nil
      @jacket_back.x += b if @jacket_back != nil
    when "y"
      @body.y += b if @body != nil
      @head.y += b if @head != nil
      @hair.y += b if @hair != nil
      @redface.y += b if @redface != nil
      @panty.y += b if @panty != nil
      @skirt.y += b if @skirt != nil
      @camisole.y += b if @camisole != nil
      @jacket.y += b if @jacket != nil
      @jacket_back.y += b if @jacket_back != nil
    end
  end
  def bogyo(a,b) #defense
    check
    case a
    when "x"
      @body.x += b if @body != nil
      @head.x += b if @head != nil
      @redface.x += b if @redface != nil
      @hair.x += b if @hair != nil
      @panty.x += b if @panty != nil
      @skirt.x += b if @skirt != nil
      @camisole.x += b if @camisole != nil
      @jacket.x += b if @jacket != nil
      @jacket_back.x += b if @jacket_back != nil
    when "y"
      @body.y += b if @body != nil
      @head.y += b if @head != nil
      @redface.y += b if @redface != nil
      @hair.y += b if @hair != nil
      @panty.y += b if @panty != nil
      @skirt.y += b if @skirt != nil
      @camisole.y += b if @camisole != nil
      @jacket.y += b if @jacket != nil
      @jacket_back.x += b if @jacket_back != nil
    end
  end
  def kaihi(a,b) #avoidance
    check
    case a
    when "x"
      @body.x += b if @body != nil
      @head.x += b if @head != nil
      @redface.x += b if @redface != nil
      @hair.x += b if @hair != nil
      @panty.x += b if @panty != nil
      @skirt.x += b if @skirt != nil
      @camisole.x += b if @camisole != nil
      @jacket.x += b if @jacket != nil
      @jacket_back.x += b if @jacket_back != nil
    when "y"
      @body.y += b if @body != nil
      @head.y += b if @head != nil
      @redface.y += b if @redface != nil
      @hair.y += b if @hair != nil
      @panty.y += b if @panty != nil
      @skirt.y += b if @skirt != nil
      @camisole.y += b if @camisole != nil
      @jacket.y += b if @jacket != nil
      @jacket_back.x += b if @jacket_back != nil
    end
  end
  def kogeki(a,b) #attack
    check
    case a
    when "x"
      @body.x += b if @body != nil
      @head.x += b if @head != nil
      @redface.x += b if @redface != nil
      @hair.x += b if @hair != nil
      @panty.x += b if @panty != nil
      @skirt.x += b if @skirt != nil
      @camisole.x += b if @camisole != nil
      @jacket.x += b if @jacket != nil
      @jacket_back.x += b if @jacket_back != nil
    when "y"
      @body.y += b if @body != nil
      @head.y += b if @head != nil
      @redface.y += b if @redface != nil
      @hair.y += b if @hair != nil
      @panty.y += b if @panty != nil
      @skirt.y += b if @skirt != nil
      @camisole.y += b if @camisole != nil
      @jacket.y += b if @jacket != nil
      @jacket_back.x += b if @jacket_back != nil
    end
  end
  def senko(a,b) #ultimate
    check
    case a
    when "x"
      @body.x += b if @body != nil
      @head.x += b if @head != nil
      @redface.x += b if @redface != nil
      @hand.x += b if @hand != nil
      @hair.x += b if @hair != nil
      @panty.x += b if @panty != nil
      @skirt.x += b if @skirt != nil
      @camisole.x += b if @camisole != nil
      @jacket.x += b if @jacket != nil
      @jacket_back.x += b if @jacket_back != nil
      @comet.x += b if @comet != nil
    when "y"
      @body.y += b if @body != nil
      @head.y += b if @head != nil
      @redface.y += b if @redface != nil
      @hand.y += b if @hand != nil
      @hair.y += b if @hair != nil
      @panty.y += b if @panty != nil
      @skirt.y += b if @skirt != nil
      @camisole.y += b if @camisole != nil
      @jacket.y += b if @jacket != nil
      @jacket_back.x += b if @jacket_back != nil
      @comet.y += b if @comet != nil
    end
  end
  #--------------------------------------------------------------------------
  # ● コメット
  #--------------------------------------------------------------------------
  def comet_on
    comet
  end
  def comet_off
    @comet.dispose if @comet != nil
  end
  #--------------------------------------------------------------------------
  # ● 立ち絵の消去
  #--------------------------------------------------------------------------
  def clear
    @body.dispose if @body != nil
    @hand.dispose if @hand != nil
    @head.dispose if @head != nil
    @redface.dispose if @redface != nil
    @hair.dispose if @hair != nil
    @panty.dispose if @panty != nil
    @skirt.dispose if @skirt != nil
    @camisole.dispose if @camisole != nil
    @jacket.dispose if @jacket != nil
    @jacket_back.dispose if @jacket_back != nil
    @comet.dispose if @comet != nil
  end
  #--------------------------------------------------------------------------
  # ● 各画像の準備
  #--------------------------------------------------------------------------
  def head  #頭
    @head = Sprite.new
    @head.bitmap = RPG::Cache.picture("Battle_Pose#{@pose}_head#{@face}")
    @head.ox = @head.bitmap.width / 2
    @head.oy = @head.bitmap.height / 2
    @head.x = @pose_x
    @head.y = @pose_y
    @head.z = @pose_z
  end
  def redface  #頭
    @redface = Sprite.new
    if $game_switches[1] == true
      $game_party.actors[0].states == [17] #赤面する
      @redface.bitmap = RPG::Cache.picture("Battle_Pose#{@pose}_red")
    else
      @redface.bitmap = RPG::Cache.picture("")
    end
    @redface.ox = @redface.bitmap.width / 2
    @redface.oy = @redface.bitmap.height / 2
    @redface.x = @pose_x
    @redface.y = @pose_y
    @redface.z = @pose_z
  end
  def body  #身体
    @body = Sprite.new
    @body.bitmap = RPG::Cache.picture("Battle_Pose#{@pose}_bodyA")
    @body.ox = @body.bitmap.width / 2
    @body.oy = @body.bitmap.height / 2
    @body.x = @pose_x
    @body.y = @pose_y
    @body.z = @pose_z
  end
  def hand #手
    @hand = Sprite.new
    @hand.bitmap = RPG::Cache.picture("Battle_PoseD_hand")
    @hand.ox = @hand.bitmap.width / 2
    @hand.oy = @hand.bitmap.height / 2
    @hand.x = @pose_x
    @hand.y = @pose_y
    @hand.z = @pose_z
  end
  def hair  #髪
    @hair = Sprite.new
    @hair.bitmap = RPG::Cache.picture("Battle_Pose#{@pose}_hair")
    @hair.ox = @hair.bitmap.width / 2
    @hair.oy = @hair.bitmap.height / 2
    @hair.x = @pose_x
    @hair.y = @pose_y
    @hair.z = @pose_z
  end
  def comet  #コメット
    @comet = Sprite.new
    @comet.bitmap = RPG::Cache.picture("Battle_Pose#{@pose}_comet")
    @comet.ox = @comet.bitmap.width / 2
    @comet.oy = @comet.bitmap.height / 2
    @comet.x = @pose_x
    @comet.y = @pose_y
    @comet.z = @pose_z
  end
  def panty #パンティ
    @panty = Sprite.new
    @panty.bitmap = RPG::Cache.picture("Battle_Pose#{@pose}_panty")
    @panty.ox = @panty.bitmap.width / 2
    @panty.oy = @panty.bitmap.height / 2
    @panty.x = @pose_x
    @panty.y = @pose_y
    @panty.z = @pose_z
  end
  def skirt  #スカート
    @skirt = Sprite.new
    @skirt.bitmap = RPG::Cache.picture("Battle_Pose#{@pose}_skirt")
    @skirt.ox = @skirt.bitmap.width / 2
    @skirt.oy = @skirt.bitmap.height / 2
    @skirt.x = @pose_x
    @skirt.y = @pose_y
    @skirt.z = @pose_z
  end
  def camisole  #キャミソール
    @camisole = Sprite.new
    @camisole.bitmap = RPG::Cache.picture("Battle_Pose#{@pose}_camisole")
    @camisole.ox = @camisole.bitmap.width / 2
    @camisole.oy = @camisole.bitmap.height / 2
    @camisole.x = @pose_x
    @camisole.y = @pose_y
    @camisole.z = @pose_z
  end
  def jacket  #上衣
    @jacket = Sprite.new
    @jacket.bitmap = RPG::Cache.picture("Battle_Pose#{@pose}_jacket")
    @jacket.ox = @jacket.bitmap.width / 2
    @jacket.oy = @jacket.bitmap.height / 2
    @jacket.x = @pose_x
    @jacket.y = @pose_y
    @jacket.z = @pose_z
  end
  def jacket_back
    @jacket_back = Sprite.new
    @jacket_back.bitmap = RPG::Cache.picture("Battle_Pose#{@pose}_jacketback")
    @jacket_back.ox = @jacket_back.bitmap.width / 2
    @jacket_back.oy = @jacket_back.bitmap.height / 2
    @jacket_back.x = @pose_x
    @jacket_back.y = @pose_y
    @jacket_back.z = @pose_z
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
    clear
    #初期化
    @hand_check = 0

    @panty_check = 0
    @skirt_check = 0
    @camisole_check = 0
    @jacket_check = 0
    @jacket_back_check = 0
    @comet_check = 0
    case $game_variables[3]
    when 1
      @panty_check = 1
      @skirt_check = 1
      @camisole_check = 1
      @jacket_check = 1
      @jacket_back_check = 1
    when 2
      @panty_check = 1
      @skirt_check = 1
      @camisole_check = 1
    when 3
      @panty_check = 1
      @skirt_check = 1
      @jacket_check = 1
      @jacket_back_check = 1
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
      @jacket_back_check = 1
    when 12
      @skirt_check = 1
      @camisole_check = 1
    when 13
      @skirt_check = 1
      @jacket_check = 1
      @jacket_back_check = 1
    when 14
      @skirt_check = 1
    end
    case @pose
    when "A"
      @hand_check = 0
    when "B"
      @hand_check = 0
    when "C"
      @hand_check = 0
    when "D"
      @hand_check = 1
      @comet_check = 1
    end

    case @pose
    when "A"
      hair  #髪
      jacket_back if @jacket_back_check == 1
      body  #身体
      panty if @panty_check == 1  #パンティ
      skirt if @skirt_check == 1  #スカート
      camisole if @camisole_check == 1  #キャミソール
      jacket if @jacket_check == 1  #上衣
      head  #頭
      redface
      hand if @hand_check == 1  #手
    when "B"
      hair  #髪
      jacket_back if @jacket_back_check == 1
      body  #身体
      panty if @panty_check == 1  #パンティ
      skirt if @skirt_check == 1  #スカート
      camisole if @camisole_check == 1  #キャミソール
      jacket if @jacket_check == 1  #上衣
      head  #頭
      redface
      hand if @hand_check == 1  #手
    when "C"
      hair  #髪
      body  #身体
      jacket_back if @jacket_back_check == 1
      panty if @panty_check == 1  #パンティ
      skirt if @skirt_check == 1  #スカート
      camisole if @camisole_check == 1  #キャミソール
      jacket if @jacket_check == 1  #上衣
      hand if @hand_check == 1  #手
      head  #頭
      redface
    when "D"
      hair  #髪
      body  #身体
      jacket_back if @jacket_back_check == 1
      panty if @panty_check == 1  #パンティ
      skirt if @skirt_check == 1  #スカート
      camisole if @camisole_check == 1  #キャミソール
      jacket if @jacket_check == 1  #上衣
      head  #頭
      redface
      hand if @hand_check == 1  #手
      comet if @comet_check == 1
    end
  end

end
