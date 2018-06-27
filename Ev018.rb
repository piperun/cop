#==============================================================================
# ■ Ev018
#------------------------------------------------------------------------------
# 　Sitting defeatedly on the ground scene.
#==============================================================================
class Ev018 < Sprite
  #--------------------------------------------------------------------------
  # ● オブジェクト初期化
  #--------------------------------------------------------------------------
  def initialize(face,camisole_type,skirt_type,jacket_type,panty_type,eyes_type,piss_type,sweat_type,red)
    super()
    @face = face
    @camisole_type = camisole_type
    @skirt_type = skirt_type
    @jacket_type = jacket_type
    @panty_type = panty_type
    @piss_type = piss_type
    @eyes_type = eyes_type
    @sweat_type = sweat_type
    @red = red

    @posex = 0
    @posey = 0
  end

  #--------------------------------------------------------------------------
  # ● 絵の表示
  #--------------------------------------------------------------------------
  def pop
    eyes if @eyes_type != 0
    hair
    skirt_back if @skirt_type != 0
    jacket_back if @jacket_type != 0
    body
    bottom
    camisole if @camisole_type != 0
    skirt if @skirt_type != 0
    jacket if @jacket_type != 0
    panty if @panty_type != 0
    head
    piss if @piss_type != 0
    sweatface if @sweat_type != 0
    redface if @red != 0
  end

  #--------------------------------------------------------------------------
  # ● 絵の消去
  #--------------------------------------------------------------------------
  def clear
    @hair.dispose if @hair != nil
    @body.dispose if @body != nil
    @bottom.dispose if @bottom != nil
    @head.dispose if @head != nil
    @camisole.dispose if @camisole != nil
    @jacket.dispose if @jacket != nil
    @jacket_back.dispose if @jacket_back != nil
    @skirt.dispose if @skirt != nil
    @skirt_back.dispose if @skirt_back != nil
    @panty.dispose if @panty != nil
    @eyes.dispose if @eyes != nil
    @piss.dispose if @piss != nil
    @sweatface.dispose if @sweatface != nil
    @redface.dispose if @redface != nil
  end

  #--------------------------------------------------------------------------
  # ● 各画像の表示
  #--------------------------------------------------------------------------
  def hair
    @hair = Sprite.new
    @hair.bitmap = RPG::Cache.picture("Ev018_Hair")
    @hair.x = @posex
    @hair.y = @posey
  end
  def body
    @body = Sprite.new
    @body.bitmap = RPG::Cache.picture("Ev018_Body")
    @body.x = @posex
    @body.y = @posey
  end
  def bottom
    @bottom = Sprite.new
    @bottom.bitmap = RPG::Cache.picture("Ev018_Bottom")
    @bottom.x = @posex
    @bottom.y = @posey
  end
  def eyes
    @eyes = Sprite.new
    @eyes.bitmap = RPG::Cache.picture("Ev018_Eyes#{@eyes_type}")
    @eyes.x = @posex
    @eyes.y = @posey
  end
  def head
    @head = Sprite.new
    @head.bitmap = RPG::Cache.picture("Ev018_head#{@face}")
    @head.x = @posex
    @head.y = @posey
  end
  def camisole
    @camisole = Sprite.new
    @camisole.bitmap = RPG::Cache.picture("Ev018_Camisole")
    @camisole.x = @posex
    @camisole.y = @posey
  end
  def jacket
    @jacket = Sprite.new
    @jacket.bitmap = RPG::Cache.picture("Ev018_jacket")
    @jacket.x = @posex
    @jacket.y = @posey
  end
  def jacket_back
    @jacket_back = Sprite.new
    @jacket_back.bitmap = RPG::Cache.picture("Ev018_jacketback")
    @jacket_back.x = @posex
    @jacket_back.y = @posey
  end
  def skirt
    @skirt = Sprite.new
    @skirt.bitmap = RPG::Cache.picture("Ev018_Skirt")
    @skirt.x = @posex
    @skirt.y = @posey
  end
  def skirt_back
    @skirt_back = Sprite.new
    @skirt_back.bitmap = RPG::Cache.picture("Ev018_BackSkirt")
    @skirt_back.x = @posex
    @skirt_back.y = @posey
  end
  def panty
    @panty = Sprite.new
    @panty.bitmap = RPG::Cache.picture("Ev018_Panty")
    @panty.x = @posex
    @panty.y = @posey
  end
  def piss
    @piss = Sprite.new
    @piss.bitmap = RPG::Cache.picture("Ev018_piss")
    @piss.x = @posex
    @piss.y = @posey
  end
  def sweatface
    @sweatface = Sprite.new
    @sweatface.bitmap = RPG::Cache.picture("Ev018_Sweat")
    @sweatface.x = @posex
    @sweatface.y = @posey
  end
  def redface
    @redface = Sprite.new
    @redface.bitmap = RPG::Cache.picture("Ev018_Red")
    @redface.x = @posex
    @redface.y = @posey
  end
end
