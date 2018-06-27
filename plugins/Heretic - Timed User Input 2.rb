#===============================================================================
#
#           Timed User Input, Scripts, and Windows - Part 2 of 2
#           Authors: Heretic
#           Version 1.01
#           Saturday, November 7th, 2012
#
#===============================================================================
#
# -------  Compatability Settings  --------

    # Set this to true if you are using with any Multiple Message Windows
    $multiple_message_windows = false


#  This section of the script just contains the Timed Tutorial Windows
#  I use the two words interchangably, but decided during script calls
#  to refer to them as @timed_ because it is shorter
#
#  There are only two settings you have might ever need or want to change.
#
#  Window Opacity was set to 100% Opaque for Readability because these windows
#  have the ability to display in ANY scene.  But if you want to set it to match
#  the Default Windows, or maybe even some other Message System Windows, it is
#  right there for you to change.
#
#  The other option is the Window Skin
#
#  When Tutorial_Window_Skin is set to nil, these windows will use whatever
#  your System Window Skin is set to.  But, you can have your Timed / Tutorial
#  Windows have a totally different Window Skin than your default, and even
#  when Two Windows using Different Window Skins are displaying!
#
#  If you want to change either the Opacity or Skin during Gameplay, there
#  are just two commands for them.  Not difficult to figure out.
#
#  - set_timed_window_opacity(opacity)
#  - set_timed_window_skin(skin_name)
#
#  Skin Name must exist in the Materialbase -> Graphics -> Windowskins
#  and just plug in that name from there to change it.
#
#  ---  Compatability ---
#
#  If you have any compatability issues, you should be able to just dump this
#  part of the script, as it will probably be the one that causes any sort of
#  compatibility issues.
#
#  --- Multiple Message Windows Compatability
#
#  This script is compatible with Wachungas Multiple Messages Windowss.  You'll
#  need to turn it on with the Window Settings variable on however.
#  I had to disable Player Movement while Timed stuff was processing because
#  of the update methods not being checked, which caused a hang.

#-------------------------------------------------------------------------------
#---                                                                        ----
#---                        TUTORIAL WINDOW SETTINGS                        ----
#---                                                                        ----
#-------------------------------------------------------------------------------

module Tutorial_Window_Settings
  Tutorial_Window_Opacity = 255
  Tutorial_Window_Skin    = nil #'golden' # Either nil or 'skin_name'
end

# Interpreter and Game_Character allows scripts to be run from either
# an Event Command -> Script or Set Move Route -> Script for ease of use
class Interpreter
  def set_timed_window_opacity(opacity)
    $game_system.tutorial_window_opacity = opacity
  end
  def set_timed_window_skin(skin_name)
    $game_system.tutorial_window_skin = skin_name
  end
  def get_timed_window_opacity
    return $game_system.tutorial_window_opacity
  end
  def get_timed_window_skin
    return $game_system.tutorial_window_skin
  end

end

class Game_Character
  def set_timed_window_opacity(opacity)
    $game_system.tutorial_window_opacity = opacity
  end
  def set_timed_window_skin(skin_name)
    $game_system.tutorial_window_skin = skin_name
  end
  def get_timed_window_opacity
    return $game_system.tutorial_window_opacity
  end
  def get_timed_window_skin
    return $game_system.tutorial_window_skin
  end
end

# Just adds the two Variables for the Tutorial Window
class Game_System
  attr_accessor :tutorial_window_opacity
  attr_accessor :tutorial_window_skin
  alias tutorial_system_initialize initialize
  def initialize
    # Call Original
    tutorial_system_initialize
    # New Variables - Use Constants on New Game, but allow changing as Variables
    @tutorial_window_opacity = Tutorial_Window_Settings::Tutorial_Window_Opacity
    @tutorial_window_skin = Tutorial_Window_Settings::Tutorial_Window_Skin
  end
end

class Window_Message < Window_Selectable
  alias tutorial_update update

  def update
    # If a Tutorial Window is showing
    if $game_temp.timed_msg
      # Prevent updating Non Tutorial Message Windows due to any differences
      return if not @tutorial
    end
    # Call Original
    tutorial_update
  end
end

