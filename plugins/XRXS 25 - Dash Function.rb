# ▼▲▼ XRXS25. ダッシュ機能 ver.2 ▼▲▼
# by 桜雅 在土 (基本、再改訂)
#    Tetra-Z   (改訂原案)

#==============================================================================
# □ カスタマイズポイント
#==============================================================================
module XRXS_Dash
  #
  # ダッシュ時の速度増加量
  #
  PLUSPEED = -0.8
  #
  # ダッシュボタン
  #
  BUTTON = Input::B
end
#==============================================================================
# ■ Game_Player
#==============================================================================
class Game_Player < Game_Character
  #--------------------------------------------------------------------------
  # ● フレーム更新
  #--------------------------------------------------------------------------
  alias xrxs25_update update
  def update
    # 例外補正
    if @move_speed_arcadia == nil
      @move_speed_arcadia = @move_speed
    end
      def character_name
    filename = super
      case $game_variables[3]
        when 1
          @character_name = "pl_walking01"
        when 2
          @character_name = "pl_walking02"
        when 3
          @character_name = "pl_walking03"
        when 4
          @character_name = "pl_walking04"
        when 5
          @character_name = "pl_walking05"
        when 6
          @character_name = "pl_walking06"
        when 7
          @character_name = "pl_walking07"
        when 8
          @character_name = "pl_walking08"
        when 11
          @character_name = "pl_walking01"
        when 12
          @character_name = "pl_walking02"
        when 13
          @character_name = "pl_walking03"
        when 14
          @character_name = "pl_walking04"
        end
    return filename
    end
    # 移動中、イベント実行中、移動ルート強制中、
    # メッセージウィンドウ表示中、
    # ダッシュボタン挿下中、のいずれでもない場合
    unless moving? or $game_temp.message_window_showing
      # 速度の変更
      if Input.press?(XRXS_Dash::BUTTON) or $game_switches[5] == true
        case $game_variables[3]
        when 1
          @character_name = "pl_walking01"
        when 2
          @character_name = "pl_walking02"
        when 3
          @character_name = "pl_walking03"
        when 4
          @character_name = "pl_walking04"
        when 5
          @character_name = "pl_walking05"
        when 6
          @character_name = "pl_walking06"
        when 7
          @character_name = "pl_walking07"
        when 8
          @character_name = "pl_walking08"
        when 11
          @character_name = "pl_walking01"
        when 12
          @character_name = "pl_walking02"
        when 13
          @character_name = "pl_walking03"
        when 14
          @character_name = "pl_walking04"
        end

        @move_speed = @move_speed_arcadia + XRXS_Dash::PLUSPEED
        if $game_switches[5] == true

        elsif Input.dir4 == 0
          unless $game_system.map_interpreter.running?
            case @direction
            when 2
              move_down
            when 4
              move_left
            when 6
              move_right
            when 8
              move_up
            end
          end
        end
      else
        case $game_variables[3]
        when 1
          @character_name = "pl_walking01"
        when 2
          @character_name = "pl_walking02"
        when 3
          @character_name = "pl_walking03"
        when 4
          @character_name = "pl_walking04"
        when 5
          @character_name = "pl_walking05"
        when 6
          @character_name = "pl_walking06"
        when 7
          @character_name = "pl_walking07"
        when 8
          @character_name = "pl_walking08"
        when 11
          @character_name = "pl_walking01"
        when 12
          @character_name = "pl_walking02"
        when 13
          @character_name = "pl_walking03"
        when 14
          @character_name = "pl_walking04"
        end

        @move_speed = @move_speed_arcadia
      end

    end
    # 呼び戻す
    xrxs25_update
  end
  #--------------------------------------------------------------------------
  # ○ 移動タイプ : カスタム [オーバーライド]
  #--------------------------------------------------------------------------
  def move_type_custom
    # 例外補正
    if @move_speed_arcadia == nil
      @move_speed_arcadia = @move_speed
    end
    # 標準速度に戻す
    @move_speed = @move_speed_arcadia
    # 呼び戻す
    super
    # 速度の保存
    @move_speed_arcadia = @move_speed
  end
end
