#==============================================================================
# ** Scene_Battle (part 4)
#------------------------------------------------------------------------------
#  This class performs battle screen processing.
#==============================================================================

class Scene_Battle
  #--------------------------------------------------------------------------
  # @p_str = @player.str  #プレイヤーの腕力
  # @p_dex = @player.dex  #プレイヤーの器用さ
  # @p_def = @player.int  #プレイヤーの守り
  # @p_agi = @player.agi  #プレイヤーの素早さ
  # @p_atk = @player.atk  #プレイヤーの武器攻撃力
  # @p_grd = @player.pdef #プレイヤーの防具守備力
  # @e_str = @enemy.str   #エネミーの腕力
  # @e_dex = @enemy.dex   #エネミーの器用さ
  # @e_def = @enemy.int   #エネミーの守り
  # @e_agi = @enemy.agi   #エネミーの素早さ
  # @e_atk = @enemy.atk   #エネミーの武器攻撃力
  # @e_grd = @enemy.pdef  #エネミーの防具守備力
  #--------------------------------------------------------------------------
  #--------------------------------------------------------------------------
  # ● 命中計算処理
  #--------------------------------------------------------------------------
  def hit #命中率
    @p_dex_plus = @p_dex + p_dex_bonus #器用さボーナス

    a = 100.0 / (@p_dex_plus + @e_agi_plus)
    b = @p_dex_plus * a
    if @p_dex_plus > @e_agi_plus  #プレイヤーの器用さがエネミーの素早さよりも上ならば
      case @commandB_index
      when 1  #攻撃
        b = b + hit_bonus #命中率ボーナス
      when 2  #閃光斬り
        b = b + hit_bonus #命中率ボーナス
        b = b - 15
      end
    end

    b = b.round #四捨五入

    if $game_switches[22] == true #手ブラ
      b = b - 5
    end

    if b > 99 #命中率が100以上ならば
      b = 100
    elsif b < 0 #命中率が0より下ならば
      b = 0
    end

    return b
  end
  def p_dex_bonus #器用さボーナス
    case @commandB_index
    when 1  #攻撃
      a = @ap_cost_dex_attack
    when 2  #閃光斬り
      a = @ap_cost_dex_flash
      a = a / 2
    end
    case a
    when 0  # +0
      return 0
    when 1  # +7
      return 7
    when 2  # +5
      return 12
    when 3  # +4
      return 16
    when 4  # +3
      return 19
    when 5  # +3
      return 22
    when 6  # +3
      return 25
    when 7  # +2
      return 27
    when 8  # +2
      return 29
    when 9  # +2
      return 31
    end
  end
  def hit_bonus #命中率ボーナス
    case @commandB_index
    when 1  #攻撃
      a = @ap_cost_dex_attack
    when 2  #閃光斬り
      a = @ap_cost_dex_flash
      a = a / 2
    end
    case a
    when 0
      return 30
    when 1
      return 30
    when 2
      return 28
    when 3
      return 26
    when 4
      return 26
    when 5
      return 26
    when 6
      return 26
    when 7
      return 26
    when 8
      return 26
    when 9
      return 26
    end
  end
  #--------------------------------------------------------------------------
  # ● 与ダメージ計算処理
  #--------------------------------------------------------------------------
  def enemy_damage  #与ダメージ
    @p_str_plus = @p_str * p_str_bonus #腕力ボーナス

    a = (@p_str_plus - @e_def_plus) * 1.2
    b = a + (@p_atk - @e_grd)
    if @p_str_plus > @e_def_plus  #プレイヤーの腕力がエネミーの守りよりも上ならば
      if enemy_damage_bonus > 0 #ボーナスが0以上ならば
        case @commandB_index
        when 1  #攻撃
          b = b + enemy_damage_bonus #与ダメージボーナス
        when 2  #閃光斬り
          b = b + enemy_damage_bonus #与ダメージボーナス
          b = b * 3
        end
      end
    end

    b = b.round #四捨五入

    if b > 999 #与ダメージが1000以上ならば
      b = 999
    elsif b < 0 #与ダメージが0より下ならば
      b = 0
    end

    return b
  end
  def p_str_bonus #腕力ボーナス
    case @commandB_index
    when 1  #攻撃
      a = @ap_cost_str_attack
    when 2  #閃光斬り
      a = @ap_cost_str_flash
      a = a / 2
    end
    case a
    when 0  #
      return 1.0
    when 1  #
      return 1.2
    when 2  #
      return 1.4
    when 3  #
      return 1.6
    when 4  #
      return 1.8
    when 5  #
      return 2.0
    when 6  #
      return 2.2
    when 7  #
      return 2.4
    when 8  #
      return 2.6
    when 9  #
      return 2.8
    end
  end
  def enemy_damage_bonus #与ダメージボーナス
    case @commandB_index
    when 1  #攻撃
      a = @ap_cost_str_attack
    when 2  #閃光斬り
      a = @ap_cost_str_flash
      a = a / 2
    end
    case a
    when 0
      return ((@p_atk * 1.0) - (@e_grd)) * 2
    when 1
      return ((@p_atk * 1.1) - (@e_grd)) * 2
    when 2
      return ((@p_atk * 1.2) - (@e_grd)) * 2
    when 3
      return ((@p_atk * 1.3) - (@e_grd)) * 2
    when 4
      return ((@p_atk * 1.4) - (@e_grd)) * 2
    when 5
      return ((@p_atk * 1.5) - (@e_grd)) * 2
    when 6
      return ((@p_atk * 1.6) - (@e_grd)) * 2
    when 7
      return ((@p_atk * 1.7) - (@e_grd)) * 2.3
    when 8
      return ((@p_atk * 1.8) - (@e_grd)) * 2.6
    when 9
      return ((@p_atk * 1.9) - (@e_grd)) * 2.9
    end
  end
  #--------------------------------------------------------------------------
  # ● 回避計算処理
  #--------------------------------------------------------------------------
  def avoid #回避率
    @p_agi_plus = @p_agi + p_agi_bonus #素早さボーナス

    a = 100.0 / (@p_agi_plus + @e_dex_plus)
    b = @p_agi_plus * a
    if @p_agi_plus > @e_dex_plus  #プレイヤーの素早さがエネミーの器用さよりも上ならば
      case @commandB_index
      when 1  #攻撃
        b = b + avoid_bonus #回避率ボーナス
      when 2  #閃光斬り
        b = b + avoid_bonus #回避率ボーナス
        b = b - 15
      end
    end

    b = b.round #四捨五入

    if b > 99 #回避率が100以上ならば
      b = 100
    elsif b < 0 #回避率が0より下ならば
      b = 0
    end

    return b
  end
  def p_agi_bonus #素早さボーナス
    case @commandB_index
    when 1  #攻撃
      a = @ap_cost_agi_attack
    when 2  #閃光斬り
      a = @ap_cost_agi_flash
      a = a / 2
    end
    case a
    when 0  # +0
      return 0
    when 1  # +7
      return 7
    when 2  # +5
      return 12
    when 3  # +4
      return 16
    when 4  # +3
      return 19
    when 5  # +3
      return 22
    when 6  # +3
      return 25
    when 7  # +2
      return 27
    when 8  # +2
      return 29
    when 9  # +2
      return 31
    end
  end
  def avoid_bonus #回避率ボーナス
    case @commandB_index
    when 1  #攻撃
      a = @ap_cost_agi_attack
    when 2  #閃光斬り
      a = @ap_cost_agi_flash
      a = a / 2
    end
    case a
    when 0
      return 30
    when 1
      return 30
    when 2
      return 28
    when 3
      return 26
    when 4
      return 26
    when 5
      return 26
    when 6
      return 26
    when 7
      return 26
    when 8
      return 26
    when 9
      return 26
    end
  end
  #--------------------------------------------------------------------------
  # ● 被ダメージ計算処理
  #--------------------------------------------------------------------------
  def player_damage  #被ダメージ
    @p_def_plus = @p_def * p_def_bonus #守りボーナス

    a = (@e_str_plus - @p_def_plus) * 1.2
    b = a + (@e_atk - @p_grd)
    if @e_str_plus > @p_def_plus #エネミーの腕力がプレイヤーの守りよりも上ならば
      if player_damage_bonus > 0 #ボーナスが0以上ならば
        case @commandB_index
        when 1  #攻撃
          b = b + player_damage_bonus #被ダメージボーナス
        when 2  #閃光斬り
          b = b + player_damage_bonus #被ダメージボーナス
          b = b * 3
        end
      end
    end

    b = b.round #四捨五入

    if b > 999 #被ダメージが1000以上ならば
      b = 999
    elsif b < 0 #被ダメージが0より下ならば
      b = 0
    end

    return b
  end
  def p_def_bonus #守りボーナス
    case @commandB_index
    when 1  #攻撃
      a = @ap_cost_def_attack
    when 2  #閃光斬り
      a = @ap_cost_def_flash
      a = a / 2
    end
    case a
    when 0  #
      return 1.0
    when 1  #
      return 1.2
    when 2  #
      return 1.4
    when 3  #
      return 1.6
    when 4  #
      return 1.8
    when 5  #
      return 2.0
    when 6  #
      return 2.2
    when 7  #
      return 2.4
    when 8  #
      return 2.6
    when 9  #
      return 2.8
    end
  end
  def player_damage_bonus #被ダメージボーナス
    case @commandB_index
      when 1  #攻撃
        a = @ap_cost_def_attack
      when 2  #閃光斬り
        a = @ap_cost_def_flash
        a = a / 2
    end
    case a
    when 0
      return ((@e_atk) - (@p_grd * 1.0)) * 2
    when 1
      return ((@e_atk) - (@p_grd * 1.1)) * 2
    when 2
      return ((@e_atk) - (@p_grd * 1.2)) * 2
    when 3
      return ((@e_atk) - (@p_grd * 1.3)) * 2
    when 4
      return ((@e_atk) - (@p_grd * 1.4)) * 2
    when 5
      return ((@e_atk) - (@p_grd * 1.5)) * 2
    when 6
      return ((@e_atk) - (@p_grd * 1.6)) * 2
    when 7
      return ((@e_atk) - (@p_grd * 1.7)) * 2.3
    when 8
      return ((@e_atk) - (@p_grd * 1.8)) * 2.6
    when 9
      return ((@e_atk) - (@p_grd * 1.9)) * 2.9
    end
  end
  #--------------------------------------------------------------------------
  # ● エネミーのAPの加算
  #--------------------------------------------------------------------------
  def enemy_ap_plus #エネミーのAPを加算する
    case @ap_cost_dex_enemy #エネミーの器用さ消費AP
    when 0
      @e_dex_plus = @e_dex + 0
    when 1
      @e_dex_plus = @e_dex + 7
    when 2
      @e_dex_plus = @e_dex + 12
    when 3
      @e_dex_plus = @e_dex + 16
    when 4
      @e_dex_plus = @e_dex + 19
    when 5
      @e_dex_plus = @e_dex + 22
    when 6
      @e_dex_plus = @e_dex + 25
    when 7
      @e_dex_plus = @e_dex + 27
    when 8
      @e_dex_plus = @e_dex + 29
    when 9
      @e_dex_plus = @e_dex + 31
    end

    case @ap_cost_str_enemy #エネミーの腕力消費AP
    when 0
      @e_str_plus = @e_str * 1.0
    when 1
      @e_str_plus = @e_str * 1.2
    when 2
      @e_str_plus = @e_str * 1.4
    when 3
      @e_str_plus = @e_str * 1.6
    when 4
      @e_str_plus = @e_str * 1.8
    when 5
      @e_str_plus = @e_str * 2.0
    when 6
      @e_str_plus = @e_str * 2.2
    when 7
      @e_str_plus = @e_str * 2.4
    when 8
      @e_str_plus = @e_str * 2.6
    when 9
      @e_str_plus = @e_str * 2.8
    end

    case @ap_cost_agi_enemy #エネミーの素早さ消費AP
    when 0
      @e_agi_plus = @e_agi + 0
    when 1
      @e_agi_plus = @e_agi + 7
    when 2
      @e_agi_plus = @e_agi + 12
    when 3
      @e_agi_plus = @e_agi + 16
    when 4
      @e_agi_plus = @e_agi + 19
    when 5
      @e_agi_plus = @e_agi + 22
    when 6
      @e_agi_plus = @e_agi + 25
    when 7
      @e_agi_plus = @e_agi + 27
    when 8
      @e_agi_plus = @e_agi + 29
    when 9
      @e_agi_plus = @e_agi + 31
    end

    case @ap_cost_def_enemy #エネミーの守り消費AP
    when 0
      @e_def_plus = @e_def * 1.0
    when 1
      @e_def_plus = @e_def * 1.2
    when 2
      @e_def_plus = @e_def * 1.4
    when 3
      @e_def_plus = @e_def * 1.6
    when 4
      @e_def_plus = @e_def * 1.8
    when 5
      @e_def_plus = @e_def * 2.0
    when 6
      @e_def_plus = @e_def * 2.2
    when 7
      @e_def_plus = @e_def * 2.4
    when 8
      @e_def_plus = @e_def * 2.6
    when 9
      @e_def_plus = @e_def * 2.8
    end
  end
  #--------------------------------------------------------------------------
  # ● パラメータの更新
  #--------------------------------------------------------------------------
  def parameter_refresh #パラメータの更新
    num_parameter_clear #パラメータの消去

    enemy_ap_plus #エネミーのAPを加算する

    @hit = hit  #命中率
    @enemy_damage = enemy_damage  #与ダメージ
    @avoid = avoid #回避率
    @player_damage = player_damage  #被ダメージ

    num_hit #命中率
    num_enemy_damage  #与ダメージ
    num_avoid #回避率
    num_player_damage  #被ダメージ
  end

  def ap_refresh #apの更新
    @num_player_ap_keta1.dispose if @num_player_ap_keta1 != nil #プレイヤーのAP
    @num_player_ap_keta2.dispose if @num_player_ap_keta2 != nil
    @num_player_ap_keta3.dispose if @num_player_ap_keta3 != nil
    @num_player_ap_keta4.dispose if @num_player_ap_keta4 != nil
    @num_player_vit_keta1.dispose if @num_player_vit_keta1 != nil #プレイヤーのVIT
    @num_player_vit_keta2.dispose if @num_player_vit_keta2 != nil
    @num_player_vit_keta3.dispose if @num_player_vit_keta3 != nil
    @num_player_vit_keta4.dispose if @num_player_vit_keta4 != nil

    num_player_ap  #プレイヤーのAP
    num_player_vit  #プレイヤーのVIT

    @num_enemy_ap_keta1.dispose if @num_enemy_ap_keta1 != nil #エネミーのAP
    @num_enemy_ap_keta2.dispose if @num_enemy_ap_keta2 != nil
    @num_enemy_ap_keta3.dispose if @num_enemy_ap_keta3 != nil
    @num_enemy_ap_keta4.dispose if @num_enemy_ap_keta4 != nil
    @num_enemy_vit_keta1.dispose if @num_enemy_vit_keta1 != nil #エネミーのVIT
    @num_enemy_vit_keta2.dispose if @num_enemy_vit_keta2 != nil
    @num_enemy_vit_keta3.dispose if @num_enemy_vit_keta3 != nil
    @num_enemy_vit_keta4.dispose if @num_enemy_vit_keta4 != nil

    num_enemy_ap  #エネミーのAP
    num_enemy_vit  #エネミーのVIT
  end

end
