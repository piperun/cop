# ■ Ev010
#------------------------------------------------------------------------------
# 　Masturbating scene.
#==============================================================================
class Ev010 < Sprite
  #--------------------------------------------------------------------------
  # ● オブジェクト初期化
  #--------------------------------------------------------------------------
  def initialize(body_type,face,hand_type,liquid_type,breath_type,sweat,red)
    super()
    @body_type = body_type
    @hand_type = hand_type
    @face = face
    @liquid_type = liquid_type
    @sweat = sweat
    @breath_type = breath_type

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
    @panty.dispose if @panty != nil
    @camisole.dispose if @camisole != nil
    @hand.dispose if @hand != nil
    @breath.dispose if @breath != nil
    @liquid.dispose if @liquid != nil
    @bed.dispose if @bed != nil
  end

  #--------------------------------------------------------------------------
  # ● 各画像の表示
  #--------------------------------------------------------------------------
  def body
    @body = Sprite.new
    @body.bitmap = RPG::Cache.picture("EV010_body#{@body_type}")
    @body.x = @posex
    @body.y = @posey
  end
  def head
    @head = Sprite.new
    @head.bitmap = RPG::Cache.picture("EV010_head#{@face}")
    @head.x = @posex
    @head.y = @posey
  end
  def hand
    @hand = Sprite.new
    @hand.bitmap = RPG::Cache.picture("EV010_hand#{@hand_type}")
    @hand.x = @posex
    @hand.y = @posey
  end
  def hair
    @hair = Sprite.new
    @hair.bitmap = RPG::Cache.picture("EV010_hair")
    @hair.x = @posex
    @hair.y = @posey
  end
  def backhair
    @backhair = Sprite.new
    @backhair.bitmap = RPG::Cache.picture("EV010_backhair")
    @backhair.x = @posex
    @backhair.y = @posey
  end
  def breath
    @breath = Sprite.new
    @breath.bitmap = RPG::Cache.picture("EV010_breath#{@breath_type}")
    @breath.x = @posex
    @breath.y = @posey
  end

  def redface
    @redface = Sprite.new
    if $game_switches[1] == true or @red == 1
      $game_party.actors[0].states == [17]
      @redface.bitmap = RPG::Cache.picture("EV010_red")
    else
      @redface.bitmap = RPG::Cache.picture("")
    end
    @redface.x = @posex
    @redface.y = @posey
  end
  def sweatface
    @sweatface = Sprite.new
    @sweatface.bitmap = RPG::Cache.picture("EV010_sweat#{@sweat}")
    @sweatface.x = @posex
    @sweatface.y = @posey
  end
  def panty
    @panty = Sprite.new
    if @body_type == "A01"
      @panty.bitmap = RPG::Cache.picture("EV010_pantyA01")
    elsif @body_type == "A02"
      @panty.bitmap = RPG::Cache.picture("EV010_pantyA02")
    elsif @body_type == "A03"
      @panty.bitmap = RPG::Cache.picture("EV010_pantyA03")
    elsif @body_type == "A04"
      @panty.bitmap = RPG::Cache.picture("EV010_pantyA04")
    elsif @body_type == "B01"
      @panty.bitmap = RPG::Cache.picture("EV010_pantyA04")
    else
      @panty.bitmap = RPG::Cache.picture("EV010_pantyA04")
    end
    @panty.x = @posex
    @panty.y = @posey
  end
  def camisole
    @camisole = Sprite.new
    @camisole.bitmap = RPG::Cache.picture("EV010_Camisole")
    @camisole.x = @posex
    @camisole.y = @posey
  end
  def liquid
    @liquid = Sprite.new
    @liquid.bitmap = RPG::Cache.picture("EV010_liquid#{@liquid_type}")
    @liquid.x = @posex
    @liquid.y = @posey
  end
  def bed
    @bed = Sprite.new
    @bed.bitmap = RPG::Cache.picture("EV010_bed")
    @bed.x = @posex
    @bed.y = @posey
  end
  #--------------------------------------------------------------------------
  # ● 服装のチェック
  #--------------------------------------------------------------------------
  def check
    @panty_check = 0
    @camisole_check = 0
    case $game_variables[3]
    when 1
      @panty_check = 1
      @camisole_check = 1
    when 2
      @panty_check = 1
      @camisole_check = 1
    when 3
      @panty_check = 1
    when 4
      @panty_check = 1
    when 5
      @panty_check = 1
      @camisole_check = 1
    when 6
      @panty_check = 1
    when 7
      @camisole_check = 1
    when 11
      @camisole_check = 1
    when 12
      @camisole_check = 1
    when 13
    when 14
    end

    bed
    backhair
    body
    head
    hair
    camisole if @camisole_check == 1
    panty if @panty_check == 1
    liquid if @liquid_type != 0
    hand if @hand_type != 0
    sweatface if @sweat != 0
    redface if @red != 0
    breath if @breath_type != 0
  end

end
