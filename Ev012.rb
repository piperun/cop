# ■ Ev012
#------------------------------------------------------------------------------
# 　River open bath scene.
#==============================================================================
class Ev012 < Sprite
  #--------------------------------------------------------------------------
  # ● オブジェクト初期化
  #--------------------------------------------------------------------------
  def initialize(pose,type,face,seita,sweat,red)
    super()
    @pose = pose
    @type = type
    @face = face
    @sweat = sweat
    @seita = seita
    @red = red

    @posex = 0
    @posey = 0
  end
    #--------------------------------------------------------------------------
  # ● 立ち絵の表示
  #--------------------------------------------------------------------------
  def pop
    check
  end
  #--------------------------------------------------------------------------
  # ● Clear
  #--------------------------------------------------------------------------
  def clear
    @body.dispose if @body != nil
    @head.dispose if @head != nil
    @hair.dispose if @hair != nil
    @backhair.dispose if @backhair != nil
    @redface.dispose if @redface != nil
    @sweatface.dispose if @sweatface != nil
    @seitakun.dispose if @seitakun != nil
  end
  #--------------------------------------------------------------------------
  # ● 各画像の表示
  #--------------------------------------------------------------------------
  def body
    @body = Sprite.new
    if @pose == "A"
      @body.bitmap = RPG::Cache.picture("EV012_bodyA_#{@type}")
    elsif @pose == "B"
      @body.bitmap = RPG::Cache.picture("EV012_bodyB_#{@type}")
    else

    end
    @body.x = @posex
    @body.y = @posey
  end
  def head
    @head = Sprite.new
    @head.bitmap = RPG::Cache.picture("EV012_head#{@face}")
    @head.x = @posex
    @head.y = @posey
  end
  def hair
    @hair = Sprite.new
    @hair.bitmap = RPG::Cache.picture("EV012_hair")
    @hair.x = @posex
    @hair.y = @posey
  end
  def backhair
    @backhair = Sprite.new
    @backhair.bitmap = RPG::Cache.picture("EV012_backhair")
    @backhair.x = @posex
    @backhair.y = @posey
  end
  def redface
    @redface = Sprite.new
    if $game_switches[1] == true or @red == 1
      $game_party.actors[0].states == [17]
      @redface.bitmap = RPG::Cache.picture("EV012_red")
    else
      @redface.bitmap = RPG::Cache.picture("")
    end
    @redface.x = @posex
    @redface.y = @posey
  end
  def sweatface
    @sweatface = Sprite.new
    @sweatface.bitmap = RPG::Cache.picture("EV012_sweat#{@sweat}")
    @sweatface.x = @posex
    @sweatface.y = @posey
  end
  def seitakun
    @seitakun = Sprite.new
    @seitakun.bitmap = RPG::Cache.picture("EV012_seita")
    @seitakun.x = @posex
    @seitakun.y = @posey
  end
  #--------------------------------------------------------------------------
  # ● 服装のチェック
  #--------------------------------------------------------------------------
  def check
    body
    backhair
    head
    hair
    sweatface if @sweat != 0
    redface if @red != 0
    seitakun if @seita != 0
  end
end
