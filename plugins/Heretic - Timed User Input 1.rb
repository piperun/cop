#===============================================================================
#
#           Timed User Input, Scripts, and Windows - Part 1 of 2
#           Authors: Diagostimo, Heretic
#           Version 1.01
#           Thursday, October 10th, 2013
#
#===============================================================================
#
#  This script is based on a core script by Diagostimo
#
#  Introduction:  The purpose of this script is to allow you to simulate
#   User Input with a few Script entries
#
#  Features:
#
#  Simulate User Input at specific times
#  Display Timed Messages in ANY Scene
#  Run Timed Scripts, even Multi Line Scripts
#  Wait for Specific Commands from a Player
#  Wait for ANY condition in a Script
#  Should be compatible with very complex Message and Battle Systems
#
#  Multiple Message Windows IS compatible, but check the setting on page 2
#
#
#  Usage:
#
#  There are just a few commands.  They can be entered from ANY Script Window
#
#  - wait_for_user_input(keys, true to not process key input)
#  - timed_input(wait, keys)
#  - timed_msg(wait, "msg", permanent[optional])
#  - close_msg
#  - clear_auto
#  - timed_script(wait, "script")
#  - timed_wait_condition(wait, "condition == true")
#
#  Timed Window Skin Commands
#
#  - set_timed_window_skin("Skin Name")
#  - set_timed_window_opacity(New Opacity in Numbers 0 - 255)
#  - get_timed_window_skin
#  - get_timed_window_opacity
#
#  The commands are very simple, but considering you'll have to enter one
#  command for each keystroke you want to simulate, you'll probably use a
#  whole bunch of them before you even realize it!
#
#
#
#  Detailed Usage:
#
#  timed_input(wait, keys) - Use this script to time simulate User Input
#  - Example 1: timed_input(20, C)
#  - Causes a simulated keypress of the C (Enter) key after 20 frames
#  - Example 2: timed_input(15, Input::C, DOWN)
#  - Causes a simulated keypress of the C and DOWN keys after 15 frames
#  - Example 3: timed_input(20)
#  - Causes a Wait with no key presses simulated
#
#  - Note: You can enter C instead of Input::C for convenience
#
#  - Note: Do NOT use the "Wait..." Event Button to wait for a timed_input
#          It does not work the same.
#
#  - Note: In Battle, the Script will only start counting down if the
#          Player can interact with a Menu.  If there are No Menus
#          then the Script will just wait until there is a Menu.
#
#          Waiting for Menus will ONLY affect Timed Input Events.  Other
#          Input Events for Messages and Scripts are not affected.
#
#
#
#  timed_msg(wait, msg, permanent)  - Use this script to create a Message Window
#  - MSG MUST BE QUOTED - "Hello World" or 'Hello World'
#  - Example: timed_msg(20, "Hello World!")
#  - Causes a Message Box reading "Hello World!" to be dispalyed after 20 frames
#  - Default Text Options work fine
#    NOTE: Use Capital Letters, Double Slashes \\, and Double Quotes! "\\B"
#    \\B for Bold Text
#    \\G for Gold Window
#    \\V[n] to display Game Variable N (N is a Number)
#    \\C[n] to Change Color
#    \\N[n] to display Actor Name
#    * See "Help - Events - Showing Text" for more information in Help File.
#
#  - "Permanent" is Optional
#  - "Permanent" Windows stay on the screen between changes in scenes, such as
#     transitioning from the Map to Menu
#
#  - Example: timed_msg(30, "Hello", true) - true here enables "permanent"
#  - Causes a Message Box to be displayed that MUST BE CLOSED BY A SCRIPT
#  - Player can NOT interact with Permanent Windows
#
#  - Note: Use "Double Quotes" and \n for New Lines if needed
#
#  - Note: If using "Double Quotes", add an Additional "\" Character for
#    displaying Names, Variables, and other options allowed by what ever
#    Message System you are using. \V[1] is now \\V[1]
#
#
#
#  wait_for_user_input(keys, dont_press[optional])
#  - Example 1: wait_for_user_input(C, DOWN, Z)
#  - Causes script to wait for ANY of these inputs from the Player
#  - The 'dont_press' option allows Key Inputs from Player to not process
#    but will satisfy the condition for continuing
#
#  - Example 2: wait_for_user_input(C, true) #true here means dont_press
#  - Causes the Player to need to press C, but once they do, that Keypress
#    is not processed, it merely allows continuation to the next timed entry
#
#
#
#  close_msg
#  - Example: close_msg
#  - Causes Permanent Message Windows to be closed
#  - This is the ONLY way to close a Permanent Window
#  - Note: timed_script(0,"close_msg") may be needed during complex Inputs
#
#  clear_auto
#  - Clears all the Timed Events
#
#  set_timed_window_skin("Skin Name")
#  - Changes the Timed Window Skin without affecting other Windows
#
#  set_timed_window_opacity(New Opacity 0-255)
#  - Changes the Timed Window Opacity from Default 255
#
#  get_timed_window_skin
#  - Returns the Name of the Current Timed Window Skin
#  - New in version 1.01
#
#  get_timed_window_opacity
#  - Returns the Opacity used for Timed Windows
#  - New in version 1.01
#
#
#  --- This is mostly for other Scripters ---
#
#  timed_script(wait, "script")
#  - SCRIPTS MUST BE QUOTED
#  - Example #1: timed_script(20, "print \"Hello World\"")
#  - Example #2: timed_script(20, "close_msg")
#  - Runs the Script after 20 frames
#  - Note: Use \ to escape Quotes within Quotes
#
#  - Multi Line Scripts can be run by setting wait to 0
#  - Example: Multi Line Script - Set Wait to 0
#  - timed_script(30, "if $foo == \"bar\"")
#  - timed_script( 0, "  print \"Foo is Bar\"")
#  - timed_script( 0, "else")
#  - timed_script( 0, "  print \"No Foo 4 U\"")
#  - timed_script( 0, "end")
#
#
#
#  timed_wait_condition(wait, "condition")
#  - CONDITION MUST BE QUOTED
#  - Example: timed_wait_condition(20, "$foo == true")
#  - Condition MUST be able to evaluate to true at some point
#    $foo = true will NOT eval as true
#    $foo == true WILL eval as true if the value of $foo is equal to true
#  - Causes Timed Events to Wait for the condition to be met before continuing
#  - Waiting only affects the Triggered Events, as Gameplay needs to be able to
#    continue to allow changes so the condition can be met.
#
#
#
#  ---  Compatability with Other Input Modules ---
#
#  Although I am not taking the time to check compatability with other
#  Input Scripts, I believe they will also be compatible.  If you do
#  it may be necesary for you to use different commands to simulate input.
#  For exmaple, in this script, you can use "timed_input(C)" or you can
#  use "timed_input(Input::C)", and both will accomplish the same thing.
#
#  The Constants of C and UP and DOWN etc. were entered for your convenience
#  however, it may be necessary to call other Key Inputs from other scripts
#  in a different means.  You'll have to refer to those specific scripts to
#  understand how to do it, but you should be able to enter them into this
#  script all the same.
#
#
#  ---   Wait for Move's Completion  ----
#
#  This command was modified to allow Timed Commands to complete before
#  advancing to the next Event Command.  It ONLY affects the Triggered Event.

