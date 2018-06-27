#==============================================================================
# ■ Ev004
#------------------------------------------------------------------------------
# 　Lifting skirt from behind scene.
#==============================================================================
class Ev004 < Sprite
  #--------------------------------------------------------------------------
  # ● オブジェクト初期化
  #--------------------------------------------------------------------------
  def initialize(pose,face,red)
    super()
    @pose = pose
    @face = face
    @red  = red

    @posex = 180
    @posey = 0
  end

  #--------------------------------------------------------------------------
  # ● 絵の表示
  #--------------------------------------------------------------------------
  def pop
    body
    head
    redface if @red != 0
  end

  #--------------------------------------------------------------------------
  # ● 絵の消去
  #--------------------------------------------------------------------------
  def clear
    @body.dispose if @body != nil
    @head.dispose if @head != nil
    @redface.dispose if @redface != nil
  end

  #--------------------------------------------------------------------------
  # ● 各画像の表示
  #--------------------------------------------------------------------------
  def head  #頭
    @head = Sprite.new
    @head.bitmap = RPG::Cache.picture("ev004_head#{@face}")
    @head.x = @posex
    @head.y = @posey
  end

  def body  #身体
    @body = Sprite.new
    @body.bitmap = RPG::Cache.picture("ev004_body#{@pose}")
    @body.x = @posex
    @body.y = @posey
  end

  def redface  #髪
    @redface = Sprite.new
    if @red == 1
    @redface.bitmap = RPG::Cache.picture("ev004_red")
    else
    @redface.bitmap = RPG::Cache.picture("")
    end
    @redface.x = @posex
    @redface.y = @posey
  end
end
