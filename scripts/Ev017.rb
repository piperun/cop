#==============================================================================
# ■ Ev017
#------------------------------------------------------------------------------
# 　Water drinking scene.
#==============================================================================
class Ev017 < Sprite
  #--------------------------------------------------------------------------
  # ● オブジェクト初期化
  #--------------------------------------------------------------------------
  def initialize(face,camisole_type,jacket_type,item_type,sweat_type,red)
    super()
    @face = face
    @camisole_type = camisole_type
    @jacket_type = jacket_type
    @item_type = item_type
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
    jacket_back
    body
    hand
    camisole if @camisole_type != 0
    jacket if @jacket_type != 0
    head
    item if @item_type != 0
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
    @jacket_back.dispose if @jacket_back != nil
    @sweatface.dispose if @sweatface != nil
    @redface.dispose if @redface != nil
    @item.dispose if @item != nil
  end

  #--------------------------------------------------------------------------
  # ● 各画像の表示
  #--------------------------------------------------------------------------
  def hair
    @hair = Sprite.new
    @hair.bitmap = RPG::Cache.picture("Ev017_Hair")
    @hair.x = @posex
    @hair.y = @posey
  end
  def body
    @body = Sprite.new
    @body.bitmap = RPG::Cache.picture("Ev017_Body")
    @body.x = @posex
    @body.y = @posey
  end
  def hand
    @hand = Sprite.new
    @hand.bitmap = RPG::Cache.picture("Ev017_Hand")
    @hand.x = @posex
    @hand.y = @posey
  end
  def head
    @head = Sprite.new
    @head.bitmap = RPG::Cache.picture("Ev017_head#{@face}")
    @head.x = @posex
    @head.y = @posey
  end
  def camisole
    @camisole = Sprite.new
    @camisole.bitmap = RPG::Cache.picture("Ev017_Camisole")
    @camisole.x = @posex
    @camisole.y = @posey
  end
  def jacket
    @jacket = Sprite.new
    @jacket.bitmap = RPG::Cache.picture("Ev017_jacket")
    @jacket.x = @posex
    @jacket.y = @posey
  end
  def jacket_back
    @jacket_back = Sprite.new
    @jacket_back.bitmap = RPG::Cache.picture("Ev017_JacketBack")
    @jacket_back.x = @posex
    @jacket_back.y = @posey
  end
  def item
    @item = Sprite.new
    @item.bitmap = RPG::Cache.picture("Ev017_Item#{@item_type}")
    @item.x = @posex
    @item.y = @posey
  end
  def sweatface
    @sweatface = Sprite.new
    @sweatface.bitmap = RPG::Cache.picture("Ev017_Sweat#{@sweat_type}")
    @sweatface.x = @posex
    @sweatface.y = @posey
  end
  def redface
    @redface = Sprite.new
    @redface.bitmap = RPG::Cache.picture("Ev017_Red")
    @redface.x = @posex
    @redface.y = @posey
  end
end