#  Wait for Move's Completion doesn't do anything in Battle, and that has not
#  been changed in order to retain a high degree of compatability.  As a result
#  you wont be able to wait for Timed Events to complete before showing a msg
#  but only in Battle.  I actually recommend doing this in Map Events.
#
#  ---   Changelog  ---
#
#  Version 1.01
#  - Added the ability to Get Timed Window Skins and Opacities
#    Not sure why I didn't add these before.
#
#  - Fixed some stuff to work with Multiple Message Windows to FORCE the
#    option of message.move_during to FALSE during Permanent Windows.  This
#    prevents the Player from being able to Move during a Permanent Window.
#    If the Player could Walk Away, then the Permanent Window would NEVER
#    be closed!  It is used so your scripts used to close Permanent Windows
#    are FORCED to run so that Permanent Window doesnt accidentally hang
#    around forever!

module Input_Constants
  DOWN = Input::DOWN
  LEFT = Input::LEFT
  RIGHT = Input::RIGHT
  UP = Input::UP
  A = Input::A
  B = Input::B
  C = Input::C
  X = Input::X
  Y = Input::Y
  Z = Input::Z
  L = Input::L
  R = Input::R
end

module RPG
  class TimedInput
    def initialize(wait, parameters = [])
      # Time to wait before simulating keystrokes
      @wait = wait * 2
      # The Input Keys to be Simulated - Handles Multiple Keys
      @parameters = parameters
      # Flags whether or not the Input Keys have been processed
      @completed = false
    end
    attr_accessor :wait
    attr_accessor :parameters
    attr_accessor :completed
  end

  class TimedScript
    def initialize(wait, script)
      if $DEBUG
        if not script.is_a?(String)
          print "Error in your \"timed_script(wait, script)\"",
                "\nThe Script you entered is Not a String\n",
                "Make sure you put \"Quotes\" around your Script",
                "\n\n ", script
        end
      end
      # Time to wait before running the Script - Set to 0 for Multi Line Scripts
      @wait = wait * 2
      # The Text to be used as a Script
      @script = script
    end
    attr_accessor :wait
    attr_accessor :script
  end

  class TimedMsg
    def initialize(wait, msg, permanent=false)
      if not $tutorial_windows_defined and $DEBUG
        print "Error in your \"timed_msg(wait, msg)\"",
              "\n\nTimed Messages are NOT installed!\n",
              "This script is a Two Part Script, and\n",
              "the Timed Message part is missing!"
        end
      if not msg.is_a?(String) and $DEBUG
        print "Error in your \"timed_msg(wait, script)\"",
              "\n\nThe Message you entered is Not a String\n",
              "Make sure you put \"Quotes\" around your Message",
              "\n\n ", msg
      end
      # Time to wait before showing the Message
      @wait = wait * 2
      # The Text to be used in the Message
      @msg = msg
      # The Permanent Flag is used to keep Windows across Scenes
      @permanent = permanent
    end
    attr_accessor :wait
    attr_accessor :msg
    attr_accessor :permanent
  end

  class TimedUserWaitInput
    def initialize(keys)
      # Processes Immediately
      @wait = 0
      # Keys is an Array of Buttons the Player is expected to Press
      @keys = []
      for i in 0...keys.size
        if keys[i].is_a?(Integer)
          @keys.push(keys[i])
        elsif keys[i] === true
          dont_press = true
        elsif keys[i].is_a?(RPG::Retainer)
          if keys[i].type == "event_id"
            @event_id = keys[i].value
          end
        end
      end
      @press = true unless dont_press
    end
    attr_accessor :wait
    attr_accessor :keys
    attr_accessor :event_id
    attr_accessor :press
  end

  class TimedWaitCondition
    def initialize(wait, condition, event_id)
      if $DEBUG
        if not condition.is_a?(String)
          print "Error in your \"timed_wait_condition(wait, condition)\"",
                "\nThe Condition you entered is Not a String\n",
                "Make sure you put \"Quotes\" around your Condition"
        end
      end
      # Time to wait before Waiting for Condition to return true
      @wait = wait
      # Condition that must RETURN TRUE in order to continue
      @condition = condition
      # Event ID that has been triggered to wait
      @event_id = event_id.value
    end
    attr_accessor :wait
    attr_accessor :condition # Script String to eval()
    attr_accessor :event_id
  end

  # Stores Values in an Object for Type Differentiation
  # This may appear as strange and inefficient, however, the result allows
  # whoever uses this script simplicity in entering commands by allowing
  # separation with just commas - command(arg, arg2, arg3) where all
  # the args are different types, and order doesnt matter
  class Retainer
    def initialize(type, value)
      @type = type
      @value = value
    end
    attr_accessor :type
    attr_accessor :value
  end