# This is based on the Default Window Message System
class Window_Tutorial < Window_Selectable
  attr_accessor :fade_out
  attr_accessor :fade_in
  attr_accessor :tutorial
  attr_accessor :permanent
  attr_accessor :tutorial_window_opacity
  attr_accessor :tutorial_window_skin

  #--------------------------------------------------------------------------
  # * Object Initialization
  #--------------------------------------------------------------------------
  def initialize
    super(80, 304, 480, 160)
    self.contents = Bitmap.new(width - 32, height - 32)
    self.visible = false
    self.z = 9998
    @fade_in = false
    @fade_out = false
    @contents_showing = false
    @cursor_width = 0
    self.active = false
    self.index = -1
    # Tutorial Variable
    @tutorial = false
    # Tutorial Window Settings - variables to allow changing during gameplay
    @tutorial_window_opacity = $game_system.tutorial_window_opacity
    @tutorial_window_skin = $game_system.tutorial_window_skin
  end

  #--------------------------------------------------------------------------
  # * Refresh
  #--------------------------------------------------------------------------
  def refresh
    self.contents.clear
    self.contents.font.color = normal_color
    x = y = 0
    @cursor_width = 0
    # Indent if choice
    if $game_temp.choice_start == 0
      x = 8
    end
    # If message_text is an array instead of nil
    if $multiple_message_windows
      text = $game_temp.message_text[0]
    else
      text = $game_temp.message_text
    end
    # If waiting for a message to be displayed
    if text != nil
      # Control text processing
      begin
        last_text = text.clone
        text.gsub!(/\\[Vv]\[([0-9]+)\]/) { $game_variables[$1.to_i] }
      end until text == last_text
      text.gsub!(/\\[Nn]\[([0-9]+)\]/) do
        $game_actors[$1.to_i] != nil ? $game_actors[$1.to_i].name : ""
      end
      # Change "\\\\" to "\000" for convenience
      text.gsub!(/\\\\/) { "\000" }
      # Change "\\C" to "\001" and "\\G" to "\002"
      text.gsub!(/\\[Cc]\[([0-9]+)\]/) { "\001[#{$1}]" }
      text.gsub!(/\\[Gg]/) { "\002" }
      # Get 1 text character in c (loop until unable to get text)
      while ((c = text.slice!(/./m)) != nil)
        # If \\
        if c == "\000"
          # Return to original text
          c = "\\"
        end
        # If \C[n]
        if c == "\001"
          # Change text color
          text.sub!(/\[([0-9]+)\]/, "")
          color = $1.to_i
          if color >= 0 and color <= 7
            self.contents.font.color = text_color(color)
          end
          # go to next text
          next
        end
        # If \G
        if c == "\002"
          # Make gold window
          if @gold_window == nil
            @gold_window = Window_Gold.new
            @gold_window.x = 560 - @gold_window.width
            if $game_temp.in_battle
              @gold_window.y = 192
            else
              @gold_window.y = self.y >= 128 ? 32 : 384
            end
            @gold_window.opacity = self.opacity
            @gold_window.back_opacity = self.back_opacity
          end
          # go to next text
          next
        end
        # If new line text
        if c == "\n"
          # Update cursor width if choice
          if y >= $game_temp.choice_start
            @cursor_width = [@cursor_width, x].max
          end
          # Add 1 to y
          y += 1
          x = 0
          # Indent if choice
          if y >= $game_temp.choice_start
            x = 8
          end
          # go to next text
          next
        end
        # Draw text
        self.contents.draw_text(4 + x, 32 * y, 40, 32, c)
        # Add x to drawn text width
        x += self.contents.text_size(c).width
      end
    end
  end

  #--------------------------------------------------------------------------
  # * Frame Update
  #--------------------------------------------------------------------------
  def update
    super
    # If fade in
    if @fade_in
      self.contents_opacity += 24
      if @input_number_window != nil
        @input_number_window.contents_opacity += 24
      end
      if self.contents_opacity == 255
        @fade_in = false
      end
      return
    end
    # If message is being displayed
    if @contents_showing
      # This will show the Pause Character (from Windowskin) but only if
      # the Default Key of C is allowed.  Otherwise hide it.  This lets
      # the Player know they can press Enter to continue
      if not @permanent or Input.get_wait_for_user_input.include?(Input::C)
        # Show Pause to Player to indicate you can Press Enter to continue
        self.pause = true
      else
        # Hide Pause to Player to indicate that Pressing Enter does nothing
        self.pause = false
      end
      # press_forced is the Original Method for checking for Input
      if not @permanent and
             Input.trigger_forced(Input::C)
        # $game_temp var prevents terminate_message from executing when true
        $game_temp.timed_msg = nil
        # Close the Message Window now that it can be closed
        terminate_message
      end
      return
    end
    if $multiple_message_windows
      text_to_check = $game_temp.message_text[0]
    else
      text_to_check = $game_temp.message_text
    end
    # If display wait message
    if @fade_out == false and text_to_check != nil
      @contents_showing = true
      $game_temp.message_window_showing = true
      reset_window
      refresh
      Graphics.frame_reset
      self.visible = true
      # Set Text to Invisible, but leave the rest of the Window
      self.contents_opacity = 0
      @fade_in = true
      return
    end
    # If message which should be displayed is not shown, but window is visible
    if self.visible
      @fade_out = true
      self.opacity -= 48
      if self.opacity == 0
        self.visible = false
        @fade_out = false
        $game_temp.message_window_showing = false
      end
      return
    end
  end

  #--------------------------------------------------------------------------
  # * Terminate Message
  #--------------------------------------------------------------------------
  def terminate_message
    # Allows Tutorial Window to stay active and visble across different Scenes
    if @tutorial and @permanent and $game_temp.timed_msg
      # Return instead of Terminating, which is called on every scene change
      return
    end
    self.active = false
    self.pause = false
    self.index = -1
    self.contents.clear
    # Clear showing flag
    @contents_showing = false
    # Call message callback
    if $multiple_message_windows
      if $game_temp.message_proc[0] != nil
        $game_temp.message_proc[0].call
      end
    else
      if $game_temp.message_proc != nil
        $game_temp.message_proc.call
      end
    end
    # Clear variables related to text
    if $multiple_message_windows
      $game_temp.message_text[0] = nil
      $game_temp.message_proc[0] = nil
    else
      $game_temp.message_text = nil
      $game_temp.message_proc = nil
    end
    # Open gold window
    if @gold_window != nil
      @gold_window.dispose
      @gold_window = nil
    end
  end

  #--------------------------------------------------------------------------
  # * Set Window Position and Opacity Level - Redefinition
  #--------------------------------------------------------------------------
  def reset_window
    # This allows Tutorial Windows to be placed at the Top, Middle, and Bottom
    if $game_temp.in_battle and not @tutorial
      self.y = 16
    else
      case $game_system.message_position
      when 0  # up
        self.y = 16
      when 1  # middle
        self.y = 160
      when 2  # down
        self.y = 304
      end
    end
    if $game_system.message_frame == 0
      self.opacity = 255
    else
      self.opacity = 0
    end
    if @tutorial
      self.back_opacity = $game_system.tutorial_window_opacity
    else
      self.back_opacity = 160
    end
  end
