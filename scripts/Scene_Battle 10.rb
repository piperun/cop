#==============================================================================
# ■ Scene_Battle (分割定義 10)
#------------------------------------------------------------------------------
# 　バトル画面の処理を行うクラスです。
#==============================================================================

class Scene_Battle
  #--------------------------------------------------------------------------
  # ● エネミーのデータベース
  #--------------------------------------------------------------------------
  #--------------------------------------------------------------------------
  # @ap_cost_dex_enemy = 0 #エネミーの器用さ消費AP
  # @ap_cost_str_enemy = 0 #エネミーの腕力消費AP
  # @ap_cost_agi_enemy = 0 #エネミーの素早さ消費AP
  # @ap_cost_def_enemy = 0 #エネミーの守り消費AP
  # @ap_cost_enemy = 0     #エネミーの消費AP合計
  #--------------------------------------------------------------------------
  def routine_typeA( a, b, c, d) # Aタイプ
    @ap_cost_dex_enemy = a #エネミーの器用さ消費AP
    @ap_cost_str_enemy = b #エネミーの腕力消費AP
    @ap_cost_agi_enemy = c #エネミーの素早さ消費AP
    @ap_cost_def_enemy = d #エネミーの守り消費AP

    ap_cost_enemy #エネミーの消費AP合計
    ap_enemy_reduce #エネミーの追加APポイントの減少
  end

  def routine_typeB( a, b, c, d, e, f, g, h) #  Bタイプ
    if dice(2) == 1
      @ap_cost_dex_enemy = a #エネミーの器用さ消費AP
      @ap_cost_str_enemy = b #エネミーの腕力消費AP
      @ap_cost_agi_enemy = c #エネミーの素早さ消費AP
      @ap_cost_def_enemy = d #エネミーの守り消費AP
    else
      @ap_cost_dex_enemy = e #エネミーの器用さ消費AP
      @ap_cost_str_enemy = f #エネミーの腕力消費AP
      @ap_cost_agi_enemy = g #エネミーの素早さ消費AP
      @ap_cost_def_enemy = h #エネミーの守り消費AP
    end
    ap_cost_enemy #エネミーの消費AP合計
    ap_enemy_reduce #エネミーの追加APポイントの減少
  end

  def routine_type_enemy_damageA( a, b, c, d, e) # エネミーダメに反応する
    if @enemy_damage >= e #e以上のダメージだと
      @ap_cost_dex_enemy = a #エネミーの器用さ消費AP
      @ap_cost_str_enemy = b #エネミーの腕力消費AP
      @ap_cost_agi_enemy = c #エネミーの素早さ消費AP
      @ap_cost_def_enemy = d #エネミーの守り消費AP
    end
    ap_cost_enemy #エネミーの消費AP合計
    ap_enemy_reduce #エネミーの追加APポイントの減少
  end

  def routine_type_enemy_damageB( a, b, c, d, e) # エネミーダメに反応する
    if @enemy_damage <= e #e以下のダメージだと
      @ap_cost_dex_enemy = a #エネミーの器用さ消費AP
      @ap_cost_str_enemy = b #エネミーの腕力消費AP
      @ap_cost_agi_enemy = c #エネミーの素早さ消費AP
      @ap_cost_def_enemy = d #エネミーの守り消費AP
    end
    ap_cost_enemy #エネミーの消費AP合計
    ap_enemy_reduce #エネミーの追加APポイントの減少
  end

  def routine_type_hitA( a, b, c, d, e) # 命中率に反応する
    if @hit >= e #e以上の命中率だと
      @ap_cost_dex_enemy = a #エネミーの器用さ消費AP
      @ap_cost_str_enemy = b #エネミーの腕力消費AP
      @ap_cost_agi_enemy = c #エネミーの素早さ消費AP
      @ap_cost_def_enemy = d #エネミーの守り消費AP
    end
    ap_cost_enemy #エネミーの消費AP合計
    ap_enemy_reduce #エネミーの追加APポイントの減少
  end

  def routine_type_hitB( a, b, c, d, e) # 命中率に反応する
    if @hit <= e #e以下の命中率だと
      @ap_cost_dex_enemy = a #エネミーの器用さ消費AP
      @ap_cost_str_enemy = b #エネミーの腕力消費AP
      @ap_cost_agi_enemy = c #エネミーの素早さ消費AP
      @ap_cost_def_enemy = d #エネミーの守り消費AP
    end
    ap_cost_enemy #エネミーの消費AP合計
    ap_enemy_reduce #エネミーの追加APポイントの減少
  end

  def routine_random( a) # 乱数タイプ
    @ap_cost_dex_enemy = 9 #エネミーの器用さ消費AP
    @ap_cost_str_enemy = 9 #エネミーの腕力消費AP
    @ap_cost_agi_enemy = 9 #エネミーの素早さ消費AP
    @ap_cost_def_enemy = 9 #エネミーの守り消費AP

    a = 36 - a
    i = 0
    loop do
      case dice(4)
      when 1
        if @ap_cost_dex_enemy > 0
          @ap_cost_dex_enemy -= 1
          i += 1
        end
      when 2
        if @ap_cost_str_enemy > 0
          @ap_cost_str_enemy -= 1
          i += 1
        end
      when 3
        if @ap_cost_agi_enemy > 0
          @ap_cost_agi_enemy -= 1
          i += 1
        end
      when 4
        if @ap_cost_def_enemy > 0
          @ap_cost_def_enemy -= 1
          i += 1
        end
      end
      if i == a
        break
      end
    end

    ap_cost_enemy #エネミーの消費AP合計
    ap_enemy_reduce #エネミーの追加APポイントの減少
  end

end
