#===============================================================================
#
#           HERETIC'S ANIMATE TITLE SCREENS WITH EVENTS
#           Version 1.02
#           Tuesday, March 19th, 2013
#
#===============================================================================
#
# UPDATE NOTES
#
# Version 1.02
# - Added Options to specify a Windowskin
# - Added Align Option for Left, Center, and Right
# - Added Shadowed Text Option for the Title Menu
#
# Version 1.01
# - Script slightly updated to be compatible with a script by
#   diagostimo which allows Scripted Keypresses by Faking User Input
#
#
#
# Introduction:  This script will allow you to Animate your Title Screen
# using nothing but Events!  Not everyone is a scripter, but if you are
# good at Eventing, then this is the script for you!
#
# How it Works:  The first thing you'll notice the Title Screen in this Demo
# is an In-Game Map.  Using the Map as a Title Screen is what allows you to
# use Events to Animate the Title Screen instead of complex Scripting.
#
# Game Map as a Title Screens allows you to do anything you want.  You can
# show a Full Screen Picture as your Title Screen too!  What else this
# allows you to do is to Animate any aspect of your Title Screen, so if
# you wanted your Title Screen to have a Background Image then make your
# Game Title fly in from the side, you can do that too!  You are only limited
# by your Imagination and the limits of the RMXP engine to move stuff around!
#
# In this Demo, I just imported a couple of quickly made Pictures that were
# slapped together in Photoshop, then used Events to show the Pictures to use
# as the Game Title, then Animated them just a bit.  But if you wanted to put
# in a Prelude to your Story, or if you have a nice custom Battle System that
# you wanted to show off, you can do that too!  Even the Crapcom Logo is done
# all by Events and Pictures!
#
# Technical Stuff:
#
# To bring up the Title Menu (New Game /  Continue / Shut Down), you need
# to run a Script: "display_title_menu".  The Title Menu will NOT be displayed
# UNTIL you call "display_title_menu" (without the quotes) from an Event
# Script.  The Event should be an Autorun or a Parallel Event.  The Scripts
# window is on Page 3 in the bottom right.
#
# If you run "hide_title_menu", this will prevent the Player from bringing
# it back by hitting a Key.  I set up this script to fade out the Title Menu
# after a period of inactivity, which you can customize.  If you want it to
# stay, just set TITLE_MAP_INACTIVE_TIMEOUT to a really long time.
#
# The Player Graphic is set to None (optional) when starting up.  If you want
# or need to change the Player to be Visible, you'll need to change the Player
# Graphic.  Events -> Page 3 -> Bottom Left Corner is a button called
# "Change Actor Graphic".  Use this to make the Player visible again.
#
# Another Feature is to only allow the Title Menu (New Game / Cont. etc) to
# appear on certain Maps.  If the player hits a Key on ANY other map during
# your Demo (before New Game or Continuing), everything will Reset and the
# whole process will start all over.  The option is an Array, so you can
# show the Title Menu on different Maps, not just one.
#
#
# Non Scripters need to learn Global Variables!
#
# Global Variables - These are super easy.  $foo = "bar"  The Dollar Sign ($)
# defines a Variable as a Global Variable.  You can check a Global Variable
# from anywhere.  If you run a Script in one Map that says $foo = "bar", then
# go into Battle, you can access $foo from Battle.
#
# Global Variables are VERY IMPORTANT to using this Script.  They DO NOT RESET
# when the Title Scene starts over.  All other Game Data WILL reset!  Switches,
# Variables, anything you may have done to the Party, everything except
# for Global Variables will be reset!  I am pointing out the importance of
# using Global Variables to show you how to retain some data.  Global Variables
# will even retain their values if you hit F12 to reset the game.  One other
# thing about Global Variables is they are NOT saved if you Save a Game, then
# close the program, open it up, and Load that Saved Game.  Once you close
# the program, Global Variables lose their value.  Also, dont put numbers
# as the first character in the Name of your Variable.  $1st_Scene will
# cause a Crash!
#
#
#
#
# -----   Eventing   ------
#
# I did some things that may seem "Screwy" in my events.  I didnt want the
# Script to take control of anything away from Eventing.  In the Demo, if
# the Player hits a Key, the "slower" animation is skipped and it brings up
# the Title Menu (New Game / Cont. / etc) as quickly as possible.  What I
# did there was to run a Parallel Event that checks to see if the Player
# hit a Key with "title_escape_keys?", and if they did, run a much faster
# version of the Title.
#
#
#
#
# -----   Hacking   ------
#
# The original version of this script explained how to do some minor "hacks"
# to various systems to get them to do things they werent supposed to do.
#
# I wasnt fond of the idea, and decided that Simulating User Input was a better
# way and far more compatible.  But Simulating User Input turned into its own
# standalone script that I bundled with this one.  Trust me, its a lot easier
# to just use the Timed / Simulated User Input script than it is to try to get
# the numerous scripts out there to do things they arent really supposed to do.
#
#
#
#
#
# -----   COMMANDS   -----
#
# - display_title_menu
# *   Use an Event Script to display the Title Menu
# **  MUST BE RUN for Title Menu to be displayed at all!
# **  Current MAP ID needs to be Allowed in Script Configuration
#
# - hide_title_menu
# *   Prevents the Title Menu from Displaying
#
# - restart_title_scene
# *   Restarts the Title Scene
# **  Same thing as calling $scene = Scene_Title.new
#
# - title_escape_keys?
# *   Pressing a Key will make this return True
# **  Use in Events in a Conditional Branch -> Script to check
#
# - displaying_title_menu?
# *   This returns True if the Title Menu (New Game) is even partially showing
# **  Use in Events in a Conditional Branch -> Script to check
#
# Everything else is controlled by Events and some Global Variables, and you!
#
# *** Notes ***
#
# When the game is first fired up, the Player is transferred to a Map before
# any Autorun Events have had a chance to do anything.  If the Map that the
# player lands on is anything but EMPTY, you'll see what ever is there for a
# split second.  To get around this, I set up the First Map that the Player
# lands on to be All Black, then fade the Screen to Black, then transfer the
# Player.  This prevents any visual artifacts from popping through and makes
# it look "clean".  The 2nd Map is the one where I allow the Title Menu
# to be displayed.  If you want to use a different Windowskin, you can do
# it on the first map.
#
# This Script does not care where you put your Player Start.  It ignores it
# so you can set up the Player Start and TITLE_MAP_ID to be different.
#
# The Style is up to you!
#
# Displaying an In Game Map as a Title Screen is a Style Choice that is totally
# up to you.  You can use a Static Image if you want.  To do this, Import your
# Static Image into Pictures, and use an Event to display that Picture as
# your Title Screen.  The Map is loaded because it allows you to control
# what goes on screen through Eventing, but it is not necessary to display
# any sort of Game Map what so ever.  Some classic games show Game Maps instead
# of Title Screens.  The first Super Mario Bros. on the 8-bit NES, Sonic the
# Hedgehog on the Sega Genesis, and even games like God of War have fully
# animated Title Scenes.
#
# -----   LEGAL   ----
#
# This script is Free for Public and Commercial Use.  You can modify it to suit
# your needs.  Distribution of this script just requires that you give me credit
# as the Original Author.  You are also allowed to post it publicly on any
# website you want.

