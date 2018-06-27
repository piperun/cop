#==============================================================================
# ■ Scene_Battle (分割定義 6)
#------------------------------------------------------------------------------
# 　バトル画面の処理を行うクラスです。
#==============================================================================

class Scene_Battle
  #--------------------------------------------------------------------------
  # ● バトルコマンドの表示
  #--------------------------------------------------------------------------
  def battle_commandA_pop #バトルコマンドAの表示
    @battle_commandA = Sprite.new
    case @command_type
    when 0
      @battle_commandA.bitmap = RPG::Cache.picture("Battle_commandA")
    when 1
      @battle_commandA.bitmap = RPG::Cache.picture("Battle_commandA0#{@commandA_index}")
    end
    @battle_commandA.ox = @battle_commandA.bitmap.width / 2
    @battle_commandA.oy = @battle_commandA.bitmap.height / 2
    @battle_commandA.x = 320
    @battle_commandA.y = 376
    @battle_commandA.z = 300
  end
  def battle_commandA_zoom(zoom) #バトルコマンドAの拡大・縮小表示
    command_count
    case zoom
    when 1  #バトルコマンドAの拡大表示
      case @command_count
      when 0
        # バトルコマンドAの表示
        battle_commandA_pop
        @battle_commandA.zoom_x = 0.4
        @battle_commandA.zoom_y = 0.4
      when 1
        @battle_commandA.zoom_x = 0.7
        @battle_commandA.zoom_y = 0.7
      when 2
        @battle_commandA.zoom_x = 1
        @battle_commandA.zoom_y = 1
        @zoom_end = 1
        @command_count_change = 0
      end
    when 2  #バトルコマンドAの縮小消去とバトルコマンドBの拡大表示
      case @command_count
      when 0
        @battle_commandA.zoom_x = 0.7
        @battle_commandA.zoom_y = 0.7
      when 1
        @battle_commandA.zoom_x = 0.4
        @battle_commandA.zoom_y = 0.4
      when 2
        battle_commandA_clear
      when 3
        # バトルコマンドBの表示
        battle_commandB_pop
        @battle_commandB.zoom_x = 0.4
        @battle_commandB.zoom_y = 0.4
      when 4
        @battle_commandB.zoom_x = 0.7
        @battle_commandB.zoom_y = 0.7
      when 5
        @battle_commandB.zoom_x = 1
        @battle_commandB.zoom_y = 1
        @zoom_end = 1
        @command_count_change = 0
      end
    end
  end
  def battle_commandB_pop #バトルコマンドBの表示
    @battle_commandB = Sprite.new
    case @command_type
    when 0
      @battle_commandB.bitmap = RPG::Cache.picture("Battle_commandB")
    when 1
      if $game_switches[27] == false and @commandB_index == 2  #閃光斬りが未修得
        @battle_commandB.bitmap = RPG::Cache.picture("Battle_commandB05")
      else
        @battle_commandB.bitmap = RPG::Cache.picture("Battle_commandB0#{@commandB_index}")
      end
    end
    @battle_commandB.ox = @battle_commandB.bitmap.width / 2
    @battle_commandB.oy = @battle_commandB.bitmap.height / 2
    @battle_commandB.x = 320
    @battle_commandB.y = 376
    @battle_commandB.z = 300
  end
  def battle_commandB_zoom(zoom) #バトルコマンドBの拡大・縮小表示
    command_count
    case zoom
    when 1  #バトルコマンドBの拡大表示
      case @command_count
      when 0
        # バトルコマンドBの表示
        battle_commandB_pop
        @battle_commandB.zoom_x = 0.4
        @battle_commandB.zoom_y = 0.4
      when 1
        @battle_commandB.zoom_x = 0.7
        @battle_commandB.zoom_y = 0.7
      when 2
        @battle_commandB.zoom_x = 1
        @battle_commandB.zoom_y = 1
        @zoom_end = 1
        @command_count_change = 0
      end
    when 2  #バトルコマンドBの縮小消去
      case @command_count
      when 0
        @battle_commandB.zoom_x = 0.7
        @battle_commandB.zoom_y = 0.7
      when 1
        @battle_commandB.zoom_x = 0.4
        @battle_commandB.zoom_y = 0.4
      when 2
        battle_commandB_clear
        @zoom_end = 1
        @command_count_change = 0
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● バトルコマンドのアニメ
  #--------------------------------------------------------------------------
  def battle_commandA_anime #バトルコマンドAのアニメ処理
    command_count
    case @command_count
    when 10
      battle_commandA_clear
      @command_type = 0
      battle_commandA_pop
    when 20
      battle_commandA_clear
      @command_type = 1
      battle_commandA_pop
      @command_count_change = 0
    end
  end
  def battle_commandB_anime #バトルコマンドBのアニメ処理
    command_count
    case @command_count
    when 10
      battle_commandB_clear
      @command_type = 0
      battle_commandB_pop
    when 20
      battle_commandB_clear
      @command_type = 1
      battle_commandB_pop
      @command_count_change = 0
    end
  end
  #--------------------------------------------------------------------------
  # ● 画像の消去
  #--------------------------------------------------------------------------
  def battle_commandA_clear #バトルコマンドAの消去
    @battle_commandA.dispose if @battle_commandA != nil
  end
  def battle_commandB_clear #バトルコマンドBの消去
    @battle_commandB.dispose if @battle_commandB != nil
  end
  #--------------------------------------------------------------------------
  # ● ウェイトカウント
  #--------------------------------------------------------------------------
  def command_count
    if @command_count_change == 0
      @command_count_old = Graphics.frame_count
      @command_count_change = 1
    end
    @command_count = Graphics.frame_count - @command_count_old
  end
end
