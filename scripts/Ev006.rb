#==============================================================================
# ■ Ev006
#------------------------------------------------------------------------------
# 　Ass groping/touching scene.
#==============================================================================
class Ev006 < Sprite
  #--------------------------------------------------------------------------
  # ● オブジェクト初期化
  #--------------------------------------------------------------------------
  def initialize(body_type,handA,handB)
    super()
    @body_type = body_type
    @handA = handA
    @handB = handB

    @posex = 0
    @posey = 0
  end

  #--------------------------------------------------------------------------
  # ● 絵の表示
  #--------------------------------------------------------------------------
  def pop
    body
    hand01 if @handA != 0
    hand02 if @handB != 0
  end

  #--------------------------------------------------------------------------
  # ● 絵の消去
  #--------------------------------------------------------------------------
  def clear
    @body.dispose if @body != nil
    @head.dispose if @head != nil
    @red.dispose if @red != nil
    @hand01.dispose if @hand01 != nil
    @hand02.dispose if @hand02 != nil
  end

  #--------------------------------------------------------------------------
  # ● 各画像の表示
  #--------------------------------------------------------------------------
  def body  #身体
    @body = Sprite.new
    @body.bitmap = RPG::Cache.picture("ev006_#{@body_type}")
    @body.x = @posex
    @body.y = @posey
  end
  def hand01
    @hand01 = Sprite.new
    @hand01.bitmap = RPG::Cache.picture("ev006_hand#{@handA}")
    @hand01.x = @posex
    @hand01.y = @posey
  end
  def hand02
    @hand02 = Sprite.new
    @hand02.bitmap = RPG::Cache.picture("ev006_hand#{@handB}")
    @hand02.x = @posex
    @hand02.y = @posey
  end
end
