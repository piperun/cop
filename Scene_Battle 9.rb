#==============================================================================
# ■ Scene_Battle (分割定義 9)
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
  def enemy_data(type)
    case @enemy.id
    when 1  #Giant Bee
      if type == 1
        @enemy_level = 6 #エネミーのLV
        @enemy_maxap = 12 #エネミーの最大AP
        @enemy_ap = 12 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 4  #打撃音
        enemy_name("001") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 1, 1, 0, 0) #Aタイプ
      end

    when 2  #Kerberos
      if type == 1
        @enemy_level = 4 #エネミーのLV
        @enemy_maxap = 18 #エネミーの最大AP
        @enemy_ap = 18 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 5  #打撃音
        enemy_name("002") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 1, 1, 0, 0) #Aタイプ
      end

    when 3  #Devil Bat
      if type == 1
        @enemy_level = 5 #エネミーのLV
        @enemy_maxap = 25 #エネミーの最大AP
        @enemy_ap = 25 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("003") #エネミーの名前

        @enemy_pattern_change = "ON" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 1, 1, 4, 0) #Aタイプ
      elsif type == 3  #思考ルーチン二回目
        routine_typeA( 1, 1, 6, 3) #Aタイプ
      end

    when 4  #Crow
      if type == 1
        @enemy_level = 5 #エネミーのLV
        @enemy_maxap = 28 #エネミーの最大AP
        @enemy_ap = 28 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 5 #エネミーのAPが回復するターン
        @enemy_attack_se = 4  #打撃音
        enemy_name("004") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeB( 1, 5, 1, 1, 1, 1, 1, 5) #  Bタイプ
      end

    when 5  #Buffalo
      if type == 1
        @enemy_level = 11 #エネミーのLV
        @enemy_maxap = 60 #エネミーの最大AP
        @enemy_ap = 60 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 5 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #剣
        enemy_name("005") #エネミーの名前
        @enemy_lv_blind = "on"     #エネミーのレベルを隠すフラグ

        @enemy_pattern_change = "ON" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeB( 5, 4, 1, 1, 1, 1, 5, 4) #  Bタイプ
      elsif type == 3  #思考ルーチン二回目
        routine_type_enemy_damageA( 5, 4, 1, 7, 20) # エネミーダメに反応する
      end

    when 6  #Giant Rat
      if type == 1
        @enemy_level = 4 #エネミーのLV
        @enemy_maxap = 20 #エネミーの最大AP
        @enemy_ap = 20 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 5  #打撃音
        enemy_name("006") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 1, 1, 1, 1) #Aタイプ
      end

    when 7  #Tiger
      if type == 1
        @enemy_level = 15 #エネミーのLV
        @enemy_maxap = 64 #エネミーの最大AP
        @enemy_ap = 64 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 5  #蜂
        enemy_name("007") #エネミーの名前

        @enemy_pattern_change = "ON" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 3, 1, 3, 0) #Aタイプ
      elsif type == 3  #思考ルーチン二回目
        routine_typeA( 3, 5, 9, 0) #Aタイプ
      end

    when 8  #Thief
      if type == 1
        @enemy_level = 10 #エネミーのLV
        @enemy_maxap = 36 #エネミーの最大AP
        @enemy_ap = 36 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 2  #打撃音
        enemy_name("008") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_random( 9) # 乱数タイプ
      end

    when 9  #Thug
      if type == 1
        @enemy_level = 7 #エネミーのLV
        @enemy_maxap = 36 #エネミーの最大AP
        @enemy_ap = 36 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 6 #エネミーのAPが回復するターン
        @enemy_attack_se = 2  #打撃音
        enemy_name("009") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 1, 4, 1, 4) #Aタイプ
      end

    when 10  #Evil Plant
      if type == 1
        @enemy_level = 7 #エネミーのLV
        @enemy_maxap = 32 #エネミーの最大AP
        @enemy_ap = 32 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 4  #ダークギル
        enemy_name("010") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 1, 4, 1, 4) #Aタイプ
      end

    when 11  #ジャイアントラット
      if type == 1
        @enemy_level = 4 #エネミーのLV
        @enemy_maxap = 42 #エネミーの最大AP
        @enemy_ap = 42 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 5  #ジャイアントラット
        enemy_name("011") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 1, 3, 2, 2) #Aタイプ
      end

    when 12  #マッドハウンド
      if type == 1
        @enemy_level = 4 #エネミーのLV
        @enemy_maxap = 44 #エネミーの最大AP
        @enemy_ap = 44 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 6  #犬
        enemy_name("012") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_random( 9) # 乱数タイプ
      end

    when 13  #狂信者
      if type == 1
        @enemy_level = 5 #エネミーのLV
        @enemy_maxap = 68 #エネミーの最大AP
        @enemy_ap = 68 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 5 #エネミーのAPが回復するターン
        @enemy_attack_se = 2  #剣
        enemy_name("013") #エネミーの名前
        @enemy_lv_blind = "on"     #エネミーのレベルを隠すフラグ

        @enemy_pattern_change = "ON" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeB( 5, 5, 1, 1, 1, 1, 5, 5) #  Bタイプ
      elsif type == 3  #思考ルーチン二回目
        routine_type_hitA( 5, 5, 7, 1, 80) # 命中率に反応する
      end

    when 14  #フォレストスネーク
      if type == 1
        @enemy_level = 4 #エネミーのLV
        @enemy_maxap = 40 #エネミーの最大AP
        @enemy_ap = 40 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("014") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeB( 3, 4, 2, 2, 3, 2, 4, 2) #  Bタイプ
      end

    when 15  #牙イノシシ
      if type == 1
        @enemy_level = 5 #エネミーのLV
        @enemy_maxap = 48 #エネミーの最大AP
        @enemy_ap = 48 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("015") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 1, 5, 1, 5) #Aタイプ
      end

    when 16  #大ミミズ（西の森）
      if type == 1
        @enemy_level = 5 #エネミーのLV
        @enemy_maxap = 24 #エネミーの最大AP
        @enemy_ap = 24 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("016") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 2, 2, 2, 2) #Aタイプ
      end

    when 17  #ドラゴンフライ（西の森）
      if type == 1
        @enemy_level = 5 #エネミーのLV
        @enemy_maxap = 74 #エネミーの最大AP
        @enemy_ap = 74 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 99 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("017") #エネミーの名前

        @enemy_pattern_change = "ON" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 1, 1, 4, 0) #Aタイプ
      elsif type == 3  #思考ルーチン二回目
        routine_typeA( 1, 1, 6, 3) #Aタイプ
      end
    when 18  #クズリ（西の森）
      if type == 1
        @enemy_level = 5 #エネミーのLV
        @enemy_maxap = 38 #エネミーの最大AP
        @enemy_ap = 38 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("018") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_random( 10) # 乱数タイプ
      end
    when 19  #ジャイアントラット（試練の迷宮）
      if type == 1
        @enemy_level = 6 #エネミーのLV
        @enemy_maxap = 44 #エネミーの最大AP
        @enemy_ap = 44 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 5  #ジャイアントラット
        enemy_name("019") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 2, 3, 2, 2) #Aタイプ
      end
    when 20  #ジャイアントバット（北東の洞窟）
      if type == 1
        @enemy_level = 7 #エネミーのLV
        @enemy_maxap = 44 #エネミーの最大AP
        @enemy_ap = 44 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("020") #エネミーの名前

        @enemy_pattern_change = "ON" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 1, 2, 4, 1) #Aタイプ
      elsif type == 3  #思考ルーチン二回目
        routine_typeA( 1, 2, 6, 3) #Aタイプ
      end
    when 21  #キャタピラー（キャタピラーの巣）
      if type == 1
        @enemy_level = 8 #エネミーのLV
        @enemy_maxap = 52 #エネミーの最大AP
        @enemy_ap = 52 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 5 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("021") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeB( 2, 5, 2, 2, 2, 2, 2, 5) #  Bタイプ
      end
    when 22  #洞窟ミミズ（北東の洞窟）
      if type == 1
        @enemy_level = 8 #エネミーのLV
        @enemy_maxap = 26 #エネミーの最大AP
        @enemy_ap = 26 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 3 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("022") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 1, 5, 1, 5) #Aタイプ
      end
    when 23  #眠りイカ（北東の洞窟）
      if type == 1
        @enemy_level = 8 #エネミーのLV
        @enemy_maxap = 48 #エネミーの最大AP
        @enemy_ap = 48 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 5 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("023") #エネミーの名前

        @enemy_pattern_change = "ON" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 3, 3, 0, 3) #Aタイプ
      elsif type == 3  #思考ルーチン二回目
        routine_type_hitA( 3, 3, 7, 0, 80) # 命中率に反応する
      end
    when 24  #人面魚（北東の洞窟）
      if type == 1
        @enemy_level = 8 #エネミーのLV
        @enemy_maxap = 50 #エネミーの最大AP
        @enemy_ap = 50 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("024") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_random( 11) # 乱数タイプ
      end
    when 25  #ロックハンド（試練の迷宮B3F）
      if type == 1
        @enemy_level = 9 #エネミーのLV
        @enemy_maxap = 52 #エネミーの最大AP
        @enemy_ap = 52 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("025") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 1, 5, 1, 6) #Aタイプ
      end
    when 26  #ロックハンド（試練の迷宮B4F）
      if type == 1
        @enemy_level = 10 #エネミーのLV
        @enemy_maxap = 52 #エネミーの最大AP
        @enemy_ap = 52 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("026") #エネミーの名前

        @enemy_pattern_change = "ON" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 1, 4, 1, 7) #Aタイプ
      elsif type == 3  #思考ルーチン二回目
        routine_typeA( 3, 8, 1, 1) #Aタイプ
      end
    when 27  #ジャイアントラット（北の森・洞窟）
      if type == 1
        @enemy_level = 10 #エネミーのLV
        @enemy_maxap = 46 #エネミーの最大AP
        @enemy_ap = 46 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 5  #ジャイアントラット
        enemy_name("027") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 2, 3, 2, 2) #Aタイプ
      end
    when 28  #雑兵アリ（北の森・洞窟）
      if type == 1
        @enemy_level = 11 #エネミーのLV
        @enemy_maxap = 56 #エネミーの最大AP
        @enemy_ap = 56 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 5 #エネミーのAPが回復するターン
        @enemy_attack_se = 3  #蜂・昆虫系
        enemy_name("028") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeB( 5, 5, 1, 1, 1, 1, 5, 5) #  Bタイプ
      end
    when 29  #洞窟ミミズ（北の森・洞窟）
      if type == 1
        @enemy_level = 11 #エネミーのLV
        @enemy_maxap = 28 #エネミーの最大AP
        @enemy_ap = 28 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 3 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("029") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 1, 5, 1, 5) #Aタイプ
      end
    when 30  #ケイブスパイダー（北の森・洞窟）
      if type == 1
        @enemy_level = 12 #エネミーのLV
        @enemy_maxap = 58 #エネミーの最大AP
        @enemy_ap = 58 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 5 #エネミーのAPが回復するターン
        @enemy_attack_se = 3  #蜂・昆虫系
        enemy_name("030") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_random( 13) # 乱数タイプ
      end
    when 31  #岩魚（北の森・洞窟）
      if type == 1
        @enemy_level = 12 #エネミーのLV
        @enemy_maxap = 52 #エネミーの最大AP
        @enemy_ap = 52 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("031") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 1, 5, 1, 5) #Aタイプ
      end
    when 32  #アンモナイト（北の森・洞窟）
      if type == 1
        @enemy_level = 13 #エネミーのLV
        @enemy_maxap = 60 #エネミーの最大AP
        @enemy_ap = 60 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 5 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("032") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_random( 14) # 乱数タイプ
      end
    when 33  #大ミミズ（街道）
      if type == 1
        @enemy_level = 13 #エネミーのLV
        @enemy_maxap = 36 #エネミーの最大AP
        @enemy_ap = 36 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("033") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 2, 2, 2, 2) #Aタイプ
      end
    when 34  #雑兵アリ（街道）
      if type == 1
        @enemy_level = 14 #エネミーのLV
        @enemy_maxap = 60 #エネミーの最大AP
        @enemy_ap = 60 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 5 #エネミーのAPが回復するターン
        @enemy_attack_se = 3  #蜂・昆虫系
        enemy_name("034") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeB( 5, 5, 1, 1, 1, 1, 5, 5) #  Bタイプ
      end
    when 35  #ジャイアントスパイダー（街道）
      if type == 1
        @enemy_level = 14 #エネミーのLV
        @enemy_maxap = 62 #エネミーの最大AP
        @enemy_ap = 62 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 5 #エネミーのAPが回復するターン
        @enemy_attack_se = 3  #蜂・昆虫系
        enemy_name("035") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_random( 13) # 乱数タイプ
      end
    when 36  #ジャイアントビー（西の森・街道）
      if type == 1
        @enemy_level = 15 #エネミーのLV
        @enemy_maxap = 68 #エネミーの最大AP
        @enemy_ap = 68 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 3  #蜂
        enemy_name("036") #エネミーの名前

        @enemy_pattern_change = "ON" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 3, 1, 3, 0) #Aタイプ
      elsif type == 3  #思考ルーチン二回目
        routine_typeA( 7, 7, 9, 0) #Aタイプ
      end
    when 37  #牙イノシシ（樹人の森）
      if type == 1
        @enemy_level = 15 #エネミーのLV
        @enemy_maxap = 50 #エネミーの最大AP
        @enemy_ap = 50 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("037") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 1, 6, 1, 5) #Aタイプ
      end
    when 38  #樹人（樹人の森）
      if type == 1
        @enemy_level = 15 #エネミーのLV
        @enemy_maxap = 90 #エネミーの最大AP
        @enemy_ap = 90 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 6 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("038") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 1, 5, 1, 5) #Aタイプ
      end
    when 39  #キラーイーグル（樹人の森）
      if type == 1
        @enemy_level = 15 #エネミーのLV
        @enemy_maxap = 70 #エネミーの最大AP
        @enemy_ap = 70 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("039") #エネミーの名前

        @enemy_pattern_change = "ON" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 4, 4, 4, 0) #Aタイプ
      elsif type == 3  #思考ルーチン二回目
        routine_typeA( 3, 3, 9, 3) #Aタイプ
      end
    when 40  #スケルトン（試練の迷宮B5F）
      if type == 1
        @enemy_level = 16 #エネミーのLV
        @enemy_maxap = 60 #エネミーの最大AP
        @enemy_ap = 60 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 5 #エネミーのAPが回復するターン
        @enemy_attack_se = 2  #剣
        enemy_name("040") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeB( 4, 4, 3, 3, 3, 3, 4, 4) #  Bタイプ
      end
    when 41  #ジャイアントラット（試練の迷宮B5F）
      if type == 1
        @enemy_level = 16 #エネミーのLV
        @enemy_maxap = 52 #エネミーの最大AP
        @enemy_ap = 52 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 5  #ジャイアントラット
        enemy_name("041") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 2, 3, 2, 2) #Aタイプ
      end
    when 42  #竜牙兵（試練の迷宮B6F）
      if type == 1
        @enemy_level = 16 #エネミーのLV
        @enemy_maxap = 72 #エネミーの最大AP
        @enemy_ap = 72 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 5 #エネミーのAPが回復するターン
        @enemy_attack_se = 2  #剣
        enemy_name("042") #エネミーの名前

        @enemy_pattern_change = "ON" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeB( 4, 4, 3, 3, 3, 3, 4, 4) #  Bタイプ
      elsif type == 3  #思考ルーチン二回目
        routine_type_enemy_damageB( 9, 9, 3, 3, 30) # エネミーダメに反応する
      end
    when 43  #ジャイアントマンタ（北の森・洞窟）
      if type == 1
        @enemy_level = 16 #エネミーのLV
        @enemy_maxap = 62 #エネミーの最大AP
        @enemy_ap = 62 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 5 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("043") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_random( 14) # 乱数タイプ
      end
    when 44  #鬼ヤドカリ（ドルム川）
      if type == 1
        @enemy_level = 17 #エネミーのLV
        @enemy_maxap = 64 #エネミーの最大AP
        @enemy_ap = 64 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 5 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("044") #エネミーの名前

        @enemy_pattern_change = "ON" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 3, 5, 1, 3) #Aタイプ
      elsif type == 3  #思考ルーチン二回目
        routine_type_enemy_damageA( 3, 5, 1, 9, 20) # エネミーダメに反応する
      end
    when 45  #猛牛（リーフレイク北東）
      if type == 1
        @enemy_level = 17 #エネミーのLV
        @enemy_maxap = 54 #エネミーの最大AP
        @enemy_ap = 54 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("045") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 2, 5, 2, 5) #Aタイプ
      end
    when 46  #大ミミズ（リーフレイク北東・ドルム川）
      if type == 1
        @enemy_level = 17 #エネミーのLV
        @enemy_maxap = 40 #エネミーの最大AP
        @enemy_ap = 40 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("046") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 2, 2, 2, 2) #Aタイプ
      end
    when 47  #ロックハンド（試練の迷宮B7F）
      if type == 1
        @enemy_level = 17 #エネミーのLV
        @enemy_maxap = 54 #エネミーの最大AP
        @enemy_ap = 54 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("047") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 1, 5, 1, 6) #Aタイプ
      end
    when 48  #ロックハンド（試練の迷宮B7F）
      if type == 1
        @enemy_level = 18 #エネミーのLV
        @enemy_maxap = 54 #エネミーの最大AP
        @enemy_ap = 54 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("048") #エネミーの名前

        @enemy_pattern_change = "ON" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 1, 4, 1, 7) #Aタイプ
      elsif type == 3  #思考ルーチン二回目
        routine_typeA( 3, 8, 1, 1) #Aタイプ
      end
    when 49  #ジャイアントビー（リーフレイク北東）
      if type == 1
        @enemy_level = 18 #エネミーのLV
        @enemy_maxap = 70 #エネミーの最大AP
        @enemy_ap = 70 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 3  #蜂
        enemy_name("049") #エネミーの名前

        @enemy_pattern_change = "ON" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 3, 1, 3, 0) #Aタイプ
      elsif type == 3  #思考ルーチン二回目
        routine_typeA( 7, 7, 9, 0) #Aタイプ
      end
    when 50  #ゴブリン（樹人の森・洞窟）
      if type == 1
        @enemy_level = 18 #エネミーのLV
        @enemy_maxap = 58 #エネミーの最大AP
        @enemy_ap = 58 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 5 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("050") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeB( 4, 4, 3, 3, 6, 6, 1, 1) #  Bタイプ
      end
    when 51  #古樹人（樹人の森）
      if type == 1
        @enemy_level = 18 #エネミーのLV
        @enemy_maxap = 92 #エネミーの最大AP
        @enemy_ap = 92 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 6 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("051") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 1, 9, 1, 5) #Aタイプ
      end
    when 52  #大甲虫（北の森・洞窟）
      if type == 1
        @enemy_level = 18 #エネミーのLV
        @enemy_maxap = 60 #エネミーの最大AP
        @enemy_ap = 60 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 5 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("052") #エネミーの名前

        @enemy_pattern_change = "ON" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 3, 3, 3, 3) #Aタイプ
      elsif type == 3  #思考ルーチン二回目
        routine_type_enemy_damageA( 3, 5, 3, 9, 20) # エネミーダメに反応する
      end
    when 53  #兵隊アリ（試練の迷宮B8F）
      if type == 1
        @enemy_level = 18 #エネミーのLV
        @enemy_maxap = 64 #エネミーの最大AP
        @enemy_ap = 64 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 5 #エネミーのAPが回復するターン
        @enemy_attack_se = 3  #蜂・昆虫系
        enemy_name("053") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeB( 5, 5, 2, 2, 2, 2, 5, 5) #  Bタイプ
      end
    when 54  #地走り（街道）（通り名モンスター）
      if type == 1
        @enemy_level = 18 #エネミーのLV
        @enemy_maxap = 68 #エネミーの最大AP
        @enemy_ap = 68 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("054") #エネミーの名前

        @enemy_pattern_change = "ON" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 5, 5, 5, 3) #Aタイプ
      elsif type == 3  #思考ルーチン二回目
        routine_typeA( 9, 5, 9, 3) #Aタイプ
      end
    when 55  #フォレストウルフ（魔の森）
      if type == 1
        @enemy_level = 19 #エネミーのLV
        @enemy_maxap = 62 #エネミーの最大AP
        @enemy_ap = 62 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 7  #狼
        enemy_name("055") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_random( 14) # 乱数タイプ
      end
    when 56  #大ミミズ（魔の森）
      if type == 1
        @enemy_level = 19 #エネミーのLV
        @enemy_maxap = 42 #エネミーの最大AP
        @enemy_ap = 42 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("056") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 2, 2, 2, 2) #Aタイプ
      end
    when 57  #フォレストスネーク（魔の森）
      if type == 1
        @enemy_level = 19 #エネミーのLV
        @enemy_maxap = 52 #エネミーの最大AP
        @enemy_ap = 52 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("057") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeB( 4, 5, 2, 2, 4, 2, 5, 2) #  Bタイプ
      end
    when 58  #洞窟崩し（湖の北・洞窟）（通り名モンスター）
      if type == 1
        @enemy_level = 19 #エネミーのLV
        @enemy_maxap = 60 #エネミーの最大AP
        @enemy_ap = 60 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("058") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 3, 5, 9, 3) #Aタイプ
      end
    when 59  #スケルトン（試練の迷宮B9F）
      if type == 1
        @enemy_level = 19 #エネミーのLV
        @enemy_maxap = 64 #エネミーの最大AP
        @enemy_ap = 64 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 5 #エネミーのAPが回復するターン
        @enemy_attack_se = 2  #剣
        enemy_name("059") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeB( 5, 5, 2, 2, 2, 2, 5, 5) #  Bタイプ
      end
    when 60  #ジャイアントラット（試練の迷宮B10F）
      if type == 1
        @enemy_level = 19 #エネミーのLV
        @enemy_maxap = 54 #エネミーの最大AP
        @enemy_ap = 54 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 5  #ジャイアントラット
        enemy_name("060") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 2, 3, 2, 2) #Aタイプ
      end
    when 61  #ジャイアントビー（魔の森）
      if type == 1
        @enemy_level = 20 #エネミーのLV
        @enemy_maxap = 72 #エネミーの最大AP
        @enemy_ap = 72 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 3  #蜂
        enemy_name("061") #エネミーの名前

        @enemy_pattern_change = "ON" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 3, 1, 3, 0) #Aタイプ
      elsif type == 3  #思考ルーチン二回目
        routine_typeA( 7, 7, 9, 0) #Aタイプ
      end
    when 62  #ジャイアントバット（沼地）
      if type == 1
        @enemy_level = 20 #エネミーのLV
        @enemy_maxap = 50 #エネミーの最大AP
        @enemy_ap = 50 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("062") #エネミーの名前

        @enemy_pattern_change = "ON" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 3, 3, 4, 3) #Aタイプ
      elsif type == 3  #思考ルーチン二回目
        routine_typeA( 3, 3, 9, 3) #Aタイプ
      end
    when 63  #竜牙兵（試練の迷宮B10F）
      if type == 1
        @enemy_level = 20 #エネミーのLV
        @enemy_maxap = 76 #エネミーの最大AP
        @enemy_ap = 76 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 5 #エネミーのAPが回復するターン
        @enemy_attack_se = 2  #剣
        enemy_name("063") #エネミーの名前

        @enemy_pattern_change = "ON" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeB( 4, 4, 3, 3, 3, 3, 4, 4) #  Bタイプ
      elsif type == 3  #思考ルーチン二回目
        routine_type_enemy_damageB( 9, 9, 3, 3, 30) # エネミーダメに反応する
      end
    when 64  #骸骨剣士（街道）（通り名モンスター）
      if type == 1
        @enemy_level = 20 #エネミーのLV
        @enemy_maxap = 82 #エネミーの最大AP
        @enemy_ap = 82 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 5 #エネミーのAPが回復するターン
        @enemy_attack_se = 2  #剣
        enemy_name("064") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeB( 5, 5, 4, 4, 4, 4, 5, 5) #  Bタイプ
      end
    when 65  #大百足（魔の森）
      if type == 1
        @enemy_level = 20 #エネミーのLV
        @enemy_maxap = 58 #エネミーの最大AP
        @enemy_ap = 58 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 5 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("065") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 2, 5, 2, 5) #Aタイプ
      end
    when 66  #死の回転（リーフレイク北東）（通り名モンスター）
      if type == 1
        @enemy_level = 20 #エネミーのLV
        @enemy_maxap = 88 #エネミーの最大AP
        @enemy_ap = 88 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 6 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("066") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 3, 7, 3, 5) #Aタイプ
      end
    when 67  #山賊（山賊砦）
      if type == 1
        @enemy_level = 20 #エネミーのLV
        @enemy_maxap = 76 #エネミーの最大AP
        @enemy_ap = 76 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 5 #エネミーのAPが回復するターン
        @enemy_attack_se = 2  #剣
        enemy_name("067") #エネミーの名前

        @enemy_pattern_change = "ON" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 3, 3, 3, 3) #Aタイプ
      elsif type == 3  #思考ルーチン二回目
        routine_typeA( 3, 3, 3, 6) #Aタイプ
      end
    when 68  #山賊剣士（山賊砦）
      if type == 1
        @enemy_level = 20 #エネミーのLV
        @enemy_maxap = 82 #エネミーの最大AP
        @enemy_ap = 82 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 5 #エネミーのAPが回復するターン
        @enemy_attack_se = 2  #剣
        enemy_name("068") #エネミーの名前

        @enemy_pattern_change = "ON" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeB( 4, 4, 3, 3, 3, 3, 4, 4) #  Bタイプ
      elsif type == 3  #思考ルーチン二回目
        routine_typeA( 3, 6, 3, 6) #Aタイプ
      end
    when 69  #バックス（山賊砦）
      if type == 1
        @enemy_level = 23 #エネミーのLV
        @enemy_maxap = 80 #エネミーの最大AP
        @enemy_ap = 80 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 5 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("069") #エネミーの名前

        @enemy_pattern_change = "ON" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 4, 5, 4, 4) #Aタイプ
      elsif type == 3  #思考ルーチン二回目
        routine_typeA( 4, 9, 4, 4) #Aタイプ
      end
    when 70  #大蛇（沼地）
      if type == 1
        @enemy_level = 21 #エネミーのLV
        @enemy_maxap = 58 #エネミーの最大AP
        @enemy_ap = 58 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("070") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeB( 4, 5, 3, 3, 4, 3, 5, 3) #  Bタイプ
      end
    when 71  #姫ヤドカリ（ドルム川）（通り名モンスター）
      if type == 1
        @enemy_level = 21 #エネミーのLV
        @enemy_maxap = 78 #エネミーの最大AP
        @enemy_ap = 78 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("071") #エネミーの名前

        @enemy_pattern_change = "ON" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 4, 9, 1, 4) #Aタイプ
      elsif type == 3  #思考ルーチン二回目
        routine_type_enemy_damageA( 4, 7, 1, 9, 20) # エネミーダメに反応する
      end
    when 72  #軍隊アリ（魔の森）
      if type == 1
        @enemy_level = 21 #エネミーのLV
        @enemy_maxap = 70 #エネミーの最大AP
        @enemy_ap = 70 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 5 #エネミーのAPが回復するターン
        @enemy_attack_se = 3  #蜂・昆虫系
        enemy_name("072") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeB( 5, 5, 3, 3, 3, 3, 5, 5) #  Bタイプ
      end
    when 73  #ジャイアントスパイダー（魔の森）
      if type == 1
        @enemy_level = 21 #エネミーのLV
        @enemy_maxap = 72 #エネミーの最大AP
        @enemy_ap = 72 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 5 #エネミーのAPが回復するターン
        @enemy_attack_se = 3  #蜂・昆虫系
        enemy_name("073") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_random( 15) # 乱数タイプ
      end
    when 74  #ラプトル（魔の森）
      if type == 1
        @enemy_level = 21 #エネミーのLV
        @enemy_maxap = 62 #エネミーの最大AP
        @enemy_ap = 62 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("074") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 5, 5, 2, 3) #Aタイプ
      end
    when 75  #ヘルハウンド（聖域）
      if type == 1
        @enemy_level = 21 #エネミーのLV
        @enemy_maxap = 60 #エネミーの最大AP
        @enemy_ap = 60 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 6  #犬
        enemy_name("075") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_random( 16) # 乱数タイプ
      end
    when 76  #狂信者（魔の森）
      if type == 1
        @enemy_level = 21 #エネミーのLV
        @enemy_maxap = 78 #エネミーの最大AP
        @enemy_ap = 78 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 5 #エネミーのAPが回復するターン
        @enemy_attack_se = 2  #剣
        enemy_name("076") #エネミーの名前

        @enemy_pattern_change = "ON" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeB( 5, 5, 3, 3, 3, 3, 5, 5) #  Bタイプ
      elsif type == 3  #思考ルーチン二回目
        routine_type_hitA( 5, 5, 9, 3, 80) # 命中率に反応する
      end
    when 77  #ガーゴイル（試練の迷宮B10F）
      if type == 1
        @enemy_level = 21 #エネミーのLV
        @enemy_maxap = 86 #エネミーの最大AP
        @enemy_ap = 86 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 5 #エネミーのAPが回復するターン
        @enemy_attack_se = 2  #剣
        enemy_name("077") #エネミーの名前

        @enemy_pattern_change = "ON" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 5, 5, 3, 3) #Aタイプ
      elsif type == 3  #思考ルーチン二回目
        routine_type_hitB( 9, 9, 3, 3, 70) # 命中率に反応する
      end
    when 78  #ジャイアントクラブ（ドルム川）
      if type == 1
        @enemy_level = 22 #エネミーのLV
        @enemy_maxap = 76 #エネミーの最大AP
        @enemy_ap = 76 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 5 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("078") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 3, 5, 3, 5) #Aタイプ
      end
    when 79  #アックスビーク（魔の森）
      if type == 1
        @enemy_level = 22 #エネミーのLV
        @enemy_maxap = 62 #エネミーの最大AP
        @enemy_ap = 62 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("079") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_random( 16) # 乱数タイプ
      end
    when 80  #黄金蟲（リーフレイク北東）（通り名モンスター）
      if type == 1
        @enemy_level = 22 #エネミーのLV
        @enemy_maxap = 80 #エネミーの最大AP
        @enemy_ap = 80 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 3 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("080") #エネミーの名前

        @enemy_pattern_change = "ON" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 9, 9, 0, 9) #Aタイプ
      elsif type == 3  #思考ルーチン二回目
        routine_type_enemy_damageA( 0, 0, 0, 0, 10) # エネミーダメに反応する
      end
    when 81  #殺人針（魔の森）（通り名モンスター）
      if type == 1
        @enemy_level = 22 #エネミーのLV
        @enemy_maxap = 78 #エネミーの最大AP
        @enemy_ap = 78 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 3  #蜂
        enemy_name("081") #エネミーの名前

        @enemy_pattern_change = "ON" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 3, 3, 3, 3) #Aタイプ
      elsif type == 3  #思考ルーチン二回目
        routine_typeA( 9, 9, 9, 3) #Aタイプ
      end
    when 82  #グリズリー（魔の森）
      if type == 1
        @enemy_level = 23 #エネミーのLV
        @enemy_maxap = 90 #エネミーの最大AP
        @enemy_ap = 90 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 5 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("082") #エネミーの名前

        @enemy_pattern_change = "ON" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 1, 9, 1, 3) #Aタイプ
      elsif type == 3  #思考ルーチン二回目
        routine_typeA( 9, 9, 1, 3) #Aタイプ
      end
    when 83  #サーベルタイガー（魔の森）
      if type == 1
        @enemy_level = 23 #エネミーのLV
        @enemy_maxap = 82 #エネミーの最大AP
        @enemy_ap = 82 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 5 #エネミーのAPが回復するターン
        @enemy_attack_se = 8  #サーベルタイガー
        enemy_name("083") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_random( 17) # 乱数タイプ
      end
    when 84  #シーアサシン（地底湖）
      if type == 1
        @enemy_level = 23 #エネミーのLV
        @enemy_maxap = 80 #エネミーの最大AP
        @enemy_ap = 80 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 5 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("084") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 5, 5, 3, 3) #Aタイプ
      end
    when 85  #ヒドラ（沼地）
      if type == 1
        @enemy_level = 23 #エネミーのLV
        @enemy_maxap = 72 #エネミーの最大AP
        @enemy_ap = 72 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("085") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeB( 5, 4, 5, 4, 4, 5, 4, 5) #  Bタイプ
      end
    when 86  #洞窟トカゲ（沼地）
      if type == 1
        @enemy_level = 23 #エネミーのLV
        @enemy_maxap = 72 #エネミーの最大AP
        @enemy_ap = 72 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 5 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("086") #エネミーの名前

        @enemy_pattern_change = "ON" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 2, 6, 0, 6) #Aタイプ
      elsif type == 3  #思考ルーチン二回目
        routine_typeA( 2, 6, 6, 0) #Aタイプ
      end
    when 87  #岩石竜（沼地）（通り名モンスター）
      if type == 1
        @enemy_level = 23 #エネミーのLV
        @enemy_maxap = 86 #エネミーの最大AP
        @enemy_ap = 86 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 5 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("087") #エネミーの名前

        @enemy_pattern_change = "ON" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 4, 8, 0, 6) #Aタイプ
      elsif type == 3  #思考ルーチン二回目
        routine_typeA( 4, 8, 3, 3) #Aタイプ
      end
    when 88  #アーケロン（地底湖）
      if type == 1
        @enemy_level = 24 #エネミーのLV
        @enemy_maxap = 88 #エネミーの最大AP
        @enemy_ap = 88 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 5 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("088") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 3, 5, 1, 9) #Aタイプ
      end
    when 89  #海魔クラーケン（地底湖）（通り名モンスター）
      if type == 1
        @enemy_level = 24 #エネミーのLV
        @enemy_maxap = 144 #エネミーの最大AP
        @enemy_ap = 144 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 8 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("089") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 4, 6, 1, 7) #Aタイプ
      end
    when 90  #オーガ（山地）
      if type == 1
        @enemy_level = 24 #エネミーのLV
        @enemy_maxap = 78 #エネミーの最大AP
        @enemy_ap = 78 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 5 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("090") #エネミーの名前

        @enemy_pattern_change = "ON" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 3, 9, 2, 2) #Aタイプ
      elsif type == 3  #思考ルーチン二回目
        routine_typeA( 3, 6, 2, 5) #Aタイプ
      end
    when 91  #マンモス（平原）
      if type == 1
        @enemy_level = 25 #エネミーのLV
        @enemy_maxap = 104 #エネミーの最大AP
        @enemy_ap = 104 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 6 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("091") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 2, 9, 2, 5) #Aタイプ
      end
    when 92  #黄金を掴む手（試練の迷宮B11F）（通り名モンスター）
      if type == 1
        @enemy_level = 23 #エネミーのLV
        @enemy_maxap = 80 #エネミーの最大AP
        @enemy_ap = 80 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("092") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 9, 6, 1, 5) #Aタイプ
      end
    when 93  #首長竜（山地・地底湖）（通り名モンスター）
      if type == 1
        @enemy_level = 25 #エネミーのLV
        @enemy_maxap = 120 #エネミーの最大AP
        @enemy_ap = 120 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 7 #エネミーのAPが回復するターン
        @enemy_attack_se = 9  #恐竜
        enemy_name("093") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeB( 1, 9, 2, 6, 5, 5, 2, 6) #  Bタイプ
      end
    when 94  #暴君竜レックス（霧の森）（通り名モンスター）
      if type == 1
        @enemy_level = 25 #エネミーのLV
        @enemy_maxap = 108 #エネミーの最大AP
        @enemy_ap = 108 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 6 #エネミーのAPが回復するターン
        @enemy_attack_se = 9  #恐竜
        enemy_name("094") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 3, 9, 3, 5) #Aタイプ
      end
    when 95  #ピドー（聖域）
      if type == 1
        @enemy_level = 22 #エネミーのLV
        @enemy_maxap = 86 #エネミーの最大AP
        @enemy_ap = 86 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 5 #エネミーのAPが回復するターン
        @enemy_attack_se = 10  #弓
        enemy_name("095") #エネミーの名前

        @enemy_pattern_change = "ON" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 4, 3, 4, 4) #Aタイプ
      elsif type == 3  #思考ルーチン二回目
        routine_typeA( 9, 9, 4, 4) #Aタイプ
      end
    when 96  #石像（聖域）
      if type == 1
        @enemy_level = 22 #エネミーのLV
        @enemy_maxap = 78 #エネミーの最大AP
        @enemy_ap = 78 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 5 #エネミーのAPが回復するターン
        @enemy_attack_se = 1  #打撃音
        enemy_name("096") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 2, 9, 1, 4) #Aタイプ
      end
    when 97  #マーカス（遺跡）
      if type == 1
        @enemy_level = 23 #エネミーのLV
        @enemy_maxap = 108 #エネミーの最大AP
        @enemy_ap = 108 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 99 #エネミーのAPが回復するターン
        @enemy_attack_se = 2  #剣
        enemy_name("097") #エネミーの名前

        @enemy_pattern_change = "OFF" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 9, 9, 9, 9) #Aタイプ
      end
    when 98  #ダークギル（遺跡）
      if type == 1
        @enemy_level = 25 #エネミーのLV
        @enemy_maxap = 99 #エネミーの最大AP
        @enemy_ap = 99 #エネミーのAP
        @enemy_vit = @enemy.sp  #エネミーのVIT
        @enemy_ap_recoveryturn = 4 #エネミーのAPが回復するターン
        @enemy_attack_se = 4  #ダークギル
        enemy_name("098") #エネミーの名前

        @enemy_pattern_change = "ON" #先攻時にエネミーの思考ルーチンの変化フラグ
      elsif type == 2  #思考ルーチン
        routine_typeA( 3, 6, 3, 6) #Aタイプ
      elsif type == 3  #思考ルーチン二回目
        routine_type_enemy_damageB( 9, 9, 3, 6, 30) # エネミーダメに反応する
      end

    end
  end
  #--------------------------------------------------------------------------
  # ● エネミーの追加APポイントの減少
  #--------------------------------------------------------------------------
  def ap_enemy_reduce
    if @enemy_ap < @ap_cost_enemy  #エネミーAPが足りなければ
      #@dex_enemy_reduce = 0  #各項目のAP減少フラグ
      #@str_enemy_reduce = 0
      #@agi_enemy_reduce = 0
      #@def_enemy_reduce = 0
      a = @ap_cost_enemy - @enemy_ap #減らすAP消費ポイント
      #@dex_enemy_reduce = 1 if @ap_cost_dex_enemy > 0
      #@str_enemy_reduce = 1 if @ap_cost_str_enemy > 0
      #@agi_enemy_reduce = 1 if @ap_cost_agi_enemy > 0
      #@def_enemy_reduce = 1 if @ap_cost_def_enemy > 0
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
    end
  end
  #--------------------------------------------------------------------------
  # ● エネミーの消費APの初期化
  #--------------------------------------------------------------------------
  def ap_cost_reset #エネミーの消費APの初期化
    @ap_cost_dex_enemy = 0 #エネミーの器用さ消費AP
    @ap_cost_str_enemy = 0 #エネミーの腕力消費AP
    @ap_cost_agi_enemy = 0 #エネミーの素早さ消費AP
    @ap_cost_def_enemy = 0 #エネミーの守り消費AP
  end
  #--------------------------------------------------------------------------
  # ● エネミーの消費AP合計
  #--------------------------------------------------------------------------
  def ap_cost_enemy #エネミーの消費AP合計
    @ap_cost_enemy = @ap_cost_dex_enemy + @ap_cost_str_enemy + @ap_cost_agi_enemy + @ap_cost_def_enemy
  end
  #--------------------------------------------------------------------------
  # ● エネミーの名前
  #--------------------------------------------------------------------------
  def enemy_name(a)
    @enemy_name = Sprite.new
    @enemy_name.bitmap = RPG::Cache.picture("Battle_name_enemy#{a}")
    @enemy_name.x = 492
    @enemy_name.y = 23
    @enemy_name.z = 201
  end
  #--------------------------------------------------------------------------
  # ● エネミーの攻撃音
  #--------------------------------------------------------------------------
  def enemy_attack_se
    case @enemy_attack_se
    when 1  #打撃音
      Audio.se_play("Audio/SE/089-Attack01",  80, 100)
    when 2  #剣
      Audio.se_play("Audio/SE/090-Attack02",  80, 100)
    when 3  #蜂・昆虫系
      Audio.se_play("Audio/SE/091-Attack03",  80, 100)
    when 4  #ダークギル
      Audio.se_play("Audio/SE/092-Attack04",  80, 100)
    when 5  #ジャイアントラット
      Audio.se_play("Audio/SE/093-Attack05",  80, 100)
    when 6  #犬
      Audio.se_play("Audio/SE/094-Attack06",  80, 100)
    when 7  #狼
      Audio.se_play("Audio/SE/095-Attack07",  80, 100)
    when 8  #サーベルタイガー
      Audio.se_play("Audio/SE/096-Attack08",  80, 100)
    when 9  #恐竜
      Audio.se_play("Audio/SE/097-Attack09",  80, 100)
    when 10  #弓
      Audio.se_play("Audio/SE/098-Attack10",  80, 100)
    when 11  #弓
      Audio.se_play("Audio/SE/099-Attack11",  80, 100)
    when 12  #弓
      Audio.se_play("Audio/SE/100-Attack12",  80, 100)
    when 13  #弓
      Audio.se_play("Audio/SE/101-Attack13",  80, 100)
    when 14  #弓
      Audio.se_play("Audio/SE/102-Attack14",  80, 100)
    when 15  #弓
      Audio.se_play("Audio/SE/103-Attack15",  80, 100)
    when 16  #弓
      Audio.se_play("Audio/SE/104-Attack16",  80, 100)
    end
  end
end
