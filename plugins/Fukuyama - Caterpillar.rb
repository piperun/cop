# train_actor
=begin

Caterpillar walking script

Copyright © 2005 fukuyama

This library is free software; you can redistribute it and/or
modify it under the terms of the GNU Lesser General Public
License as published by the Free Software Foundation; either
version 2.1 of the License, or (at your option) any later version.

This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public
License along with this library; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA

http://www.gnu.org/licenses/lgpl.html
http://www.opensource.gr.jp/lesser/lgpl.ja.html

=end

# Config.rb
#==============================================================================
# ? Train_Actor::Config
#------------------------------------------------------------------------------
# Caterpillar movement of actor is carried out on map
#==============================================================================

module Train_Actor

# ?Switch setup for transparent status
# When true, switch control is used
# TRANSPARENT_SWITCH = true
TRANSPARENT_SWITCH = false

# ?Switch number for transparent status
# When TRANSPARENT_SWITCH is true, transparency will be activated when the switch of this number is on
TRANSPARENT_SWITCHES_INDEX = 20

# ?Maximum number of actors
# There will be support for a large number of people in a party in the future...
TRAIN_ACTOR_SIZE_MAX = 2

# Constants
DOWN_LEFT  = 1
DOWN_RIGHT = 3
UP_LEFT    = 7
UP_RIGHT   = 9
JUMP       = 5

# Put any actor IDs who should have a "stopped animation" if in the caterpillar
# i.e. if a party member "is floating" it will look stupid if he suddenly stops
# moving in the air.
# - added by Blizzard
ACTOR_IDS = []

end

# rgss

# Spriteset_Map_Module.rb
#==============================================================================
# ? Spriteset_Map_Module
#------------------------------------------------------------------------------
# Caterpillar movement of actor is carried out on map
#==============================================================================

module Train_Actor

module Spriteset_Map_Module
  def setup_actor_character_sprites?
    return @setup_actor_character_sprites_flag != nil
  end
  def setup_actor_character_sprites(characters)
    if !setup_actor_character_sprites?
      for character in characters.reverse
        @character_sprites.unshift(
          Sprite_Character.new(@viewport1, character)
        )
      end
      @setup_actor_character_sprites_flag = true
    end
  end
end

end

class Spriteset_Map
  include Train_Actor::Spriteset_Map_Module
end

# Scene_Map_Module.rb
#==============================================================================
# ? Scene_Map_Module
#------------------------------------------------------------------------------
# Caterpillar movement of actor is carried out on map
#==============================================================================

module Train_Actor

module Scene_Map_Module
  def setup_actor_character_sprites(characters)
    @spriteset.setup_actor_character_sprites(characters)
  end
end

end

class Scene_Map
  include Train_Actor::Scene_Map_Module
end

# Game_Party_Module.rb
#==============================================================================
# ? Game_Party_Module
#------------------------------------------------------------------------------
# Caterpillar movement of actor is carried out on map
#==============================================================================

module Train_Actor

