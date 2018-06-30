#==============================================================================
# ■ Ev016
#------------------------------------------------------------------------------
# 　Sitting defeatedly on the ground scene.
#==============================================================================
class Ev016 < Sprite
  #--------------------------------------------------------------------------
  # ● オブジェクト初期化
  #--------------------------------------------------------------------------
  def initialize(face,camisole_type,skirt_type,jacket_type,panty_type,bruise_type,sweat_type,red)
    super()
    @face = face
    @camisole_type = camisole_type
    @skirt_type = skirt_type
    @jacket_type = jacket_type
    @panty_type = panty_type
    @bruise_type = bruise_type
    @sweat_type = sweat_type
    @red = red

    @posex = 0
    @posey = 0
  end

  #--------------------------------------------------------------------------
  # ● 絵の表示
  #--------------------------------------------------------------------------
  def pop
    hair
    skirt_back
    hand
    body
    panty if @panty_type != 0
    camisole if @camisole_type != 0
    jacket if @jacket_type != 0
    skirt if @skirt_type != 0
    head
    bruise if @bruise_type != 0
    sweatface if @sweat_type != 0
    redface if @red != 0
  end

  #--------------------------------------------------------------------------
  # ● 絵の消去
  #--------------------------------------------------------------------------
  def clear
    @body.dispose if @body != nil
    @hair.dispose if @hair != nil
    @hand.dispose if @hand != nil
    @head.dispose if @head != nil
    @camisole.dispose if @camisole != nil
    @jacket.dispose if @jacket != nil
    @skirt.dispose if @skirt != nil
    @skirt_back.dispose if @skirt_back != nil
    @panty.dispose if @panty != nil
    @bruise.dispose if @bruise != nil
    @sweatface.dispose if @sweatface != nil
    @redface.dispose if @redface != nil
  end

  #--------------------------------------------------------------------------
  # ● 各画像の表示
  #--------------------------------------------------------------------------
  def hair
    @hair = Sprite.new
    @hair.bitmap = RPG::Cache.picture("Ev016_Hair")
    @hair.x = @posex
    @hair.y = @posey
  end
  def body
    @body = Sprite.new
    @body.bitmap = RPG::Cache.picture("Ev016_Body")
    @body.x = @posex
    @body.y = @posey
  end
  def hand
    @hand = Sprite.new
    @hand.bitmap = RPG::Cache.picture("Ev016_Hand")
    @hand.x = @posex
    @hand.y = @posey
  end
  def head
    @head = Sprite.new
    @head.bitmap = RPG::Cache.picture("Ev016_head#{@face}")
    @head.x = @posex
    @head.y = @posey
  end
  def camisole
    @camisole = Sprite.new
    @camisole.bitmap = RPG::Cache.picture("Ev016_Camisole")
    @camisole.x = @posex
    @camisole.y = @posey
  end
  def jacket
    @jacket = Sprite.new
    @jacket.bitmap = RPG::Cache.picture("Ev016_jacket")
    @jacket.x = @posex
    @jacket.y = @posey
  end
  def skirt
    @skirt = Sprite.new
    @skirt.bitmap = RPG::Cache.picture("Ev016_Skirt")
    @skirt.x = @posex
    @skirt.y = @posey
  end
  def skirt_back
    @skirt_back = Sprite.new
    @skirt_back.bitmap = RPG::Cache.picture("Ev016_BackSkirt")
    @skirt_back.x = @posex
    @skirt_back.y = @posey
  end
  def panty
    @panty = Sprite.new
    @panty.bitmap = RPG::Cache.picture("Ev016_Panty")
    @panty.x = @posex
    @panty.y = @posey
  end
  def bruise
    @bruise = Sprite.new
    @bruise.bitmap = RPG::Cache.picture("Ev016_Bruises")
    @bruise.x = @posex
    @bruise.y = @posey
  end
  def sweatface
    @sweatface = Sprite.new
    @sweatface.bitmap = RPG::Cache.picture("Ev016_Sweat#{@sweat_type}")
    @sweatface.x = @posex
    @sweatface.y = @posey
  end
  def redface
    @redface = Sprite.new
    @redface.bitmap = RPG::Cache.picture("Ev016_Red")
    @redface.x = @posex
    @redface.y = @posey
  end
end
