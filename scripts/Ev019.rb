#==============================================================================
# ■ Ev019
#------------------------------------------------------------------------------
# 　Behind the counter sexual harassment scene.
#==============================================================================
class Ev019 < Sprite
  #--------------------------------------------------------------------------
  # ● オブジェクト初期化
  #--------------------------------------------------------------------------
  def initialize(face,body_type,camisole_type,skirt_type,jacket_type,panty_type,man_type,sweat,red)
    super()
    @face = face
    @body_type = "body" + body_type
    @camisole_type = camisole_type
    @skirt_type = skirt_type
    @jacket_type = jacket_type
    @panty_type = panty_type
    @sweat = sweat
    @red = red
    @man_type = man_type

    @posex = 0
    @posey = 0
  end

  #--------------------------------------------------------------------------
  # ● 絵の表示
  #--------------------------------------------------------------------------
  def pop
    background
    body
    nipples if @camisole_type == 0
    head
    camisole if @camisole_type != 0
    panty if @panty_type != 0
    skirt if @skirt_type != 0
    jacket if @jacket_type != 0
    hair
    skirt_front if @skirt_type != 0
    sweatface if @sweat != 0
    redface if @red != 0
    man if @man_type != 0
  end

  #--------------------------------------------------------------------------
  # ● 絵の消去
  #--------------------------------------------------------------------------
  def clear
    @hair.dispose if @hair != nil
    @body.dispose if @body != nil
    @head.dispose if @head != nil
    @camisole.dispose if @camisole != nil
    @panty.dispose if @panty != nil
    @skirt.dispose if @skirt != nil
    @jacket.dispose if @jacket != nil
    @skirt_front.dispose if @skirt_front != nil
    @nipples.dispose if @nipples != nil
    @man.dispose if @man != nil
    @background.dispose if @background != nil
    @sweatface.dispose if @sweatface != nil
    @redface.dispose if @redface != nil
  end

  #--------------------------------------------------------------------------
  # ● 各画像の表示
  #--------------------------------------------------------------------------
  def hair
    @hair = Sprite.new
    if @body_type == "bodyA"
      @hair.bitmap = RPG::Cache.picture("Ev019_HairA")
    elsif @body_type == "bodyB"
      @hair.bitmap = RPG::Cache.picture("Ev019_HairB")
    else

    end
    @hair.x = @posex
    @hair.y = @posey
  end
  def body
    @body = Sprite.new
    @body.bitmap = RPG::Cache.picture("Ev019_#{@body_type}")
    @body.x = @posex
    @body.y = @posey
  end
  def head
    @head = Sprite.new
    @head.bitmap = RPG::Cache.picture("Ev019_head#{@face}")
    @head.x = @posex
    @head.y = @posey
  end
  def camisole
    @camisole = Sprite.new
    @camisole.bitmap = RPG::Cache.picture("Ev019_Camisole")
    @camisole.x = @posex
    @camisole.y = @posey
  end
  def jacket
    @jacket = Sprite.new
    @jacket.bitmap = RPG::Cache.picture("Ev019_jacket#{@jacket_type}")
    @jacket.x = @posex
    @jacket.y = @posey
  end
  def skirt
    @skirt = Sprite.new
    @skirt.bitmap = RPG::Cache.picture("Ev019_Skirt#{@skirt_type}")
    @skirt.x = @posex
    @skirt.y = @posey
  end
  def skirt_front
    @skirt_front = Sprite.new
    if @skirt_type == "B"
      @skirt_front.bitmap = RPG::Cache.picture("Ev019_SkirtFront")
    else
      @skirt_front.bitmap = RPG::Cache.picture("")
    end
    @skirt_front.x = @posex
    @skirt_front.y = @posey
  end
  def panty
    @panty = Sprite.new
    @panty.bitmap = RPG::Cache.picture("Ev019_Panty")
    @panty.x = @posex
    @panty.y = @posey
  end
  def nipples
    @nipples = Sprite.new
    @nipples.bitmap = RPG::Cache.picture("Ev019_nipples")
    @nipples.x = @posex
    @nipples.y = @posey
  end
  def sweatface
    @sweatface = Sprite.new
    if @body_type == "bodyA"
      @sweatface.bitmap = RPG::Cache.picture("Ev019_SweatA")
    else
      @sweatface.bitmap = RPG::Cache.picture("Ev019_SweatB")
    end
    @sweatface.x = @posex
    @sweatface.y = @posey
  end
  def redface
    @redface = Sprite.new
    if @body_type == "bodyA"
      @redface.bitmap = RPG::Cache.picture("Ev019_RedA")
    else
      @redface.bitmap = RPG::Cache.picture("Ev019_RedB")
    end
    @redface.x = @posex
    @redface.y = @posey
  end
  def background
    @background = Sprite.new
    @background.bitmap = RPG::Cache.picture("Ev019_BG")
    @background.x = @posex
    @background.y = @posey
  end
  def man
    @man = Sprite.new
    @man.bitmap = RPG::Cache.picture("Ev019_man#{@man_type}")
    @man.x = @posex
    @man.y = @posey
  end
end