module Game_Party_Module

  attr_reader :characters

  def update_party_order() return actors end

  def setup_actor_character_sprites
    if @characters.nil?
      @characters = []
      for i in 1 ... TRAIN_ACTOR_SIZE_MAX
        @characters.push(Game_Party_Actor.new)
      end
    end
    setup_actors = update_party_order
    for i in 1 ... TRAIN_ACTOR_SIZE_MAX
      @characters[i - 1].setup(setup_actors[i])
    end
    if $scene.class.method_defined?('setup_actor_character_sprites')
      $scene.setup_actor_character_sprites(@characters)
    end
  end

  def update_party_actors
     update_party_order
    setup_actor_character_sprites
    transparent = $game_player.transparent
    if transparent == false and TRANSPARENT_SWITCH
      transparent = $game_switches[TRANSPARENT_SWITCHES_INDEX]
    end
    for character in @characters
      character.transparent = transparent
      character.move_speed = $game_player.move_speed
      if ACTOR_IDS.include?(character.cp_id) # Blizzard's support for stopped animation
        character.step_anime = false # Blizzard's support for stopped animation
      else # Blizzard's support for stopped animation
        character.step_anime = $game_player.step_anime
      end # Blizzard's support for stopped animation
      character.update
    end
  end

  def moveto_party_actors( x, y )
    setup_actor_character_sprites
    for character in @characters
      character.moveto( x, y )
    end
    @move_list = [] if @move_list == nil
    move_list_setup
  end

  def move_party_actors
    if @move_list == nil
      @move_list = []
      move_list_setup
    end
    @move_list.each_index do |i|
    if @characters[i] != nil
      case @move_list[i].type
        when Input::DOWN
          @characters[i].move_down(@move_list[i].args[0])
        when Input::LEFT
          @characters[i].move_left(@move_list[i].args[0])
        when Input::RIGHT
          @characters[i].move_right(@move_list[i].args[0])
        when Input::UP
          @characters[i].move_up(@move_list[i].args[0])
        when DOWN_LEFT
          @characters[i].move_lower_left
        when DOWN_RIGHT
          @characters[i].move_lower_right
        when UP_LEFT
          @characters[i].move_upper_left
        when UP_RIGHT
          @characters[i].move_upper_right
        when JUMP
          @characters[i].jump(@move_list[i].args[0],@move_list[i].args[1])
        end
      end
    end
  end

  class Move_List_Element

    def initialize(type,args)
      @type = type
      @args = args
    end

    def type() return @type end

    def args() return @args end

    end

    def move_list_setup
      for i in 0 .. TRAIN_ACTOR_SIZE_MAX
        @move_list[i] = nil
      end
    end

    def add_move_list(type,*args)
      @move_list.unshift(Move_List_Element.new(type,args)).pop
    end

    def move_down_party_actors(turn_enabled = true)
      move_party_actors
      add_move_list(Input::DOWN,turn_enabled)
    end

    def move_left_party_actors(turn_enabled = true)
      move_party_actors
      add_move_list(Input::LEFT,turn_enabled)
    end

    def move_right_party_actors(turn_enabled = true)
      move_party_actors
      add_move_list(Input::RIGHT,turn_enabled)
    end

    def move_up_party_actors(turn_enabled = true)
      move_party_actors
      add_move_list(Input::UP,turn_enabled)
    end

    def move_lower_left_party_actors
      move_party_actors
      add_move_list(DOWN_LEFT)
    end

    def move_lower_right_party_actors
      move_party_actors
      add_move_list(DOWN_RIGHT)
    end

    def move_upper_left_party_actors
      move_party_actors
      add_move_list(UP_LEFT)
    end

    def move_upper_right_party_actors
      move_party_actors
      add_move_list(UP_RIGHT)
    end

    def jump_party_actors(x_plus, y_plus)
      move_party_actors
      add_move_list(JUMP,x_plus, y_plus)
    end

  end

end

class Game_Party
  include Train_Actor::Game_Party_Module
end

# Game_Player_Module.rb
#==============================================================================
# ? Game_Player_Module
#------------------------------------------------------------------------------
# Caterpillar movement of actor is carried out on map
#==============================================================================

module Train_Actor