end

module Input
  # Dont define more than once, causes a crash, this prevents
  unless $tutorial_windows_defined
    $tutorial_windows_defined = true
    class << self

      def timed_msg(txt, permanent=false)
        $game_temp.timed_msg = true
        if $multiple_message_windows
          $game_temp.message_text[0] = txt
        else
          $game_temp.message_text = txt
        end
        @timed_msg = Window_Tutorial.new
        if $game_system.tutorial_window_skin
          skin_name = $game_system.tutorial_window_skin
          @timed_msg.windowskin = RPG::Cache.windowskin(skin_name)
        end
        @timed_msg.active = true
        @timed_msg.visible = true
        @timed_msg.tutorial = true
        @timed_msg.permanent = true if permanent
        @timed_msg.reset_window
        # MMW Type Handling
        if $multiple_message_windows
          $game_temp.message_proc[0] = Proc.new { @message_waiting = false }
        else
          $game_temp.message_proc = Proc.new { @message_waiting = false }
        end
      end

      # Script REQUIRED to close PERMANENT Timed Windows
      def close_msg
        # if Timed Window does not exist
        return if not @timed_msg
        # If Permanent Message preventing restoring MMW Move During
        if @auto_index == @auto_forced.size - 1 or @auto_forced.size == 0 and
           $multiple_message_windows and @mmw_move_during_last and
           @timed_msg and not @timed_msg.disposed? and
           @timed_msg.permanent and
           @mmw_move_during_last != nil
          # Restore the setting
          $game_system.message.move_during = @mmw_move_during_last
          # Clear the Saved Setting
          @mmw_move_during_last = nil
        end
        # If Timed Window is not Disposed
        if not @timed_msg.disposed?
          # Change Variable to allow Timed Window to Terminate
          $game_temp.timed_msg = nil
          # Terminate the Message (uses super to close, not default)
          @timed_msg.terminate_message
        else
          # if Timed Window has been disposed, set value to nil
          @timed_msg = nil
        end
      end

      # This updates the Timed / Tutorial Windows
      def msg_update
        # This happens if user hits F12 while a Tutorial Message is waiting
        if @timed_msg.disposed?
          # Reset Msg Flag
          $game_temp.timed_msg = nil
          # Clear Msg
          @timed_msg = nil
          # Prevents updating a disposed window which causes a crash...
          return
        end
        if @timed_msg
          if @timed_msg.visible == false
            @timed_msg.dispose
            @timed_msg = nil
            return
          end
        end
        # Update the Message Window
        @timed_msg.update
      end


      # Used in Game Temp
      def timed_permanent?
        if $game_temp.timed_msg and
           @timed_msg and not @timed_msg.disposed? and @timed_msg.permanent
          return true
        end
        return false
      end

    end
  end
end

class Game_Temp
  attr_accessor :timed_msg
  alias tutorial_initialize initialize
  def initialize
    # Call Original
    tutorial_initialize
    # New Variable
    @timed_msg = false
  end

  # This is necessary because the Battle Interpreter wont run at all if a
  # Message Window is showing.  Since we actually want it to run, this kicks
  # back a phoney value to allow the Interpreter to do its thing, which
  # allows the rest of the script to interact with those menus that appear
  # due to the Interpreter.
  #
  # Changing a Variable to a Method allows manipulation of the output
  def message_window_showing
    if Input.timed_permanent? and $scene.is_a?(Scene_Battle)
      return false
    else
      return @message_window_showing
    end
  end

end