#==============================================================================
# ** Scene_Title
#------------------------------------------------------------------------------
#  This class performs title screen processing.
#===============================================================================

class Scene_Map
  #---------   SCRIPT CONFIGURATION   -------------#

  TITLE_SKIN = "skin03"                     # Skin for Title Menu
  TITLE_MAP_ID = 2                        # Map ID to move Player to
  TITLE_MAP_X = 7                         # X coordinate on Title Map
  TITLE_MAP_Y = 7                         # Y coordinate on Title Map
  TITLE_MAP_PLAYER_DIRECTION = 4          # Direction to start Player
  MAP_IDS_TO_ALLOW_WINDOW = [4]           # Map ID's allowed to display Window
  TITLE_HIDE_PLAYER = true               # Set Player Graphic to None if True
  TITLE_FULLSCREEN = false                # Start Game in Fullscreen

  TITLE_MENU_ALIGN = 1                    # 0 = Left, 1 = Center, 2 = Right
  TITLE_MENU_SHADOW_TEXT = true           # Display Text with Text Shadows

  GAME_SWITCHES_TO_ENABLE = [45]           # Game Switches you want set to ON
                                          # Set to [] if you dont want any
                                          # Use commas to separate if you
                                          # want Multiple Switches
                                          # IE:  [1,2,4]


  # WINDOW CONFIGURATION - New Game / Continue / Shutdown

  TITLE_MAP_WINDOW_OPACITY = 200          # Window Opacity of the New Game Window
  TITLE_MAP_WINDOW_BACK_OPACITY = 200     # The Windows Background - Windowskin
  TITLE_MAP_WINDOW_CONTENTS_OPACITY = 255 # The Windows Border from the Windowskin
  TITLE_MAP_WINDOW_FADE_RATE = 30         # Fade Out Subtracts this from Opacity per Frame
  TITLE_MAP_INACTIVE_TIMEOUT = 999          # Timeout in Seconds

  # Windowskin Note -  You can change the Windowskin with an Autorun Event on
  # your first map, or in the Database, System, Windowskin Graphic

