#==============================================================================
# ■ Ev015
#------------------------------------------------------------------------------
# 　Sleeping scene.
#==============================================================================
class Ev015 < Sprite
  #--------------------------------------------------------------------------
  # ● オブジェクト初期化
  #--------------------------------------------------------------------------
  def initialize(camisole_type,skirt_type,jacket_type,panty_type,face,hand_type,liquid_type,sweat_type,red)
    super()
    @camisole_type = camisole_type
    @skirt_type = skirt_type
    @jacket_type = jacket_type
    @panty_type = panty_type
    @face = face
    @hand_type = hand_type
    @liquid_type = liquid_type
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
    jacket_back if @jacket_type != 0
    skirt_back if @skirt_type != 0
    head
    body
    hip
    camisole if @camisole_type != 0
    jacket if @jacket_type != 0
    skirt if @skirt_type != 0
    panty if @panty_type != 0
    liquid if @liquid_type != 0
    sweatface if @sweat_type != 0
    redface if @red != 0
    hand if @hand_type != 0
  end

  #--------------------------------------------------------------------------
  # ● 絵の消去
  #--------------------------------------------------------------------------
  def clear
    @hair.dispose if @hair != nil
    @head.dispose if @head != nil
    @body.dispose if @body != nil
    @hip.dispose if @hip != nil
    @skirt.dispose if @skirt != nil
    @skirt_back.dispose if @skirt_back != nil
    @camisole.dispose if @camisole != nil
    @jacket.dispose if @jacket != nil
    @jacket_back.dispose if @jacket_back != nil
    @panty.dispose if @panty != nil
    @sweatface.dispose if @sweatface != nil
    @redface.dispose if @redface != nil
    @liquid.dispose if @liquid != nil
    @hand.dispose if @hand != nil
  end

  #--------------------------------------------------------------------------
  # ● 各画像の表示
  #--------------------------------------------------------------------------
  def hair  #身体
    @hair = Sprite.new
    @hair .bitmap = RPG::Cache.picture("Ev015_Hair")
    @hair .x = @posex
    @hair .y = @posey
  end
  def body  #身体
    @body = Sprite.new
    @body.bitmap = RPG::Cache.picture("Ev015_Body")
    @body.x = @posex
    @body.y = @posey
  end
  def head
    @head = Sprite.new
    @head.bitmap = RPG::Cache.picture("EV015_head#{@face}")
    @head.x = @posex
    @head.y = @posey
  end
  def hip  #身体
    @hip = Sprite.new
    @hip .bitmap = RPG::Cache.picture("Ev015_Hip")
    @hip .x = @posex
    @hip .y = @posey
  end
  def skirt  #身体
    @skirt = Sprite.new
    @skirt .bitmap = RPG::Cache.picture("Ev015_Skirt#{@skirt_type}")
    @skirt .x = @posex
    @skirt .y = @posey
  end
  def skirt_back  #身体
    @skirt_back = Sprite.new
    @skirt_back .bitmap = RPG::Cache.picture("Ev015_SkirtBack")
    @skirt_back.x = @posex
    @skirt_back .y = @posey
  end
  def camisole  #身体
    @camisole = Sprite.new
    @camisole .bitmap = RPG::Cache.picture("Ev015_Camisole#{@camisole_type}")
    @camisole .x = @posex
    @camisole .y = @posey
  end
  def jacket  #身体
    @jacket = Sprite.new
    @jacket .bitmap = RPG::Cache.picture("Ev015_Jacket#{@jacket_type}")
    @jacket.x = @posex
    @jacket .y = @posey
  end
  def jacket_back  #身体
    @jacket_back = Sprite.new
    @jacket_back .bitmap = RPG::Cache.picture("Ev015_JacketBack")
    @jacket_back.x = @posex
    @jacket_back .y = @posey
  end
  def panty  #身体
    @panty = Sprite.new
    @panty .bitmap = RPG::Cache.picture("Ev015_Panty#{@panty_type}")
    @panty .x = @posex
    @panty .y = @posey
  end
  def liquid
    @liquid = Sprite.new
    @liquid.bitmap = RPG::Cache.picture("Ev015_liquid#{@liquid_type}")
    @liquid.x = @posex
    @liquid.y = @posey
  end
  def sweatface
    @sweatface = Sprite.new
    @sweatface.bitmap = RPG::Cache.picture("Ev015_sweat#{@sweat_type}")
    @sweatface.x = @posex
    @sweatface.y = @posey
  end
  def redface
    @redface = Sprite.new
    @redface.bitmap = RPG::Cache.picture("Ev015_red")
    @redface.x = @posex
    @redface.y = @posey
  end
  def hand
    @hand = Sprite.new
    @hand.bitmap = RPG::Cache.picture("Ev015_hand#{@hand_type}")
    @hand.x = @posex
    @hand.y = @posey
  end
end
