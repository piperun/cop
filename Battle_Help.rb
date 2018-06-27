#==============================================================================
# ■ Battle_Help
#------------------------------------------------------------------------------
# 　戦闘画面で表示するテキストです
#==============================================================================

class Battle_Help < Window_Base
  #--------------------------------------------------------------------------
  # ● オブジェクト初期化
  #     actor : アクター
  #--------------------------------------------------------------------------
  def initialize
    #super(354, 384, 336, 112)
    super(254, 384, 386, 112)
    self.contents = Bitmap.new(width - 32, height - 32)
    self.contents.font.size = 16
    self.opacity = 0

    @player = $game_party.actors[0]
    @enemy = $game_troop.enemies[0]
  end
  #--------------------------------------------------------------------------
  # ● リフレッシュ
  #--------------------------------------------------------------------------
  def refresh(a)
    self.contents.clear
    self.contents.font.color = normal_color

    case a
    when "commandA1"
      self.contents.draw_text(0, 16, 354, 16, "←→: Selection", 2)
      self.contents.draw_text(0, 32, 354, 16, "C: Decide", 2)
      self.contents.draw_text(0, 48, 354, 16, "Command :Start Battle", 2)
    when "commandA2"
      self.contents.draw_text(0, 16, 354, 16, "←→: Selection", 2)
      self.contents.draw_text(0, 32, 354, 16, "C: Decide", 2)
      self.contents.draw_text(0, 48, 354, 16, "Command: Escape", 2)
    when "commandB1"
      self.contents.draw_text(0, 16, 354, 16, "←→: Selection", 2)
      self.contents.draw_text(0, 32, 354, 16, "C: Decide/X: Cancel", 2)
      self.contents.draw_text(0, 48, 354, 16, "Command: Attack", 2)
    when "commandB2"
      self.contents.draw_text(0, 16, 354, 16, "←→: Selection", 2)
      self.contents.draw_text(0, 32, 354, 16, "C: Decide/X: Cancel", 2)
      if $game_switches[27] == false  #閃光斬りが未修得
        self.contents.draw_text(0, 48, 354, 16, "???", 2)
      else
        self.contents.draw_text(0, 48, 354, 16, "Command: Levin Strike", 2)
      end
    when "commandB3"
      self.contents.draw_text(0, 16, 354, 16, "←→: Selection", 2)
      self.contents.draw_text(0, 32, 354, 16, "C: Decide/X: Cancel", 2)
      self.contents.draw_text(0, 48, 354, 16, "Command: Skill", 2)
    when "commandB4"
      self.contents.draw_text(0, 16, 354, 16, "←→: Selection", 2)
      self.contents.draw_text(0, 32, 354, 16, "C: Decide/X: Cancel", 2)
      self.contents.draw_text(0, 48, 354, 16, "Command: First/Change", 2)
    when "attack1"
      self.contents.draw_text(0, 16, 354, 16, "↑↓: Selection/←→: AP Change", 2)
      self.contents.draw_text(0, 32, 354, 16, "C: Attack /X: Cancel/Z: AP Reset", 2)
      self.contents.draw_text(0, 48, 354, 16, "Increase Hit accuracy", 2)
    when "attack2"
      self.contents.draw_text(0, 16, 354, 16, "↑↓: Selection/←→: AP Change", 2)
      self.contents.draw_text(0, 32, 354, 16, "C: Attack /X: Cancel/Z: AP Reset", 2)
      self.contents.draw_text(0, 48, 354, 16, "Increase Damage", 2)
    when "attack3"
      self.contents.draw_text(0, 16, 354, 16, "↑↓: Selection/←→: AP Change", 2)
      self.contents.draw_text(0, 32, 354, 16, "C: Attack /X: Cancel/Z: AP Reset", 2)
      self.contents.draw_text(0, 48, 354, 16, "Increase Evasion Rate", 2)
    when "attack4"
      self.contents.draw_text(0, 16, 354, 16, "↑↓: Selection/←→: AP Change", 2)
      self.contents.draw_text(0, 32, 354, 16, "C: Attack /X: Cancel/Z: AP Reset", 2)
      self.contents.draw_text(0, 48, 354, 16, "Reduce Damage Taken", 2)
    when "flash1"
      self.contents.draw_text(0, 16, 354, 16, "↑↓: Selection/←→: AP Change", 2)
      self.contents.draw_text(0, 32, 354, 16, "C: Attack /X: Cancel/Z: AP Reset", 2)
      self.contents.draw_text(0, 48, 354, 16, "Increase Hit accuracy", 2)
    when "flash2"
      self.contents.draw_text(0, 16, 354, 16, "↑↓: Selection/←→: AP Change", 2)
      self.contents.draw_text(0, 32, 354, 16, "C: Levin Strike/X: Cancel/Z: AP Reset", 2)
      self.contents.draw_text(0, 48, 354, 16, "Increase Damage Dealt", 2)
    when "flash3"
      self.contents.draw_text(0, 16, 354, 16, "↑↓: Selection/←→: AP Change", 2)
      self.contents.draw_text(0, 32, 354, 16, "C: Levin Strike/X: Cancel/Z: AP Reset", 2)
      self.contents.draw_text(0, 48, 354, 16, "Increase Evasion Rate", 2)
    when "flash4"
      self.contents.draw_text(0, 16, 354, 16, "↑↑↓: Selection/←→: AP Change", 2)
      self.contents.draw_text(0, 32, 354, 16, "C: Levin Strike/X: Cancel/Z: AP Reset", 2)
      self.contents.draw_text(0, 48, 354, 16, "Reduce Damage Taken", 2)
    when "skill1"
      self.contents.draw_text(0, 16, 354, 16, "↑↓: Selection", 2)
      self.contents.draw_text(0, 32, 354, 16, "C: Use Skill/X: Cancel", 2)
      if @skill1_used == 0  #使用出来る
        self.contents.draw_text(0, 48, 354, 16, "Heal yourself a small amount of HP.", 2)
      else                  #使用出来ない
        self.contents.draw_text(0, 48, 354, 16, "Can only be used once per turn.", 2)
      end
    when "skill2"
      self.contents.draw_text(0, 16, 354, 16, "↑↓: Selection", 2)
      self.contents.draw_text(0, 32, 354, 16, "C: Use Skill/X: Cancel", 2)
      if $game_switches[21] == true #手ブラ習得済み
        if @skill2_used == 0  #手ブラする
          self.contents.draw_text(0, 48, 354, 16, "Even at a disadvantage, she hides her breasts.", 2)
        else                  #手ブラ解除
          self.contents.draw_text(0, 48, 354, 16, "Although shy, she still fights.", 2)
        end
      else
        self.contents.draw_text(0, 48, 354, 16, "???", 2)
      end
    when "skill3"
      self.contents.draw_text(0, 16, 354, 16, "↑↓: Selection", 2)
      self.contents.draw_text(0, 32, 354, 16, "C: Use Skill/X: Cancel", 2)
      if $game_switches[23] == true #黄金の輝き習得済み
        if @skill3_used == 0  #輝く
          self.contents.draw_text(0, 48, 354, 16, "Lightning power surrounds her.", 2)
        else                  #解除
          self.contents.draw_text(0, 48, 354, 16, "She calms herself down.", 2)
        end
      else
        self.contents.draw_text(0, 48, 354, 16, "???", 2)
      end
    when "skill4"
      self.contents.draw_text(0, 16, 354, 16, "↑↓: Selection", 2)
      self.contents.draw_text(0, 32, 354, 16, "C: Use Skill/X: Cancel", 2)
      if $game_switches[25] == true #金の歯車習得済み
        if @skill4_used == 0  #使用出来る
          self.contents.draw_text(0, 48, 354, 16, "Restore her AP instantly.", 2)
        else                  #使用出来ない
          self.contents.draw_text(0, 48, 354, 16, "Can only be used once per day.", 2)
        end
      else
        self.contents.draw_text(0, 48, 354, 16, "???", 2)
      end
    when "player_attack1"
      self.contents.draw_text(0, 16, 354, 16, "#{@player.name} attacks!", 2)
      if @hit == "true" #当たった
        if @damage == 0
          self.contents.draw_text(0, 48, 354, 16, "#{@enemy.name} took no damage!", 2)
        else
          self.contents.draw_text(0, 48, 354, 16, "#{@enemy.name} took #{@damage} damage!", 2)
        end
      else #外れた
        if @percentage < 30
          self.contents.draw_text(0, 48, 354, 16, "#{@enemy.name} easily avoided!", 2)
        elsif @percentage > 80
          self.contents.draw_text(0, 48, 354, 16, "#{@enemy.name} barely dodged!", 2)
        else
          self.contents.draw_text(0, 48, 354, 16, "#{@enemy.name} dodged your attack!", 2)
        end
      end
    when "player_attack2"
      self.contents.draw_text(0, 16, 354, 16, "#{@player.name} slashed!", 2)
      if @hit == "true" #当たった
        if @damage == 0
          self.contents.draw_text(0, 48, 354, 16, "#{@enemy.name} took no damage!", 2)
        else
          self.contents.draw_text(0, 48, 354, 16, "#{@enemy.name} took #{@damage} damage!", 2)
        end
      else #外れた
        if @percentage < 30
          self.contents.draw_text(0, 48, 354, 16, "#{@enemy.name} easily avoided!", 2)
        elsif @percentage > 80
          self.contents.draw_text(0, 48, 354, 16, "#{@enemy.name} barely dodged!", 2)
        else
          self.contents.draw_text(0, 48, 354, 16, "#{@enemy.name} dodged your attack!", 2)
        end
      end
    when "enemy_attack"
      self.contents.draw_text(0, 16, 354, 16, "#{@enemy.name} attacked!", 2)
      if @hit == "true" #当たった
        if @damage == 0
          self.contents.draw_text(0, 48, 354, 16, "#{@player.name} blocked the attack!", 2)
        else
          self.contents.draw_text(0, 48, 354, 16, "#{@player.name} took #{@damage} damage!", 2)
        end
      else #外れた
        if @percentage < 30
          self.contents.draw_text(0, 48, 354, 16, "#{@player.name} just barely dodged!", 2)
        elsif @percentage > 80
          self.contents.draw_text(0, 48, 354, 16, "#{@player.name} dodged with ease!", 2)
        else
          self.contents.draw_text(0, 48, 354, 16, "#{@player.name} dodged!", 2)
        end
      end
    when "victory"
      self.contents.draw_text(0, 8, 354, 16, "Won the battle!　Gained #{@exp} EXP!", 2)
      if @lv == "LVUP"
        self.contents.draw_text(0, 24, 354, 16, "Leveled Up!", 2)
      end
      if @gold > 0 and @item != ""
        self.contents.draw_text(0, 40, 354, 16, "Got #{@gold} Gold/Found #{@item}!", 2)
      elsif @gold > 0
        self.contents.draw_text(0, 40, 354, 16, "Got #{@gold} Gold!", 2)
      elsif @item != ""
        self.contents.draw_text(0, 40, 354, 16, "Found #{@item}!", 2)
      end
      self.contents.draw_text(0, 56, 354, 16, "C: Leave/Z: Thoughts", 2)
    when "talk"
      a = dice(12)
      if @lv == "LVUP"
        self.contents.draw_text(0, 8, 354, 16, "I've become stronger.", 2)
      elsif $game_variables[11] <= 0
        self.contents.draw_text(0, 8, 354, 16, "........", 2)
      elsif $game_variables[11] < 30
        self.contents.draw_text(0, 8, 354, 16, "....I need a good sleep.", 2)
      elsif $game_variables[11] < 50
        self.contents.draw_text(0, 8, 354, 16, "....I want to rest a little.", 2)
      elsif a == 1
        self.contents.draw_text(0, 8, 354, 16, "If I boost my dexterity, my hit rate", 2)
        self.contents.draw_text(0, 24, 354, 16, "will go up, easily to counter fast enemies.", 2)
      elsif a == 2
        self.contents.draw_text(0, 8, 354, 16, "In order to deal more damage,", 2)
        self.contents.draw_text(0, 24, 354, 16, "I need to increase my Strength.", 2)
      elsif a == 3
        self.contents.draw_text(0, 8, 354, 16, "If I focus more on Agility,", 2)
        self.contents.draw_text(0, 24, 354, 16, "I can easily dodge their attacks.", 2)
      elsif a == 4
        self.contents.draw_text(0, 8, 354, 16, "If I can't avoid their attacks,", 2)
        self.contents.draw_text(0, 24, 354, 16, "I should boost my Defense up.", 2)
      elsif a == 5
        self.contents.draw_text(0, 8, 354, 16, "The person who attacks first has an advantage.", 2)
        self.contents.draw_text(0, 24, 354, 16, "but it does change the enemies behaviour though.", 2)
      elsif a == 6
        self.contents.draw_text(0, 8, 354, 16, "Going second will allow the opponent to attack first,", 2)
        self.contents.draw_text(0, 24, 354, 16, "but their fighting style won't change.", 2)
      elsif a == 7
        self.contents.draw_text(0, 8, 354, 16, "I shouldn't waste too much power on weak enemies.", 2)
      elsif a == 8
        self.contents.draw_text(0, 8, 354, 16, "Killing weak enemies will give less experience points.", 2)
      elsif a == 9
        self.contents.draw_text(0, 8, 354, 16, "Escaping from strong enemy requires a lot of stamina.", 2)
      elsif a == 10
        self.contents.draw_text(0, 8, 354, 16, "Using AP wisely is key to winning a fight.", 2)
      elsif a == 11
        self.contents.draw_text(0, 8, 354, 16, "I should eat to restore stamina when I run out of it.", 2)
      else
        self.contents.draw_text(0, 8, 354, 16, "...Phew.", 2)
      end

      self.contents.draw_text(0, 56, 354, 16, "C: Leave.", 2)
    end

  end

  def skill_used?(a, b, c, d)
    @skill1_used = a
    @skill2_used = b
    @skill3_used = c
    @skill4_used = d
  end
  def battle_data(a, b, c)
    @hit = a
    @percentage = b
    @damage = c
  end
  def battle_result(a, b, c, d)
    @exp = a
    @gold = b
    @item = c
    @lv = d
  end
  #--------------------------------------------------------------------------
  # ● ダイス
  #--------------------------------------------------------------------------
  def dice(x)
    return rand(x) + 1
  end

end