end

# If you want different Keys to Display the Menu, set them here.
# This should be pretty easy to figure out, even for non scripters.

class Interpreter
  # Pressing any of the Keys here will make this return true
  def title_escape_keys?
    # Only works if this is a Title Scene
    if $title_scene
      # If the Player hit any of the B, C, Up or Down Keys
      if Input.press_forced(Input::B) or    # The Cancel or Escape Key
         Input.press_forced(Input::C) or    # The Confirm or Enter Key
         Input.press_forced(Input::UP) or   # The UP Key
         Input.press_forced(Input::DOWN) or # The DOWN Key
         Input.press_forced(Input::LEFT) or # The LEFT Key
         Input.press_forced(Input::RIGHT)   # The RIGHT Key - No 'OR' at the end
        # Return True that one of the Above Keys had been pressed
        return true if not Input.input_forced?
      end
      return false
    end
  end

  # If the New Game / Continue Window is showing, even partially
  def displaying_title_menu?
    return true if $title_scene and $scene.command_window and
                   ($scene.command_window.active or
                    $scene.command_window.opacity > 0 or
                    $scene.command_window.back_opacity > 0 or
                    $scene.command_window.contents_opacity > 0)
  end

  # This displays the Title Menu - MUST BE CALLED TO MAKE TITLE MENU APPEAR!
  def display_title_menu
    if $title_scene
      $scene.hide_title_menu = false
      $scene.display_title_menu = true
    end
    return
  end

  # This prevents the Title Menu from being displayed on Key Press
  def hide_title_menu
    if $title_scene
      $scene.hide_title_menu = true
      $scene.display_title_menu = false
    end
    return
  end

  # Restarts the game, basically. Calling $scene = Scene_Title.new does the same
  def restart_title_scene
    # This Resets All Game Data, but not Global Variables like $foo
    $scene = Scene_Title.new
  end

end

#==============================================================================
# ** Window_Command - Modified to allow Centering, Shadowing and Skinning
#------------------------------------------------------------------------------
#  This window deals with general command choices.
#
#  You can edit the Choices available in the Menu, but remember, you'll still
#  have to set up other commands to make any additional Menu Options work.
#
#==============================================================================

class Window_Command_Center < Window_Selectable
  #--------------------------------------------------------------------------
  # * Object Initialization
  #     width    : window width
  #     commands : command text string array
  #--------------------------------------------------------------------------
  def initialize(width, commands)
    # Compute window height from command quantity
    super(0, 0, width, commands.size * 32 + 32)
    @item_max = commands.size
    @commands = commands
    self.contents = Bitmap.new(width - 32, @item_max * 32)
    refresh
    self.index = 0
  end
  #--------------------------------------------------------------------------
  # * Refresh
  #--------------------------------------------------------------------------
  def refresh
    self.contents.clear
    for i in 0...@item_max
      draw_item(i, normal_color)
    end
  end
  #--------------------------------------------------------------------------
  # * Draw Shadow Text
  #--------------------------------------------------------------------------
  def draw_shadow_text(x, y, width, height, string, align = 0)
    # Duplicate the Font Color
    color = self.contents.font.color.dup
    # Set Current Font Color to Black
    self.contents.font.color = Color.new(0, 0, 0)
    self.contents.draw_text(x + 2, y + 2, width, height, string, align)
    # Draw Text using Stored Color
    self.contents.font.color = color
    self.contents.draw_text(x, y, width, height, string, align)
  end
  #--------------------------------------------------------------------------
  # * Draw Item
  #     index : item number
  #     color : text color
  #--------------------------------------------------------------------------
  def draw_item(index, color)
    self.contents.font.color = color
    rect = Rect.new(4, 32 * index, self.contents.width - 8, 32)
    align = Scene_Map::TITLE_MENU_ALIGN
    self.contents.fill_rect(rect, Color.new(0, 0, 0, 0))
    if Scene_Map::TITLE_MENU_SHADOW_TEXT
      # Draws Shadowed Text Menu Options
      draw_shadow_text(4, 32 * index, self.contents.width - 8, 32,
                       @commands[index], align)
    else
      # Draws Text without Shadows
      self.contents.draw_text(rect, @commands[index], align)
    end
  end
  #--------------------------------------------------------------------------
  # * Disable Item
  #     index : item number
  #--------------------------------------------------------------------------
  def disable_item(index)
    draw_item(index, disabled_color)
  end