end

class Interpreter
  # Included for ease of just saying B or C instead of Input::B or Input::C
  include Input_Constants

  # Interpreter Internal - Processes everything, skips Index++ if evals to false
  alias timed_execute_command execute_command

  # Wait for Move's Completion
  alias timed_command_210 command_210

  # Creates or Adds to Simulated Input Commands
  def timed_input(wait, *keys)
    # Creates Input Command as an Object - wait (int), keys [array]
    Input.change_auto_keys(RPG::TimedInput.new(wait, keys))
  end

  # Runs Scripts after a waiting period of time
  def timed_script(wait, script)
    # Creates Script Command as an Object - wait (int), script
    Input.change_auto_keys(RPG::TimedScript.new(wait, script))
  end

  # Displays a Message in ANY Scene - Permanent Option not closable by Player
  def timed_msg(wait, msg, permanent=false)
    # Creates Msg Command as an Object - wait (int), text
    Input.change_auto_keys(RPG::TimedMsg.new(wait, msg, permanent))
  end

  # Causes Timed Entries to wait for condition to be met before advancing
  # usage: timed_wait_condition(0, "true / false returning script")
  def timed_wait_condition(wait, condition)
    # Event ID allows forcing only the triggered event to have to wait
    event_id = 0
    if $scene.is_a?(Scene_Map)
      event_id = $game_system.map_interpreter.event_id
    end
    # Convert to Object for Value Retention and Type Processing
    event_id = RPG::Retainer.new("event_id", event_id)
    # Creates Wait Condition as an Object - wait (int), condition (string)
    Input.change_auto_keys(RPG::TimedWaitCondition.new(wait, condition, event_id))
  end

  def wait_for_user_input(*keys)
    # Event ID allows forcing only the triggered event to have to wait
    event_id = 0
    if $scene.is_a?(Scene_Map)
      event_id = $game_system.map_interpreter.event_id
    end
    # Convert to Object for Value Retention and Type Processing
    keys.push(RPG::Retainer.new("event_id", event_id))
    # Add the Wait Command to the Timed List
    Input.change_auto_keys(RPG::TimedUserWaitInput.new(keys))
  end

  # Closes any Timed Windows
  def close_msg
    return if not $tutorial_windows_defined
    Input.close_msg
  end

  # Clears any Auto Running Commands
  def clear_auto
    Input.clear_auto
  end

  # This prevents the Index Advancement in the Interpreter
  def execute_command
    # Prevent Index Advance if there is a Non Permanent Timed Message Queued
    return false if Input.msg_queued
    # Prevent Index Advance if next Queued Event is a Wait Command
    return false if Input.input_wait_queued?(@event_id)
    # Prevent Index Advance for this event if Queued Event is a Condition
    return false if Input.condition_wait_queued?(@event_id)
    # Prevents Index Advance if now Waiting
    return false if Input.waiting_for_timed_commands?(@event_id)
    # Original - Perform Interpreter Commands here: Move Up, Turn Left, etc...
    return timed_execute_command
  end

  # Wait for Move's Completion
  def command_210
    # Creates Wait Condition in Input, fixes itself if no conditions to wait for
    Input.wait_for_timed_input(@event_id)
    # Original Wait for Move's Completion call
    timed_command_210
  end

  attr_accessor :event_id     # Needed to allow Interpreter to advance the index
  attr_accessor :index        # Needed for checking Interpreter List
