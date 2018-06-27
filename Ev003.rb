#==============================================================================
# ■ Ev003
#------------------------------------------------------------------------------
# 　Undressing scene.
#==============================================================================
class Ev003 < Sprite
  #--------------------------------------------------------------------------
  # ● オブジェクト初期化
  #--------------------------------------------------------------------------
  def initialize(pose,face,red)
    super()
    @pose = pose
    @face = face
    @red  = red

    @posex = 0
    @posey = 0
  end

  #--------------------------------------------------------------------------
  # ● 絵の表示
  #--------------------------------------------------------------------------
  def pop
    hair  #髪
    body  #身体
    head  #頭
    redface
  end

  #--------------------------------------------------------------------------
  # ● 絵の消去
  #--------------------------------------------------------------------------
  def clear
    @hair.dispose if @hair != nil
    @body.dispose if @body != nil
    @head.dispose if @head != nil
    @redface.dispose if @red != nil
  end

  #--------------------------------------------------------------------------
  # ● 各画像の表示
  #--------------------------------------------------------------------------
  def head  #頭
    @head = Sprite.new
    @head.bitmap = RPG::Cache.picture("ev003_head#{@face}")
    @head.x = @posex
    @head.y = @posey
  end

  def body  #身体
    @body = Sprite.new
    @body.bitmap = RPG::Cache.picture("ev003_body#{@pose}")
    @body.x = @posex
    @body.y = @posey
  end

  def hair  #髪
    @hair = Sprite.new
    @hair.bitmap = RPG::Cache.picture("ev003_hair")
    @hair.x = @posex
    @hair.y = @posey
  end

  def redface  #髪
    @redface = Sprite.new
    if @red == 1
    @redface.bitmap = RPG::Cache.picture("ev003_red")
    else
    @redface.bitmap = RPG::Cache.picture("")
    end
    @redface.x = @posex
    @redface.y = @posey
  end

end
