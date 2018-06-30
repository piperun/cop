#==============================================================================
# ■ Ev007
#------------------------------------------------------------------------------
# 　Boobs groping with kid scene.
#==============================================================================
class Ev007 < Sprite
  #--------------------------------------------------------------------------
  # ● オブジェクト初期化
  #--------------------------------------------------------------------------
  def initialize(body_type,face,kid_type,kid_clothes,shade_type,sweat_type)
    super()
    @body_type = body_type
    @face = face
    @kid_type = kid_type
    @kid_clothes = kid_clothes
    @shade_type = shade_type
    @sweat_type = sweat_type

    @posex = 0
    @posey = 0
  end

  #--------------------------------------------------------------------------
  # ● 絵の表示
  #--------------------------------------------------------------------------
  def pop
    body
    head
    shade if @shade_type != 0
    sweat if @sweat_type != 0
    kid if @kid_type != 0
    clothes if @kid_clothes != 0
  end

  #--------------------------------------------------------------------------
  # ● 絵の消去
  #--------------------------------------------------------------------------
  def clear
    @body.dispose if @body != nil
    @head.dispose if @face != nil
    @shade.dispose if @shade != nil
    @sweat.dispose if @sweat != nil
    @kid.dispose if @kid != nil
    @clothes.dispose if @kid_clothes != nil
  end

  #--------------------------------------------------------------------------
  # ● 各画像の表示
  #--------------------------------------------------------------------------
  def body  #身体
    @body = Sprite.new
    @body.bitmap = RPG::Cache.picture("ev007_body#{@body_type}")
    @body.x = @posex
    @body.y = @posey
  end
  def head
    @head = Sprite.new
    @head.bitmap = RPG::Cache.picture("ev007_head#{@face}")
    @head.x = @posex
    @head.y = @posey
  end
  def shade
    @shade = Sprite.new
    @shade.bitmap = RPG::Cache.picture("ev007_shade#{@shade_type}")
    @shade.x = @posex
    @shade.y = @posey
  end
  def sweat
    @sweat = Sprite.new
    @sweat.bitmap = RPG::Cache.picture("ev007_sweat#{@sweat_type}")
    @sweat.x = @posex
    @sweat.y = @posey
  end
  def kid
    @kid = Sprite.new
    @kid.bitmap = RPG::Cache.picture("ev007_kid#{@kid_type}")
    @kid.x = @posex
    @kid.y = @posey
  end
  def clothes
    @clothes = Sprite.new
    @clothes.bitmap = RPG::Cache.picture("ev007_kidshirt#{@kid_clothes}")
    @clothes.x = @posex
    @clothes.y = @posey
  end
end
