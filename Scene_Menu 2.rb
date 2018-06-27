#==============================================================================
# ■ Scene_Menu 2
#------------------------------------------------------------------------------
# 　メニュー画面の処理を行うクラスです。
#==============================================================================

class Scene_Menu
  #--------------------------------------------------------------------------
  # ● 称号
  #--------------------------------------------------------------------------
  def title_window
    s1 = "Village Girl"
    if $game_switches[31] == true
      s2 = "Famous Adventurer"
    else
      s2 = "???"
    end
    if $game_switches[32] == true
      s3 = "Hot Topic"
    else
      s3 = "???"
    end
    if $game_switches[33] == true
      s4 = "Caring Sister"
    else
      s4 = "???"
    end
    if $game_switches[34] == true
      s5 = "Sneaky Sister"
    else
      s5 = "???"
    end
    if $game_switches[35] == true
      s6 = "Easy Girl"
    else
      s6 = "???"
    end
    if $game_switches[36] == true
      s7 = "Lover of all Men"
    else
      s7 = "???"
    end
    if $game_switches[37] == true
      s8 = "Whore"
    else
      s8 = "???"
    end
    if $game_switches[38] == true
      s9 = "Exhibitionism"
    else
      s9 = "???"
    end
    if $game_switches[39] == true
      s10 = "Goblin's Slave"
    else
      s10 = "???"
    end
    s11 = "Cancel"

    @title_window = Window_Command.new(240, [s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11])
    @title_window.x = 400
    @title_window.y = 64
    @title_window.active = false
    @title_window.visible = false

    select_title

    # ヘルプウィンドウを作成
    @help_window = Window_Help.new
    @help_window.visible = false
    @title_window.index = 0
    @title_index_old = 1
  end

  def update_title
    if @title_window.index != @title_index_old
      help_refresh  #ヘルプの更新
    end

    # C ボタンが押された場合
    if Input.trigger?(Input::C)


      # コマンドウィンドウのカーソル位置で分岐
      case @title_window.index
      when 0  # 村娘
        # 決定  SE を演奏
        $game_system.se_play($data_system.decision_se)
        $game_variables[31] = 0
        select_title
        title_window_finish
      when 1  # リーフレイクの美少女
        # 決定  SE を演奏
        $game_system.se_play($data_system.decision_se)
        $game_variables[31] = 1
        select_title
        title_window_finish
      when 2  # おっぱい剣士
        if $game_switches[32] == true
          # 決定  SE を演奏
          $game_system.se_play($data_system.decision_se)
          $game_variables[31] = 2
          select_title
          title_window_finish
        else
          # ブザー SE を演奏
          $game_system.se_play($data_system.buzzer_se)
          return
        end
      when 3  # 憧れのお姉さん
        if $game_switches[33] == true
          # 決定  SE を演奏
          $game_system.se_play($data_system.decision_se)
          $game_variables[31] = 3
          select_title
          title_window_finish
        else
          # ブザー SE を演奏
          $game_system.se_play($data_system.buzzer_se)
          return
        end
      when 4  # 露出剣士
        if $game_switches[34] == true
          # 決定  SE を演奏
          $game_system.se_play($data_system.decision_se)
          $game_variables[31] = 4
          select_title
          title_window_finish
        else
          # ブザー SE を演奏
          $game_system.se_play($data_system.buzzer_se)
          return
        end
      when 5  # 金髪ビッチ
        if $game_switches[35] == true
          # 決定  SE を演奏
          $game_system.se_play($data_system.decision_se)
          $game_variables[31] = 5
          select_title
          title_window_finish
        else
          # ブザー SE を演奏
          $game_system.se_play($data_system.buzzer_se)
          return
        end
      when 6  # リーフレイクの性奴隷
        if $game_switches[36] == true
          # 決定  SE を演奏
          $game_system.se_play($data_system.decision_se)
          $game_variables[31] = 6
          select_title
          title_window_finish
        else
          # ブザー SE を演奏
          $game_system.se_play($data_system.buzzer_se)
          return
        end
      when 7  # 売春婦
        if $game_switches[37] == true
          # 決定  SE を演奏
          $game_system.se_play($data_system.decision_se)
          $game_variables[31] = 7
          select_title
          title_window_finish
        else
          # ブザー SE を演奏
          $game_system.se_play($data_system.buzzer_se)
          return
        end
      when 8  # 賞金稼ぎ
        if $game_switches[38] == true
          # 決定  SE を演奏
          $game_system.se_play($data_system.decision_se)
          $game_variables[31] = 8
          select_title
          title_window_finish
        else
          # ブザー SE を演奏
          $game_system.se_play($data_system.buzzer_se)
          return
        end
      when 9  # 閃光の剣士
        if $game_switches[39] == true
          # 決定  SE を演奏
          $game_system.se_play($data_system.decision_se)
          $game_variables[31] = 9
          select_title
          title_window_finish
        else
          # ブザー SE を演奏
          $game_system.se_play($data_system.buzzer_se)
          return
        end
      when 10  # キャンセル
        # キャンセル SE を演奏
        $game_system.se_play($data_system.cancel_se)
        title_window_finish
      end
    end

    # B ボタンが押された場合
    if Input.trigger?(Input::B)
      # キャンセル SE を演奏
      $game_system.se_play($data_system.cancel_se)
      title_window_finish
    end
  end
  #--------------------------------------------------------------------------
  # ● 選択している称号
  #--------------------------------------------------------------------------
  def select_title
    @title_window.able_item(0)
    @title_window.able_item(1)
    @title_window.able_item(2)
    @title_window.able_item(3)
    @title_window.able_item(4)
    @title_window.able_item(5)
    @title_window.able_item(6)
    @title_window.able_item(7)
    @title_window.able_item(8)
    @title_window.able_item(9)

    case $game_variables[31]
    when 0  # 村娘
      @title_window.select_item(0)
    when 1  # リーフレイクの美少女
      @title_window.select_item(1)
    when 2  # おっぱい剣士
      @title_window.select_item(2)
    when 3  # 憧れのお姉さん
      @title_window.select_item(3)
    when 4  # 露出剣士
      @title_window.select_item(4)
    when 5  # 金髪ビッチ
      @title_window.select_item(5)
    when 6  # リーフレイクの性奴隷
      @title_window.select_item(6)
    when 7  # 売春婦
      @title_window.select_item(7)
    when 8  # 賞金稼ぎ
      @title_window.select_item(8)
    when 9  # 閃光の剣士
      @title_window.select_item(9)
    end
  end

  def title_window_finish
    @command_window.active = true
    @info_window.visible = true
    @info_window.refresh
    @title_window.active = false
    @title_window.visible = false
    @help_window.visible = false
  end
  #--------------------------------------------------------------------------
  # ● ヘルプの更新
  #--------------------------------------------------------------------------
  def help_refresh
    case @title_window.index
    when 0  # 村娘
      @title_index_old = 0
      @help_window.set_text("【Earned By】 None",0)
    when 1  # リーフレイクの美少女
      @title_index_old = 1
      @help_window.set_text("【Earned By】 Helping the villagers.",0)
    when 2  # おっぱい剣士
      @title_index_old = 2
      @help_window.set_text("【Earned By】 Becoming a hot topic among men.",0)
    when 3  # 憧れのお姉さん
      @title_index_old = 3
      @help_window.set_text("【Earned By】 Taking a good care of villagers' little kids.",0)
    when 4  # 露出剣士
      @title_index_old = 4
      @help_window.set_text("【Earned By】 Having sex with others behind her brother's back.",0)
    when 5  # 金髪ビッチ
      @title_index_old = 5
      @help_window.set_text("【Earned By】 Letting others grope her breasts many times.",0)
    when 6  # リーフレイクの性奴隷
      @title_index_old = 6
      @help_window.set_text("【Earned By】 Having sex with 5 different person.",0)
    when 7  # 売春婦
      @title_index_old = 7
      @help_window.set_text("【Earned By】 Having sex with 3 different old men.",0)
    when 8  # 賞金稼ぎ
      @title_index_old = 8
      @help_window.set_text("【Earned By】 Having outdoor sex more than 10 times.",0)
    when 9  # 閃光の剣士
      @title_index_old = 9
      @help_window.set_text("【Earned By】 Having sex with goblins more than 10 times.",0)
    when 10
      @title_index_old = 10
      @help_window.set_text("",0)
    end
  end



end