end

#==============================================================================
# ** Scene_Title
#------------------------------------------------------------------------------
#  This class performs title screen processing.
#===============================================================================

class Scene_Title
  #--------------------------------------------------------------------------
  # * Main Processing - Full Redefinition
  #--------------------------------------------------------------------------
  def main
    # check for Battle Testing
    if $BTEST
      # This ONLY happens when you test a Battle from the Database => Troops
      # and does NOT happen at all during gameplay, ever
      #
      # Set up variables for Test Battle
      battle_test
      # Quit Processing - Exits the Program
      return
    end
    # Terminate Any Audio - needed after a restart
    Audio.bgm_stop
    Audio.bgs_stop
    Audio.me_stop
    # Load database
    $data_actors        = load_data("Data/Actors.rxdata")
    $data_classes       = load_data("Data/Classes.rxdata")
    $data_skills        = load_data("Data/Skills.rxdata")
    $data_items         = load_data("Data/Items.rxdata")
    $data_weapons       = load_data("Data/Weapons.rxdata")
    $data_armors        = load_data("Data/Armors.rxdata")
    $data_enemies       = load_data("Data/Enemies.rxdata")
    $data_troops        = load_data("Data/Troops.rxdata")
    $data_states        = load_data("Data/States.rxdata")
    $data_animations    = load_data("Data/Animations.rxdata")
    $data_tilesets      = load_data("Data/Tilesets.rxdata")
    $data_common_events = load_data("Data/CommonEvents.rxdata")
    $data_system        = load_data("Data/System.rxdata")
    # If going Fullscreen
    if not $fullscreen and
       Scene_Map::TITLE_FULLSCREEN
      # Alt Enter to go to Fullscreen
      showm = Win32API.new 'user32', 'keybd_event', %w(l l l l), ''
      showm.call(18,0,0,0)  # Hold the Alt Keyboard key
      showm.call(13,0,0,0)  # Hold the Enter Keyboard key
      showm.call(13,0,2,0)  # Release the Enter Keyboard key
      showm.call(18,0,2,0)  # Release the Alt Keyboard key
      $fullscreen = true
    end
    # Make each type of game object
    $game_temp          = Game_Temp.new
    $game_system        = Game_System.new
    $game_switches      = Game_Switches.new
    $game_variables     = Game_Variables.new
    $game_self_switches = Game_SelfSwitches.new
    $game_screen        = Game_Screen.new
    $game_actors        = Game_Actors.new
    $game_party         = Game_Party.new
    $game_troop         = Game_Troop.new
    $game_map           = Game_Map.new
    $game_player        = Game_Player.new
    # Disable Menu Access
    $game_system.menu_disabled = true
    # Set up initial party
    $game_party.setup_starting_members
    # Set up initial map position
    $game_map.setup(Scene_Map::TITLE_MAP_ID)
    # Move player to initial position
    $game_player.moveto(Scene_Map::TITLE_MAP_X, Scene_Map::TITLE_MAP_Y)
    $game_player.direction = Scene_Map::TITLE_MAP_PLAYER_DIRECTION
    # Refresh player
    $game_player.refresh

    # If the option to Hide the Player is set, set Opacity to Zero
    if Scene_Map::TITLE_HIDE_PLAYER
      $game_party.actors[0].character_name = ''
      $game_player.refresh
    end

    # Run automatic change for BGM and BGS set with map
    $game_map.autoplay
    # Update map (run parallel process event)
    $game_map.update

    # Enable Game Switches in Configuration
    for i in Scene_Map::GAME_SWITCHES_TO_ENABLE
      # Enable the Game Switch
      $game_switches.data[i] = true
    end

    # Refresh map, because of switches
    $game_map.need_refresh = true

    # Command Window moved to Scene_Map

    # Declare that this is a Title Scene.  This variable is false during play
    $title_scene = true

    # Sends Player to the map
    $scene = Scene_Map.new

    $scene.display_title_menu = false
    $scene.hide_title_menu = true

    # Resets Fake User Input Scripts
    if Input.respond_to? :clear_auto
      Input.clear_auto
    end
  end