end

class Game_Character
  # Included for ease of just saying B or C instead of Input::B or Input::C
  include Input_Constants

  # Same as Interpreter Definition
  #
  # NOTE: Interpreter has a limit due to LINE WRAPPING
  # Set Move Route -> Scripts does NOT have this Line Wrap Limit
  # so I just allowed both ways to enter timed scripts.

  # Simulates Key Commands - timed_input(10, C)
  def timed_input(wait, *keys)
    # Creates Input Command as an Object - wait (int), keys [array]
    Input.change_auto_keys(RPG::TimedInput.new(wait, keys))
  end

  # Runs Scripts after a waiting period of time
  def timed_script(wait, script)
    # Creates Script Command as an Object - wait (int), "script"
    Input.change_auto_keys(RPG::TimedScript.new(wait, script))
  end

  # Displays a Message in ANY Scene - Permanent Option not closable by Player
  def timed_msg(wait, msg, permanent=false)
    # Creates Msg Command as an Object - wait (int), "msg"
    Input.change_auto_keys(RPG::TimedMsg.new(wait, msg, permanent))
  end

  # Causes Timed Entries to wait for condition to be met before advancing
  def timed_wait_condition(wait, condition)
    # Event ID allows forcing only the triggered event to have to wait
    event_id = 0
    if $scene.is_a?(Scene_Map)
      event_id = $game_system.map_interpreter.event_id
    end
    # Convert to Object for Value Retention and Type Processing
    event_id = RPG::Retainer.new("event_id", event_id)
    # Creates Wait Condition as an Object - wait (int), condition (string)
    Input.change_auto_keys(RPG::TimedWaitCondition.new(wait, condition, event_id))
  end

  # Waits for specific Keys from the Player - Multiple Keys allowed
  def wait_for_user_input(*keys)
    # Event ID allows forcing only the triggered event to have to wait
    event_id = 0
    if $scene.is_a?(Scene_Map)
      event_id = $game_system.map_interpreter.event_id
    end
    # Convert to Object for Value Retention and Type Processing
    keys.push(RPG::Retainer.new("event_id", event_id))
    Input.change_auto_keys(RPG::TimedUserWaitInput.new(keys))
  end

  # Closes any Timed Windows
  def close_msg
    return if not $tutorial_windows_defined
    Input.close_msg
  end

  # Clears any Auto Running Commands
  def clear_auto
    Input.clear_auto
  end