module Game_Player_Module

  attr_reader :move_speed
  attr_reader :step_anime

  def update_party_actors
    $game_party.update_party_actors
    $game_party.actors.each do |actor|
      @character_name = actor.character_name
      @character_hue = actor.character_hue
      break
    end
  end

  def update
    update_party_actors
    super
  end

  def moveto( x, y )
    $game_party.moveto_party_actors( x, y )
    super( x, y )
  end

  def move_down(turn_enabled = true)
    if passable?(@x, @y, Input::DOWN)
      $game_party.move_down_party_actors(turn_enabled)
    end
    super(turn_enabled)
  end

  def move_left(turn_enabled = true)
    if passable?(@x, @y, Input::LEFT)
      $game_party.move_left_party_actors(turn_enabled)
    end
    super(turn_enabled)
  end

  def move_right(turn_enabled = true)
    if passable?(@x, @y, Input::RIGHT)
      $game_party.move_right_party_actors(turn_enabled)
    end
    super(turn_enabled)
  end

  def move_up(turn_enabled = true)
    if passable?(@x, @y, Input::UP)
      $game_party.move_up_party_actors(turn_enabled)
    end
    super(turn_enabled)
  end

  def move_lower_left
    # When possible to move from down?left or from left?down
    if (passable?(@x, @y, Input::DOWN) and passable?(@x, @y + 1, Input::LEFT)) or
       (passable?(@x, @y, Input::LEFT) and passable?(@x - 1, @y, Input::DOWN))
      $game_party.move_lower_left_party_actors
    end
    super
  end

  def move_lower_right
    # When possible to move from down?right or from right?down
    if (passable?(@x, @y, Input::DOWN) and passable?(@x, @y + 1, Input::RIGHT)) or
       (passable?(@x, @y, Input::RIGHT) and passable?(@x + 1, @y, Input::DOWN))
      $game_party.move_lower_right_party_actors
    end
    super
  end

  def move_upper_left
    # When possible to move from up?left or from left?up
    if (passable?(@x, @y, Input::UP) and passable?(@x, @y - 1, Input::LEFT)) or
       (passable?(@x, @y, Input::LEFT) and passable?(@x - 1, @y, Input::UP))
      $game_party.move_upper_left_party_actors
    end
    super
  end

  def move_upper_right
    # When possible to move from up?right or from right?up
    if (passable?(@x, @y, Input::UP) and passable?(@x, @y - 1, Input::RIGHT)) or
       (passable?(@x, @y, Input::RIGHT) and passable?(@x + 1, @y, Input::UP))
      $game_party.move_upper_right_party_actors
    end
    super
  end

  def jump(x_plus, y_plus)
    # New coordinates are calculated
    new_x = @x + x_plus
    new_y = @y + y_plus
    # When addition values are (0,0), it is possible to jump to the destination
    if (x_plus == 0 and y_plus == 0) or passable?(new_x, new_y, 0)
      $game_party.jump_party_actors(x_plus, y_plus)
    end
    super(x_plus, y_plus)
  end

end

end

class Game_Player
 include Train_Actor::Game_Player_Module
end

# Game_Event_Module.rb
#==============================================================================
# ? Game_Event_Module
#------------------------------------------------------------------------------
# Caterpillar movement of actor is carried out on map
#==============================================================================

module Train_Actor

module Game_Event_Module
  #--------------------------------------------------------------------------
  # ? Judgement determined
  #     x  : X coordinates
  #     y  : Y coordinates
  #     d  : Direction (0,2,4,6,8)  ? 0 = Checks if all directions are not able to be passed (for a jump)
  # return : Passing is impossible (false), possible (true)
  #--------------------------------------------------------------------------
  def passable?(x, y, d)
    result = super(x, y, d)
    if result
      # New coordinates are searched for
      new_x = x + (d == 6 ? 1 : d == 4 ? -1 : 0)
      new_y = y + (d == 2 ? 1 : d == 8 ? -1 : 0)
      # Loops for actor in train
      for actor in $game_party.characters
        # When displayed
        if not actor.character_name.empty?
          # When actor's coordinates correspond to the destination
          if actor.x == new_x and actor.y == new_y
          # When event
            return false if self != $game_player
          end
        end
      end
    end
    return result
  end

end

end

class Game_Event
  include Train_Actor::Game_Event_Module
end

# Game_Party_Actor.rb
#==============================================================================
# ? Game_Party_Actor
#------------------------------------------------------------------------------
# Caterpillar movement of actor is carried out on map
#==============================================================================

module Train_Actor