end

class Game_Actor
  attr_accessor :character_name
end

#==============================================================================
# ** Scene_Map
#------------------------------------------------------------------------------
#  This class performs map screen processing.
#==============================================================================

class Scene_Map
  attr_reader   :command_window  # Window for New Game / Continue / etc
  attr_accessor :message_window  # Allows Closing with 'terminate_message'
  attr_accessor :display_title_menu
  attr_accessor :fade_out_title_menu
  attr_accessor :hide_title_menu

  alias map_title_update update
  def update
    # Run Original
    map_title_update
    # Map Update - Only makes Title Map available during Title
    if $title_scene
      if Scene_Map::MAP_IDS_TO_ALLOW_WINDOW.include?($game_map.map_id)
        # If Player pressed Enter or Inactive Time
        if @display_title_menu and
           not @command_window and
           not @hide_title_menu
          # Prevent the window from disappearing
          @display_title_menu = false
          @fade_out_title_menu = false

          # Make command window
          s1 = "New Game"
          s2 = "Continue"
          s3 = "Shutdown"
          @command_window = Window_Command_Center.new(192, [s1, s2, s3])
          @command_window.opacity = TITLE_MAP_WINDOW_OPACITY
          @command_window.contents_opacity = TITLE_MAP_WINDOW_CONTENTS_OPACITY
          @command_window.back_opacity = TITLE_MAP_WINDOW_BACK_OPACITY
          @command_window.x = 320 - @command_window.width / 2
          @command_window.y = 288
          # Custom Title Skin
          if TITLE_SKIN
            @command_window.windowskin = RPG::Cache.windowskin(TITLE_SKIN)
          end
          @command_window.active = true
          @command_window.visible = true
          # Continue enabled determinant
          # Check if at least one save file exists
          # If enabled, make @continue_enabled true; if disabled, make it false
          @continue_enabled = false
          for i in 0..3
            if FileTest.exist?("Save#{i+1}.rxdata")
              @continue_enabled = true
            end
          end
          # If continue is enabled, move cursor to "Continue"
          # If disabled, display "Continue" text in gray
          if @continue_enabled
            @command_window.index = 1
          else
            @command_window.disable_item(1)
          end
          # Store the Frame Counter for when this window was Displayed
          @title_frames = Graphics.frame_count
        # Show Window called by Script... display_title_menu
        elsif @command_window and
              @display_title_menu and
              not @hide_title_menu and
              not @command_window.disposed? and
              not @command_window.active
          # Set Command Window as Active and Visible, dont recreate
          @command_window.active = true
          @command_window.visible = true
          @command_window.opacity = TITLE_MAP_WINDOW_OPACITY
          @command_window.contents_opacity = TITLE_MAP_WINDOW_CONTENTS_OPACITY
          @command_window.back_opacity = TITLE_MAP_WINDOW_BACK_OPACITY
          # Prevent Hiding
          @display_title_menu = false
          @fade_out_title_menu = false
          # Prevents Triggering Inactive Timeout
          @title_frames = Graphics.frame_count
        # If Command Window Inactive, and Player hits a Key
        elsif @command_window and
              not @command_window.disposed? and
              not @command_window.active and
              not @hide_title_menu and
              not @display_title_menu and
              $game_system.map_interpreter.title_escape_keys?
          # Set Command Window as Active and Visible, dont recreate
          @command_window.active = true
          @command_window.visible = true
          @command_window.opacity = TITLE_MAP_WINDOW_OPACITY
          @command_window.contents_opacity = TITLE_MAP_WINDOW_CONTENTS_OPACITY
          @command_window.back_opacity = TITLE_MAP_WINDOW_BACK_OPACITY
          # Prevent Hiding
          @display_title_menu = false
          @fade_out_title_menu = false
          # Prevents Triggering Inactive Timeout
          @title_frames = Graphics.frame_count
        # Window not created, and Player hits a Key when allowed to display menu
        elsif not @hide_title_menu and
              not @command_window and not @display_title_menu and
              $game_system.map_interpreter.title_escape_keys?
          # Force Title Menu to be Created - Above
          @display_title_menu = true
          # Prevent Hiding
          @fade_out_title_menu = false
          # Prevents Triggering Inactive Timeout
          @title_frames = Graphics.frame_count
        # If we need to Hide the Menu or Force it off the Screen
        elsif @fade_out_title_menu or @hide_title_menu
          # If the Command Window exists and has not been disposed
          if @command_window and not @command_window.disposed?
            # If Window is Visible
            if @command_window.opacity > 0 or
               @command_window.contents_opacity > 0 or
               @command_window.back_opacity > 0
              # Fade Out the Window
              @command_window.opacity -= TITLE_MAP_WINDOW_FADE_RATE
              @command_window.contents_opacity -= TITLE_MAP_WINDOW_FADE_RATE
              @command_window.back_opacity -= TITLE_MAP_WINDOW_FADE_RATE
              @command_window.active = false
            else
              # End the Hiding Procedure
              @fade_out_title_menu = false
            end
          end
        # Window is Active, Update for Player Input
        elsif @command_window and
              not @command_window.disposed? and
              @command_window.active
          # Update the Title Window
          title_window_update
        end
      elsif $game_system.map_interpreter.title_escape_keys? and
            $game_map.map_id != TITLE_MAP_ID
        # Prepare for transition
        Graphics.freeze
        # If New Game / Continue Window exists...
        if @command_window
          # Dispose of command window
          @command_window.dispose
        end
        # Restart the whole thing
        $scene = Scene_Title.new
      end
    end
  end

  #--------------------------------------------------------------------------
  # * Player Place Move
  #--------------------------------------------------------------------------
  alias title_transfer_player transfer_player
  def transfer_player
    # If this is a Title Scene, Hide Window when transferring maps
    if $title_scene
      # If Window has been created
      if @command_window
        # Set Opacity to 0
        @command_window.opacity = 0
        @command_window.back_opacity = 0
        @command_window.contents_opacity = 0
        # Prevent Selection
        @command_window.active = false
      end
    end
    # Call Original
    title_transfer_player
  end

  #--------------------------------------------------------------------------
  # * Title Command Window Timeout
  #--------------------------------------------------------------------------

  def title_timeout
    # 40 is used for the Framerate
    if Graphics.frame_count > TITLE_MAP_INACTIVE_TIMEOUT * 40 + @title_frames
      return true
    end
  end

  #--------------------------------------------------------------------------
  # * Update Title Window
  #--------------------------------------------------------------------------
  def title_window_update
    # If Command Window isnt being Hidden
    if @command_window.active
      # If Key was pressed, reset Inactivity Frame Counter
      if $game_system.map_interpreter.title_escape_keys?
        # Store the Frame Counter for when this window was Displayed
        # This prevents the Window from Fading out from Inactivity
        @title_frames = Graphics.frame_count
      else
        if title_timeout
          # Hide the Title Menu
          @fade_out_title_menu = true
          # Reset Frame Inactivity Counter
          @title_frames = Graphics.frame_count
        end
      end
    end
    # Update command window
    @command_window.update
    # If C button was pressed
    if Input.trigger?(Input::C)
      # Branch by command window cursor position
      case @command_window.index
      when 0  # New game
        title_new_game
      when 1  # Continue
        title_continue
      when 2  # Shutdown
        title_shutdown
      end
    end
  end

  #--------------------------------------------------------------------------
  # * Title: New Game
  #--------------------------------------------------------------------------
  def title_new_game
    # Prepare for transition
    Graphics.freeze
    # Dispose of command window
    @command_window.dispose
    # Declare that Gameplay is NOT a Title Scene
    $title_scene = false
    # Play decision SE
    $game_system.se_play($data_system.decision_se)
    # Stop BGM
    Audio.bgm_stop
    # Stop BGS
    Audio.bgs_stop
    # Reset frame count for measuring play time
    Graphics.frame_count = 0
    # Make each type of game object
    $game_temp          = Game_Temp.new
    $game_system        = Game_System.new
    $game_switches      = Game_Switches.new
    $game_variables     = Game_Variables.new
    $game_self_switches = Game_SelfSwitches.new
    $game_screen        = Game_Screen.new
    $game_actors        = Game_Actors.new
    $game_party         = Game_Party.new
    $game_troop         = Game_Troop.new
    $game_map           = Game_Map.new
    $game_player        = Game_Player.new
    # Set up initial party
    $game_party.setup_starting_members
    # Set up initial map position
    $game_map.setup($data_system.start_map_id)
    # Move player to initial position
    $game_player.moveto($data_system.start_x, $data_system.start_y)
    # Refresh player
    $game_player.refresh
    # Run automatic change for BGM and BGS set with map
    $game_map.autoplay
    # Update map (run parallel process event)
    $game_map.update
    # Switch to map screen
    $scene = Scene_Map.new
    # Re-enable Menu Access since it was Disabled for Demo Titles
    $game_system.menu_disabled = false
  end
  #--------------------------------------------------------------------------
  # * Command: Continue
  #--------------------------------------------------------------------------
  def title_continue
    # If continue is disabled
    unless @continue_enabled
      # Play buzzer SE
      $game_system.se_play($data_system.buzzer_se)
      return
    end
    # Prepare for transition
    Graphics.freeze
    # Dispose of command window
    @command_window.dispose
    # Play decision SE
    $game_system.se_play($data_system.decision_se)
    # Switch to load screen
    $scene = Scene_Load.new
  end
  #--------------------------------------------------------------------------
  # * Command: Shutdown
  #--------------------------------------------------------------------------
  def title_shutdown
    # Dispose of command window
    @command_window.dispose
    # Play decision SE
    $game_system.se_play($data_system.decision_se)
    # Fade out BGM, BGS, and ME
    Audio.bgm_fade(800)
    Audio.bgs_fade(800)
    Audio.me_fade(800)
    # Shutdown
    $scene = nil
  end

  #--------------------------------------------------------------------------
  # * Battle Call - Alias hides the Command Window
  #--------------------------------------------------------------------------
  alias title_scene_call_battle call_battle
  def call_battle
    # If in a Title Scene Demo Battle
    if $title_scene
      # Hide the Command Window
      $scene.hide_title_menu = true
    end
    # Call Original
    title_scene_call_battle
  end