end

module Input
  unless $input_class_defined
    $input_class_defined = true
    class << Input


      # alias listing
      alias update_forced update
      alias trigger_forced trigger?
      alias press_forced press?
      alias repeat_forced repeat?
      alias dir4_forced dir4
      alias dir8_forced dir8

      # initialize
      def init
        # initialize @forced
        @forced = nil
        # the array of inputs
        @auto_forced = []
        # the index inside the array
        @auto_index = 0
        # the frame time till input is hit
        @auto_timer = 0
        # whether it is time to input
        @auto_input_time = false
        # flag whever the input is forced
        @input_forced = false
        # if user input is disabled
        @input_disabled = false
        # defines if waiting for script to complete
        @wait_for_timed_input = false
        # defines if Window is waiting for User Input
        @wait_for_user_input = []
        # string to evaulate that MUST RETURN TRUE
        @wait_condition = nil
      end

      # Wait for a Simulated Input to complete - User Input is Disabled
      def wait_for_timed_input(event_id)
        # If the Auto Input Command is executing
        if @auto_forced.size > 0
          # Set Flag to Wait for Simulated Inputs to complete
          @wait_for_timed_input = event_id
          # Event ID is used here to allow all other non triggered events to
          # continue their actions.
        end
      end

      # Returns true if Timed Commands are flagged to wait for completion
      def waiting_for_timed_commands?(event_id)
        # Event ID of 0 is passed during a Battle so always False in Battle
        if event_id > 0 and @wait_for_timed_input == event_id
          return true
        end
      end

      # If the Player is expected to press a Key or Keys
      def waiting_for_user_input?
        return true if @wait_for_user_input.size > 0
      end

      # Jut returns the full Variable
      def get_wait_for_user_input
        return @wait_for_user_input
      end

      # Return True if the next Automated Event is a Timed Message
      def msg_queued
        # If Timed Msg is displaying
        if @timed_msg and not @timed_msg.permanent
          return true
        # If Timed Msg is Queued
        elsif @auto_input_time
          if @auto_forced[@auto_index].is_a?(RPG::TimedMsg) and
             not @auto_forced[@auto_index].permanent
            # Return True to indicate that a Timed Msg is Queued
            return true
          end
        end
      end

      # Return True if the next Automated Event is a Wait for Input
      def input_wait_queued?(event_id)
        if @auto_input_time and @auto_timer == 0
          if @auto_forced[@auto_index].is_a?(RPG::TimedUserWaitInput)
            if @auto_forced[@auto_index].event_id == event_id
              # Return True to indicate that a Input Wait is Queued
              return true
            end
          end
        end
      end

      # Return True if the next Automated Event is a Wait for Condition
      def condition_wait_queued?(event_id)
        if @auto_input_time and @auto_timer == 0
          if @auto_forced[@auto_index].is_a?(RPG::TimedWaitCondition)
            if @auto_forced[@auto_index].event_id == event_id
              return true
            end
          end
        end
      end

      # Evaluates specified Wait Conditions for True / False $foo == true
      def wait_condition_eval
        if @wait_condition
          if eval(@wait_condition)
            @wait_condition = nil
            return true
          end
        end
      end

      def close_msg
        # Placeholder, actual definition is in Timed User Input 2
      end

      # Force a Simulated Key Press
      def change_key(key)
        @forced = key
      end

      # Creates an Array of Simulated Keys to run
      def change_auto_keys(object)
        # Add Commands to @auto_forced Array
        @auto_forced.push(object)
        # Disables Player Input
        @input_disabled = true
        # Sets Value to process Simulated Keys
        @auto_input_time = true
        # Sets Wait Value before processing Simulated Keys
        @auto_timer = @auto_forced[0].wait
        # If MMW and move_during not saved
        if $multiple_message_windows and not @mmw_move_during_last
          # Save the setting
          @mmw_move_during_last = $game_system.message.move_during
          # Cant Move during Script Execution, updates not processed
          $game_system.message.move_during = false
        end
      end

      # This is called in Animated Title Scene when Player hits F12 to Reset
      def clear_auto
        @forced = nil
        @input_forced = false
        @auto_forced = []
        @auto_index = 0
        @auto_input_time = false
        @wait_for_user_input = []
        @input_disabled = false
        @auto_timer = 0
        @wait_for_timed_input = false
        @mmw_move_during_last = false
        @wait_condition = nil
      end

      def timed_events_update
        @forced = nil
        @input_forced = false
        if @auto_input_time
          if @auto_timer == 0
            # If TimedInput has not been processed
            if @auto_forced[@auto_index].is_a?(RPG::TimedInput) and
               not @auto_forced[@auto_index].completed
              # Prevents Index Advancement
              return
            # If Timed Window is showing
            elsif @timed_msg and not @timed_msg.permanent
              return
            # Waiting for a specific condition to be met
            elsif @wait_condition != nil and not wait_condition_eval
              # If a Specified Condition has NOT been met
              return
            # If waiting for User Input
            elsif @wait_for_user_input.size > 0
              (0...@wait_for_user_input.size).each {|i|
                if trigger_forced(@wait_for_user_input[i])
                  # Force the Key the player was expected to press
                  @forced = @wait_for_user_input[i] if @user_input_process
                  # Clear the Array of Keys
                  @wait_for_user_input = []
                  @user_input_process = false
                  # Returning here allows Users Input to occur as a Timed Input
                  return
                end
               }
              return
            # Message Processing - Creates a Message Window in Input
            elsif @auto_forced[@auto_index].is_a?(RPG::TimedMsg)
              # Prevent Advancement
              return if $game_temp.message_window_showing
              # If Timed Windows (Part 2) is Missing
              if not $tutorial_windows_defined
                @auto_forced[@auto_index] = nil
                return
              end
              # Variables for the Timed Msg
              msg = @auto_forced[@auto_index].msg
              permanent = @auto_forced[@auto_index].permanent
              # Creates the Msg Window, and checks for Permanent
              timed_msg(msg, permanent)
              # Setting array to nil here helps prevent multiple windows
              @auto_forced[@auto_index] = nil
              # Prevent Timed Event Advancement unless its a Permanent Window
              return unless permanent
            # Script Processing - Handles Single and Multi Line Scripts
            elsif @auto_forced[@auto_index].is_a?(RPG::TimedScript)
              # Script String Variable
              script = @auto_forced[@auto_index].script.to_s + "\n"
              # Set the Script Source to nil so it doesnt run multiple times
              @auto_forced[@auto_index] = nil
              # Determine if Multi Line Script by Wait and Type
              while @auto_index + 1 < @auto_forced.size and
                    @auto_forced[@auto_index+1].wait == 0 and
                    @auto_forced[@auto_index+1].is_a?(RPG::TimedScript)
                # Increment Auto Index
                @auto_index += 1
                # Build the Script String
                script += @auto_forced[@auto_index].script.to_s + "\n"
                # Set the Script Source to nil so it doesnt run multiple times
                @auto_forced[@auto_index] = nil
              end
              # Evaluate the Full Script
              eval(script)
            # Wait Processing - Waits for a specific key from the Player
            elsif @auto_forced[@auto_index].is_a?(RPG::TimedUserWaitInput)
              # Event ID that triggered is the one that has to wait
              @wait_for_timed_input = @auto_forced[@auto_index].event_id
              # Array of Keys that Player is expected to press
              @wait_for_user_input = @auto_forced[@auto_index].keys
              # Whether or not to process the Players Input
              @user_input_process = @auto_forced[@auto_index].press
              # Prevent Reprocessing by setting array index to nil
              @auto_forced[@auto_index] = nil
              # Prevent resetting
              return
            # Wait Processing - Waits for a specific condition to be satisfied
            elsif @auto_forced[@auto_index].is_a?(RPG::TimedWaitCondition)
              # Only require Triggered Event to wait
              @wait_for_timed_input = @auto_forced[@auto_index].event_id
              # Wait Condition will evaluate the condition before continuing
              @wait_condition = @auto_forced[@auto_index].condition
              # Prevent Reprocessing
              @auto_forced[@auto_index] = nil
              # Return to prevent resetting
              return
            end

            # If next array element exists
            if @auto_forced.size > 0 and @auto_forced[@auto_index + 1]
              # Advance Index and Wait Timer
              @auto_index += 1
              @auto_timer = @auto_forced[@auto_index].wait
            elsif @auto_index == @auto_forced.size - 1 or @auto_forced.size == 0
              # Reset Values
              @auto_index = 0
              @auto_input_time = false
              @auto_forced = []
              # Set to False so No Waiting
              @wait_for_timed_input = false
              @input_disabled = false
              # If MMW and move_during not saved
              if $multiple_message_windows and @mmw_move_during_last and
                 (not @timed_msg or @timed_msg.disposed? or
                  not @timed_msg.permanent)
                # Restore the setting
                $game_system.message.move_during = @mmw_move_during_last
                # Erase Stored Setting
                @mmw_move_during_last = nil
              end
            end
          end
          # If the Input Methods have been called this update cycle and
          # Timed Input, then count down
          if (@input_methods_checked and
             @auto_forced[@auto_index].is_a?(RPG::TimedInput)) or
             not @auto_forced[@auto_index].is_a?(RPG::TimedInput)
            # Countdown to next Simulated Entry
            @auto_timer -= 1 if @auto_timer > 0
          end
        end
      end

      def update
        # if Timed Message Window is displaying
        msg_update if @timed_msg
        # Update Scripted Events
        timed_events_update
        # Original Input.update method
        update_forced
        # Reset Variable, this is changed to true in auto_forced? when called
        @input_methods_checked = false
      end

      #  This needs explaining.  Input.update is called once per frame.
      #  The Input Methods of trigger?(key), press?(key), and repeat?(key)
      #  are NOT called every frame.  Concept here is that if timed_input(key)
      #  doesnt get a chance to complete, prevent continuation by waiting.
      #
      #  auto_forced wont be called every frame, especially in Battle, where
      #  once the commands start to process and the menu screens are not
      #  visible, then auto_forced is not called, which can throw off the
      #  timed_input from executing at the intended times.

      def auto_forced?(key)
        # Record that trigger?, press?, repeat? or dir had been checked
        @input_methods_checked = true
        if @auto_input_time && @auto_timer == 0 && @auto_forced.size > 0
          # Input Processing - Simulates User Input
          if @auto_forced[@auto_index].is_a?(RPG::TimedInput)
            # If No Keys have been entered, flag as completed
            if @auto_forced[@auto_index].parameters.size == 0
              # No keys so flag as having completed
              @auto_forced[@auto_index].completed = true
              return
            end
            # Get the Keys to Simulate for Input
            keys = @auto_forced[@auto_index].parameters
            # Iterate for each key, usually just one key
            (0...keys.size).each {|i|
            # If key passed from Input checks matches the Automated Input Key
            if keys[i] == key
              # Flag as completed
              @auto_forced[@auto_index].completed = true
              # Flag as a Simulated Keystroke
              @input_forced = true
              return true
            end
            }

          end
        end
        return false
      end

      # returns true if input check is forced
      def trigger?(key)
        return true if auto_forced?(key) or @forced == key
        # Prevents Player Input
        return false if input_disabled?
        # Original
        trigger_forced(key)
      end

      def press?(key)
        return true if auto_forced?(key) or @forced == key
        # Prevents Player Input
        return false if input_disabled?
        # Original
        press_forced(key)
      end

      def repeat?(key)
        return true if auto_forced?(key) or @forced == key
       # Prevents Player Input
        return false if input_disabled?
        # Original
        repeat_forced(key)
      end

      def dir4
        dir = dir4_forced
        return dir if auto_forced?(dir) or @forced == dir
        # Prevents Player Input
        return 0 if input_disabled?
        # Orignal
        return dir4_forced
      end

      def dir8
        dir = dir8_forced
        return dir if auto_forced?(dir) or @forced == dir
        # Prevents Player Input
        return 0 if input_disabled?
        # Orignal
        return dir8_forced
      end

      def input_forced?
        return true if @input_forced or @forced
      end

      def input_disabled?
        return true if @input_disabled
      end

    end
  end
end
#calling the initialize method
Input.init
