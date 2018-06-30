#==============================================================================
# ■ Scene_Battle (分割定義 11)
#------------------------------------------------------------------------------
# 　バトル画面の処理を行うクラスです。
#==============================================================================

class Scene_Battle
  #--------------------------------------------------------------------------
  # ● テストウインドウ
  #--------------------------------------------------------------------------
  def test_window
    @test_window = Window_Base.new(100, 10, 200, 200)
    width = @test_window.width
    height = @test_window.height
    @test_window.contents = Bitmap.new(width - 32, height - 32)
    @test_window.contents.font.size = 10
  end

  def test_window_refresh #テストウインドウの更新
    @test_window.dispose if @test_window != nil
    test_window

    case @commandB_index
    when 1  #攻撃
      case @attack_command_index
      when 1  #腕力

      when 2  #器用さ

      when 3  #守り

      when 4  #素早さ

      end
    when 2  #閃光斬り
      case @flash_command_index
      when 1  #腕力

      when 2  #器用さ

      when 3  #守り

      when 4  #素早さ

      end
    end
  end

end