class Game_Party_Actor < Game_Character

  attr_reader :cp_id
  attr_writer :move_speed
  attr_writer :step_anime

  def initialize
    super()
    @through = true
  end

  def setup(actor)
    # The file name and hue of the character are set
    @cp_id = $data_actors[actor.id].id
    if actor != nil
      @character_name = actor.character_name
      @character_hue = actor.character_hue
    else
      @character_name = ""
      @character_hue = 0
    end
    # Opacity and blending method are initialized
    @opacity = 255
    @blend_type = 0
  end

  def screen_z(height = 0)
    if $game_player.x == @x and $game_player.y == @y
      return $game_player.screen_z(height) - 1
    end
    super(height)
  end
  #--------------------------------------------------------------------------
  # ? Move down
  #     turn_enabled : Flag that permits direction change on the spot
  #--------------------------------------------------------------------------
  def move_down(turn_enabled = true)
    # Face down
    turn_down if turn_enabled
    # When possible to pass
    if passable?(@x, @y, Input::DOWN)
      # Face down
      turn_down
      # Update coordinates
      @y += 1
    end
  end
  #--------------------------------------------------------------------------
  # ? Move left
  #     turn_enabled : Flag that permits direction change on the spot
  #--------------------------------------------------------------------------
  def move_left(turn_enabled = true)
    # Face left
    turn_left if turn_enabled
    # When possible to pass
    if passable?(@x, @y, Input::LEFT)
      # Face left
      turn_left
      # Update coordinates
      @x -= 1
    end
  end
  #--------------------------------------------------------------------------
  # ? Move right
  #     turn_enabled : Flag that permits direction change on the spot
  #--------------------------------------------------------------------------
  def move_right(turn_enabled = true)
    # Face right
    turn_right if turn_enabled
    # When possible to pass
    if passable?(@x, @y, Input::RIGHT)
      # Face right
      turn_right
      # Update coordinates
      @x += 1
    end
  end
  #--------------------------------------------------------------------------
  # ? Move up
  #     turn_enabled : Flag that permits direction change on the spot
  #--------------------------------------------------------------------------
  def move_up(turn_enabled = true)
    # Face up
    turn_up if turn_enabled
    # When possible to pass
    if passable?(@x, @y, Input::UP)
      # Face up
      turn_up
      # Update coordinates
      @y -= 1
    end
  end
  #--------------------------------------------------------------------------
  # ? Move lower left
  #--------------------------------------------------------------------------
  def move_lower_left
    # When no direction fixation
    unless @direction_fix
      # Turn left when facing right, turn down when facing up
      @direction = (@direction == Input::RIGHT ? Input::LEFT : @direction == Input::UP ? Input::DOWN : @direction)
    end
    # When possible to move from down?left or from left?down
    if (passable?(@x, @y, Input::DOWN) and passable?(@x, @y + 1, Input::LEFT)) or
       (passable?(@x, @y, Input::LEFT) and passable?(@x - 1, @y, Input::DOWN))
      # Update coordinates
      @x -= 1
      @y += 1
    end
  end
  #--------------------------------------------------------------------------
  # ? Move lower right
  #--------------------------------------------------------------------------
  def move_lower_right
    # When no direction fixation
    unless @direction_fix
      # Turn right when facing left, turn down when facing up
      @direction = (@direction == Input::LEFT ? Input::RIGHT : @direction == Input::UP ? Input::DOWN : @direction)
    end
    # When possible to move from down?right or from right?down
    if (passable?(@x, @y, Input::DOWN) and passable?(@x, @y + 1, Input::RIGHT)) or
       (passable?(@x, @y, Input::RIGHT) and passable?(@x + 1, @y, Input::DOWN))
      # Update coordinates
      @x += 1
      @y += 1
    end
  end
  #--------------------------------------------------------------------------
  # ? move upper left
  #--------------------------------------------------------------------------
  def move_upper_left
    # When no direction fixation
    unless @direction_fix
      # Turn left when facing right, turn up when facing down
      @direction = (@direction == Input::RIGHT ? Input::LEFT : @direction == Input::DOWN ? Input::UP : @direction)
    end
    # When possible to move from up?left or from left?up
    if (passable?(@x, @y, Input::UP) and passable?(@x, @y - 1, Input::LEFT)) or
       (passable?(@x, @y, Input::LEFT) and passable?(@x - 1, @y, Input::UP))
      # Update coordinates
      @x -= 1
      @y -= 1
    end
  end
  #--------------------------------------------------------------------------
  # ? move upper right
  #--------------------------------------------------------------------------
  def move_upper_right
    # When no direction fixation
    unless @direction_fix
      # Turn right when facing left, turn up when facing down
      @direction = (@direction == Input::LEFT ? Input::RIGHT : @direction == Input::DOWN ? Input::UP : @direction)
    end
    # When possible to move from up?right or from right?up
    if (passable?(@x, @y, Input::UP) and passable?(@x, @y - 1, Input::RIGHT)) or
       (passable?(@x, @y, Input::RIGHT) and passable?(@x + 1, @y, Input::UP))
      # Update coordinates
      @x += 1
      @y -= 1
    end
  end

end

end
