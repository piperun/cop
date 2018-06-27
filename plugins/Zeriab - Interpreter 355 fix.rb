  #--------------------------------------------------------------------------
  # * Script - Bugfix for command_355
  #--------------------------------------------------------------------------
  #
  # Fix by Zeriab - Scripts that seem to hang unless multi line or on the
  # last line were caused by a bug that this replacement will correct.
  #
  # This also corrects any sort of a script that would eval to false or nil
  # such $game_system.menu_disabled = false, so you can do anything you
  # want or need to in a script call again.
  #
  # Place as close to Scene_Debug as possible, or just replace the original
  # method in Interpreter 7

class Interpreter
  def command_355
    # Set first line to script
    script = @list[@index].parameters[0] + "\n"
    # Loop
    loop do
      # If next event command is second line of script or after
      if @list[@index+1].code == 655
        # Add second line or after to script
        script += @list[@index+1].parameters[0] + "\n"
      # If event command is not second line or after
      else
        # Abort loop
        break
      end
      # Advance index
      @index += 1
    end
    # Evaluation
    result = eval(script)
    # Continue
    return true
  end
end
