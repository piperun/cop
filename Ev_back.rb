#==============================================================================
# ■ Ev_back
#------------------------------------------------------------------------------
# 　背景の画像の表示を行うクラスです。
#==============================================================================
class Ev_back < Sprite
  #--------------------------------------------------------------------------
  # ● オブジェクト初期化
  #--------------------------------------------------------------------------
  def initialize(type)
    super()
    @type = type

    @posex = 0
    @posey = 0
  end

  #--------------------------------------------------------------------------
  # ● 絵の表示
  #--------------------------------------------------------------------------
  def pop
    back
  end

  #--------------------------------------------------------------------------
  # ● 絵の消去
  #--------------------------------------------------------------------------
  def clear
    @back.dispose if @back != nil
  end

  #--------------------------------------------------------------------------
  # ● 各画像の表示
  #--------------------------------------------------------------------------
  def back
    @back = Sprite.new
    @back.bitmap = RPG::Cache.picture("EV_back_#{@type}")
    @back.x = @posex
    @back.y = @posey
  end

end