end

# ** Scene_Load
#------------------------------------------------------------------------------
#  This class performs load screen processing.
#==============================================================================

class Scene_Load < Scene_File
  #--------------------------------------------------------------------------
  # * Decision Processing
  #--------------------------------------------------------------------------
  alias map_title_decision on_decision
  def on_decision(filename)
    # Prevent Title Menu from Displaying
    $title_scene = false
    # Stop BGS
    Audio.bgs_stop
    # Call Original
    map_title_decision(filename)
  end
  #--------------------------------------------------------------------------
  # * Cancel Processing
  #--------------------------------------------------------------------------
  def on_cancel
    # Play cancel SE
    $game_system.se_play($data_system.cancel_se)
    # If Map Displayed is the one we want the Title to be on...
    if Scene_Map::MAP_IDS_TO_ALLOW_WINDOW.include?($game_map.map_id)
      # Switch back to the Map
      $scene = Scene_Map.new
    else
      # Start the Scene all over again
      $scene = Scene_Title.new
    end
    # Make sure the Title Menu comes up
    $scene.display_title_menu = true
  end
end

class Game_Switches
  # Enables @data to be accessed and changed
  attr_accessor :data
end

class Game_Player < Game_Character
  # Enable @direction to be accessed and changed
  attr_accessor :direction
end

#==============================================================================
# ** Scene_Battle (part 1)
#------------------------------------------------------------------------------
#  This class performs battle screen processing.
#==============================================================================

class Scene_Battle

  # This should allow ANY Battle or Combat System to have a Demonstration
  # of the Combat System.  Pressing a Key during an Automated Battle Demo
  # will exit the Battle Demo and return to the Title Screen

  alias battle_demo_during_title_update update
  def update
    # Only process this section if this is a Title Scene
    if $title_scene
      if $game_system.battle_interpreter.title_escape_keys?
        # Clear in battle flag
        $game_temp.in_battle = false
        # Clear entire party actions flag
        $game_party.clear_actions
        # Remove battle states
        for actor in $game_party.actors
          actor.remove_states_battle
        end
        # Clear enemies
        $game_troop.enemies.clear
        # Call battle callback
        if $game_temp.battle_proc != nil
          $game_temp.battle_proc.call(1)
          $game_temp.battle_proc = nil
        end
        # Restart Title Scene which exits battle
        $scene = Scene_Title.new
      end
    end
    # Call Original
    battle_demo_during_title_update
  end
end
