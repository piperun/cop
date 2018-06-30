#==============================================================================
# ** Window_Status
#------------------------------------------------------------------------------
#  This window displays full status specs on the status screen.
#==============================================================================

class Window_Status < Window_Base
  #--------------------------------------------------------------------------
  # * Object Initialization
  #     actor : actor
  #--------------------------------------------------------------------------
  def initialize(actor, status_type)
    super(0, 288, 180, 192)
    self.contents = Bitmap.new(width - 32, height - 32)
    @actor = actor
    @status_type = status_type
    refresh
  end
  #--------------------------------------------------------------------------
  # * Refresh
  #--------------------------------------------------------------------------
  def refresh
    self.contents.clear
    case @status_type
      when 1
        draw_actor_level(@actor, 0, 0)
        draw_actor_state(@actor, 72, 0)
        self.contents.font.color = system_color
        self.contents.draw_text(0, 24, 80, 32, "EXP")
        self.contents.draw_text(0, 48, 80, 32, "NEXT")
        self.contents.font.color = normal_color
        self.contents.draw_text(40, 24, 88, 32, @actor.exp_s, 2)
        self.contents.draw_text(40, 48, 88, 32, @actor.next_rest_exp_s, 2)
        draw_actor_hp(@actor, 0, 80, 128)
        draw_actor_sp(@actor, 0, 104, 128)

        cx = contents.text_size($data_system.words.gold).width
        self.contents.font.color = normal_color
        self.contents.draw_text(0, 136, 120-cx-2, 32, $game_party.gold.to_s, 2)
        self.contents.font.color = system_color
        self.contents.draw_text(124-cx, 136, cx, 32, $data_system.words.gold, 2)

        self.contents.font.color.set(255, 255, 255)
      when 2
        draw_actor_parameter(@actor, 0, 0, 0)
        draw_actor_parameter(@actor, 0, 24, 1)
        draw_actor_parameter(@actor, 0, 54, 3)
        draw_actor_parameter(@actor, 0, 78, 6)
        draw_actor_parameter(@actor, 0, 102, 4)
        draw_actor_parameter(@actor, 0, 126, 5)
        self.contents.font.color.set(255, 255, 255)
    end
  end
  def dummy
    self.contents.font.color = system_color
    self.contents.draw_text(320, 112, 96, 32, $data_system.words.weapon)
    self.contents.draw_text(320, 176, 96, 32, $data_system.words.armor1)
    self.contents.draw_text(320, 240, 96, 32, $data_system.words.armor2)
    self.contents.draw_text(320, 304, 96, 32, $data_system.words.armor3)
    self.contents.draw_text(320, 368, 96, 32, $data_system.words.armor4)
    draw_item_name($data_weapons[@actor.weapon_id], 320 + 24, 144)
    draw_item_name($data_armors[@actor.armor1_id], 320 + 24, 208)
    draw_item_name($data_armors[@actor.armor2_id], 320 + 24, 272)
    draw_item_name($data_armors[@actor.armor3_id], 320 + 24, 336)
    draw_item_name($data_armors[@actor.armor4_id], 320 + 24, 400)
  end
end
