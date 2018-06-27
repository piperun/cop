#==============================================================================
# ■ Cg_Mode
#------------------------------------------------------------------------------
# 　ＣＧモードの処理を行うクラスです。
#==============================================================================

class Cg_Mode
  #--------------------------------------------------------------------------
  # ● メイン処理
  #--------------------------------------------------------------------------
  def main
    # ＣＧモード背景
    @back = Sprite.new
    @back.bitmap = RPG::Cache.picture("cgmode_back")

    #@sd_kate = Sprite.new
    #@sd_kate.bitmap = RPG::Cache.picture("sd_kate")
    #@sd_kate.x = 550
    #@sd_kate.y = 360

    #イベント画像の差分数の設定
    setup_sabun

    #イベント画像（サムネイル）の描画
    @thumbx = 18
    @thumby = 20
    @thumb_opacity = 100
    cg_thumb

    @phase = 1
    @cg_index = 1
    @cg_index_s = "001"
    @cg_num = 1   #表示しているＣＧ何枚目

    @cg_open = 0
    if $game_switches[101] == true
      @cg_open = 1
    end

    # トランジション実行
    Graphics.transition
    # メインループ
    loop do
      # ゲーム画面を更新
      Graphics.update
      # 入力情報を更新
      Input.update
      # フレーム更新
      update

      # アニメフレーム更新追加
      anime_update

      # 画面が切り替わったらループを中断
      if $scene != self
        break
      end
    end
    # トランジション準備
    Graphics.freeze
    # ウィンドウを解放
    clear

  end
  #--------------------------------------------------------------------------
  # ● フレーム更新
  #--------------------------------------------------------------------------
  def update
    # フェーズによって分岐
    case @phase
    when 1
      update_phase1
    when 2
      update_phase2
    end
  end
  #--------------------------------------------------------------------------
  # ● フレーム更新 (フェーズ1)
  #--------------------------------------------------------------------------
  def update_phase1

    # 方向ボタンの上が押された場合
    if Input.repeat?(Input::UP)

      if @cg_index == 1
        @cg_index = 25
      elsif @cg_index == 2
        @cg_index = 26
      elsif @cg_index == 3
        @cg_index = 27
      elsif @cg_index == 4
        @cg_index = 22
      elsif @cg_index == 5
        @cg_index = 23
      elsif @cg_index == 6
        @cg_index = 24
      else
        @cg_index -= 6
      end

      select_index
    end

    # 方向ボタンの下が押された場合
    if Input.repeat?(Input::DOWN)

      if @cg_index == 25
        @cg_index = 1
      elsif @cg_index == 26
        @cg_index = 2
      elsif @cg_index == 27
        @cg_index = 3
      elsif @cg_index == 22
        @cg_index = 4
      elsif @cg_index == 23
        @cg_index = 5
      elsif @cg_index == 24
        @cg_index = 6
      else
        @cg_index += 6
      end

      select_index
    end

    # 方向ボタンの左が押された場合
    if Input.repeat?(Input::LEFT)

      if @cg_index == 1
        @cg_index = 27
      else
        @cg_index -= 1
      end

      select_index
    end

    # 方向ボタンの右が押された場合
    if Input.repeat?(Input::RIGHT)

      if @cg_index == 27
        @cg_index = 1
      else
        @cg_index += 1
      end

      select_index
    end

    # B ボタンが押された場合
    if Input.trigger?(Input::B)
      # キャンセル SE を演奏
      $game_system.se_play($data_system.cancel_se)
      # マップ画面に切り替え
      $scene = Scene_Map.new
      return
    end

    # C ボタンが押された場合
    if Input.trigger?(Input::C)
      if @cg_open == 0
        # キャンセル SE を演奏
        $game_system.se_play($data_system.cancel_se)
      else
        # 決定 SE を演奏
        $game_system.se_play($data_system.decision_se)

        cg_pop

        @cg_num += 1
        @phase = 2
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● フレーム更新 (フェーズ1)
  #--------------------------------------------------------------------------
  def update_phase2

    # B ボタンが押された場合
    if Input.trigger?(Input::B)
      # キャンセル SE を演奏
      $game_system.se_play($data_system.cancel_se)
      if @cg_index == 1
        @bg.clear if @bg != nil
        $game_switches[11] = false
        $bust.clear if $bust != nil
      elsif @cg_index == 2
        @bg.clear if @bg != nil
        $game_switches[12] = false
        $kiss.clear if $kiss != nil
      elsif @cg_index == 3
        @bg.clear if @bg != nil
        @ev.clear if @ev != nil
      elsif @cg_index == 4
        @bg.clear if @bg != nil
        @ev.clear if @ev != nil
      elsif @cg_index == 5
        @bg.clear if @bg != nil
        @ev.clear if @ev != nil
      elsif @cg_index == 6
        @ev.clear if @ev != nil
      elsif @cg_index == 7
        @ev.clear if @ev != nil
      elsif @cg_index == 8
        @ev.clear if @ev != nil
      elsif @cg_index == 9
        @ev.clear if @ev != nil
      elsif @cg_index == 10
        @ev.clear if @ev != nil
      elsif @cg_index == 11
        @ev.clear if @ev != nil
      elsif @cg_index == 12
        @ev.clear if @ev != nil
      elsif @cg_index == 13
        @ev.clear if @ev != nil
      elsif @cg_index == 14
        @ev.clear if @ev != nil
      elsif @cg_index == 15
        @ev.clear if @ev != nil
      elsif @cg_index == 16
        @ev.clear if @ev != nil
      elsif @cg_index == 17
        @ev.clear if @ev != nil
      elsif @cg_index == 18
        @ev.clear if @ev != nil
      elsif @cg_index == 19
        @ev.clear if @ev != nil
      elsif @cg_index == 20
        @ev.clear if @ev != nil
      elsif @cg_index == 21
        @ev.clear if @ev != nil
      elsif @cg_index == 22
        @ev.clear if @ev != nil
      elsif @cg_index == 23
        @ev.clear if @ev != nil
      elsif @cg_index == 24
        @ev.clear if @ev != nil
      elsif @cg_index == 25
        @ev.clear if @ev != nil
      elsif @cg_index == 26
        @ev.clear if @ev != nil
      elsif @cg_index == 27
        @ev.clear if @ev != nil
      end
      @cg_num = 1
      @phase = 1
    end

    # C ボタンが押された場合
    if Input.trigger?(Input::C)

      # 決定 SE を演奏
      $game_system.se_play($data_system.decision_se)

      if @cg_num > @ev_sabun
        if @cg_index == 1
          @bg.clear if @bg != nil
          $game_switches[11] = false
          $bust.clear if $bust != nil
        elsif @cg_index == 2
          @bg.clear if @bg != nil
          $game_switches[12] = false
          $kiss.clear if $kiss != nil
        elsif @cg_index == 3
          @bg.clear if @bg != nil
          @ev.clear if @ev != nil
        elsif @cg_index == 4
          @bg.clear if @bg != nil
          @ev.clear if @ev != nil
        elsif @cg_index == 5
          @bg.clear if @bg != nil
          @ev.clear if @ev != nil
        elsif @cg_index == 6
          @ev.clear if @ev != nil
        elsif @cg_index == 7
          @ev.clear if @ev != nil
        elsif @cg_index == 8
          @ev.clear if @ev != nil
        elsif @cg_index == 9
          @ev.clear if @ev != nil
        elsif @cg_index == 10
          @ev.clear if @ev != nil
        elsif @cg_index == 11
          @ev.clear if @ev != nil
        elsif @cg_index == 12
          @ev.clear if @ev != nil
        elsif @cg_index == 13
          @ev.clear if @ev != nil
        elsif @cg_index == 14
          @ev.clear if @ev != nil
        elsif @cg_index == 15
          @ev.clear if @ev != nil
        elsif @cg_index == 16
          @ev.clear if @ev != nil
        elsif @cg_index == 17
          @ev.clear if @ev != nil
        elsif @cg_index == 18
          @ev.clear if @ev != nil
        elsif @cg_index == 19
          @ev.clear if @ev != nil
        elsif @cg_index == 20
          @ev.clear if @ev != nil
        elsif @cg_index == 21
          @ev.clear if @ev != nil
        elsif @cg_index == 22
          @ev.clear if @ev != nil
        elsif @cg_index == 23
          @ev.clear if @ev != nil
        elsif @cg_index == 24
          @ev.clear if @ev != nil
        elsif @cg_index == 25
          @ev.clear if @ev != nil
        elsif @cg_index == 26
          @ev.clear if @ev != nil
        elsif @cg_index == 27
          @ev.clear if @ev != nil
        end
        @cg_num = 1
        @phase = 1
      else
        cg_pop
        @cg_num += 1
      end
    end

  end
  #--------------------------------------------------------------------------
  # ● イベント画像の描画
  #--------------------------------------------------------------------------
  def cg_pop
    if @cg_index == 1
      @bg.clear if @bg != nil
      $bust.clear if $bust != nil

      ev001_pop
    elsif @cg_index == 2
      @bg.clear if @bg != nil
      $kiss.clear if $kiss != nil

      ev002_pop
    elsif @cg_index == 3
      @bg.clear if @bg != nil
      @ev.clear if @ev != nil

      ev003_pop
    elsif @cg_index == 4
      @bg.clear if @bg != nil
      @ev.clear if @ev != nil

      ev004_pop
    elsif @cg_index == 5
      @bg.clear if @bg != nil
      @ev.clear if @ev != nil

      ev005_pop
    elsif @cg_index == 6
      @ev.clear if @ev != nil

      ev006_pop
    elsif @cg_index == 7
      @ev.clear if @ev != nil

      ev007_pop
    elsif @cg_index == 8
      @ev.clear if @ev != nil

      ev008_pop
    elsif @cg_index == 9
      @ev.clear if @ev != nil

      ev009_pop
    elsif @cg_index == 10
      @ev.clear if @ev != nil

      ev010_pop
    elsif @cg_index == 11
      @ev.clear if @ev != nil

      ev011_pop
    elsif @cg_index == 12
      @ev.clear if @ev != nil

      ev012_pop
    elsif @cg_index == 13
      @ev.clear if @ev != nil

      ev013_pop
    elsif @cg_index == 14
      @ev.clear if @ev != nil

      ev014_pop
    elsif @cg_index == 15
      @ev.clear if @ev != nil

      ev015_pop
    elsif @cg_index == 16
      @ev.clear if @ev != nil

      ev016_pop
    elsif @cg_index == 17
      @ev.clear if @ev != nil

      ev017_pop
    elsif @cg_index == 18
      @ev.clear if @ev != nil

      ev018_pop
    elsif @cg_index == 19
      @ev.clear if @ev != nil

      ev019_pop
    elsif @cg_index == 20
      @ev.clear if @ev != nil

      ev020_pop
    elsif @cg_index == 21
      @ev.clear if @ev != nil

      ev021_pop
    elsif @cg_index == 22
      @ev.clear if @ev != nil

      ev022_pop
    elsif @cg_index == 23
      @ev.clear if @ev != nil

      ev023_pop
    elsif @cg_index == 24
      @ev.clear if @ev != nil

      ev024_pop
    elsif @cg_index == 25
      @ev.clear if @ev != nil

      ev025_pop
    elsif @cg_index == 26
      @ev.clear if @ev != nil

      ev026_pop
    elsif @cg_index == 27
      @ev.clear if @ev != nil

      ev027_pop
    end
  end
  #--------------------------------------------------------------------------
  # ● イベント画像（サムネイル）の描画
  #--------------------------------------------------------------------------
  def select_index
    @thumb1.opacity = @thumb_opacity
    @thumb2.opacity = @thumb_opacity
    @thumb3.opacity = @thumb_opacity
    @thumb4.opacity = @thumb_opacity
    @thumb5.opacity = @thumb_opacity
    @thumb6.opacity = @thumb_opacity
    @thumb7.opacity = @thumb_opacity
    @thumb8.opacity = @thumb_opacity
    @thumb9.opacity = @thumb_opacity
    @thumb10.opacity = @thumb_opacity
    @thumb11.opacity = @thumb_opacity
    @thumb12.opacity = @thumb_opacity
    @thumb13.opacity = @thumb_opacity
    @thumb14.opacity = @thumb_opacity
    @thumb15.opacity = @thumb_opacity
    @thumb16.opacity = @thumb_opacity
    @thumb17.opacity = @thumb_opacity
    @thumb18.opacity = @thumb_opacity
    @thumb19.opacity = @thumb_opacity
    @thumb20.opacity = @thumb_opacity
    @thumb21.opacity = @thumb_opacity
    @thumb22.opacity = @thumb_opacity
    @thumb23.opacity = @thumb_opacity
    @thumb24.opacity = @thumb_opacity
    @thumb25.opacity = @thumb_opacity
    @thumb26.opacity = @thumb_opacity
    @thumb27.opacity = @thumb_opacity

    @cg_open = 0

    case @cg_index
    when 1
      @thumb1.opacity = 255
      @cg_index_s = "001"
      @ev_sabun = @ev001_sabun
      @cg_open = 1 if $game_switches[101] == true
    when 2
      @thumb2.opacity = 255
      @cg_index_s = "002"
      @ev_sabun = @ev002_sabun
      @cg_open = 1 if $game_switches[102] == true
    when 3
      @thumb3.opacity = 255
      @cg_index_s = "003"
      @ev_sabun = @ev003_sabun
      @cg_open = 1 if $game_switches[103] == true
    when 4
      @thumb4.opacity = 255
      @cg_index_s = "004"
      @ev_sabun = @ev004_sabun
      @cg_open = 1 if $game_switches[104] == true
    when 5
      @thumb5.opacity = 255
      @cg_index_s = "005"
      @ev_sabun = @ev005_sabun
      @cg_open = 1 if $game_switches[105] == true
    when 6
      @thumb6.opacity = 255
      @cg_index_s = "006"
      @ev_sabun = @ev006_sabun
      @cg_open = 1 if $game_switches[106] == true
    when 7
      @thumb7.opacity = 255
      @cg_index_s = "007"
      @ev_sabun = @ev007_sabun
      @cg_open = 1 if $game_switches[107] == true
    when 8
      @thumb8.opacity = 255
      @cg_index_s = "008"
      @ev_sabun = @ev008_sabun
      @cg_open = 1 if $game_switches[108] == true or $game_switches[129] == true
    when 9
      @thumb9.opacity = 255
      @cg_index_s = "009"
      @ev_sabun = @ev009_sabun
      @cg_open = 1 if $game_switches[109] == true or $game_switches[129] == true
    when 10
      @thumb10.opacity = 255
      @cg_index_s = "010"
      @ev_sabun = @ev010_sabun
      @cg_open = 1 if $game_switches[110] == true or $game_switches[129] == true
    when 11
      @thumb11.opacity = 255
      @cg_index_s = "011"
      @ev_sabun = @ev011_sabun
      @cg_open = 1 if $game_switches[111] == true or $game_switches[129] == true
    when 12
      @thumb12.opacity = 255
      @cg_index_s = "012"
      @ev_sabun = @ev012_sabun
      @cg_open = 1 if $game_switches[112] == true or $game_switches[129] == true
    when 13
      @thumb13.opacity = 255
      @cg_index_s = "013"
      @ev_sabun = @ev013_sabun
      @cg_open = 1 if $game_switches[113] == true or $game_switches[129] == true
    when 14
      @thumb14.opacity = 255
      @cg_index_s = "014"
      @ev_sabun = @ev014_sabun
      @cg_open = 1 if $game_switches[114] == true or $game_switches[129] == true
    when 15
      @thumb15.opacity = 255
      @cg_index_s = "015"
      @ev_sabun = @ev015_sabun
      @cg_open = 1 if $game_switches[115] == true or $game_switches[129] == true
    when 16
      @thumb16.opacity = 255
      @cg_index_s = "016"
      @ev_sabun = @ev016_sabun
      @cg_open = 1 if $game_switches[116] == true or $game_switches[129] == true
    when 17
      @thumb17.opacity = 255
      @cg_index_s = "017"
      @ev_sabun = @ev017_sabun
      @cg_open = 1 if $game_switches[117] == true or $game_switches[129] == true
    when 18
      @thumb18.opacity = 255
      @cg_index_s = "018"
      @ev_sabun = @ev018_sabun
      @cg_open = 1 if $game_switches[118] == true or $game_switches[129] == true
    when 19
      @thumb19.opacity = 255
      @cg_index_s = "019"
      @ev_sabun = @ev019_sabun
      @cg_open = 1 if $game_switches[119] == true or $game_switches[129] == true
    when 20
      @thumb20.opacity = 255
      @cg_index_s = "020"
      @ev_sabun = @ev020_sabun
      @cg_open = 1 if $game_switches[120] == true or $game_switches[129] == true
    when 21
      @thumb21.opacity = 255
      @cg_index_s = "021"
      @ev_sabun = @ev021_sabun
      @cg_open = 1 if $game_switches[121] == true or $game_switches[129] == true
    when 22
      @thumb22.opacity = 255
      @cg_index_s = "022"
      @ev_sabun = @ev022_sabun
      @cg_open = 1 if $game_switches[122] == true or $game_switches[129] == true
    when 23
      @thumb23.opacity = 255
      @cg_index_s = "023"
      @ev_sabun = @ev023_sabun
      @cg_open = 1 if $game_switches[123] == true or $game_switches[129] == true
    when 24
      @thumb24.opacity = 255
      @cg_index_s = "024"
      @ev_sabun = @ev024_sabun
      @cg_open = 1 if $game_switches[124] == true or $game_switches[129] == true
    when 25
      @thumb25.opacity = 255
      @cg_index_s = "025"
      @ev_sabun = @ev025_sabun
      @cg_open = 1 if $game_switches[125] == true
    when 26
      @thumb26.opacity = 255
      @cg_index_s = "026"
      @ev_sabun = @ev026_sabun
      @cg_open = 1 if $game_switches[126] == true
    when 27
      @thumb27.opacity = 255
      @cg_index_s = "027"
      @ev_sabun = @ev027_sabun
      @cg_open = 1 if $game_switches[127] == true
    end
  end

  def cg_thumb
    x = 85
    y = 64
    @thumb1 = Sprite.new
    if $game_switches[101] == true
      @thumb1.bitmap = RPG::Cache.picture("ev001_thumbnail")
    else
      @thumb1.bitmap = RPG::Cache.picture("ev_dummy")
    end
    @thumb1.x = @thumbx
    @thumb1.y = @thumby

    @thumb2 = Sprite.new
    if $game_switches[102] == true
      @thumb2.bitmap = RPG::Cache.picture("ev002_thumbnail")
    else
      @thumb2.bitmap = RPG::Cache.picture("ev_dummy")
    end
    @thumb2.x = @thumbx * 2 + x
    @thumb2.y = @thumby

    @thumb3 = Sprite.new
    if $game_switches[103] == true
      @thumb3.bitmap = RPG::Cache.picture("ev003_thumbnail")
    else
      @thumb3.bitmap = RPG::Cache.picture("ev_dummy")
    end
    @thumb3.x = @thumbx * 3 + x * 2
    @thumb3.y = @thumby

    @thumb4 = Sprite.new
    if $game_switches[104] == true
      @thumb4.bitmap = RPG::Cache.picture("ev004_thumbnail")
    else
      @thumb4.bitmap = RPG::Cache.picture("ev_dummy")
    end
    @thumb4.x = @thumbx * 4 + x * 3
    @thumb4.y = @thumby

    @thumb5 = Sprite.new
    if $game_switches[105] == true
      @thumb5.bitmap = RPG::Cache.picture("ev005_thumbnail")
    else
      @thumb5.bitmap = RPG::Cache.picture("ev_dummy")
    end
    @thumb5.x = @thumbx * 5 + x * 4
    @thumb5.y = @thumby

    @thumb6 = Sprite.new
    if $game_switches[106] == true
      @thumb6.bitmap = RPG::Cache.picture("ev006_thumbnail")
    else
      @thumb6.bitmap = RPG::Cache.picture("ev_dummy")
    end
    @thumb6.x = @thumbx * 6 + x * 5
    @thumb6.y = @thumby

    @thumb7 = Sprite.new
    if $game_switches[107] == true
      @thumb7.bitmap = RPG::Cache.picture("ev007_thumbnail")
    else
      @thumb7.bitmap = RPG::Cache.picture("ev_dummy")
    end
    @thumb7.x = @thumbx
    @thumb7.y = @thumby * 2 + y

    @thumb8 = Sprite.new
    if $game_switches[108] == true or $game_switches[129] == true
      @thumb8.bitmap = RPG::Cache.picture("ev008_thumbnail")
    else
      @thumb8.bitmap = RPG::Cache.picture("ev_dummy")
    end
    @thumb8.x = @thumbx * 2 + x
    @thumb8.y = @thumby * 2 + y

    @thumb9 = Sprite.new
    if $game_switches[109] == true or $game_switches[129] == true
      @thumb9.bitmap = RPG::Cache.picture("ev009_thumbnail")
    else
      @thumb9.bitmap = RPG::Cache.picture("ev_dummy")
    end
    @thumb9.x = @thumbx * 3 + x * 2
    @thumb9.y = @thumby * 2 + y

    @thumb10 = Sprite.new
    if $game_switches[110] == true or $game_switches[129] == true
      @thumb10.bitmap = RPG::Cache.picture("ev010_thumbnail")
    else
      @thumb10.bitmap = RPG::Cache.picture("ev_dummy")
    end
    @thumb10.x = @thumbx * 4 + x * 3
    @thumb10.y = @thumby * 2 + y

    @thumb11 = Sprite.new
    if $game_switches[111] == true or $game_switches[129] == true
      @thumb11.bitmap = RPG::Cache.picture("ev011_thumbnail")
    elsif $game_switches[132] == true
      @thumb11.bitmap = RPG::Cache.picture("ev011_thumbnail")
    else
      @thumb11.bitmap = RPG::Cache.picture("ev_dummy")
    end
    @thumb11.x = @thumbx * 5 + x * 4
    @thumb11.y = @thumby * 2 + y

    @thumb12 = Sprite.new
    if $game_switches[112] == true or $game_switches[129] == true
      @thumb12.bitmap = RPG::Cache.picture("ev012_thumbnail")
    elsif $game_switches[132] == true
      @thumb12.bitmap = RPG::Cache.picture("ev012_thumbnail")
    else
      @thumb12.bitmap = RPG::Cache.picture("ev_dummy")
    end
    @thumb12.x = @thumbx * 6 + x * 5
    @thumb12.y = @thumby * 2 + y

    @thumb13 = Sprite.new
    if $game_switches[113] == true or $game_switches[129] == true
      @thumb13.bitmap = RPG::Cache.picture("ev013_thumbnail")
    elsif $game_switches[132] == true
      @thumb13.bitmap = RPG::Cache.picture("ev013_thumbnail")
    else
      @thumb13.bitmap = RPG::Cache.picture("ev_dummy")
    end
    @thumb13.x = @thumbx
    @thumb13.y = @thumby * 3 + y * 2

    @thumb14 = Sprite.new
    if $game_switches[114] == true or $game_switches[129] == true
      @thumb14.bitmap = RPG::Cache.picture("ev014_thumbnail")
    elsif $game_switches[132] == true
      @thumb14.bitmap = RPG::Cache.picture("ev014_thumbnail")
    else
      @thumb14.bitmap = RPG::Cache.picture("ev_dummy")
    end
    @thumb14.x = @thumbx * 2 + x
    @thumb14.y = @thumby * 3 + y * 2

    @thumb15 = Sprite.new
    if $game_switches[115] == true or $game_switches[129] == true
      @thumb15.bitmap = RPG::Cache.picture("ev015_thumbnail")
    elsif $game_switches[132] == true
      @thumb15.bitmap = RPG::Cache.picture("ev015_thumbnail")
    else
      @thumb15.bitmap = RPG::Cache.picture("ev_dummy")
    end
    @thumb15.x = @thumbx * 3 + x * 2
    @thumb15.y = @thumby * 3 + y * 2

    @thumb16 = Sprite.new
    if $game_switches[116] == true or $game_switches[129] == true
      @thumb16.bitmap = RPG::Cache.picture("ev016_thumbnail")
    elsif $game_switches[132] == true
      @thumb16.bitmap = RPG::Cache.picture("ev016_thumbnail")
    else
      @thumb16.bitmap = RPG::Cache.picture("ev_dummy")
    end
    @thumb16.x = @thumbx * 4 + x * 3
    @thumb16.y = @thumby * 3 + y * 2

    @thumb17 = Sprite.new
    if $game_switches[117] == true or $game_switches[129] == true
      @thumb17.bitmap = RPG::Cache.picture("ev017_thumbnail")
    elsif $game_switches[132] == true
      @thumb17.bitmap = RPG::Cache.picture("ev017_thumbnail")
    else
      @thumb17.bitmap = RPG::Cache.picture("ev_dummy")
    end
    @thumb17.x = @thumbx * 5 + x * 4
    @thumb17.y = @thumby * 3 + y * 2

    @thumb18 = Sprite.new
    if $game_switches[118] == true or $game_switches[129] == true
      @thumb18.bitmap = RPG::Cache.picture("ev018_thumbnail")
    elsif $game_switches[132] == true
      @thumb18.bitmap = RPG::Cache.picture("ev018_thumbnail")
    else
      @thumb18.bitmap = RPG::Cache.picture("ev_dummy")
    end
    @thumb18.x = @thumbx * 6 + x * 5
    @thumb18.y = @thumby * 3 + y * 2

    @thumb19 = Sprite.new
    if $game_switches[119] == true or $game_switches[129] == true
      @thumb19.bitmap = RPG::Cache.picture("ev019_thumbnail")
    elsif $game_switches[132] == true
      @thumb19.bitmap = RPG::Cache.picture("ev019_thumbnail")
    else
      @thumb19.bitmap = RPG::Cache.picture("ev_dummy")
    end
    @thumb19.x = @thumbx
    @thumb19.y = @thumby * 4 + y * 3

    @thumb20 = Sprite.new
    if $game_switches[120] == true or $game_switches[129] == true
      @thumb20.bitmap = RPG::Cache.picture("ev020_thumbnail")
    elsif $game_switches[132] == true
      @thumb20.bitmap = RPG::Cache.picture("ev020_thumbnail")
    else
      @thumb20.bitmap = RPG::Cache.picture("ev_dummy")
    end
    @thumb20.x = @thumbx * 2 + x
    @thumb20.y = @thumby * 4 + y * 3

    @thumb21 = Sprite.new
    if $game_switches[121] == true or $game_switches[129] == true
      @thumb21.bitmap = RPG::Cache.picture("ev021_thumbnail")
    elsif $game_switches[132] == true
      @thumb21.bitmap = RPG::Cache.picture("ev021_thumbnail")
    else
      @thumb21.bitmap = RPG::Cache.picture("ev_dummy")
    end
    @thumb21.x = @thumbx * 3 + x * 2
    @thumb21.y = @thumby * 4 + y * 3

    @thumb22 = Sprite.new
    if $game_switches[122] == true or $game_switches[129] == true
      @thumb22.bitmap = RPG::Cache.picture("ev022_thumbnail")
    elsif $game_switches[132] == true
      @thumb22.bitmap = RPG::Cache.picture("ev022_thumbnail")
    else
      @thumb22.bitmap = RPG::Cache.picture("ev_dummy")
    end
    @thumb22.x = @thumbx * 4 + x * 3
    @thumb22.y = @thumby * 4 + y * 3

    @thumb23 = Sprite.new
    if $game_switches[123] == true or $game_switches[129] == true
      @thumb23.bitmap = RPG::Cache.picture("ev023_thumbnail")
    elsif $game_switches[132] == true
      @thumb23.bitmap = RPG::Cache.picture("ev023_thumbnail")
    else
      @thumb23.bitmap = RPG::Cache.picture("ev_dummy")
    end
    @thumb23.x = @thumbx * 5 + x * 4
    @thumb23.y = @thumby * 4 + y * 3

    @thumb24 = Sprite.new
    if $game_switches[124] == true or $game_switches[129] == true
      @thumb24.bitmap = RPG::Cache.picture("ev024_thumbnail")
    elsif $game_switches[132] == true
      @thumb24.bitmap = RPG::Cache.picture("ev024_thumbnail")
    else
      @thumb24.bitmap = RPG::Cache.picture("ev_dummy")
    end
    @thumb24.x = @thumbx * 6 + x * 5
    @thumb24.y = @thumby * 4 + y * 3

    @thumb25 = Sprite.new
    if $game_switches[125] == true
      @thumb25.bitmap = RPG::Cache.picture("ev025_thumbnail")
    elsif $game_switches[132] == true
      @thumb25.bitmap = RPG::Cache.picture("ev025_thumbnail")
    else
      @thumb25.bitmap = RPG::Cache.picture("ev_dummy")
    end
    @thumb25.x = @thumbx
    @thumb25.y = @thumby * 5 + y * 4

    @thumb26 = Sprite.new
    if $game_switches[126] == true
      @thumb26.bitmap = RPG::Cache.picture("ev026_thumbnail")
    elsif $game_switches[132] == true
      @thumb26.bitmap = RPG::Cache.picture("ev026_thumbnail")
    else
      @thumb26.bitmap = RPG::Cache.picture("ev_dummy")
    end
    @thumb26.x = @thumbx * 2 + x
    @thumb26.y = @thumby * 5 + y * 4

    @thumb27 = Sprite.new
    if $game_switches[127] == true
      @thumb27.bitmap = RPG::Cache.picture("ev027_thumbnail")
    elsif $game_switches[132] == true
      @thumb27.bitmap = RPG::Cache.picture("ev027_thumbnail")
    else
      @thumb27.bitmap = RPG::Cache.picture("ev_dummy")
    end
    @thumb27.x = @thumbx * 3 + x * 2
    @thumb27.y = @thumby * 5 + y * 4

    @thumb2.opacity = @thumb_opacity
    @thumb3.opacity = @thumb_opacity
    @thumb4.opacity = @thumb_opacity
    @thumb5.opacity = @thumb_opacity
    @thumb6.opacity = @thumb_opacity
    @thumb7.opacity = @thumb_opacity
    @thumb8.opacity = @thumb_opacity
    @thumb9.opacity = @thumb_opacity
    @thumb10.opacity = @thumb_opacity
    @thumb11.opacity = @thumb_opacity
    @thumb12.opacity = @thumb_opacity
    @thumb13.opacity = @thumb_opacity
    @thumb14.opacity = @thumb_opacity
    @thumb15.opacity = @thumb_opacity
    @thumb16.opacity = @thumb_opacity
    @thumb17.opacity = @thumb_opacity
    @thumb18.opacity = @thumb_opacity
    @thumb19.opacity = @thumb_opacity
    @thumb20.opacity = @thumb_opacity
    @thumb21.opacity = @thumb_opacity
    @thumb22.opacity = @thumb_opacity
    @thumb23.opacity = @thumb_opacity
    @thumb24.opacity = @thumb_opacity
    @thumb25.opacity = @thumb_opacity
    @thumb26.opacity = @thumb_opacity
    @thumb27.opacity = @thumb_opacity
  end
  #--------------------------------------------------------------------------
  # ● 画像の消去
  #--------------------------------------------------------------------------
  def clear
    @back.dispose if @back != nil
    @sd_kate.dispose if @sd_kate != nil
    @thumb1.dispose if @thumb1 != nil
    @thumb2.dispose if @thumb2 != nil
    @thumb3.dispose if @thumb3 != nil
    @thumb4.dispose if @thumb4 != nil
    @thumb5.dispose if @thumb5 != nil
    @thumb6.dispose if @thumb6 != nil
    @thumb7.dispose if @thumb7 != nil
    @thumb8.dispose if @thumb8 != nil
    @thumb9.dispose if @thumb9 != nil
    @thumb10.dispose if @thumb10 != nil
    @thumb11.dispose if @thumb11 != nil
    @thumb12.dispose if @thumb12 != nil
    @thumb13.dispose if @thumb13 != nil
    @thumb14.dispose if @thumb14 != nil
    @thumb15.dispose if @thumb15 != nil
    @thumb16.dispose if @thumb16 != nil
    @thumb17.dispose if @thumb17 != nil
    @thumb18.dispose if @thumb18 != nil
    @thumb19.dispose if @thumb19 != nil
    @thumb20.dispose if @thumb20 != nil
    @thumb21.dispose if @thumb21 != nil
    @thumb22.dispose if @thumb22 != nil
    @thumb23.dispose if @thumb23 != nil
    @thumb24.dispose if @thumb24 != nil
    @thumb25.dispose if @thumb25 != nil
    @thumb26.dispose if @thumb26 != nil
    @thumb27.dispose if @thumb27 != nil
  end
  #--------------------------------------------------------------------------
  # ● イベント画像の差分数の設定
  #--------------------------------------------------------------------------
  def setup_sabun
    @ev001_sabun = 7
    @ev002_sabun = 9
    @ev003_sabun = 8
    @ev004_sabun = 3
    @ev005_sabun = 10
    @ev006_sabun = 7
    @ev007_sabun = 7
    @ev008_sabun = 7
    @ev009_sabun = 13
    @ev010_sabun = 7
    @ev011_sabun = 7
    @ev012_sabun = 6
    @ev013_sabun = 7
    @ev014_sabun = 10
    @ev015_sabun = 10
    @ev016_sabun = 9
    @ev017_sabun = 9
    @ev018_sabun = 7
    @ev019_sabun = 7
    @ev020_sabun = 10
    @ev021_sabun = 7
    @ev022_sabun = 7
    @ev023_sabun = 7
    @ev024_sabun = 7
    @ev025_sabun = 7
    @ev026_sabun = 7
    @ev027_sabun = 7

    @ev_sabun = @ev001_sabun
  end
  #--------------------------------------------------------------------------
  # ● 各イベント画像の表示
  #--------------------------------------------------------------------------
  def ev001_pop
    case @cg_num
    when 1
      @bg = Ev_back.new("field02")
      @bg.pop
      $bust = Bust_Anime.new
      $bust.pop("A","A01","A01",0,"A",0,0,0,0)
      $game_switches[11] = true
    when 2
      @bg = Ev_back.new("field02")
      @bg.pop
      $bust = Bust_Anime.new
      $bust.pop("A","A01","A01",0,"A",0,0,0,0)
      $bust.massage_on("A","A",4)
      $bust.pop("A","A01","A04",1,"B",1,0,0,0)
    when 3
      @bg = Ev_back.new("field02")
      @bg.pop
      $bust = Bust_Anime.new
      $bust.pop("A","A01","A01",0,"A",0,0,0,0)
      $bust.massage_on("A","A",4)
      $bust.pop("A","C01","A04",1,"C",2,0,0,0)
    when 4
      @bg = Ev_back.new("field02")
      @bg.pop
      $bust = Bust_Anime.new
      $bust.pop("A","A01","A01",0,"A",0,0,0,0)
      $bust.massage_on("B","A",4)
      $bust.pop("A","C02","A04",1,"C",2,0,0,0)
    when 5
      @bg = Ev_back.new("field02")
      @bg.pop
      $bust = Bust_Anime.new
      $bust.pop("A","A01","A01",0,"A",0,0,0,0)
      $bust.massage_on("C","A",4)
      $bust.pop("A","C02","A04",1,"C",2,0,0,0)
    when 6
      @bg = Ev_back.new("field02")
      @bg.pop
      $bust = Bust_Anime.new
      $bust.pop("A","A01","A01",0,"A",0,0,0,0)
      $bust.massage_on("A","A",2)
      $bust.pop("A","C04","A05",1,"D",2,0,0,0)
    when 7
      @bg = Ev_back.new("field02")
      @bg.pop
      $bust = Bust_Anime.new
      $bust.pop("A","A01","A01",0,"A",0,0,0,0)
      $bust.massage_on("C","A",2)
      $bust.pop("A","B02","A06",1,"E",2,0,0,0)
    end
  end

  def ev002_pop
    case @cg_num
    when 1
      @bg = Ev_back.new("field02")
      @bg.pop
      $kiss = Kiss_Anime.new
      $kiss.pop("A","A","1","B",1,0,1,5)
      $game_switches[12] = true
    when 2
      @bg = Ev_back.new("field02")
      @bg.pop
      $kiss = Kiss_Anime.new
      $kiss.pop("A","B","3","B",1,1,1,5)
    when 3
      @bg = Ev_back.new("field02")
      @bg.pop
      $kiss = Kiss_Anime.new
      $kiss.pop("A","C","4","B",1,1,1,5)
    when 4
      @bg = Ev_back.new("field02")
      @bg.pop
      $kiss = Kiss_Anime.new
      $kiss.pop("A","D","5","B",1,1,1,5)
      $kiss.daeki_on
    when 5
      @bg = Ev_back.new("field02")
      @bg.pop
      $kiss = Kiss_Anime.new
      $kiss.pop("A","E","5","B",1,1,1,5)
      $kiss.daeki_on
    when 6
      @bg = Ev_back.new("field02")
      @bg.pop
      $kiss = Kiss_Anime.new
      $kiss.pop("B","A","6","B",1,1,1,5)
      $kiss.daeki_on
    when 7
      @bg = Ev_back.new("field02")
      @bg.pop
      $kiss = Kiss_Anime.new
      $kiss.pop("B","B","6","B",1,1,1,5)
      $kiss.daeki_on
    when 8
      @bg = Ev_back.new("field02")
      @bg.pop
      $kiss = Kiss_Anime.new
      $kiss.pop("C","B","1","B",1,2,1,8)
    when 9
      @bg = Ev_back.new("field02")
      @bg.pop
      $kiss = Kiss_Anime.new
      $kiss.pop("C","A","1","B",1,2,1,8)
    end
  end

  def ev003_pop
    case @cg_num
    when 1
      @bg = Ev_back.new("board01")
      @bg.pop
      @ev = Ev003.new("A01", "A01")
      @ev.pop
    when 2
      @bg = Ev_back.new("board01")
      @bg.pop
      @ev = Ev003.new("A02", "A01")
      @ev.pop
    when 3
      @bg = Ev_back.new("board01")
      @bg.pop
      @ev = Ev003.new("A03", "A02")
      @ev.pop
    when 4
      @bg = Ev_back.new("board01")
      @bg.pop
      @ev = Ev003.new("A04", "A03")
      @ev.pop
    when 5
      @bg = Ev_back.new("board01")
      @bg.pop
      @ev = Ev003.new("A05", "A04")
      @ev.pop
    when 6
      @bg = Ev_back.new("board01")
      @bg.pop
      @ev = Ev003.new("A06", "A03")
      @ev.pop
    when 7
      @bg = Ev_back.new("board01")
      @bg.pop
      @ev = Ev003.new("A07", "A04")
      @ev.pop
    when 8
      @bg = Ev_back.new("board01")
      @bg.pop
      @ev = Ev003.new("A08", "A05")
      @ev.pop
    end
  end

  def ev004_pop
    case @cg_num
    when 1
      @bg = Ev_back.new("board01")
      @bg.pop
      @ev = Ev004.new("A01", "A04")
      @ev.pop
    when 2
      @bg = Ev_back.new("board01")
      @bg.pop
      @ev = Ev004.new("A02", "A05")
      @ev.pop
    when 3
      @bg = Ev_back.new("board01")
      @bg.pop
      @ev = Ev004.new("A03", "A06")
      @ev.pop
    end
  end

  def ev005_pop
    case @cg_num
    when 1
      @bg = Ev_back.new("ground01")
      @bg.pop
      @ev = Ev005.new("B01", "A")
      @ev.pop
    when 2
      @bg = Ev_back.new("ground01")
      @bg.pop
      @ev = Ev005.new("B02", "A")
      @ev.pop
    when 3
      @bg = Ev_back.new("ground01")
      @bg.pop
      @ev = Ev005.new("B03", "A")
      @ev.pop
    when 4
      @bg = Ev_back.new("ground01")
      @bg.pop
      @ev = Ev005.new("B04", "A")
      @ev.pop
    when 5
      @bg = Ev_back.new("ground01")
      @bg.pop
      @ev = Ev005.new("B05", "A")
      @ev.pop
    when 6
      @bg = Ev_back.new("ground01")
      @bg.pop
      @ev = Ev005.new("B06", "A")
      @ev.pop
    when 7
      @bg = Ev_back.new("ground01")
      @bg.pop
      @ev = Ev005.new("D01", "A")
      @ev.pop
    when 8
      @bg = Ev_back.new("ground01")
      @bg.pop
      @ev = Ev005.new("D02", "A")
      @ev.pop
    when 9
      @bg = Ev_back.new("ground01")
      @bg.pop
      @ev = Ev005.new("E01", "A")
      @ev.pop
    when 10
      @bg = Ev_back.new("ground01")
      @bg.pop
      @ev = Ev005.new("E02", "A")
      @ev.pop
    end
  end

  def ev006_pop
    case @cg_num
    when 1
      @ev = Ev006.new("01", "A", "A")
      @ev.pop
    when 2
      @ev = Ev006.new("02", "A", "A")
      @ev.pop
    when 3
      @ev = Ev006.new("03", "A", "A")
      @ev.pop
    when 4
      @ev = Ev006.new("04", "B", "B")
      @ev.pop
    when 5
      @ev = Ev006.new("05", "B", "B")
      @ev.pop
    when 6
      @ev = Ev006.new("06", "B", "B")
      @ev.pop
    when 7
      @ev = Ev006.new("07", "B", "B")
      @ev.pop
    end
  end

  def ev007_pop
    case @cg_num
    when 1
      @ev = Ev007.new("01", "A", "A")
      @ev.pop
    when 2
      @ev = Ev007.new("02", "A", "A")
      @ev.pop
    when 3
      @ev = Ev007.new("03", "A", "A")
      @ev.pop
    when 4
      @ev = Ev007.new("04", "A", "A")
      @ev.pop
    when 5
      @ev = Ev007.new("05", "B", "A")
      @ev.pop
    when 6
      @ev = Ev007.new("06", "B", "A")
      @ev.pop
    when 7
      @ev = Ev007.new("07", "C", "A")
      @ev.pop
    end
  end

  def ev008_pop
    case @cg_num
    when 1
      @ev = Ev008.new("01", "A")
      @ev.pop
    when 2
      @ev = Ev008.new("02", "A")
      @ev.pop
    when 3
      @ev = Ev008.new("03", "A")
      @ev.pop
    when 4
      @ev = Ev008.new("04", "A")
      @ev.pop
    when 5
      @ev = Ev008.new("05", "A")
      @ev.pop
    when 6
      @ev = Ev008.new("06", "B")
      @ev.pop
    when 7
      @ev = Ev008.new("07", "B")
      @ev.pop
    end
  end

  def ev009_pop
    case @cg_num
    when 1
      @ev = Ev009.new("A01", "A", "A")
      @ev.pop
    when 2
      @ev = Ev009.new("A02", "A", "A")
      @ev.pop
    when 3
      @ev = Ev009.new("A03", "B", "A")
      @ev.pop
    when 4
      @ev = Ev009.new("A04", "B", "A")
      @ev.pop
    when 5
      @ev = Ev009.new("A05", "B", "A")
      @ev.pop
    when 6
      @ev = Ev009.new("A06", "C", "A")
      @ev.pop
    when 7
      @ev = Ev009.new("B01", "D", "A")
      @ev.pop
    when 8
      @ev = Ev009.new("B02", "D", "A")
      @ev.pop
    when 9
      @ev = Ev009.new("B03", "D", "A")
      @ev.pop
    when 10
      @ev = Ev009.new("B06", "E", "A")
      @ev.pop
    when 11
      @ev = Ev009.new("B07", "E", "A")
      @ev.pop
    when 12
      @ev = Ev009.new("B08", "F", "A")
      @ev.pop
    when 13
      @ev = Ev009.new("B09", "F", "A")
      @ev.pop
    end
  end

  def ev010_pop
    case @cg_num
    when 1
      @ev = Ev010.new("01", "A")
      @ev.pop
    when 2
      @ev = Ev010.new("02", "A")
      @ev.pop
    when 3
      @ev = Ev010.new("03", "A")
      @ev.pop
    when 4
      @ev = Ev010.new("04", "A")
      @ev.pop
    when 5
      @ev = Ev010.new("05", "A")
      @ev.pop
    when 6
      @ev = Ev010.new("06", "B")
      @ev.pop
    when 7
      @ev = Ev010.new("07", "B")
      @ev.pop
    end
  end

  def ev011_pop
    case @cg_num
    when 1
      @ev = Ev011.new("01", "A")
      @ev.pop
    when 2
      @ev = Ev011.new("02", "A")
      @ev.pop
    when 3
      @ev = Ev011.new("03", "A")
      @ev.pop
    when 4
      @ev = Ev011.new("04", "A")
      @ev.pop
    when 5
      @ev = Ev011.new("05", "A")
      @ev.pop
    when 6
      @ev = Ev011.new("06", "B")
      @ev.pop
    when 7
      @ev = Ev011.new("07", "B")
      @ev.pop
    end
  end

  def ev012_pop
    case @cg_num
    when 1
      @ev = Ev012.new("A01", "A")
      @ev.pop
    when 2
      @ev = Ev012.new("A02", "A")
      @ev.pop
    when 3
      @ev = Ev012.new("A06", "B")
      @ev.pop
    when 4
      @ev = Ev012.new("B01", "C")
      @ev.pop
    when 5
      @ev = Ev012.new("B02", "C")
      @ev.pop
    when 6
      @ev = Ev012.new("B06", "D")
      @ev.pop
    end
  end

  def ev013_pop
    case @cg_num
    when 1
      @ev = Ev013.new("A01", "A")
      @ev.pop
    when 2
      @ev = Ev013.new("A02", "B")
      @ev.pop
    when 3
      @ev = Ev013.new("A03", "C")
      @ev.pop
    when 4
      @ev = Ev013.new("A04", "D")
      @ev.pop
    when 5
      @ev = Ev013.new("A05", "D")
      @ev.pop
    when 6
      @ev = Ev013.new("A06", "E")
      @ev.pop
    when 7
      @ev = Ev013.new("A07", "F")
      @ev.pop
    end
  end

  def ev014_pop
    case @cg_num
    when 1
      @ev = Ev014.new("B01", "A")
      @ev.pop
    when 2
      @ev = Ev014.new("B02", "A")
      @ev.pop
    when 3
      @ev = Ev014.new("B03", "A")
      @ev.pop
    when 4
      @ev = Ev014.new("B04", "A")
      @ev.pop
    when 5
      @ev = Ev014.new("B05", "B")
      @ev.pop
    when 6
      @ev = Ev014.new("B06", "B")
      @ev.pop
    when 7
      @ev = Ev014.new("C01", "C")
      @ev.pop
    when 8
      @ev = Ev014.new("C02", "C")
      @ev.pop
    when 9
      @ev = Ev014.new("C03", "D")
      @ev.pop
    when 10
      @ev = Ev014.new("C04", "D")
      @ev.pop
    end
  end

  def ev015_pop
    case @cg_num
    when 1
      @ev = Ev015.new("A01")
      @ev.pop
    when 2
      @ev = Ev015.new("B01")
      @ev.pop
    when 3
      @ev = Ev015.new("B02")
      @ev.pop
    when 4
      @ev = Ev015.new("B03")
      @ev.pop
    when 5
      @ev = Ev015.new("C01")
      @ev.pop
    when 6
      @ev = Ev015.new("C02")
      @ev.pop
    when 7
      @ev = Ev015.new("C03")
      @ev.pop
    when 8
      @ev = Ev015.new("D02")
      @ev.pop
    when 9
      @ev = Ev015.new("D03")
      @ev.pop
    when 10
      @ev = Ev015.new("D04")
      @ev.pop
    end
  end

  def ev016_pop
    case @cg_num
    when 1
      @ev = Ev016.new("B01")
      @ev.pop
    when 2
      @ev = Ev016.new("B02")
      @ev.pop
    when 3
      @ev = Ev016.new("B03")
      @ev.pop
    when 4
      @ev = Ev016.new("C01")
      @ev.pop
    when 5
      @ev = Ev016.new("C02")
      @ev.pop
    when 6
      @ev = Ev016.new("C03")
      @ev.pop
    when 7
      @ev = Ev016.new("D02")
      @ev.pop
    when 8
      @ev = Ev016.new("D03")
      @ev.pop
    when 9
      @ev = Ev016.new("D04")
      @ev.pop
    end
  end

  def ev017_pop
    case @cg_num
    when 1
      @ev = Ev017.new("A01", "A")
      @ev.pop
    when 2
      @ev = Ev017.new("A02", "B")
      @ev.pop
    when 3
      @ev = Ev017.new("A03", "C")
      @ev.pop
    when 4
      @ev = Ev017.new("B01", "D")
      @ev.pop
    when 5
      @ev = Ev017.new("B02", "E")
      @ev.pop
    when 6
      @ev = Ev017.new("B03", "F")
      @ev.pop
    when 7
      @ev = Ev017.new("B04", "G")
      @ev.pop
    when 8
      @ev = Ev017.new("B05", "H")
      @ev.pop
    when 9
      @ev = Ev017.new("C03", "I")
      @ev.pop
    end
  end

  def ev018_pop
    case @cg_num
    when 1
      @ev = Ev018.new("01", "A")
      @ev.pop
    when 2
      @ev = Ev018.new("02", "B")
      @ev.pop
    when 3
      @ev = Ev018.new("03", "B")
      @ev.pop
    when 4
      @ev = Ev018.new("04", "C")
      @ev.pop
    when 5
      @ev = Ev018.new("05", "C")
      @ev.pop
    when 6
      @ev = Ev018.new("06", "D")
      @ev.pop
    when 7
      @ev = Ev018.new("07", "E")
      @ev.pop
    end
  end

  def ev019_pop
    case @cg_num
    when 1
      @ev = Ev019.new("A01", "A")
      @ev.pop
    when 2
      @ev = Ev019.new("A02", "A")
      @ev.pop
    when 3
      @ev = Ev019.new("A03", "A")
      @ev.pop
    when 4
      @ev = Ev019.new("B04", "A")
      @ev.pop
    when 5
      @ev = Ev019.new("B05", "A")
      @ev.pop
    when 6
      @ev = Ev019.new("C01", "A")
      @ev.pop
    when 7
      @ev = Ev019.new("C02", "A")
      @ev.pop
    end
  end

  def ev020_pop
    case @cg_num
    when 1
      @ev = Ev020.new("A01", "A", "C")
      @ev.pop
    when 2
      @ev = Ev020.new("A02", "B", "C")
      @ev.pop
    when 3
      @ev = Ev020.new("B03", "C", "C")
      @ev.pop
    when 4
      @ev = Ev020.new("B01", "D", "C")
      @ev.pop
    when 5
      @ev = Ev020.new("B02", "E", "C")
      @ev.pop
    when 6
      @ev = Ev020.new("B03", "F", "C")
      @ev.pop
    when 7
      @ev = Ev020.new("B04", "G", "C")
      @ev.pop
    when 8
      @ev = Ev020.new("B05", "G", "C")
      @ev.pop
    when 9
      @ev = Ev020.new("B06", "H", "C")
      @ev.pop
    when 10
      @ev = Ev020.new("B07", "H", "C")
      @ev.pop
    end
  end

  def ev021_pop
    case @cg_num
    when 1
      @ev = Ev021.new("A01")
      @ev.pop
    when 2
      @ev = Ev021.new("A02")
      @ev.pop
    when 3
      @ev = Ev021.new("B02")
      @ev.pop
    when 4
      @ev = Ev021.new("C03")
      @ev.pop
    when 5
      @ev = Ev021.new("C04")
      @ev.pop
    when 6
      @ev = Ev021.new("C05")
      @ev.pop
    when 7
      @ev = Ev021.new("D01")
      @ev.pop
    end
  end

  def ev022_pop
    case @cg_num
    when 1
      @ev = Ev022.new("01", "A")
      @ev.pop
    when 2
      @ev = Ev022.new("02", "A")
      @ev.pop
    when 3
      @ev = Ev022.new("03", "A")
      @ev.pop
    when 4
      @ev = Ev022.new("04", "B")
      @ev.pop
    when 5
      @ev = Ev022.new("05", "B")
      @ev.pop
    when 6
      @ev = Ev022.new("06", "C")
      @ev.pop
    when 7
      @ev = Ev022.new("07", "C")
      @ev.pop
    end
  end

  def ev023_pop
    case @cg_num
    when 1
      @ev = Ev023.new("A01")
      @ev.pop
    when 2
      @ev = Ev023.new("A02")
      @ev.pop
    when 3
      @ev = Ev023.new("B03")
      @ev.pop
    when 4
      @ev = Ev023.new("B05")
      @ev.pop
    when 5
      @ev = Ev023.new("C01")
      @ev.pop
    when 6
      @ev = Ev023.new("C02")
      @ev.pop
    when 7
      @ev = Ev023.new("C05")
      @ev.pop
    end
  end

  def ev024_pop
    case @cg_num
    when 1
      @ev = Ev024.new("A01", "A")
      @ev.pop
    when 2
      @ev = Ev024.new("A02", "A")
      @ev.pop
    when 3
      @ev = Ev024.new("A03", "A")
      @ev.pop
    when 4
      @ev = Ev024.new("A04", "A")
      @ev.pop
    when 5
      @ev = Ev024.new("A05", "A")
      @ev.pop
    when 6
      @ev = Ev024.new("A06", "B")
      @ev.pop
    when 7
      @ev = Ev024.new("A07", "B")
      @ev.pop
    end
  end

  def ev025_pop
    case @cg_num
    when 1
      @ev = Ev025.new("01", "A")
      @ev.pop
    when 2
      @ev = Ev025.new("02", "A")
      @ev.pop
    when 3
      @ev = Ev025.new("03", "B")
      @ev.pop
    when 4
      @ev = Ev025.new("04", "C")
      @ev.pop
    when 5
      @ev = Ev025.new("05", "C")
      @ev.pop
    when 6
      @ev = Ev025.new("06", "D")
      @ev.pop
    when 7
      @ev = Ev025.new("07", "D")
      @ev.pop
    end
  end

  def ev026_pop
    case @cg_num
    when 1
      @ev = Ev026.new("01", "A")
      @ev.pop
    when 2
      @ev = Ev026.new("02", "A")
      @ev.pop
    when 3
      @ev = Ev026.new("03", "B")
      @ev.pop
    when 4
      @ev = Ev026.new("04", "B")
      @ev.pop
    when 5
      @ev = Ev026.new("05", "B")
      @ev.pop
    when 6
      @ev = Ev026.new("06", "C")
      @ev.pop
    when 7
      @ev = Ev026.new("07", "C")
      @ev.pop
    end
  end

  def ev027_pop
    case @cg_num
    when 1
      @ev = Ev027.new("01", "A")
      @ev.pop
    when 2
      @ev = Ev027.new("02", "A")
      @ev.pop
    when 3
      @ev = Ev027.new("03", "A")
      @ev.pop
    when 4
      @ev = Ev027.new("04", "A")
      @ev.pop
    when 5
      @ev = Ev027.new("05", "A")
      @ev.pop
    when 6
      @ev = Ev027.new("06", "B")
      @ev.pop
    when 7
      @ev = Ev027.new("07", "B")
      @ev.pop
    end
  end
  #--------------------------------------------------------------------------
  # ● アニメ処理
  #--------------------------------------------------------------------------
  def anime_update
    if $game_switches[11] == true
      $bust.blink    #まばたき
      $bust.kiss     #キス
      $bust.massage  #乳もみ
      $bust.shake    #乳揺れ
      $bust.shower_anime #シャワー
      $bust.shower_shake #シャワーで乳揺れ
    elsif $game_switches[12] == true
      $kiss.kiss     #キス
    end
  end

end
