# ■ Ev008
#------------------------------------------------------------------------------
# 　Under-table scene.
#==============================================================================
class Ev008 < Sprite
  #--------------------------------------------------------------------------
  # ● Init
  #--------------------------------------------------------------------------
  def initialize(body_type,face,sweat,red,table)
    super()
    @body_type = body_type
    @face = face
    @sweat = sweat
    @red = red
    @table = table

    @posex = 0
    @posey = 0
  end
  #--------------------------------------------------------------------------
  # ● Def pop
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
    @jacket.dispose if @jacket != nil
    @jacketback.dispose if @jacketback != nil
    @camisole.dispose if @camisole != nil
    @panty.dispose if @panty != nil
    @skirt.dispose if @skirt != nil
    @backhair.dispose if @backhair != nil
    @redface.dispose if @redface != nil
    @sweatface.dispose if @sweatface != nil
    @table.dispose if @table != nil
  end
  #--------------------------------------------------------------------------
  # ● 各画像の表示
  #--------------------------------------------------------------------------
  def body
    @body = Sprite.new
    @body.bitmap = RPG::Cache.picture("EV008_body#{@body_type}")
    @body.x = @posex
    @body.y = @posey
  end
  def head
    @head = Sprite.new
    @head.bitmap = RPG::Cache.picture("EV008_head#{@face}")
    @head.x = @posex
    @head.y = @posey
  end
  def hair
    @hair = Sprite.new
    @hair.bitmap = RPG::Cache.picture("EV008_hair")
    @hair.x = @posex
    @hair.y = @posey
  end
  def backhair
    @backhair = Sprite.new
    @backhair.bitmap = RPG::Cache.picture("EV008_backhair")
    @backhair.x = @posex
    @backhair.y = @posey
  end
  def redface
    @redface = Sprite.new
    if $game_switches[1] == true or @red == 1
      $game_party.actors[0].states == [17]
      @redface.bitmap = RPG::Cache.picture("EV008_red")
    else
      @redface.bitmap = RPG::Cache.picture("")
    end
    @redface.x = @posex
    @redface.y = @posey
  end
  def sweatface
    @sweatface = Sprite.new
    @sweatface.bitmap = RPG::Cache.picture("EV008_sweat")
    @sweatface.x = @posex
    @sweatface.y = @posey
  end
  def panty
    @panty = Sprite.new
    if @body_type == "A01"
      @panty.bitmap = RPG::Cache.picture("EV008_pantyA01")
    elsif @body_type == "A02"
      @panty.bitmap = RPG::Cache.picture("EV008_pantyA02")
    elsif @body_type == "B01"
      @panty.bitmap = RPG::Cache.picture("EV008_pantyB01")
    elsif @body_type == "B02"
      @panty.bitmap = RPG::Cache.picture("EV008_pantyB02")
    else
      @panty.bitmap = RPG::Cache.picture("EV008_pantyC")
    end
    @panty.x = @posex
    @panty.y = @posey
  end
  def camisole
    @camisole = Sprite.new
    if @body_type == "A01"
      @camisole.bitmap = RPG::Cache.picture("EV008_CamisoleA01")
    elsif @body_type == "A02"
      @camisole.bitmap = RPG::Cache.picture("EV008_CamisoleA01")
    elsif @body_type == "B01"
      @camisole.bitmap = RPG::Cache.picture("EV008_CamisoleB01")
    elsif @body_type == "B02"
      @camisole.bitmap = RPG::Cache.picture("EV008_CamisoleB01")
    elsif @body_type == "C01"
      @camisole.bitmap = RPG::Cache.picture("EV008_CamisoleC01")
    elsif @body_type == "C02"
      @camisole.bitmap = RPG::Cache.picture("EV008_CamisoleC02")
    else

    end
    @camisole.x = @posex
    @camisole.y = @posey
  end
  def skirt
    @skirt = Sprite.new
    if @body_type == "A01"
      @skirt.bitmap = RPG::Cache.picture("EV008_Skirt1")
    elsif @body_type == "A02"
      @skirt.bitmap = RPG::Cache.picture("EV008_Skirt1")
    elsif @body_type == "B01"
      @skirt.bitmap = RPG::Cache.picture("EV008_Skirt2")
    elsif @body_type == "B02"
      @skirt.bitmap = RPG::Cache.picture("EV008_Skirt2")
    else
      @skirt.bitmap = RPG::Cache.picture("EV008_Skirt3")
    end
    @skirt.x = @posex
    @skirt.y = @posey
  end
  def jacket
    @jacket = Sprite.new
    if @body_type == "A01"
      @jacket.bitmap = RPG::Cache.picture("EV008_jacket1")
    elsif @body_type == "A02"
      @jacket.bitmap = RPG::Cache.picture("EV008_jacket1")
    elsif @body_type == "B01"
      @jacket.bitmap = RPG::Cache.picture("EV008_jacket2")
    elsif @body_type == "B02"
      @jacket.bitmap = RPG::Cache.picture("EV008_jacket2")
    else
      @jacket.bitmap = RPG::Cache.picture("EV008_jacket3")
    end
    @jacket.x = @posex
    @jacket.y = @posey
  end
  def jacketback
    @jacketback = Sprite.new
    if @body_type == "A01"
      @jacketback.bitmap = RPG::Cache.picture("EV008_jacketback1")
    elsif @body_type == "A02"
      @jacketback.bitmap = RPG::Cache.picture("EV008_jacketback1")
    elsif @body_type == "B01"
      @jacketback.bitmap = RPG::Cache.picture("EV008_jacketback2")
    elsif @body_type == "B02"
      @jacketback.bitmap = RPG::Cache.picture("EV008_jacketback2")
    else
      @jacketback.bitmap = RPG::Cache.picture("EV008_jacketback3")
    end
    @jacketback.x = @posex
    @jacketback.y = @posey
  end
  def table
    @table = Sprite.new
    if @body_type == "A01"
      @table.bitmap = RPG::Cache.picture("EV008_table1")
    elsif @body_type == "A02"
      @table.bitmap = RPG::Cache.picture("EV008_table1")
    elsif @body_type == "B01"
      @table.bitmap = RPG::Cache.picture("EV008_table2")
    elsif @body_type == "B02"
      @table.bitmap = RPG::Cache.picture("EV008_table2")
    else
      @table.bitmap = RPG::Cache.picture("EV008_table3")
    end
    @table.x = @posex
    @table.y = @posey
  end

  #--------------------------------------------------------------------------
  # ● 服装のチェック
  #--------------------------------------------------------------------------
  def check
    @panty_check = 0
    @skirt_check = 0
    @skirt_front_check = 0
    @skirt_back_check = 0
    @camisole_check = 0
    @jacket_check = 0
    @jacket_back_check = 0
    case $game_variables[3]
    when 1
      @panty_check = 1
      @skirt_check = 1
      @camisole_check = 1
      @jacket_check = 1
      @jacket_back_check = 1
    when 2
      @panty_check = 1
      @skirt_check = 1
      @camisole_check = 1
    when 3
      @panty_check = 1
      @skirt_check = 1
      @jacket_check = 1
      @jacket_back_check = 1
    when 4
      @panty_check = 1
      @skirt_check = 1
    when 5
      @panty_check = 1
      @camisole_check = 1
    when 6
      @panty_check = 1
    when 7
      @camisole_check = 1
    when 11
      @skirt_check = 1
      @camisole_check = 1
      @jacket_check = 1
      @jacket_back_check = 1
    when 12
      @skirt_check = 1
      @camisole_check = 1
    when 13
      @skirt_check = 1
      @jacket_check = 1
      @jacket_back_check = 1
    when 14
      @skirt_check = 1
    end

    backhair
    body
    head
    hair
    jacketback if @jacket_check == 1 and @jacket_back_check == 1
    camisole if @camisole_check == 1
    panty if @panty_check == 1
    skirt if @skirt_check == 1
    jacket if @jacket_check == 1
    sweatface if @sweat != 0
    redface if @red != 0
    table if @breath != 0
  end

end
