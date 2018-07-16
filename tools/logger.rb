class Log
  @@stream = nil
  def self.write(message)
    if @@stream.nil?
      @@stream = File.open('CG.log', 'w')
    end
    @@stream << message << "\n"
  end
end

class Scene_Map
  alias_method :orig_update, :update
  def update
    Log.write('frame')
    return orig_update
  end
end

class Interpreter
  alias_method :orig_command_101, :command_101
  def command_101
    res = orig_command_101
    Log.write("message " + $game_temp.message_text.gsub("\n", ' '))
    return res
  end
end

module RPG
  module Cache
    class << self
      alias_method :log_picture, :picture
      def picture(filename)
        Log.write(filename)
        return log_picture(filename)
      end
    end
  end
end
