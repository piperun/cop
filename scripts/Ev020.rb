#==============================================================================
# ■ Ev020
#------------------------------------------------------------------------------
# 　Rear scene of bowing down.
#==============================================================================
class Ev020 < Sprite
  #--------------------------------------------------------------------------
  # ● オブジェクト初期化
  #--------------------------------------------------------------------------
  def initialize(body_type,camisole_type,jacket_type,skirt_type,panty_type)
    super()
    @body_type = body_type
    @camisole_type = camisole_type
    @jacket_type = jacket_type
    @skirt_type = skirt_type
    @panty_type = panty_type

    @posex = 0
    @posey = 0
  end

  #--------------------------------------------------------------------------
  # ● 絵の表示
  #--------------------------------------------------------------------------
  def pop
    skirt_back if @skirt_type != 0
    head
    body
    hip
    camisole if @camisole_type != 0
    jacket if @jacket_type != 0
    panty if @panty_type != 0
    skirt if @skirt_type != 0
    hair
  end

  #--------------------------------------------------------------------------
  # ● 絵の消去
  #--------------------------------------------------------------------------
  def clear
    @body.dispose if @body != nil
    @head.dispose if @head != nil
    @skirt.dispose if @skirt != nil
    @skirt_back.dispose if @skirt_back != nil
    @hip.dispose if @hip != nil
    @camisole.dispose if @camisole != nil
    @jacket.dispose if @jacket != nil
    @hair.dispose if @hair != nil
    @panty.dispose if @panty != nil
  end

  #--------------------------------------------------------------------------
  # ● 各画像の表示
  #--------------------------------------------------------------------------
  def body  #身体
    @body = Sprite.new
    @body.bitmap = RPG::Cache.picture("Ev020_Body#{@body_type}")
    @body.x = @posex
    @body.y = @posey
  end
  def head  #身体
    @head = Sprite.new
    @head.bitmap = RPG::Cache.picture("Ev020_Head")
    @head.x = @posex
    @head.y = @posey
  end
  def hip  #身体
    @hip = Sprite.new
    @hip.bitmap = RPG::Cache.picture("Ev020_Hip")
    @hip.x = @posex
    @hip.y = @posey
  end
  def hair  #身体
    @hair = Sprite.new
    @hair.bitmap = RPG::Cache.picture("Ev020_Hair")
    @hair.x = @posex
    @hair.y = @posey
  end
  def camisole  #身体
    @camisole = Sprite.new
    @camisole.bitmap = RPG::Cache.picture("Ev020_Camisole")
    @camisole.x = @posex
    @camisole.y = @posey
  end
  def jacket  #身体
    @jacket = Sprite.new
    @jacket.bitmap = RPG::Cache.picture("Ev020_Jacket")
    @jacket.x = @posex
    @jacket.y = @posey
  end
  def panty  #身体
    @panty = Sprite.new
    @panty.bitmap = RPG::Cache.picture("Ev020_Panty")
    @panty.x = @posex
    @panty.y = @posey
  end
  def skirt  #身体
    @skirt = Sprite.new
    @skirt.bitmap = RPG::Cache.picture("Ev020_Skirt")
    @skirt.x = @posex
    @skirt.y = @posey
  end
  def skirt_back  #身体
    @skirt_back = Sprite.new
    @skirt_back.bitmap = RPG::Cache.picture("Ev020_SkirtBack")
    @skirt_back.x = @posex
    @skirt_back.y = @posey
  end
end
